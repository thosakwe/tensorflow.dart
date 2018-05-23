import 'package:meta/meta.dart';
import 'package:tensorflow/tensorflow.dart';

abstract class Optimizer {
  final String _name;

  Optimizer._(this._name);

  factory Optimizer.gradientDescent({@required double learningRate,
    bool useLocking: true,
    @required Iterable<Variable> train,
    Graph graph}) =>
      new _GradientDescentOptimizer(
          learningRate, useLocking, train?.toList() ?? [], graph ?? defaultGraph);

  Operation minimize<T>(Output<T> grad);
}

class _GradientDescentOptimizer extends Optimizer {
  final double learningRate;
  final bool useLocking;
  final List<Variable> train;
  final Output<double> alpha;
  final Graph graph;

  _GradientDescentOptimizer(this.learningRate, this.useLocking, this.train,
      this.graph)
      : alpha = constant(learningRate),
        super._('GradientDescent');

  @override
  Operation minimize<T>(Output<T> grad) {
    var init = train
        .map((v) =>
        resourceApplyGradientDescent(
          v.handle,
          alpha,
          grad,
          useLocking: useLocking,
          graph: graph,
        ))
        .toList();
    var min = withControlDependencies(init, () => noOp(graph: graph));

    for (var v in train) {
      v.watch();
      //graph.session.runner.fetchFromOutput(print$(constant(0), [constant(v.name), v.value]));
      //var getVal = withControlDependencies([min], () => v.value);
    }

    return min;
  }
}
