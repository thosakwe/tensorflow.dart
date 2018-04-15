import 'package:tensorflow/tensorflow.dart';
import 'package:test/test.dart';

void main() {
  test('constructor', () => new Graph());
  test('delete', () => new Graph().delete());
}