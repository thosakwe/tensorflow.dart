import 'package:tensorflow/tensorflow.dart' as tf;

void main() {
  tf.constant('Hello, world!');
  var graphDef = tf.defaultGraph.toGraphDef();
  print('${graphDef.node.length} node(s)');
}
