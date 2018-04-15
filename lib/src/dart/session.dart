part of tensorflow;

class Session {
  static Code runTensor(Tensor tensor, [String operationName = 'tensor'])
      native "SessionRunTensor";
}
