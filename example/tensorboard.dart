import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:tensorflow/tensorflow.dart' as tf;

main() {
  var logDir = p.join(
    p.dirname(p.fromUri(Platform.script)),
    'logs',
  );

  new tf.FileWriter(logDir)
    ..histogram('foo', tf.zeros(new tf.Shape(2, 3)))
    ..flush()
    ..runInTensorboard(host: 'localhost');
}
