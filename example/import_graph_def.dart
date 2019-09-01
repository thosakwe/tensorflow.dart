import 'dart:io';
import 'package:tensorflow/tensorflow.dart' as tf;

main() async {
  var data =
      await File('example/sample_model/sample_model.meta').readAsBytes();
  var metaGraph = tf.MetaGraphDef.fromBuffer(data);
  var graph = tf.Graph.fromGraphDef(metaGraph.graphDef);
  print('Read graph: ${graph.operations.length} operation(s)');
}
