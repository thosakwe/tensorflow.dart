import 'package:tensorflow/tensorflow.dart' as tf;

void main() {
  var ds = tf.Dataset();
  return ds.value.run();
}
