part of tensorflow;

class Output<T> {
  final Graph _graph;
  int _operation;
  int _index;

  Output._(this._graph);

  int get index => _index;

  Operation get op => new Operation._fromPointer(_operation);

  Output<T> operator *(Output<T> other) => _graph.mul(this, other);

  Output<T> operator /(Output<T> other) => _graph.div(this, other);

  Output<T> operator %(Output<T> other) => _graph.mod(this, other);

  Output<T> operator +(Output<T> other) => _graph.add(this, other);

  Output<T> operator -(Output<T> other) => _graph.sub(this, other);

  Output<T> operator &(Output<T> other) => _graph.bitwiseAnd(this, other);

  Output<T> operator ^(Output<T> other) => _graph.bitwiseXor(this, other);

  Output<T> operator |(Output<T> other) => _graph.bitwiseOr(this, other);

  Output<bool> operator >(Output<T> other) => _graph.greater(this, other);

  Output<bool> operator >=(Output<T> other) => _graph.greaterEqual(this, other);

  Output<bool> operator <(Output<T> other) => _graph.less(this, other);

  Output<bool> operator <=(Output<T> other) => _graph.less(this, other);

  Output<T> operator <<(Output<T> other) => _graph.leftShift(this, other);

  Output<T> operator >>(Output<T> other) => _graph.rightShift(this, other);

  @override
  String toString() =>
      'Output(operation: 0x' + _operation.toRadixString(16) + ')';
}
