part of tensorflow;

const Symbol _controlInputsSymbol = #tf_control_inputs;
const Symbol _defaultGraphSymbol = #tf_default_graph;
const Symbol _deviceSymbol = #tf_device;
const Symbol _scopesSymbol = #tf_variable_scopes;

Graph _topLevelDefaultGraph;
List<Operation> _topLevelDeps = [];

Graph get defaultGraph =>
    Zone.current[_defaultGraphSymbol] as Graph ??
    (_topLevelDefaultGraph ??= Graph());

/// Executes code within the context of a single [Graph].
T withScope<T>(Graph graph, T Function() f) {
  if (graph == null || graph == defaultGraph) return f();
  var zone = Zone.current.fork(zoneValues: {_defaultGraphSymbol: graph});
  return zone.run<T>(f);
}

/// Executes a function, prepending a [prefix] to all operations.
T withVariableScope<T>(String name, T Function() f) {
  var scopes = Zone.current[_scopesSymbol] as Iterable ?? [];
  var zone = Zone.current
      .fork(zoneValues: {_scopesSymbol: List.from(scopes)..add(name)});
  return zone.run<T>(f);
}

/// Executes a function, delegating all work to the given device.
T withDeviceScope<T>(String device, T Function() f) =>
    Zone.current.fork(zoneValues: {_deviceSymbol: device}).run<T>(f);

/// Executes a function, applying [dependencies] to each created node.
T withControlDependencies<T>(Iterable<Operation> dependencies, T Function() f) {
  var deps = Zone.current[_controlInputsSymbol] as Iterable ?? _topLevelDeps;
  var zone = Zone.current.fork(zoneValues: {
    _controlInputsSymbol: List.from(deps)..addAll(dependencies)
  });
  return zone.run<T>(f);
}

/// Returns [op], but forces subsequent operations to depend upon it.
///
/// Be careful using this at the top level.
Operation _depend(Operation op) {
  var deps = Zone.current[_controlInputsSymbol] ?? _topLevelDeps;
  deps.add(op);
  return op;
}

Output<T> constant<T>(T value,
    {String operationName, DataType dtype, Graph graph, Shape shape}) {
  graph ??= defaultGraph;
  return graph.constant<T>(value,
      operationName: operationName, dtype: dtype, shape: shape);
}

class _RunCallback {
  final int index;
  final void Function(Object) f;

  _RunCallback(this.index, this.f);
}

/// A data flow graph representing a TensorFlow computation.
class Graph {
  static int _Graph_new() native "Graph_new";

  final List<_RunCallback> _runCallbacks = [];

  int _pointer;

  final SymbolTable _scope = SymbolTable();
  final Map<String, Output> _variables = {};
  final List<Func> _functions = [];
  int _index = 0;
  Session _session;

  Graph() : _pointer = _Graph_new();

  Graph._fromPointer(this._pointer);

  void addCallback(int i, void Function(Object) f) {
    if (!_runCallbacks.any((c) => c.index == i && c.f == f))
      _runCallbacks.add(_RunCallback(i, f));
  }

  static List _importGraphDef(Uint8List graphDef, String prefix)
      native "Graph_from_graph_def";

  /// Import a serialized representation of a TensorFlow graph.
  factory Graph.fromGraphDef(GraphDef graphDef, {String prefix}) {
    var result = Tuple3<int, String, int>.fromList(
        _importGraphDef(graphDef.writeToBuffer(), prefix));
    var code = _codeFrom(result.item1);
    if (code != Code.ok) throw TensorFlowException(code, result.item2);
    return Graph._fromPointer(result.item3);
  }

  int _getOperation(String name) native "Graph_operation_by_name";

  /// Returns the operation (node in the Graph) with the provided name.
  Operation operator [](String name) {
    var ptr = _getOperation(name);
    if (ptr == null || ptr == 0)
      throw "No operation named '$name' exists in this graph.";
    return Operation._fromPointer(ptr, this);
  }

  Session get session => _session ??= Session._(this);

  Iterator<Operation> get _iterator => _OperationIterator(this);

  /// All the [Operation]s in the graph.
  List<Operation> get operations {
    //if (_operations != null) return _operations;
    var it = _iterator;
    var out = <Operation>[];
    while (it.moveNext()) out.add(it.current);
    return List<Operation>.unmodifiable(out);
  }

  /// Release resources associated with the Graph.
  void close() native "Graph_delete";

  void reset() {
    close();
    _pointer = _Graph_new();
    _runCallbacks.clear();
    _variables.clear();
    _functions.clear();
  }

