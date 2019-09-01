import 'dart:math';
import 'package:tensorflow/tensorflow.dart';

void main() {
  // Create a placeholder.
  var radius = placeholder<double>(
    dtype: DataType.DT_FLOAT,
    shape: Shape.scalar,
    operationName: 'radius',
  );

  // We can use the placeholder like any other output.
  var circleArea = constant(pi) * square(radius);

  // Easily compute the area now.
  for (double r = 1.0; r <= 10.0; r++) {
    var result = circleArea.run(feed: {'radius': Tensor.from(r)});
    print('Radius: $r, Area: $result');
  }
}
