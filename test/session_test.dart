import 'package:tensorflow/tensorflow.dart';
import 'package:test/test.dart';

void main() {
  test('run', () {
    var sess = new Session();
    var c = new Graph();
    sess.run(c);
  });
}