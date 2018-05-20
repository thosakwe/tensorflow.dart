import 'package:tensorflow/tensorflow.dart';

main() {
  var graph = new Graph();
  var hello = graph.constant('Hello, Tensorflow!');
  var result = hello.run();
  print('Tensorflow version: ${tensorFlowVersion}');
  print('Result: $result');
}
