import 'dart:io';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:recase/recase.dart';
import 'package:tensorflow/tensorflow.dart' as tf;

List<String> getDocs(String s) {
  return s
      .split('\n')
      .map((s) => s.trim())
      .where((s) => s.isNotEmpty)
      .map((s) => '/// $s')
      .toList();
}

String escapeName(String name) {
  return const ['assert', 'const', 'if', 'else', 'switch', 'var', 'while']
          .contains(name)
      ? name + '_'
      : name;
}

Reference convertType(
    tf.DataType type, int index, List<tf.OpDef_AttrDef> attrs) {
  return new TypeReference((b) {
    b.symbol = 'Output';

    Reference t;

    switch (type) {
      case tf.DataType.DT_BOOL:
        t = new Reference('bool');
        break;
      case tf.DataType.DT_INT32:
        t = new Reference('int');
        break;
      case tf.DataType.DT_INT64:
        t = new Reference('int');
        break;
      case tf.DataType.DT_FLOAT:
        t = new Reference('double');
        break;
      case tf.DataType.DT_STRING:
        t = new Reference('String');
        break;
      case tf.DataType.DT_INVALID:
        t = new Reference(attrs[index].name);
        break;
      default:
        t = new Reference('dynamic');
        break;
    }

    b.types.add(t);
  });
}

main() async {
  var ops =
      tf.Operation.list(); //new tf.OpList.fromBuffer(tf.getAllOpsInternal());
  print('Found ${ops.op.length} ops');

  var lib = new Library((b) {
    b.body.add(new Class((b) {
      b
        ..name = 'Graph'
        ..extend = new Reference('_Graph');

      for (var op in ops.op) {
        b.methods.add(new Method((b) {
          var name = new ReCase(op.name).camelCase;
          b
            ..docs.addAll(getDocs(op.description))
            ..returns = new Reference('Output')
            ..name = escapeName(name);

          for (var output in op.outputArg) {
            // TODO: Handle multiple?
            b.returns = convertType(output.type, 0, op.attr);
          }

          var args = <Expression>[literal(op.name), literal(op.name)];
          var inputs = <String>[];

          for (var attr in op.attr) {
            b.types.add(new Reference(attr.name));
          }

          int i = 0;
          for (var input in op.inputArg) {
            var name = escapeName(new ReCase(input.name).camelCase);
            inputs.add(name);
            b.requiredParameters.add(new Parameter((b) {
              b
                ..name = name
                ..type = convertType(input.type, i, op.attr);

              if (input.type == tf.DataType.DT_INVALID &&
                  i < op.attr.length - 1) i++;
            }));
          }
          args.add(new CodeExpression(new Code('[${inputs.join(',')}]')));

          var opType = new TypeReference((b) => b.symbol = 'Op');
          var instance = opType.newInstance(args);

          b.body = new Block((b) {
            b.statements.add(instance.assignVar('op').statement);
          });
        }));
      }
    }));
  });

  var dartText =
      new DartFormatter().format(lib.accept(new DartEmitter()).toString());
  dartText =
      '// GENERATED CODE. DO NOT MODIFY BY HAND.\n\npart of tensorflow;\n\n' +
          dartText;
  await new File('lib/src/dart/op_def.dart').writeAsString(dartText);
}
