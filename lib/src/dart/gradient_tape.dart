import 'dart:collection';
import 'package:tensorflow/tensorflow.dart';

///
class GradientTape<T> { final Queue<Output<T>> _tape = new Queue(); final bool _persistent;
  bool _done = false;

  GradientTape({bool persistent: false}) : _persistent = persistent;

  StateError _error() =>
      new StateError('This GradientTape has already been closed.');

  void close() {
    _done = true;
  }

  void watch(Output<T> output) {
    if (_done) throw _error();
    _tape.add(output);
  }

  Output<T> gradient(Output<T> target, Iterable<Output<T>> sources,
      {Iterable<Output<T>> outputGradients}) {
    if (_done) throw _error();
  }
}
