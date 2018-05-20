import 'package:tensorflow/tensorflow.dart';

void main() {
  var tf = new Graph();
  var x = tf.variable(
    dtype: DataType.DT_INT32,
    shape: new Shape(2),
  );

  var node = tf.assign(x, tf.constant([2, 3]));
  node = tf.constant(new Shape(34, 5));
  print(node.run());

  //print(tf.constant([2.0], dtype: DataType.DT_FLOAT).run());

  //var dims = tf.constant([1, 2]);
  //var cross = tf.matMul(dims, [3, 3]);
  //print(cross.run());
  //var x = tf.randomUniform([1, 2]);
  /*var w = tf.variable(
      shape: shape(2, 3), dtype: DataType.DT_FLOAT, sharedName: 'w');*/
  //tf.globalVariablesInitializer.run();
  //tf.variableV2(shape: shape(1, 2), dtype: DataType.DT_FLOAT).run();
  //var three = tf.fill(shape(1, 0), 3.0, indexType: DataType.DT_INT64);
  //print(three.run());
}
