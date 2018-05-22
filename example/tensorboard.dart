import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:tensorflow/tensorflow.dart' as tf;

main() {
  var logDir = p.join(
    p.dirname(p.fromUri(Platform.script)),
    'logs',
  );
  var writer = new tf.FileWriter(logDir);
  return writer.runInTensorboard(host: 'localhost');
}
