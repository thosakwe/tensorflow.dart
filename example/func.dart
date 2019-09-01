import 'dart:io';
import 'package:tensorflow/tensorflow.dart';

void main() {
  // Use a `Func` just like you would
  // in a regular programming language.
  //
  // It can be used to essentially register a
  // op.
  var mod2 = Func('mod2', (builder) {
    // Use `builder.arguments` to signal to Tensorflow
    // the number of, and types of inputs the function expects.
    var n = builder.arguments.get('n', dtype: DataType.DT_INT32);

    // The description is optional.
    //
    // If we want to return a value, or even multiple
    // values from the function, we need to add all return
    // values to `outputs`.
    builder
      ..description = 'Finds the modulus of a number vs 2.'
      ..outputs['result'] = mod(n, constant(2));
  });

  while (true) {
    stdout.write('Enter an integer: ');
    var line = stdin.readLineSync();
    if (line.isEmpty) continue;
    var n = int.tryParse(line);
    if (n == null) continue;

    print('You entered: $n');

    // You can "call" a Func like any object in Dart.
    var call = mod2([constant(n)])[0];
    var result = call.run();
    print('$n % 2 = $result == ${n % 2}');
  }
}
