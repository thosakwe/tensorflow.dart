part of tensorflow;

class TensorFlowException implements Exception {
  final Code code;

  TensorFlowException(this.code);

  @override
  String toString() {
    return 'TensorFlow exception: $code';
  }
}