import 'dart:async';
import 'package:tensorflow/tensorflow.dart';

/// Simple example of gradient descent in tensorflow.dart.
///
/// https://gist.github.com/FFY00/564fe402666068fbf63d8dd17f996ba9

void main() {
  const DataType dtype = DataType.DT_FLOAT;
  var xs = [1.0, 2.0, 3.0];
  var ys = [6.0, 11.0, 16.0]; // f(x) = 5x + 1
  var shape = new Shape(1);
  var epochs = 5;

  Variable<double> m, b;
  Output<double> x, y;

  // Create m, b variables.
  m = new Variable(name: 'm', dtype: dtype, shape: shape);
  b = new Variable(name: 'b', dtype: dtype, shape: shape);

  // Initialize them with random data.
  var init = [
    m.assign(randomUniform(constant(shape), dtype: DataType.DT_FLOAT)).op,
    b.assign(randomUniform(constant(shape), dtype: DataType.DT_FLOAT)).op,
  ];

  // Create x, y placeholders.
  x = placeholder(dtype: dtype, shape: shape, operationName: 'x');
  y = placeholder(dtype: dtype, shape: shape, operationName: 'y');

  withControlDependencies(init, () {
    var optimizer =
        new Optimizer.gradientDescent(train: [m, b], learningRate: 0.5);
    print('Initial m: ${m.value.run()}');

    for (int epoch = 0; epoch < epochs; epoch++) {
      // Our linear function, of course.
      var f_x = m.value * x + b.value;

      // RMSE loss function.
      var squaredDelta = square(f_x - y);
      var loss = mean(squaredDelta, constant(1), keepDims: true);
      var train = optimizer.minimize(loss);

      //print('Epoch: $epoch');
      x.feed(new Tensor.from(xs));
      y.feed(new Tensor.from(ys));
      train.run();
      //m.watch();
    }
  });

  print('Final m: ${m.value.run()}');
}
