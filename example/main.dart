import 'package:tensorflow/tensorflow.dart' as tf;

main() {
  var hello = tf.constant('Hello, Tensorflow!');
  var result = hello.run();
  print('Tensorflow version: ${tf.version}');
  print('Result: $result');
}
