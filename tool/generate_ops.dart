import 'dart:collection';
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
  return const [
    'assert',
    'const',
    'if',
    'else',
    'switch',
    'var',
    'while',
    'sourceOutput'
  ].contains(name)
      ? name + '\$'
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
        t = refer('T'); //new Reference(attrs[index].name);
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

    bool v() {
      // Ignore operations with unsupported attributes.
      if (o.attr.any((a) => dartType(a.type) == null)) {
        var unsupported = o.attr
            .where((a) => dartType(a.type) == null)
            .map((a) => '${a.name} => ${a.type}')
            .toList();
        print('Omitting ${o
            .name}: unsupported types $unsupported'); //: $unsupported');
        return false;
      }

      // Ignore reference types, for now.
      //if (o.inputArg.any((a) => a.isRef) || o.outputArg.any((a) => a.isRef)) {
      //print(o.inputArg);
      //  return false;
      //}

      // Dart does not support multiple outputs.
      //if (o.outputArg.length > 1) {
      //  print('Omitting ${o.name} with ${o.outputArg.length} outputs');
      //  return false;
      //}

      return true;
    }

    var out = v();
    //if (!out) print('Omitting ${o.name}');
    return out;
  });

  print('Found ${publicOps.length} ops');

  var lib = new Library((libBuilder) {
    libBuilder.body.add(new Class((b) {
      b
        ..name = 'Graph'
        ..extend = new Reference('_Graph');

      b.constructors.addAll([
        new Constructor((b) => b..initializers.add(new Code('super()'))),
        new Constructor((b) => b
          ..name = '_fromPointer'
          ..requiredParameters.add(new Parameter((b) => b
            ..name = '_pointer'
            ..type = refer('int')))
          ..initializers.add(new Code('super._fromPointer(_pointer)'))),
      ]);

      b.methods.add(new Method((b) {
        /*
            /// 
  static Graph importGraphDef(GraphDef graphDef, {String prefix}) {}
         */
        b
          ..name = 'importGraphDef'
          ..static = true
          ..returns = refer('Graph')
          ..docs.add(
              '/// Import a serialized representation of a TensorFlow graph.')
          ..requiredParameters.add(new Parameter((b) => b
            ..name = 'graphDef'
            ..type = refer('GraphDef')))
          ..optionalParameters.add(new Parameter((b) => b
            ..name = 'prefix'
            ..type = refer('String')
            ..named = true))
          ..body = refer('_Graph')
              .property('importGraphDef')
              .call([refer('graphDef')], {'prefix': refer('prefix')})
              .returned
              .statement;
      }));

      for (var op in publicOps) {
        var body = <Code>[];
        body.add(refer('newOperation')
            .call([
              literal(op.name),
              refer('_scope').property('uniqueName')([literal(op.name)]),
            ])
            .assignVar('op\$')
            .statement);

        b.methods.add(new Method((method) {
          var name = new ReCase(op.name).camelCase;
          method
            ..docs.addAll(getDocs(op.summary))
            ..docs.addAll(getDocs(op.description))
            ..returns = new Reference('Output')
            ..name = escapeName(name);

          if (op.inputArg.any((a) => a.type == tf.DataType.DT_INVALID) ||
              op.outputArg.any((a) => a.type == tf.DataType.DT_INVALID))
            method.types.add(refer('T'));

          if (op.hasDeprecation())
            method.annotations.add(new Reference('Deprecated').call([
              literal(
                  'DEPRECATED at GraphDef version ${op.deprecation.version}:' +
                      ' ${op.deprecation.explanation}')
            ]));

          var typeAttr = op.attr.where((o) => o.type == 'type').toList();
          var paramAttr = op.attr.where((o) => o.type != 'type').toList();
          var inputs = <String>[], attributes = <String, Expression>{};
          String outputTypeName;

          var hasT = op.attr
                  .any((attr) => (attr.name == 'T' && attr.type == 'type')) ||
              op.inputArg.any((a) => a.type == tf.DataType.DT_INVALID) ||
              op.outputArg.any((a) => a.type == tf.DataType.DT_INVALID);

          if (op.outputArg.isEmpty)
            method.returns = refer('void');
          else if (op.outputArg.length == 1)
            method.returns = convertType(op.outputArg[0].type, 0, typeAttr);
          else {
            // Create a custom output class.
            outputTypeName = new ReCase(op.name).pascalCase + 'Output';
            method.returns = refer(outputTypeName);

            libBuilder.body.add(new Class((b) {
              b.name = escapeName(outputTypeName);

              // Add a `T` if necessary.
              if (hasT) b.types.add(refer('T'));

              // Add a field + constructor parameter for each argument.
              b.constructors.add(new Constructor((constructor) {
                int i = 0;

                constructor.requiredParameters.add(new Parameter((p) => p
                  ..name = 'sourceOutput'
                  ..toThis = true));

                b.fields.add(new Field((b) => b
                  ..name = 'sourceOutput'
                  ..type = refer('Output')));

                for (var output in op.outputArg) {
                  b.fields.add(new Field((b) {
                    b
                      ..name = escapeName(new ReCase(output.name).camelCase)
                      ..modifier = FieldModifier.final$
                      ..type = convertType(output.type, i++, typeAttr);
                    constructor.requiredParameters.add(new Parameter((p) => p
                      ..name = b.name
                      ..toThis = true));
                  }));
                }
              }));
            }));
          }

          // All inputs should be tf.Output or []tf.Output
          for (var input in op.inputArg) {
            var type = convertType(input.type, 0, typeAttr);
            var name = escapeName(new ReCase(input.name).camelCase);
            inputs.add('_convertOutput($name)');

            bool isList =
                input.typeListAttr.isNotEmpty || input.numberAttr.isNotEmpty;
            if (isList) {
              type = new TypeReference((b) => b
                ..symbol = 'List'
                ..types.add(type));
              /*
              print(input.typeListAttr.isNotEmpty
                  ? input.typeListAttr
                  : input.numberAttr);
                  */
            }

            method.requiredParameters.add(new Parameter((b) {
              b
                ..name = escapeName(new ReCase(input.name).camelCase)
                ..type = type;
            }));

            body.add(refer('op\$')
                .property(isList ? 'addInputList' : 'addInput')
                .call([refer(name)]).statement);
          }

          for (var attr in op.attr) {
            if (attr.name == 'T' && attr.type == 'type') continue;

            var paramName = escapeName(new ReCase(attr.name).camelCase);
            method.optionalParameters.add(new Parameter((b) {
              b
                ..name = paramName
                ..named = true
                ..type = refer(dartType(attr.type, true));

              if (attr.hasDefaultValue())
                b.defaultTo = convertDefaultValue(attr.defaultValue)?.code;
              //else
              //  b.annotations.add(refer('required'));

              if (attr.name == 'dtype') {
                if (op.inputArg.isEmpty)
                  b.annotations.add(refer('required'));
                else {
                  var dtype = refer('dtype'), inferType = refer('inferType');
                  var firstInput = refer(
                      escapeName(new ReCase(op.inputArg[0].name).camelCase));
                  body.insert(0,
                      dtype.assignNullAware(inferType([firstInput])).statement);
                }
              }

              var setAttr = new StringBuffer('setAttr');
              setAttr.write(attrType(attr.type));
              if (attr.type.startsWith('list')) setAttr.write('List');

              body.add(refer('op\$')
                  .property(setAttr.toString())
                  .call([literal(attr.name), refer(b.name)]).statement);
            }));
          }

          /*
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
              //else
              //  b.annotations.add(refer('required'));

              if (attr.name == 'dtype') {
                if (op.inputArg.isEmpty)
                  b.annotations.add(refer('required'));
                else {
                  var dtype = refer('dtype'), inferType = refer('inferType');
                  var firstInput = refer(
                      escapeName(new ReCase(op.inputArg[0].name).camelCase));
                  body.insert(0,
                      dtype.assignNullAware(inferType([firstInput])).statement);
                }
              }
            }));
            /*}

          for (var attr in op.attr) {
            var name = escapeName(new ReCase(attr.name).camelCase);

            if (attr.type == 'type')
              attributes[attr.name] = refer(attr.name);
            else*/
            attributes[attr.name] = refer(paramName);
          }
          */
          var retVal = refer('op\$').property('finish').call([]);

          if (op.outputArg.isEmpty) {
            body.add(retVal.statement);
          } else {
            if (op.outputArg.length <= 1) {
              retVal = retVal.index(literal(op.outputArg.length - 1));
            } else {
              body.add(retVal.assignVar('result\$').statement);
              var args = <Expression>[refer('result\$')];

              for (int i = 0; i < op.outputArg.length; i++) {
                //var output = op.outputArg[i];
                args.add(refer('result\$').index(literal(i)));
              }
              retVal = refer(outputTypeName)
                  .newInstance(args, {}, hasT ? [refer('T')] : []);
            }

            body.add(retVal.returned.statement);
          }

          method.body = new Block.of(body);
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

final RegExp _listType = new RegExp(r'list\(([^\)]+)\)');

String dartType(String tfType, [bool allowTensorType = false]) {
  switch (tfType) {
    case 'int':
      return 'int';
    case 'double':
      return 'double';
    case 'float':
      return 'double';
    case 'bool':
      return 'bool';
    case 'type':
      return 'DataType';
    case 'shape':
      return 'Shape'; // TODO: How to handle shapes?
    case 'tensor':
      return allowTensorType ? 'Tensor' : 'Output';
    case 'string':
      return 'String';
    default:
      var m = _listType.firstMatch(tfType);
      if (m == null) return null;
      var inner = dartType(m[1]);
      return 'List<$inner>';
  }
}

String attrType(String tfType) {
  switch (tfType) {
    case 'int':
    case 'Int':
      return 'Int';
    case 'double':
    case 'Double':
      return 'Float';
    case 'float':
    case 'Float':
      return 'Float';
    case 'bool':
    case 'Bool':
      return 'Bool';
    case 'DataType':
    case 'type':
      return 'Type';
    case 'Shape':
    case 'shape':
      return 'Shape'; // TODO: How to handle shapes?
    case 'tensor':
    case 'Tensor':
      return 'Tensor';
    case 'string':
    case 'String':
      return 'String';
    default:
      var m = _listType.firstMatch(tfType);
      if (m == null) throw "Unknown attr type '${tfType}'.";
      var inner = dartType(m[1]);
      return attrType(inner);
  }
}
