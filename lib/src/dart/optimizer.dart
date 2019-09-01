import 'package:meta/meta.dart';
import 'package:tensorflow/tensorflow.dart';

abstract class Optimizer {
  final String _name;
  final Graph _graph;

  Optimizer._(this._name, this._graph);

  factory Optimizer.gradientDescent(
          {@required double learningRate,
          bool useLocking: true,
          @required Iterable<Variable> train,
          Graph graph}) =>
      _GradientDescentOptimizer(learningRate, useLocking,
          train?.toList() ?? [], graph ?? defaultGraph);

  Operation applyDense(Variable var$, Output grad,
      {String operationName, bool useLocking: true});

  Map<Variable, Output> computeGradients(Output loss, {List<Output> gradLoss});

  Operation minimize(Output loss,
      {String operationName, List<Output> gradLoss}) {
    var gradAndVars = computeGradients(loss, gradLoss: gradLoss);
    var deps = <Operation>[];
    gradAndVars.forEach((var$, grad) {
      deps.add(applyDense(var$, grad));
    });

    return group(deps, graph: _graph, operationName: operationName);
  }
}

class _GradientDescentOptimizer extends Optimizer {
  final double learningRate;
  final bool useLocking;
  final List<Variable> train;
  final Output<double> alpha;

  _GradientDescentOptimizer(
      this.learningRate, this.useLocking, this.train, Graph graph)
      : alpha = constant(learningRate),
        super._('GradientDescent', graph);

  @override
  Operation applyDense(Variable var$, Output grad,
      {String operationName, bool useLocking: true}) {
    var$.watch();

    if (var$.isResourceVariable) {
      return resourceApplyGradientDescent(var$.handle, alpha, grad,
          operationName: operationName, useLocking: useLocking);
    } else {
      return applyGradientDescent(var$.handle, alpha, grad,
              operationName: operationName, useLocking: useLocking)
          .op;
    }
  }

  @override
  Map<Variable, Output> computeGradients(Output loss, {List<Output> gradLoss}) {
    var out = <Variable, Output>{};

    for (var var$ in train) {
      out[var$] = _graph.addGradients(
        [loss],
        gradLoss,
        //[!var$.isResourceVariable ? var$.read : var$.read],
        //dx: gradLoss,
      )[0];
    }

    return out;
  }
}
