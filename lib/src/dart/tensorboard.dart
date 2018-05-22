import 'dart:async';
import 'dart:io';
import 'package:async/async.dart';
import 'package:path/path.dart' as p;
import 'package:tensorflow/tensorflow.dart' as tf;

class FileWriter {
  final String logDir;

  FileWriter(this.logDir) {
    new Directory(logDir).createSync(recursive: true);
  }

  Future<CancelableOperation> runInTensorboard({String host, int port}) async {
    var args = ['--logdir=$logDir'];
    if (host != null) args.add('--host=$host');
    if (port != null) args.add('--port=$port');
    var tensorboard = await Process.start('tensorboard', args);
    stdout.addStream(tensorboard.stdout);
    stderr.addStream(tensorboard.stderr);


    var c = new CancelableCompleter(onCancel: () => tensorboard.kill());

    //stdin.readByteSync();
    //tensorboard.kill();
    tensorboard.exitCode.then((_) {
      if (!c.isCompleted && !c.isCanceled) c.complete();
    });

    return c.operation;
  }
}
