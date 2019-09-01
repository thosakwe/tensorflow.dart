import 'package:tensorflow/tensorflow.dart';

void main() {
  var w = Variable(
    'w',
    dtype: DataType.DT_FLOAT,
    shape: Shape(1, 1),
    initializer: constant(1.0, shape: Shape(1, 1)),
  );

  var tape = GradientTape();
  var loss = w.value * w.value;

  var grad = tape.gradient(loss, [w.value]);
}
