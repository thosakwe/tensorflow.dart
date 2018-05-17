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
  return refer('Output');

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
        t = null; //new Reference(attrs[index].name);
        break;
      default:
        return null;
        //t = new Reference('dynamic');
        break;
    }

    if (t != null) b.types.add(t);
  });
}

main() async {
  var ops =
      tf.Operation.list(); //new tf.OpList.fromBuffer(tf.getAllOpsInternal());

  var publicOps = ops.op.where((o) {
    // Ignore internals
    if (o.name.startsWith('_')) return false;

    // Ignore operations with unsupported attributes.
    if (o.attr.any((a) => dartType(a.type) == null)) return false;

    // Ignore reference types, for now.
    //if (o.inputArg.any((a) => a.isRef) || o.outputArg.any((a) => a.isRef))
    //  return false;

    // Dart does not support multiple outputs.
    if (o.outputArg.length > 1) return false;

    return true;
  });

  print('Found ${publicOps.length} ops');

  var lib = new Library((b) {
    b.body.add(new Class((b) {
      b
        ..name = 'Graph'
        ..extend = new Reference('_Graph');

      for (var op in publicOps) {
        if (op.name.startsWith('_')) continue;

        var body = <Code>[];

        b.methods.add(new Method((b) {
          var name = new ReCase(op.name).camelCase;
          b
            ..docs.addAll(getDocs(op.summary))
            ..docs.addAll(getDocs(op.description))
            ..returns = new Reference('Output')
            ..name = escapeName(name);

          if (op.hasDeprecation())
            b.annotations.add(new Reference('Deprecated').call([
              literal(
                  'DEPRECATED at GraphDef version ${op.deprecation.version}:' +
                      ' ${op.deprecation.explanation}')
            ]));

          var typeAttr = op.attr.where((o) => o.type == 'type').toList();
          var paramAttr = op.attr.where((o) => o.type != 'type').toList();
          var inputs = <String>[], attributes = <String, Expression>{};

          for (var output in op.outputArg) {
            // TODO: Handle multiple?
            b.returns = convertType(output.type, 0, typeAttr);
          }

          // All inputs should be tf.Output or []tf.Output
          for (var input in op.inputArg) {
            var type = convertType(input.type, 0, typeAttr);
            inputs.add(escapeName(new ReCase(input.name).camelCase));

            if (input.typeListAttr.isNotEmpty || input.numberAttr.isNotEmpty) {
              type = new TypeReference((b) => b
                ..symbol = 'List'
                ..types.add(type));
              /*
              print(input.typeListAttr.isNotEmpty
                  ? input.typeListAttr
                  : input.numberAttr);
                  */
            }

            b.requiredParameters.add(new Parameter((b) {
              b
                ..name = escapeName(new ReCase(input.name).camelCase)
                ..type = type;
            }));
          }

          for (var attr in op.attr) {
            if (attr.name == 'T' && attr.type == 'type') continue;

            var paramName = escapeName(new ReCase(attr.name).camelCase);
            b.optionalParameters.add(new Parameter((b) {
              b
                ..name = paramName
                ..named = true
                ..type = refer(dartType(attr.type));

              if (attr.hasDefaultValue())
                b.defaultTo = convertDefaultValue(attr.defaultValue)?.code;
              else
                b.annotations.add(refer('required'));
            }));
            /*}

          for (var attr in op.attr) {
            var name = escapeName(new ReCase(attr.name).camelCase);

            if (attr.type == 'type')
              attributes[attr.name] = refer(attr.name);
            else*/
            attributes[attr.name] = refer(paramName);
          }

          var args = <Expression>[
            literal(op.name),
            refer('_scope').property('uniqueName')([literal(op.name)]),
          ];

          for (var attr in typeAttr) {
            //b.types.add(new Reference(attr.name));
          }

          /*


          int i = 0;
          for (var input in op.inputArg) {
            var name = escapeName(new ReCase(input.name).camelCase);
            inputs.add(name);
            b.requiredParameters.add(new Parameter((b) {
              b
                ..name = name
                ..type = convertType(
                    input.type, i, op.attr); // TODO: Figure this out!!!

              if (input.type == tf.DataType.DT_INVALID &&
                  i < op.attr.length - 1) i++;
            }));
          }

          for (var attr in paramAttr) {
            var name = escapeName(new ReCase(attr.name).camelCase);
            b.optionalParameters.add(new Parameter((b) {
              b
                ..docs.addAll(getDocs(attr.description))
                ..name = name
                ..named = true;
            }));
          }

          */
          args.add(new CodeExpression(new Code('[${inputs.join(',')}]')));
          args.add(literalMap(attributes));

          var opType =
              new TypeReference((b) => b.symbol = 'OperationDescription');
          var instance = opType.newInstance(args);

          body.add(refer('addOperation')([instance]).returned.statement);
          b.body = new Block.of(body);
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

Expression convertDefaultValue(tf.AttrValue defaultValue) {
  if (defaultValue.hasI()) return literal(defaultValue.i.toInt());
  if (defaultValue.hasF()) return literal(defaultValue.f);
  if (defaultValue.hasB()) return literalBool(defaultValue.b);
  if (defaultValue.hasType())
    return refer('DataType.${defaultValue.type.name}');
  //if (defaultValue.hasS()) return literalConstList(defaultValue.s);
  if (defaultValue.hasS())
    return literalString(new String.fromCharCodes(defaultValue.s));
  //print(defaultValue.writeToJson());
  return null;
}

String dartType(String tfType) {
  switch (tfType) {
    case 'int':
      return 'int';
    case 'float':
      return 'double';
    case 'bool':
      return 'bool';
    case 'type':
      return 'DataType';
    case 'shape':
      return 'List<int>'; // TODO: How to handle shapes?
    case 'tensor':
      return 'Output';
    case 'string':
      return 'String';
    default:
      return null;
  }
}
