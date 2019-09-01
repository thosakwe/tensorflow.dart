import 'dart:async';
import 'package:tensorflow/tensorflow.dart';

void main() {
  const DataType dtype = DataType.DT_FLOAT;
  var xs = [1.0, 2.0, 3.0, 5.0, 6.0, 7.0];
  var ys = [6.0, 11.0, 16.0, 26.0, 31.0, 36.0]; // f(x) = 5x + 1
  var shape = Shape(3);
  var xValues = Tensor.from(xs).reshape(shape);
  var yValues = Tensor.from(ys).reshape(shape);
  var epochs = 5;

  Variable m, b;
  Output<double> x, y;

  // The initializer for random data.

  // Create m, b variables.
  m = Variable.resource('m', dtype: dtype, shape: shape);
  b = Variable.resource('b', dtype: dtype, shape: shape);

  m.assign(randomUniform(constant(shape), dtype: DataType.DT_FLOAT)).run();
  b.assign(randomUniform(constant(shape), dtype: DataType.DT_FLOAT)).run();

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

  var optimizer =
      Optimizer.gradientDescent(learningRate: 0.5, train: [m, b]);
  var train = optimizer.minimize(loss, gradLoss: [x]);

  for (int epoch = 0; epoch < epochs; epoch++) {
    //print('Epoch: $epoch');
    x.feed(Tensor.from(xs));
    y.feed(Tensor.from(ys));
    train.run();
    //m.watch();
  }

  /*
  withControlDependencies(init, () {
    var optimizer =
        Optimizer.gradientDescent(train: [m, b], learningRate: 0.5);
    print('Initial m: ${m.value.run()}');

    for (int epoch = 0; epoch < epochs; epoch++) {
      var train = optimizer.minimize(loss);

      //print('Epoch: $epoch');
      x.feed(Tensor.from(xs));
      y.feed(Tensor.from(ys));
      train.run();
      //m.watch();
    }
  });
  */

  print('Final m: ${m.value.runApplyShape()}');
  print('Final b: ${b.value.runApplyShape()}');
}
