part of tensorflow;

class TensorFlowException implements Exception {
  final Code code;
  final String message;

  TensorFlowException(this.code, this.message);

  @override
  String toString() {
    return 'TensorFlow exception: $code: $message';
  }
}