import 'package:tensorflow/tensorflow.dart';

void main() {
  var tf = new Graph()..constant('Hello, world!');
  var graphDef = tf.toGraphDef();
  print('${graphDef.node.length} node(s)');
}

