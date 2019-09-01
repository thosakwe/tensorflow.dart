import '../../tensorflow.dart' as tf;

class Dataset<T> {
  tf.Output<T> _value;

  tf.Output<T> get value =>
      _value ??= throw StateError('This dataset has not been initialized.');
}
