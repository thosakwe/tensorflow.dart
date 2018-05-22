import 'package:tensorflow/tensorflow.dart' as tf;

void main() {
  var lengthMod2 = new tf.Func('lengthMod2', (args) {
    var str = args.get('str', dtype: tf.DataType.DT_STRING);
    return tf.mod(tf.size(str), tf.constant(2));
  });

  throw lengthMod2;
}
