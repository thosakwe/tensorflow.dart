import 'package:tensorflow/tensorflow.dart';

void main() {
  var tf = new Graph();
  var six = tf.constant(2) * tf.constant(3);
  var result = tf.run(six);
  print('Result: $result');
}
