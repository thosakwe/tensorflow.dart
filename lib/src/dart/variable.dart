part of tensorflow;

Output<T> getVariable<T>(String name,
    {DataType dtype: DataType.DT_FLOAT,
    @required Shape shape,
    Output<T> initializer}) {
  var b = new StringBuffer();
  var scopes = Zone.current[_scopesSymbol] ?? [];
  //shape ??= Shape.scalar;

  for (var n in scopes) b.write('$n/');
  b.write(name);

  return defaultGraph._variables.putIfAbsent(b.toString(), () {
    //dtype = dtype.value > 100 ? dtype : DataType.valueOf(dtype.value + 100);
    Output assignOp;
    // TODO: Go back to variableV2
    var v = temporaryVariable<T>(
      varName: b.toString(),
      dtype: dtype,
      shape: shape,
    );

    if (initializer != null) {
      assignOp = initializer;
    } else {
      if (shape == Shape.scalar)
        assignOp = constant(0.0, dtype: dtype);
      else
        assignOp = zeros(shape, dtype: dtype);
    }

    v = assign(v, assignOp);
    return v;
    //v._initializer = assignVariableOp(v, assignOp, dtype: assignOp.dtype);
    var resource = readVariableOp(v);
    return v.._resource = resource;
  });
}

DataType _toRef(DataType dtype) =>
    dtype.value >= 100 ? dtype : DataType.valueOf(dtype.value + 100);
