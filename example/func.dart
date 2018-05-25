import 'dart:io';
import 'package:tensorflow/tensorflow.dart';

void main() {
  var lengthMod2 = new Func('mod2', (builder) {
    var n = builder.arguments.get('n', dtype: DataType.DT_INT32);
    builder
      ..description = 'Finds the modulus of a number vs 2.'
      ..outputs['result'] = mod(n, constant(2));
  });

  while(true) {
    stdout.write('Enter an integer: ');
    var line = stdin.readLineSync();
    if (line.isEmpty) continue;
    var n = int.tryParse(line);
    if (n == null) continue;

    print('You entered: $n');
    var call = lengthMod2([constant(n)])[0];
    var result = call.run();
    print('$n % 2 = $result == ${n % 2}');
  }
}
