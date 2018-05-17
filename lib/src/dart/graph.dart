part of tensorflow;

/// Represents a computation graph.  Graphs may be shared between sessions.
class _Graph {
  final SymbolTable _scope = new SymbolTable();
  final int _pointer;
  int _count = 0, _index = 0;
  int _output;

  _Graph() : _pointer = Graph_new();

  /// Destroy an options object.  Graph will be deleted once no more
  /// TFSession's are referencing it.
  void delete() native "Graph_delete";

  Output addOperation(OperationDescription desc) {
    return _addOperation(desc.type, desc.name, desc.inputs ?? [], 0 ?? _index++,
        Output, desc.attrs.values.toList(), desc.attrs.keys.toList(), DataType);
  }

  Output _addOperation(
      String opType,
      String opName,
      List<Output> inputs,
      int index,
      Type outputType,
      List attrs,
      List attr_names,
      Type dataTypeType) native "Graph_add_operation";

  /*int add(Op op) => _addOperation(op.type, op.name, op.inputs);

  void addAll(Iterable<Op> ops) {
    ops.forEach(add);
  }*/

  Output<T> constant<T>(T value, {String operationName, DataType type}) {
    _count++;
    return _constant(
        value,
        Output,
        operationName ?? _scope.uniqueName('Constant_${value.runtimeType}'),
        type?.value ?? -1,
        0 ?? _index++);
  }

  Output _constant(value, Type outputType, String operationName, int dtype,
      int index) native "Constant";

  T run<T>(Output<T> tensor) {
    if (_count == 0) {
      throw new StateError('No nodes have been added to this Graph.');
    }

    return Session._run(this, tensor);
  }
}

int Graph_new() native "Graph_new";
