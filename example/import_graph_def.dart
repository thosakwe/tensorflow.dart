import 'dart:io';
import 'package:tensorflow/tensorflow.dart';

main() async {
  var data =
      await new File('example/sample_model/sample_model.meta').readAsBytes();
  var metaGraph = new MetaGraphDef.fromBuffer(data);
  var graph = Graph.importGraphDef(metaGraph.graphDef);
  print('Read graph: ${graph.operations.length} operation(s)');
}
