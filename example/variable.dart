import 'package:tensorflow/tensorflow.dart';

void main() {
  var x = Variable('x', dtype: DataType.DT_INT32, shape: Shape.scalar);
  var one = constant(1, dtype: DataType.DT_INT32);

  for (int i = 0; i < 10; i++) {
    // Increment the variable.
    x.assign(x.value + one).run();
  }

  // The value persists until it is re-assigned.
  print(x.value.run());
  print(x.value.run());
  print(x.value.run());
  print(x.value.run());
  print(x.value.run());

  x.assign(constant(-1337, dtype: DataType.DT_INT32)).depend();
  print(x.value.run());
  print(x.value.run());
  print(x.value.run());
  print(x.value.run());
  print(x.value.run());
}
