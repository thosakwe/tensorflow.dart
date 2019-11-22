part of tensorflow;

class Func {
  final int _pointer;
  final String name;
  Func gradient;

  Func._(this._pointer, this.name);

  static int _fromFunctionDef(Uint8List functionDef)
      native "FunctionNode_from_function_def";

  factory Func.fromFunctionDef(FunctionDef functionDef) {
    return Func._(_fromFunctionDef(functionDef.writeToBuffer()),
        functionDef.signature.name);
  }

  static List _fromGraph(
      Graph graph,
      String name,
      List<Output> outputs,
      List<String> outputNames,
      String description,
      List<Output> inputs,
      int nOpers,
      List<int> operations,
      bool appendHashToName) native "FunctionNode_from_graph";

  List _toFunctionDef() native "FunctionNode_to_function_def";

  FunctionDef toFunctionDef() {
    var result = Tuple3<int, String, Uint8List>.fromList(_toFunctionDef());
    var code = _codeFrom(result.item1);
    if (code != Code.ok) throw TensorFlowException(code, result.item2);
    return FunctionDef.fromBuffer(result.item3);
  }

  void copyIntoGraph({Graph graph}) {
    (graph ?? defaultGraph).copyFunction(this, grad: gradient);
  }

  Operation<T> call<T>(List<Output> arguments,
      {Graph graph, String operationName}) {
    graph ??= defaultGraph;
    copyIntoGraph(graph: graph);
    var desc = graph.newOperation<T>(
        name, operationName ??= graph._scope.uniqueName('$name/'));
    arguments.forEach(desc.addInput);
    return desc.finish();
  }
}
