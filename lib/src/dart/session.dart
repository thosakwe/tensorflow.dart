part of tensorflow;

class Session {
  static Object _run(Graph graph, Output tensor) {
    var result = __run(graph, tensor);
    var code = _codeFrom(result.item1);

    // TODO: Get message
    if (code != Code.ok) throw new TensorFlowException(code);

    return result.item2;
  }

  static Tuple2<int, Object> __run(Graph graph, Output tensor)
      native "SessionRunGraph";
}
