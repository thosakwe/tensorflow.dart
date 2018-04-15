part of tensorflow;

class Session {
  static Object runTensor(Tensor tensor, [String operationName = 'tensor']) {
    var result = _runTensor(tensor, operationName);
    var code = _codeFrom(result.item1);

    // TODO: Get message
    if (code != Code.ok) throw new TensorFlowException(code);

    return result.item2;
  }

  static Tuple2<int, Object> _runTensor(Tensor tensor, String operationName)
      native "SessionRunTensor";
}
