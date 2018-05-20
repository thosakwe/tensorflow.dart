part of tensorflow;

class Output<T> {
  final Graph _graph;
  int _operation;
  int _index;
  int _dtype;

  Output._(this._graph);

  DataType get dtype {
    if (_dtype == null)
      throw new StateError('Could not determine the data type of this output.\n'
          'Most likely, a function is trying to infer the type of this output.');
    return DataType.valueOf(_dtype);
  }

  int get index => _index;

  Operation get op => new Operation._fromPointer(_operation, _graph);

  Shape get shape native "Output_shape";

  Output<T> operator *(Output<T> other) => _graph.mul<T>(this, other);

  Output<T> operator /(Output<T> other) => _graph.div<T>(this, other);

  Output<T> operator %(Output<T> other) => _graph.mod<T>(this, other);

  Output<T> operator +(Output<T> other) => _graph.add<T>(this, other);

  Output<T> operator -(Output<T> other) => _graph.sub<T>(this, other);

  Output<T> operator &(Output<T> other) => _graph.bitwiseAnd<T>(this, other);

  Output<T> operator ^(Output<T> other) => _graph.bitwiseXor<T>(this, other);

  Output<T> operator |(Output<T> other) => _graph.bitwiseOr<T>(this, other);

  Output<bool> operator >(Output<T> other) => _graph.greater<T>(this, other);

  Output<bool> operator >=(Output<T> other) =>
      _graph.greaterEqual<T>(this, other);

  Output<bool> operator <(Output<T> other) => _graph.less<T>(this, other);

  Output<bool> operator <=(Output<T> other) => _graph.lessEqual<T>(this, other);

  Output<T> operator <<(Output<T> other) => _graph.leftShift<T>(this, other);

  Output<T> operator >>(Output<T> other) => _graph.rightShift<T>(this, other);

  T run() => runAsList()[0];

  List<T> runAsList() {
    var sess = _graph.session..runner.fetchFromOutput(this);
    return sess.runner.run<T>().toList(growable: false);
  }

  @override
  String toString() {
    return 'Output { operation: 0x' +
        _operation.toRadixString(16) +
        ', index: $_index }';
  }
}
