import 'package:tensorflow/tensorflow.dart' as tf;

/// Simple example of gradient descent in tensorflow.dart.
///
/// Ported from https://gist.github.com/DominicBreuker/c1082d02456c4186c1a5f77e12972b85.
void main() {
  var x = tf.getVariable(
    'x',
    dtype: tf.DataType.DT_FLOAT,
    shape: tf.Shape.scalar,
    initializer: tf.constant(2.0),
  );
  x = tf.constant(4.0);
  var logX = tf.log(x), logXSquared = tf.square(logX);

  var optimizer = new tf.Optimizer.gradientDescent(learningRate: 0.5);
  var train = optimizer.minimize(logXSquared);
  throw train.run();
}
