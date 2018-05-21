import 'package:tensorflow/tensorflow.dart' as tf;
import 'package:test/test.dart';

void main() {
  group('run', () {
    test('tensor', () {
      var msg = 'Hello, Tensorflow!';
      expect(tf.constant(msg).run(), msg);
    });
  });
}
