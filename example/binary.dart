import 'package:tensorflow/tensorflow.dart' as tf;

void main() {
  var six = tf.constant(2.0) * tf.constant(3.0);
  var result = six.run();
  print('Result: $result');
}
