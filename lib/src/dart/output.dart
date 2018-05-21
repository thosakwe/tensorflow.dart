part of tensorflow;

class Output<T> {
  final Graph _graph;
  int _operation;
  int _index;
  int _dtype;

  Output._(this._graph);

  DataType get dtype {
    if (_dtype == null) {
      _dtype = _getType();
      /*
      throw new StateError('Could not determine the data type of this output.\n'
          'Most likely, a function is trying to infer the type of this output.');
          */
    }
    return DataType.valueOf(_dtype);
  }

  int get index => _index;

  Operation get op => new Operation._fromPointer(_operation, _graph);

  Shape get shape native "Output_shape";

  Output<T> operator *(Output<T> other) => mul<T>(this, other, graph: _graph);

  Output<T> operator /(Output<T> other) => div<T>(this, other, graph: _graph);

  Output<T> operator %(Output<T> other) => mod<T>(this, other, graph: _graph);

  Output<T> operator +(Output<T> other) => add<T>(this, other, graph: _graph);

  Output<T> operator -(Output<T> other) => sub<T>(this, other, graph: _graph);

  Output<T> operator &(Output<T> other) =>
      bitwiseAnd<T>(this, other, graph: _graph);

  Output<T> operator ^(Output<T> other) =>
      bitwiseXor<T>(this, other, graph: _graph);

  Output<T> operator |(Output<T> other) =>
      bitwiseOr<T>(this, other, graph: _graph);

  Output<bool> operator >(Output<T> other) =>
      greater<T>(this, other, graph: _graph);

  Output<bool> operator >=(Output<T> other) =>
      greaterEqual<T>(this, other, graph: _graph);

  Output<bool> operator <(Output<T> other) =>
      less<T>(this, other, graph: _graph);

  Output<bool> operator <=(Output<T> other) =>
      lessEqual<T>(this, other, graph: _graph);

  Output<T> operator <<(Output<T> other) =>
      leftShift<T>(this, other, graph: _graph);

  Output<T> operator >>(Output<T> other) =>
      rightShift<T>(this, other, graph: _graph);

  int _getType() native "Output_get_type";

  T run({Map<String, Tensor> feed: const {}}) => runAsList(feed: feed)[0];

  List<T> runAsList({Map<String, Tensor> feed: const {}}) {
    var runner = _graph.session.runner..fetchFromOutput(this);
    feed?.forEach(runner.feed);
    return runner.run<T>().toList(growable: false);
  }

  @override
  String toString() {
    return 'Output { operation: 0x' +
        _operation.toRadixString(16) +
        ', index: $_index }';
  }
}
