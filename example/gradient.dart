import 'package:tensorflow/tensorflow.dart';

void main() {
  var x = constant([
    [1.0, 2.0],
    [3.0, 4.0],
    [5.0, 6.0]
  ]);
  var y = constant([
    [1.0],
    [2.0],
    [3.0]
  ]);

  var w1 =
      Variable.resource('w1', shape: Shape(2, 1), dtype: DataType.DT_FLOAT);
  w1.assign(constant(w1.shape.apply([0.1, 0.2]))).run();

  var layer1 = tanh(matMul(x, w1.value));

  var dydx = defaultGraph.addGradients([layer1], [x])[0];
  var result = dydx.run();
  print('dy/dx = $result');
}

/*

auto w1 = Variable(scope_, {2, 1}, DT_FLOAT);
auto assign_w1 = Assign(scope_, w1, Const(scope_, {{0.1f}, {0.2f}}));

auto layer_1 = Tanh(scope_, MatMul(scope_, x, w1));

std::vector<Output> grad_outputs;
TF_CHECK_OK(AddSymbolicGradients(scope_, {layer_1}, {assign_w1}, &grad_outputs));

auto apply = ApplyGradientDescent(
      scope_, {w1},
      Cast(scope_, 0,01,  static_cast<DataType>(w1.type() - 100)),
      {grad_outputs[0]});

ClientSession session(scope_);
TF_CHECK_OK(session.Run({assign_w1}, nullptr));
TF_CHECK_OK(session.Run({apply}, nullptr));
 */
