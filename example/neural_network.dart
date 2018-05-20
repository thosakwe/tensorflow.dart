import 'package:tensorflow/tensorflow.dart';

void main() {
  var tf = new Graph();
  var x = tf.randomUniform(tf.constant([1, 2]));
  print(x.run());
}
