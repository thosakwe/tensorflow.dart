import 'package:tensorflow/tensorflow.dart' as tf;

main() {
  var graph = new tf.Graph();
  //graph.delete();

  var buf = tf.Operation.list();
  print(buf);
}