part of tensorflow;

Output<T> getVariable<T>(String name,
    {DataType dtype: DataType.DT_FLOAT,
    @required Shape shape,
    Output<T> initializer}) {
  var b = new StringBuffer();
  var scopes = Zone.current[_scopesSymbol] ?? [];

  for (var n in scopes) b.write('$n/');
  b.write(name);

  return defaultGraph._variables.putIfAbsent(b.toString(), () {
    var v = variableV2<T>(
      operationName: b.toString(),
      dtype: dtype,
      shape: shape,
    );

    return assign(v, initializer ?? zeros(shape));
  });
}
