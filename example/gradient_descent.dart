import 'dart:async';
import 'package:tensorflow/tensorflow.dart';

void main() {
  const DataType dtype = DataType.DT_FLOAT;
  var xs = [1.0, 2.0, 3.0, 5.0, 6.0, 7.0];
  var ys = [6.0, 11.0, 16.0, 26.0, 31.0, 36.0]; // f(x) = 5x + 1
  var shape = new Shape(3);
  var xValues = new Tensor.from(xs).reshape(shape);
  var yValues = new Tensor.from(ys).reshape(shape);
  var epochs = 5;

  Variable<double> m, b;
  Output<double> x, y;

  // The initializer for random data.

  // Create m, b variables.
  m = new Variable('m', dtype: dtype, shape: Shape.scalar);
  b = new Variable('b', dtype: dtype, shape: shape);

  print(randomUniform(constant(shape), dtype: DataType.DT_FLOAT).shape);

  group([
    m.assign(randomUniform(constant(shape), dtype: DataType.DT_FLOAT)),
    b.assign(randomUniform(constant(shape), dtype: DataType.DT_FLOAT)),
  ]).depend();

  print('Initial m: ${m.value.runApplyShape()}');
  print('Initial b: ${b.value.runApplyShape()}');

  // Create x, y placeholders.
  x = placeholder(dtype: dtype, shape: shape, operationName: 'x');
  y = placeholder(dtype: dtype, shape: shape, operationName: 'y');

  // Our linear function, of course.
  var f_x = m.value * x + b.value;

  // RMSE loss function.
  var squaredDelta = square(f_x - y);
  var loss = reduceMean(squaredDelta, constant(0), keepDims: false);

  // Learning rate.
  var alpha = constant(0.3);

  for (int i = 0; i < 3; i++) {
    print('\n\nm@$i: ${m.value.runApplyShape()}');
    print('b@$i: ${b.value.runApplyShape()}');
    x.feed(xValues);
    y.feed(yValues);
    print('Loss: ${loss.run()}');

    var runner = defaultGraph.session.runner
      // ..fetch(resourceApplyGradientDescent(m.handle, alpha, loss).name)
      ..fetchFromOutput(applyGradientDescent(m.handle, alpha, loss));
    m.watch();
    print(runner.run());
  }

  /*
  withControlDependencies(init, () {
    var optimizer =
        new Optimizer.gradientDescent(train: [m, b], learningRate: 0.5);
    print('Initial m: ${m.value.run()}');

    for (int epoch = 0; epoch < epochs; epoch++) {
      var train = optimizer.minimize(loss);

      //print('Epoch: $epoch');
      x.feed(new Tensor.from(xs));
      y.feed(new Tensor.from(ys));
      train.run();
      //m.watch();
    }
  });
  */

  print('Final m: ${m.value.runApplyShape()}');
  print('Final b: ${b.value.runApplyShape()}');
}
