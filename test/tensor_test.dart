import 'package:tensorflow/tensorflow.dart' as tf;
import 'package:test/test.dart';

void main() {
  test('hello', () => tf.constant('Hello').run());
}
