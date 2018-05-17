import 'package:tensorflow/tensorflow.dart' as tf;

main() {
  print('Tensorflow version: ${tf.version}');
  var graph = new tf.Graph();
  var result = graph.run(graph.constant('Hello, Tensorflow!'));
  print('Result: $result');
}
