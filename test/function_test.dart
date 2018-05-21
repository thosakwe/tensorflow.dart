import 'dart:math';
import 'package:tensorflow/tensorflow.dart' as tf;
import 'package:test/test.dart';

var truncPi = pi.truncateToDouble();

tf.Output<double> circleArea(tf.Output<double> radius) =>
    tf.constant(truncPi) * tf.square(radius);

void main() {
  test('composite ops', () {
    expect(
      circleArea(tf.constant(4.0)).run(),
      truncPi * pow(4.0, 2),
    );
  });
}
