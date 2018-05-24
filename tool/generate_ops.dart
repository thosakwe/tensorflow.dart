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
    'sourceOutput',
    'graph',
    'operationName',
    'run',
    'print'
  ].contains(name)
      ? name + '\$'
      : name;
}

Reference convertType(tf.DataType type, int index, List<tf.OpDef_AttrDef> attrs,
    [bool wrapped = true]) {
  var t = (() {
    switch (type) {
      case tf.DataType.DT_BOOL:
        return new Reference('bool');
        break;
      case tf.DataType.DT_INT32:
        return new Reference('int');
        break;
      case tf.DataType.DT_INT64:
        return new Reference('int');
        break;
      case tf.DataType.DT_FLOAT:
        return new Reference('double');
        break;
      case tf.DataType.DT_STRING:
        return new Reference('String');
        break;
      case tf.DataType.DT_INVALID:
        return refer('T'); //new Reference(attrs[index].name);
        break;
      default:
        return null;
        //t = new Reference('dynamic');
        break;
    }
  })();

  if (!wrapped) return t ?? refer('dynamic');

  return new TypeReference((b) {
    b.symbol = 'Output';

    Reference t;
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
    for (var op in publicOps) {
      var body = <Code>[
        refer('graph').assignNullAware(refer('defaultGraph')).statement,
      ];
      body.add(refer('graph')
          .property('newOperation')
          .call([
            literal(op.name),
            refer('operationName').assignNullAware(
              refer('graph').property('_scope').property('uniqueName')([
                literal(op.name + '/'),
              ]),
            ),
          ])
          .assignVar('op\$')
          .statement);

      libBuilder.body.add(new Method((method) {
        method.optionalParameters.add(new Parameter((b) {
          b
            ..name = 'graph'
            ..type = refer('Graph');
        }));

        var p = new Parameter((b) => b
          ..name = 'operationName'
          ..type = refer('String')
          ..named = true);
        method.optionalParameters.add(p);

        var name = new ReCase(op.name).camelCase;
        method
          ..docs.addAll(getDocs(op.summary))
          ..docs.addAll(getDocs(op.description))
          ..returns = new Reference('Output')
          ..name = escapeName(name);

        if (op.inputArg.any((a) => a.type == tf.DataType.DT_INVALID) ||
            op.outputArg.any((a) => a.type == tf.DataType.DT_INVALID)) {
          method.types.add(refer('T'));
        }

        if (op.hasDeprecation()) {
          var ann = new Reference('Deprecated').call([
            literal('DEPRECATED at GraphDef version ${op.deprecation
                .version}:' +
                ' ${op.deprecation.explanation}')
          ]);
          method.annotations.add(ann);
        }

        var typeAttr = op.attr.where((o) => o.type == 'type').toList();
        var inputs = <String>[];
        String resultTypeName, outputTypeName;

        var hasT =
            op.attr.any((attr) => (attr.name == 'T' && attr.type == 'type')) ||
                op.inputArg.any((a) => a.type == tf.DataType.DT_INVALID) ||
                op.outputArg.any((a) => a.type == tf.DataType.DT_INVALID);

        if (op.outputArg.isEmpty) {
          method.docs.addAll(getDocs('This operation has no outputs.'));
          method.returns = refer('Operation');
        } else if (op.outputArg.length == 1) {
          var output = op.outputArg[0];
          if (output.hasDescription())
            method.docs.addAll(getDocs(
                'This operation has one output: ${output.description}'));
          method.returns = convertType(output.type, 0, typeAttr);
        } else {
          // Create a custom output class.
          resultTypeName = new ReCase(op.name).pascalCase;
          outputTypeName = '${resultTypeName}Output';
          method.returns = refer(outputTypeName);

          libBuilder.body.add(new Class((resultClass) {
            resultClass..name = escapeName(resultTypeName);

            libBuilder.body.add(new Class((outputClass) {
              outputClass
                ..name = escapeName(outputTypeName)
                ..fields.add(new Field((b) => b
                  ..name = '_graph'
                  ..modifier = FieldModifier.final$
                  ..type = refer('Graph')));

              // Add a `T` if necessary.
              if (hasT) {
                outputClass.types.add(refer('T'));
                resultClass.types.add(refer('T'));
              }

              // Add a field + constructor parameter for each argument.
              outputClass.constructors.add(new Constructor((outputConstructor) {
                int i = 0;

                outputConstructor.requiredParameters.add(new Parameter((b) => b
                  ..name = '_graph'
                  ..toThis = true));

                outputConstructor.requiredParameters.add(new Parameter((p) => p
                  ..name = 'op'
                  ..toThis = true));

                outputClass.fields.add(new Field((b) => b
                  ..name = 'op'
                  ..type = refer('Operation')));

                resultClass.constructors
                    .add(new Constructor((resultConstructor) {
                  for (var output in op.outputArg) {
                    resultClass.fields.add(new Field((resultField) {
                      var name = resultField.name = escapeName(
                          new ReCase(output.name == 'op' ? 'op\$' : output.name)
                              .camelCase);
                      var type = resultField.type =
                          convertType(output.type, i++, typeAttr);
                      resultConstructor.requiredParameters
                          .add(new Parameter((p) => p
                            ..name = name
                            ..toThis = true));
                      outputClass.fields.add(new Field((outputField) {
                        outputField
                          ..name = name
                          ..modifier =
                              resultField.modifier = FieldModifier.final$
                          ..type = new TypeReference((b) => b
                            ..symbol = 'Output'
                            ..types.add(type));
                        outputConstructor.requiredParameters
                            .add(new Parameter((p) => p
                              ..name = name
                              ..toThis = true));

                        if (output.hasDescription()) {
                          outputField.docs.addAll(getDocs(output.description));
                          resultField.docs.addAll(getDocs(output.description));
                        }
                      }));
                    }));
                  }
                }));
              }));

              // Add a helper `run` method.
              outputClass.methods.add(new Method((b) {
                b
                  ..name = 'run'
                  ..returns = refer(resultTypeName)
                  ..optionalParameters.add(new Parameter((b) => b
                    ..name = 'feed'
                    ..named = true
                    ..type = new TypeReference((b) => b
                      ..symbol = 'Map'
                      ..types.addAll([
                        refer('String'),
                        refer('Tensor'),
                      ]))))
                  ..body = new Block((b) {
                    b.statements.addAll([
                      new Code('var runner = _graph.session.runner;'),
                      new Code('feed?.forEach(runner.feed);'),
                    ]);

                    for (int i = 0; i < op.outputArg.length; i++) {
                      b.statements.addAll([
                        new Code(
                            'var idx\$$i = runner.fetch(op.name, index: $i);'),
                      ]);
                    }

                    b.statements.add(
                      new Code('var result\$ = runner.run();'),
                    );

                    var args = <Expression>[];

                    for (int i = 0; i < op.outputArg.length; i++)
                      args.add(refer('result\$').index(refer('idx\$$i')));

                    b.statements.add(refer(resultTypeName)
                        .newInstance(args, {}, hasT ? [refer('T')] : [])
                        .returned
                        .statement);
                  });
              }));
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
          }

          var p = new Parameter((b) {
            b
              ..name = escapeName(new ReCase(input.name).camelCase)
              ..type = type;

            if (input.hasDescription())
              method.docs
                  .addAll(getDocs('* [${b.name}]: ${input.description}'));
          });
          method.requiredParameters.add(p);

          body.add(refer('op\$')
              .property(isList ? 'addInputList' : 'addInput')
              .call([refer(name)]).statement);
        }

        for (var attr in op.attr) {
          if (attr.name == 'T' && attr.type == 'type') continue;

          var paramName = escapeName(new ReCase(attr.name).camelCase);
          var p = new Parameter((b) {
            b
              ..name = paramName
              ..named = true
              ..type = refer(dartType(attr.type, true));

            if (attr.hasDescription())
              method.docs
                  .addAll(getDocs('attr [${b.name}]: ${attr.description}'));

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
          });
          method.optionalParameters.add(p);
        }

        var retVal = refer('op\$').property('finish').call([]);

        if (op.outputArg.isEmpty) {
          body.add(retVal.returned.statement);
        } else {
          if (op.outputArg.length <= 1) {
            retVal = retVal.index(literal(op.outputArg.length - 1));
          } else {
            body.add(retVal.assignVar('result\$').statement);
            var args = <Expression>[refer('graph'), refer('result\$')];

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
      return 'Shape';
    case 'tensor':
      return allowTensorType ? 'Tensor' : 'Output';
    case 'string':
      return 'String';
    case 'func':
      return 'Func';
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
      return 'Shape';
    case 'tensor':
    case 'Tensor':
      return 'Tensor';
    case 'string':
    case 'String':
      return 'String';
    case 'func':
      return 'Func';
    default:
      var m = _listType.firstMatch(tfType);
      if (m == null) throw "Unknown attr type '${tfType}'.";
      var inner = dartType(m[1]);
      return attrType(inner);
  }
}
