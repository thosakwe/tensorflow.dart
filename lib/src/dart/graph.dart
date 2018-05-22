part of tensorflow;

const Symbol _defaultGraphSymbol = #tf_default_graph;
const Symbol _deviceSymbol = #tf_device;
const Symbol _scopesSymbol = #tf_variable_scopes;

Graph _defaultGraph;

Graph get defaultGraph =>
    _defaultGraph ??= Zone.current[_defaultGraphSymbol] ?? new Graph();

/// Executes code within the context of a single [Graph].
T withScope<T>(Graph graph, T Function() f) {
  var zone = Zone.current.fork(zoneValues: {_defaultGraphSymbol: graph});
  return zone.run<T>(f);
}

/// Executes a function, prepending a [prefix] to all operations.
T withVariableScope<T>(String name, T Function() f) {
  var scopes = Zone.current[_scopesSymbol] ?? [];
  var zone = Zone.current
      .fork(zoneValues: {_scopesSymbol: new List.from(scopes)..add(name)});
  return zone.run<T>(f);
}

/// Executes a function, delegating all work to the given device.
T withDeviceScope<T>(String device, T Function() f) =>
    Zone.current.fork(zoneValues: {_deviceSymbol: device}).run<T>(f);

Output<T> constant<T>(T value, {String operationName, DataType dtype, Graph graph}) {
  graph ??= defaultGraph;
  return graph.constant<T>(value,
      operationName: operationName, dtype: dtype);
}

/// A data flow graph representing a TensorFlow computation.
class Graph {
  static int _Graph_new() native "Graph_new";

  int _pointer;

  final SymbolTable _scope = new SymbolTable();
  final Map<String, Output> _variables = {};
  int _index = 0;
  List<Operation> _operations;
  Session _session;

  Graph() : _pointer = _Graph_new();

  Graph._fromPointer(this._pointer);

  static Tuple3<int, String, int> _importGraphDef(
      Uint8List graphDef, String prefix) native "Graph_from_graph_def";

  /// Import a serialized representation of a TensorFlow graph.
  factory Graph.fromGraphDef(GraphDef graphDef, {String prefix}) {
    var result = _importGraphDef(graphDef.writeToBuffer(), prefix);
    var code = _codeFrom(result.item1);
    if (code != Code.ok) throw new TensorFlowException(code, result.item2);
    return new Graph._fromPointer(result.item3);
  }

  int _getOperation(String name) native "Graph_operation_by_name";

  /// Returns the operation (node in the Graph) with the provided name.
  Operation operator [](String name) {
    var ptr = _getOperation(name);
    if (ptr == null || ptr == 0)
      throw "No operation named '$name' exists in this graph.";
    return new Operation._fromPointer(ptr, this);
  }

  Session get session => _session ??= new Session._(this);

  Iterator<Operation> get _iterator => new _OperationIterator(this);

  /// All the [Operation]s in the graph.
  List<Operation> get operations {
    if (_operations != null) return _operations;
    var it = _iterator;
    var out = <Operation>[];
    while (it.moveNext()) out.add(it.current);
    return _operations = new List<Operation>.unmodifiable(out);
  }

  /// Release resources associated with the Graph.
  void close() native "Graph_delete";

  void reset() {
    close();
    _pointer = _Graph_new();
  }

  /// Returns a builder to add Operations to the Graph.
  OperationDescription<T> newOperation<T>(String type, String name) {
    return new OperationDescription._(this, type, name);
  }

  Tuple3<int, String, Uint8List> _toGraphDef() native "Graph_to_graph_def";

  /// Generate a serialized representation of the Graph.
  GraphDef toGraphDef() {
    var result = _toGraphDef();
    var code = _codeFrom(result.item1);
    if (code != Code.ok) throw new TensorFlowException(code, result.item2);
    return new GraphDef.fromBuffer(result.item3);
  }

  Output<T> constant<T>(T value, {String operationName, DataType dtype}) {
    var tensor = value is Tensor
        ? value
        : new Tensor.from(value is Shape ? value.dimensions : value, dtype: dtype);
    //if (dtype != null) tensor = tensor.cast(dtype);
    var op = newOperation<T>('Const',
        operationName ?? _scope.uniqueName('Const/${value.runtimeType}/'))
      ..setAttrType('dtype', dtype ?? tensor.dtype)
      ..setAttrTensor('value', tensor);
    return op.finish()[0];
  }

  void _copyFunction(int func, int grad) native "Graph_copy_function";

  void copyFunction(Func func, {Func grad}) =>
      _copyFunction(func._pointer, grad?._pointer);

  /*
  Output<T> _constant<T>(T value, {String operationName, DataType dtype}) {
    _count++;
    dtype ??= inferType(value);

    /*if (value is List) {
      if (dtype == null && value.isNotEmpty) dtype = inferType(value[0]);
      Output<dynamic> stack = stackV2(value.length, elemType: dtype);

      for (var item in value.reversed) {
        stackPushV2(stack, item);
      }

      //stack = stackCloseV2(stack);
      return stack;
    } else if (value is Iterable) {
      return constant<dynamic>(value.toList(),
          operationName: operationName, dtype: dtype);
    }*/

    if (value is Shape)
      return constant<dynamic>(value.dimensions,
          operationName: operationName, dtype: dtype);

    return _constant(
        value,
        Output,
        operationName ?? _scope.uniqueName('Constant_${value.runtimeType}'),
        dtype?.value ?? -1,
        0 ?? _index++,
        Shape,
        (x) => inferType(x).value);
  }*/

  /*
  Output _constant(
      value,
      Type outputType,
      String operationName,
      int dtype,
      int index,
      Type shapeType,
      int Function(Object) inferType) native "Constant";
      */

  @override
  int get hashCode => _pointer;

  @override
  bool operator ==(other) => other is Graph && other._pointer == _pointer;

  int _iter_next(int index) native "Graph_iter_next";
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
    _current = new Operation._fromPointer(ptr, graph);
    return true;
  }
}
