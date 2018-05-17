import 'package:tensorflow/tensorflow.dart' as tf;

main() {
  var graph = new tf.Graph();
  var result = graph.run(
    graph.constant('Hello, Tensorflow!'),
  );

  print('Tensorflow version: ${tf.version}');
  print('Result: $result');
}
