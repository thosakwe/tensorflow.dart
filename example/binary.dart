import 'package:tensorflow/tensorflow.dart';

void main() {
  var tf = new Graph();
  var six = tf.constant(2.0) * tf.constant(3.0);
  var result = six.run();
  print('Result: $result');
}
