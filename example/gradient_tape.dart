import 'package:tensorflow/tensorflow.dart';

void main() {
  var w = new Variable(
    'w',
    dtype: DataType.DT_FLOAT,
    shape: new Shape(1, 1),
    initializer: constant(1.0, shape: new Shape(1, 1)),
  );

  var tape = new GradientTape();
  var loss = w.value * w.value;

  var grad = tape.gradient(loss, [w.value]);
}
