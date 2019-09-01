part of tensorflow;

class Output<T> {
  final Graph _graph;
  Operation _initializer;
  Output _resource;
  int _operation;
  int _index;
  int _dtype;
  Int64List __shape;

  Output._(this._graph);

  Output.__(this._graph, this._operation, this._index);

  Output<U> cast<U>() {
    return Output<U>.__(_graph, _operation, _index)
      .._initializer = _initializer
      .._resource = _resource
      .._dtype = _dtype
      ..__shape = __shape;
  }

  void depend() {
    _graph.session.runner.addTarget(op.name);
  }

  DataType get dtype {
    if (_dtype == null) {
      _dtype = _getType();
      /*
      throw StateError('Could not determine the data type of this output.\n'
          'Most likely, a function is trying to infer the type of this output.');
          */
    }
    return DataType.valueOf(_dtype);
  }

  int get index => _index;

  Operation get op => Operation._fromPointer(_operation, _graph);

  Int64List _shape(Graph graph) native "Output_shape";

  Shape get shape => Shape._(__shape ??= _shape(_graph));

  T get value => identity(this).run();

  Output<T> operator ~() => neg<T>(this, graph: _graph);

  Output<T> operator *(Output<T> other) => mul<T>(this, other, graph: _graph);

  Output<T> operator ~/(Output<T> other) =>
      truncateDiv<T>(this, other, graph: _graph);

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

  List _reshape(Graph graph, Int64List dims) native "Output_reshape";

  void reshape(Shape shape) {
    var result =
        Tuple2<int, String>.fromList(_reshape(_graph, shape.dimensions));
    var code = _codeFrom(result.item1);
    if (code != Code.ok) throw TensorFlowException(code, result.item2);
  }

  void feed(Tensor value) {
    _graph.session.runner.feed(op.name, value);
  }

  List<T> runAsList({Map<String, Tensor> feed: const {}}) {
    var runner = _graph.session.runner..fetchFromOutput(this);
    feed?.forEach(runner.feed);
    return runner.run<T>().toList(growable: false);
  }

  List runApplyShape({Map<String, Tensor> feed: const {}}) =>
      shape.apply(run(feed: feed) as Iterable);

  T run({Map<String, Tensor> feed: const {}}) {
    return runAsList(feed: feed)[0];
  }

  @override
  String toString() {
    return 'Output { operation: \'' +
        op.name +
        '\', index: $_index, type: $dtype }';
  }

  Func toFunc(
      {String name,
      String description,
      Func gradient,
      List<Output> arguments,
      List<Operation> operations,
      bool appendHashToName: false}) {
    var ops = List<int>.from(operations?.map((o) => o._pointer) ?? [])
      ..add(_operation);
    var result = Func._fromGraph(_graph, name ?? op.name, [this], ['result'],
        description, arguments ?? [], 1, ops, appendHashToName);
    var code = _codeFrom(result.item1);
    if (code != Code.ok) throw TensorFlowException(code, result.item2);
    var f = Func._(result.item3, name ?? op.name)..gradient = gradient;
    f.copyIntoGraph(graph: _graph);
    return f;
  }
}

class DelegatingOutput<T> extends Output<T> {
  final Output<T> inner;

  DelegatingOutput(this.inner) : super._(inner._graph);

  int get _operation => inner._operation;

  Operation get _initializer => inner._initializer;

  Output get _resource => inner._resource;

  int get _index => inner._index;

  int get _dtype => inner._dtype;

  Shape get shape => inner.shape;

  int _getType() => inner._getType();

  void depend() => inner.depend();

  void reshape(Shape shape) => inner.reshape(shape);

  void feed(Tensor from) => inner.feed(from);

  List<T> runAsList({Map<String, Tensor> feed: const {}}) =>
      inner.runAsList(feed: feed);
}
