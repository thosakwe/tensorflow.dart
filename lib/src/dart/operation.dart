part of tensorflow;

/// A Graph node that performs computation on Tensors.
///
/// An Operation is a node in a [Graph] that takes zero or more [Tensor]s (produced by other Operations in the Graph) as input, and produces zero or more [Tensor]s as output.
///
/// Operation instances are valid only as long as the Graph they are a part of is valid. Thus, if `Graph.close()` has been invoked, then methods on the Operation instance may fail with a [StateError].
class Operation<T> {
  final Graph _graph;
  final int _pointer;

  //Operation() : _pointer = _Operation_new();

  Operation._fromPointer(this._pointer, this._graph);

  static OpList list() => new OpList.fromBuffer(getAllOpsInternal());

  //static int _Operation_new() native "Operation_new";

  /// Returns the type of the operation, i.e., the name of the computation performed by the operation.
  String get type native "Operation_type";

  /// Returns the full name of the Operation.
  String get name native "Operation_name";

  /// Returns the size of the given inputs list of Tensors for this operation.
  int inputListLength(String name) native "Operation_input_list_length";

  /// Returns the number of tensors produced by this operation.
  int get numOutputs native "Operation_num_outputs";

  Tuple2<int, int> _output(int idx) native "Operation_output";

  /// Returns a symbolic handle to one of the tensors produced by this operation.
  Output<T> operator [](int idx) {
    if (idx >= numOutputs)
      throw new StateError(
          "This operation ('$name') produces less than ${idx + 1} output(s).");

    return new Output._(_graph)
      .._operation = _pointer
      .._index = idx;
    /*
    var result = _output(idx);
    return new Output._(_graph)
      .._operation = result.item1
      .._index = result.item2;
      */
  }

  /// Returns a symbolic handle to some of the tensors produced by this operation.
  List<Output<T>> outputList(int idx, int length)
      native "Operation_output_list";

  @override
  String toString() => 'Operation(type: $type, name: $name)';
}
