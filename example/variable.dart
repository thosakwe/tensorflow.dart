import 'package:tensorflow/tensorflow.dart' as tf;

void main() {
  // By default, variables are initialized with zeros.
  //
  // However, here let's make it random.
  var shape = new tf.Shape(6, 6);

  var x = tf.getVariable(
    'x',
    shape: shape,
    initializer: tf.randomUniform(
      tf.constant(shape),
      dtype: tf.DataType.DT_FLOAT,
    ),
  );

  x = tf.matMul(x, x);

  print(x.run());
}
