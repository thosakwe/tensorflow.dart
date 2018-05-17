import 'package:tensorflow/tensorflow.dart';

void main() {
  var tf = new Graph();
  var four = tf.mul(tf.constant(1.0), tf.constant(4.0));
  var six = tf.constant(2.0) * tf.constant(3.0);
  var result = tf.run(six);
  print('Result: $result');
  print(tf.exp(six).run());
  print(tf.placeholder(shape: [2, 3], dtype: DataType.DT_FLOAT).run());
}
