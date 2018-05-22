part of tensorflow;

@Deprecated('Not yet fully supported')
class Func {
  final int _pointer;
  int _graphPointer;

  Func._(this._pointer);

  static int _fromFunctionDef(Uint8List functionDef)
      native "FunctionNode_from_function_def";

  factory Func.fromFunctionDef(FunctionDef functionDef) {
    return new Func._(_fromFunctionDef(functionDef.writeToBuffer()));
  }


  static int _fromGraph(Graph graph, String name) native "FunctionNode_from_graph";

  factory Func(String name, void Function(FuncArguments) f) {
    var graph = new Graph();
    var func = withScope(graph, () {
      var args = new FuncArguments._();
      f(args);
    });
    return func;
    return func.._graphPointer = graph;
  }

  Uint8List _toFunctionDef() native "FunctionNode_to_function_def";

  FunctionDef toFunctionDef() => new FunctionDef.fromBuffer(_toFunctionDef());
}

class FuncArguments {
  final Map<String, Output> _args = {};
  int _argCount = 0;

  FuncArguments._();

  Output<T> get<T>(String name, {@required DataType dtype, Shape shape}) {
    return _args.putIfAbsent(name, () {
      _argCount++;
      shape ??= Shape.scalar;
      return temporaryVariable(dtype: dtype, shape: shape, varName: name);
    });
  }
}
