part of tensorflow;

class Func {
  final int _pointer;

  Func._(this._pointer);

  //static int _fromGraph(int graph) native "FunctionNode_from_graph";

  static int _fromFunctionDef(Uint8List functionDef)
      native "FunctionNode_from_function_def";

  factory Func.fromFunctionDef(FunctionDef functionDef) {
    return new Func._(_fromFunctionDef(functionDef.writeToBuffer()));
  }

  Uint8List _toFunctionDef() native "FunctionNode_to_function_def";

  FunctionDef toFunctionDef() => new FunctionDef.fromBuffer(_toFunctionDef());
}
