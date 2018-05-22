import 'package:tensorflow/tensorflow.dart' as tf;

void main() {
  // By default, variables are initialized with zeros.
  var shape = new tf.Shape(6, 6);
  //throw tf.temporaryVariable(dtype: tf.DataType.DT_DOUBLE, shape: shape).dtype;
  var x = tf.getVariable('x', shape: shape);
  x.initializer.run();
  x = tf.matMul(x, x);
  print(x.run());
}
