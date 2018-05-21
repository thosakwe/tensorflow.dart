import 'dart:math';
import 'package:tensorflow/tensorflow.dart' as tf;
import 'package:test/test.dart';

tf.Output<double> circleArea(tf.Output<double> radius) =>
    tf.constant(pi) * tf.square(radius);

void main() {
  test('composite ops', () {
    expect(
      circleArea(tf.constant(4.0)).run(),
      pi * pow(4.0, 2),
    );
  });
}
