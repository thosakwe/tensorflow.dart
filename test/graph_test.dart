import 'package:tensorflow/tensorflow.dart';
import 'package:test/test.dart';

void main() {
  test('constructor', () => new Graph());
  test('close', () => new Graph().close());
}
