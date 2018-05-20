/*
part of tensorflow;

/// Represents a computation graph.  Graphs may be shared between sessions.
abstract class _Graph {
  final SymbolTable _scope = new SymbolTable();
  final int _pointer;
  int _count = 0, _index = 0;
  int _output;

  _Graph() : _pointer = Graph_new();

  _Graph._fromPointer(this._pointer);

  Output stackV2(maxSize, {@required DataType elemType, String stackName});

  Output<T> stackPushV2<T>(handle, elem, {bool swapMemory: false});

  Output stackCloseV2(handle);

  Output get globalVariablesInitializer => this['init'];

  Output operator [](String name) native "Graph_operation_by_name";

  /// Destroy an options object.  Graph will be deleted once no more
  /// TFSession's are referencing it.
  void delete() native "Graph_delete";

  Output _convertOutput(x) => x is Output ? x : constant(x);

  Output addOperation(OperationDescription desc) {
    _count++;
    return _addOperation(
        desc.type,
        desc.name,
        desc.inputs ?? [],
        0 ?? _index++,
        Output,
        desc.attrs.values.toList(),
        desc.attrs.keys.toList(),
        DataType,
        Shape);
  }

  Output _addOperation(
      String opType,
      String opName,
      List<Output> inputs,
      int index,
      Type outputType,
      List attrs,
      List attr_names,
      Type dataTypeType,
      Type shapeType) native "Graph_add_operation";

  /*int add(Op op) => _addOperation(op.type, op.name, op.inputs);

  void addAll(Iterable<Op> ops) {
    ops.forEach(add);
  }*/

  Output<T> constant<T>(T value, {String operationName, DataType dtype}) {
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
      return constant<dynamic>(value.dims,
          operationName: operationName, dtype: dtype);

    return _constant(
        value,
        Output,
        operationName ?? _scope.uniqueName('Constant_${value.runtimeType}'),
        dtype?.value ?? -1,
        0 ?? _index++,
        Shape,
        (x) => inferType(x).value);
  }

  Output _constant(
      value,
      Type outputType,
      String operationName,
      int dtype,
      int index,
      Type shapeType,
      int Function(Object) inferType) native "Constant";

  T run<T>(Output<T> tensor) {
    if (_count == 0) {
      throw new StateError('No nodes have been added to this Graph.');
    }

    return Session._run(this, tensor);
  }
}

int Graph_new() native "Graph_new";

Shape shape(int dim0,
        [int dim1,
        int dim2,
        int dim3,
        int dim4,
        int dim5,
        int dim6,
        int dim7,
        int dim8,
        int dim9]) =>
    new Shape([dim0, dim1, dim2, dim3, dim4, dim5, dim6, dim7, dim8, dim9]
        .where((n) => n != null)
        .toList());

class Shape {
  final List<int> dims;

  Shape(this.dims);

  static Shape get empty => new Shape([]);
}
*/
