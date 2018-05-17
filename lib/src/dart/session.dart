part of tensorflow;

class Session {
  static Object _run(Graph graph, Output tensor) {
    var result = __run(graph, tensor);
    var code = _codeFrom(result.item1);

    // TODO: Get message
    if (code != Code.ok) throw new TensorFlowException(code, result.item3);

    return result.item2;
  }

  static Tuple3<int, Object, String> __run(Graph graph, Output tensor)
      native "SessionRunGraph";
}
