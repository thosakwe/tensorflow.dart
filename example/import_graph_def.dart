import 'dart:io';
import 'package:tensorflow/tensorflow.dart' as tf;

main() async {
  var data =
      await new File('example/sample_model/sample_model.meta').readAsBytes();
  var metaGraph = new tf.MetaGraphDef.fromBuffer(data);
  var graph = new tf.Graph.fromGraphDef(metaGraph.graphDef);
  print('Read graph: ${graph.operations.length} operation(s)');
}
