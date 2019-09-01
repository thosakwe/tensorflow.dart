import 'package:tensorflow/tensorflow.dart' as tf;

void main() {
  // Import the saved model from the directory we created in `import_saved_model.py`.
  var model = new tf.SavedModelBundle('example/saved_models');

  // We've successfully imported the model, but we'll need to restore some tensors
  // for it to run.
  //
  // Fortunately, we can programmatically get these from the meta-graph.
  //
  // See this:
  // https://stackoverflow.com/questions/37508771/how-to-save-and-restore-a-tensorflow-graph-and-its-state-in-c/37671613#37671613

  // Restore to a checkpoint.
  model.restoreCheckPoint('variables/variables.index',
      dtype: tf.DataType.DT_INT64);
}
