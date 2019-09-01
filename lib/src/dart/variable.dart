part of tensorflow;

@deprecated
Output<T> getVariable<T>(String name,
    {DataType dtype: DataType.DT_FLOAT, Shape shape, Tensor initializer}) {
  var b = new StringBuffer();
  var scopes = Zone.current[_scopesSymbol] ?? [];
  //shape ??= Shape.scalar;

  for (var n in scopes) b.write('$n/');
  b.write(name);

  return defaultGraph._variables.putIfAbsent(b.toString(), () {
    //dtype = dtype.value > 100 ? dtype : DataType.valueOf(dtype.value + 100);
    Tensor assignOp;
    var v = variableV2(
      operationName: b.toString(),
      dtype: dtype,
      shape: shape,
      graph: defaultGraph,
    );

    if (initializer != null) {
      assignOp = initializer;
      /*} else {
      if (shape == Shape.scalar)
        assignOp = new Tensor.from(0.0, dtype: dtype);
      else
        assignOp = new Tensor.from(shape.zeros).cast(dtype);
    */
      defaultGraph.session.runner.feed(b.toString(), assignOp);
    }

    //v._initializer = assignVariableOp(v, assignOp, graph: defaultGraph, dtype: dtype);
    //v._resource = readVariableOp(v, dtype: dtype);
    return v;
  }) as Output<T>;
}

DataType _toRef(DataType dtype) =>
    dtype.value >= 100 ? dtype : DataType.valueOf(dtype.value + 100);

/*
class Variable<T> extends Output<T> {
  final DataType dtype;
  final String name;
  Output<T> _value, _variable;
  bool _initialized = false;

  Variable._(
      Graph graph, this.dtype, this.name, this._value, Output<T> initializer)
      : super._(graph) {
    _initializer = initializer;
    _operation = _value._operation;
    _index = _value._index;
    _variable = _value;
  }

  Output<T> get initializedValue {
    initialize();
    return assign(_variable, value);
  }

  Output<T> get value {
    if (!_initialized)
      throw "The variable '$name' has not been initialized yet.";
    return _value;
  }

  Output<T> assignTo(Output<T> value) {
    return _value = assign(_variable, value);
  }

  void initialize() {
    if (!_initialized) {
      _value = _graph.constant<T>(_initializer.run());
      _initialized = true;
    }
  }

  @override
  int _getType() => _value._getType();

  @override
  int get index => _value.index;

  @override
  Operation get op => _value.op;

  @override
  void reshape(Shape shape) {
    _value.reshape(shape);
  }

  @override
  T run({Map<String, Tensor> feed: const {}}) => value.run(feed: feed);

  @override
  List<T> runAsList({Map<String, Tensor> feed: const {}}) =>
      value.runAsList(feed: feed);

  @override
  Shape get shape => _value.shape;
}
*/
