import 'dart:async';
import 'dart:io';
import 'package:async/async.dart';
import 'package:tensorflow/tensorflow.dart' as tf;

class FileWriter {
  final String logDir;
  int _step = 0;
  tf.Graph _graph;
  tf.Output _writer;

  FileWriter(this.logDir,
      {int maxQueue: 10,
      int flushMillis: 120000,
      String filenameSuffix: '',
      tf.Graph graph}) {
    Directory(logDir).createSync(recursive: true);
    _writer = tf.summaryWriter(graph: _graph = graph);

    var op = tf.createSummaryFileWriter(
      _writer,
      tf.constant(logDir),
      tf.constant(maxQueue),
      tf.constant(flushMillis),
      tf.constant(filenameSuffix),
      graph: _graph,
    );
    op.run();
  }

  void close() {
    tf.closeSummaryWriter(_writer, graph: _graph).run();
  }

  void flush() => tf.flushSummaryWriter(_writer, graph: _graph).run();

  void histogram(String name, tf.Output values, {String family: ''}) {
    tf
        .writeHistogramSummary(
            _writer,
            tf.constant(_step++, dtype: tf.DataType.DT_INT64),
            tf.constant(family.isEmpty ? 'summaries' : '$family/summaries'),
            values,
            graph: _graph,
            operationName: name)
        .run();
  }

  Future<CancelableOperation> runInTensorboard({String host, int port}) async {
    var args = ['--logdir=$logDir'];
    if (host != null) args.add('--host=$host');
    if (port != null) args.add('--port=$port');
    var tensorboard = await Process.start('tensorboard', args);
    stdout.addStream(tensorboard.stdout);
    stderr.addStream(tensorboard.stderr);

    var c = CancelableCompleter(onCancel: () => tensorboard.kill());

    //stdin.readByteSync();
    //tensorboard.kill();
    tensorboard.exitCode.then((_) {
      if (!c.isCompleted && !c.isCanceled) c.complete();
    });

    return c.operation;
  }
}
