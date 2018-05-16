import 'package:tensorflow/tensorflow.dart' as tf;

main() {
  print('Tensorflow version: ${tf.version}');

  var graph = new tf.Graph();

  var hello = graph.constant<String>('Hello, Tensorflow!');
  var split = graph.stringSplit(hello, graph.constant(','));

  graph.run(split);
  //graph.delete();

  //var buf = tf.Operation.list();
  //print(buf);
}
