import 'package:tensorflow/tensorflow.dart' as tf;
import 'package:test/test.dart';

void main() {
  group('run', () {
    test('tensor', () {
      var hello = tf.constant("Hello, Tensorflow!");
      var code = tf.Session.runTensor(hello);
      print('Code: $code');
    });
  });
}