part of tensorflow;

class TensorFlowException implements Exception {
  final Code code;
  final String message;

  TensorFlowException(this.code, this.message);

  factory TensorFlowException._(int code, String message) =>
      new TensorFlowException(_codeFrom(code), message);

  @override
  String toString() => '$code: $message';
}
