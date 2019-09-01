import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:tensorflow/tensorflow.dart' as tf;

// Sample use of the TensorFlow Dart API to label images using a pre-trained model.
//
// Ported from the original Java version:
// https://github.com/tensorflow/tensorflow/blob/master/tensorflow/java/src/main/java/org/tensorflow/examples/LabelImage.java

const String url =
    'https://storage.googleapis.com/download.tensorflow.org/models/inception5h.zip';

main(List<String> args) async {
  if (args.length != 2) {
    printUsage(stderr);
    exit(1);
  }

  var modelDir = args[0], imageFile = args[1];
  var graphDefBytes =
      await new File(p.join(modelDir, 'tensorflow_inception_graph.pb'))
          .readAsBytes();
  var labels =
      await new File(p.join(modelDir, 'imagenet_comp_graph_label_strings.txt'))
          .openRead()
          .cast<List<int>>()
          .transform(utf8.decoder)
          .transform(const LineSplitter())
          .toList();

  var image = constructAndExecuteGraphToNormalizeImage(imageFile);
  var labelProbabilities = executeInceptionGraph(graphDefBytes, image);
  var bestLabelIdx = maxIndex(labelProbabilities);
  stdout
    ..write('BEST MATCH: ')
    ..write(labels[bestLabelIdx])
    ..write(' (')
    ..write((labelProbabilities[bestLabelIdx] * 100.0).toStringAsFixed(2))
    ..writeln(' likely)');
}

tf.Output<double> constructAndExecuteGraphToNormalizeImage(
    String imageFileName) {
  // Some constants specific to the pre-trained model at:
  // https://storage.googleapis.com/download.tensorflow.org/models/inception5h.zip
  //
  // - The model was trained with images scaled to 224x224 pixels.
  // - The colors, represented as R, G, B in 1-byte each were converted to
  //   float using (value - Mean)/Scale.
  var H = 224;
  var W = 224;
  var mean = 117.0;
  var scale = 1.0;

  // Since the graph is being constructed once per execution here, we can use a constant for the
  // input image. If the graph were to be re-used for multiple input images, a placeholder would
  // have been more appropriate.
  var input = tf.readFile(tf.constant(imageFileName), operationName: 'input');

  var decodeJpeg = tf.cast(
    tf.decodeJpeg(input, channels: 3),
    srcT: tf.DataType.DT_UINT8,
    dstT: tf.DataType.DT_FLOAT,
  );

  var resizeBilinear = tf.resizeBilinear(
    tf.expandDims(
      decodeJpeg,
      tf.constant(0, operationName: 'make_batch'),
    ),
    tf.constant(
      H * W,
      operationName: 'size',
      dtype: tf.DataType.DT_INT32,
    ),
  );

  var meanDiff = resizeBilinear - tf.constant(mean, operationName: 'mean');

  return meanDiff / tf.constant(scale, operationName: 'scale');
}

List<double> executeInceptionGraph(
    List<int> graphDefBytes, tf.Output<double> image) {
  var g = new tf.Graph.fromGraphDef(new tf.GraphDef.fromBuffer(graphDefBytes));
  return tf.withScope(g, () {
    var runner = g.session.runner
      ..feed('input', new tf.Tensor.from(image.run()).reshape(image.shape))
      ..fetch('output');
    return runner.run()[0] as List<double>;
  });
}

int maxIndex(List<double> probabilities) {
  var best = 0;
  for (int i = 1; i < probabilities.length; ++i) {
    if (probabilities[i] > probabilities[best]) {
      best = i;
    }
  }
  return best;
}

void printUsage(IOSink sink) {
  sink
    ..writeln(
        'Dart program that uses a pre-trained Inception model (http://arxiv.org/abs/1512.00567)')
    ..writeln('to label JPEG images.')
    ..writeln('TensorFlow version: ${tf.version}')
    ..writeln()
    ..writeln('Usage: label_image <model_dir> <image file>')
    ..writeln()
    ..writeln('Where:')
    ..writeln(
        '<model dir> is a directory containing the unzipped contents of the inception model')
    ..writeln('            (from ' + url + ")")
    ..writeln('<image file> is the path to a JPEG image file');
}