  /// Returns a builder to add Operations to the Graph.
  OperationDescription<T> newOperation<T>(String type, String name) {
    return OperationDescription._(this, type, name);
  }

  List _toGraphDef() native "Graph_to_graph_def";

  /// Generate a serialized representation of the Graph.
  GraphDef toGraphDef() {
    var result = Tuple3<int, String, Uint8List>.fromList(_toGraphDef());
    var code = _codeFrom(result.item1);
    if (code != Code.ok) throw TensorFlowException(code, result.item2);
    return GraphDef.fromBuffer(result.item3);
  }

  Output<T> constant<T>(T value,
      {String operationName, DataType dtype, Shape shape}) {
    if (value is Output<T>) return value;
    var tensor = value is Tensor
        ? value
        : (value is Shape
            ? Tensor.from(Int32List.fromList(value.dimensions),
                dtype: DataType.DT_INT32)
            : Tensor.from(value, dtype: dtype));
    if (dtype != null) tensor = tensor.cast(dtype);
    if (shape != null) tensor = tensor.reshape(shape);
    var op = newOperation<T>('Const',
        operationName ?? _scope.uniqueName('Const/${value.runtimeType}/'))
      ..setAttrType('dtype', dtype ?? tensor.dtype)
      ..setAttrTensor('value', tensor);
    return op.finish()[0];
  }

  void _copyFunction(int func, int grad) native "Graph_copy_function";

  void copyFunction(Func func, {Func grad}) {
    //if (_functions.contains(func)) return;
    grad ??= func.gradient;
    _copyFunction(func._pointer, grad?._pointer);
    //_functions.add(func);
  }

  /*

    // Returns Tuple3<int, String, List<Output>>
    Dart_Handle graphHandle = Dart_GetNativeArgument(arguments, 0); // this
    Dart_Handle ysHandle = Dart_GetNativeArgument(arguments, 1); // List<Output> y
    Dart_Handle xsHandle = Dart_GetNativeArgument(arguments, 2); // List<Output> x
    Dart_Handle dxsHandle = Dart_GetNativeArgument(arguments, 3); // List<Output> dx?
    Dart_Handle outputTypeHandle = Dart_GetNativeArgument(arguments, 4); // Type outputType
 */

  List _addGradients(List<Output> y, List<Output> x, List<Output> dx,
      Type outputType) native "Graph_add_gradients";

  /// Adds operations to compute the partial derivatives of sum of `y`s w.r.t `x`s,
  /// i.e., d(y_1 + y_2 + ...)/dx_1, d(y_1 + y_2 + ...)/dx_2...
  ///
  /// [dx] are used as initial gradients (which represent the symbolic partial
  /// derivatives of some loss function `L` w.r.t. `y`).
  /// [dx] must be `null` or have the same size as [y].
  /// If [dx] is `null`, the implementation will use dx of `OnesLike` for all
  /// shapes in [y].
  ///
  /// The partial derivatives are returned.
  ///
  /// WARNING: This function does not yet support all the gradients that python
  /// supports. See
  /// https:///www.tensorflow.org/code/tensorflow/cc/gradients/README.md
  /// for instructions on how to add C++ more gradients.
  List<Output> addGradients(List<Output> y, List<Output> x, {List<Output> dx}) {
    var result = Tuple3<int, String, List<Output>>.fromList(
        _addGradients(y, x, dx, Output));
    var code = _codeFrom(result.item1);
    if (code != Code.ok) throw TensorFlowException(code, result.item2);
    return result.item3;
  }

  @override
  int get hashCode => _pointer;

  @override
  bool operator ==(other) => other is Graph && other._pointer == _pointer;

  int _iter_next(int index) native "Graph_iter_next";

  @override
  String toString() =>
      'Graph { pointer: 0x' + _pointer.toRadixString(16) + ' }';

  T findNecessaryOps<T>(List<Operation> operations, T Function() f) {
    var current = this.operations;
    var result = withScope<T>(this, f);
    operations.addAll(this.operations.where((o) => !current.contains(o)));
    return result;
  }
}

class _OperationIterator extends Iterator<Operation> {
  final Graph graph;
  int index = 0;
  Operation _current;

  _OperationIterator(this.graph);

  @override
  Operation get current => _current;

  @override
  bool moveNext() {
    var ptr = graph._iter_next(index++);
    if (ptr == null) return false;
    _current = Operation._fromPointer(ptr, graph);
    return true;
  }
}
