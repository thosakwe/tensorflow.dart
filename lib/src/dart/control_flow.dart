import 'package:tensorflow/tensorflow.dart';

/// Create an op that groups multiple [Operation]s or [Output]s.
///
/// When this op finishes, all ops in [inputs] have finished. This op has no output.
Operation group(Iterable inputs, {String operationName, Graph graph}) {
  var ops = <Operation>[];

  for (var x in inputs) {
    if (x is Operation)
      ops.add(x);
    else if (x is Output) ops.add(x.op);
  }

  return withControlDependencies(
      ops, () => noOp(graph: graph, operationName: operationName));
}

