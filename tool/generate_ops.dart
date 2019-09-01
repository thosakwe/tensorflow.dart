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
    'for',
    'print'
  ].contains(name)
      ? name + '\$'
      : name;
}

Reference convertType(tf.OpDef_ArgDef argDef, int index, tf.OpDef opDef,
    [bool wrapped = true]) {
  var t = (() {
    switch (argDef.type) {
      case tf.DataType.DT_BOOL:
        return Reference('bool');
        break;
      case tf.DataType.DT_INT32:
        return Reference('int');
        break;
      case tf.DataType.DT_INT64:
        return Reference('int');
        break;
      case tf.DataType.DT_FLOAT:
        return Reference('double');
        break;
      case tf.DataType.DT_STRING:
        return Reference('String');
        break;
      case tf.DataType.DT_INVALID:
        return refer('T'); //Reference(attrs[index].name);
        break;
      default:
        return null;
        //t = Reference('dynamic');
        break;
    }
  })();

  if (!wrapped) return t ?? refer('dynamic');

  if (t is TypeReference && t.symbol == 'Output') {
    return t;
  }

  return TypeReference((b) {
    b.symbol = 'Output';
    if (argDef.typeListAttr?.isNotEmpty == true) {
      b.types.add(TypeReference((b) => b
        ..symbol = 'List'
        ..types.add(t)));
    } else if (t != null) b.types.add(t);
  });
}

main(List<String> args) async {
  var ops = tf.Operation.list(); //tf.OpList.fromBuffer(tf.getAllOpsInternal());

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
        print(
            'Omitting ${o.name}: unsupported types $unsupported'); //: $unsupported');
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

  var lib = Library((libBuilder) {
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

      libBuilder.body.add(Method((method) {
        method.optionalParameters.add(Parameter((b) {
          b
            ..name = 'graph'
            ..type = refer('Graph');
        }));

        var p = Parameter((b) => b
          ..name = 'operationName'
          ..type = refer('String')
          ..named = true);
        method.optionalParameters.add(p);

        var hasT =
            op.attr.any((attr) => (attr.name == 'T' && attr.type == 'type')) ||
                op.inputArg.any((a) => a.type == tf.DataType.DT_INVALID) ||
                op.outputArg.any((a) => a.type == tf.DataType.DT_INVALID);

        var name = ReCase(op.name).camelCase;
        method
          ..docs.addAll(getDocs(op.summary))
          ..docs.addAll(getDocs(op.description))
          ..name = escapeName(name);

        if (op.inputArg.any((a) => a.type == tf.DataType.DT_INVALID) ||
            op.outputArg.any((a) => a.type == tf.DataType.DT_INVALID)) {
          method.types.add(refer('T'));
        }

        if (op.hasDeprecation()) {
          var ann = Reference('Deprecated').call([
            literal(
                'DEPRECATED at GraphDef version ${op.deprecation.version}:' +
                    ' ${op.deprecation.explanation}')
          ]);
          method.annotations.add(ann);
        }

        //var typeAttr = op.attr.where((o) => o.type == 'type').toList();
        var inputs = <String>[];
        String resultTypeName, outputTypeName;

        if (op.outputArg.isEmpty) {
          method.docs.addAll(getDocs('This operation has no outputs.'));
          method.returns = refer('Operation');
        } else if (op.outputArg.length == 1) {
          var output = op.outputArg[0];
          if (output.hasDescription())
            method.docs.addAll(getDocs(
                'This operation has one output: ${output.description}'));
          method.returns = convertType(output, 0, op);
        } else {
          // Create a custom output class.
          resultTypeName = ReCase(op.name).pascalCase;
          outputTypeName = '${resultTypeName}Output';
          method.returns = refer(outputTypeName);

          libBuilder.body.add(Class((resultClass) {
            resultClass..name = escapeName(resultTypeName);

            libBuilder.body.add(Class((outputClass) {
              outputClass
                ..name = escapeName(outputTypeName)
                ..fields.add(Field((b) => b
                  ..name = '_graph'
                  ..modifier = FieldModifier.final$
                  ..type = refer('Graph')));

              // Add a `T` if necessary.
              if (hasT) {
                outputClass.types.add(refer('T'));
                resultClass.types.add(refer('T'));
              }

              // Add a field + constructor parameter for each argument.
              outputClass.constructors.add(Constructor((outputConstructor) {
                int i = 0;

                outputConstructor.requiredParameters.add(Parameter((b) => b
                  ..name = '_graph'
                  ..toThis = true));

                outputConstructor.requiredParameters.add(Parameter((p) => p
                  ..name = 'op'
                  ..toThis = true));

                outputClass.fields.add(Field((b) => b
                  ..name = 'op'
                  ..type = refer('Operation')));

                resultClass.constructors.add(Constructor((resultConstructor) {
                  for (var output in op.outputArg) {
                    resultClass.fields.add(Field((resultField) {
                      var name = resultField.name = escapeName(
                          ReCase(output.name == 'op' ? 'op\$' : output.name)
                              .camelCase);
                      var type =
                          resultField.type = convertType(output, i++, op);
                      resultConstructor.requiredParameters
                          .add(Parameter((p) => p
                            ..name = name
                            ..toThis = true));
                      outputClass.fields.add(Field((outputField) {
                        outputField
                          ..name = name
                          ..modifier =
                              resultField.modifier = FieldModifier.final$
                          ..type = type;
                        outputConstructor.requiredParameters
                            .add(Parameter((p) => p
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
              outputClass.methods.add(Method((b) {
                b
                  ..name = 'run'
                  ..returns = refer(resultTypeName)
                  ..optionalParameters.add(Parameter((b) => b
                    ..name = 'feed'
                    ..named = true
                    ..type = TypeReference((b) => b
                      ..symbol = 'Map'
                      ..types.addAll([
                        refer('String'),
                        refer('Tensor'),
                      ]))))
                  ..body = Block((b) {
                    b.statements.addAll([
                      Code('var runner = _graph.session.runner;'),
                      Code('feed?.forEach(runner.feed);'),
                    ]);

                    for (int i = 0; i < op.outputArg.length; i++) {
                      b.statements.addAll([
                        Code('var idx\$$i = runner.fetch(op.name, index: $i);'),
                      ]);
                    }

                    b.statements.add(
                      Code('var result\$ = runner.run();'),
                    );

                    var args = <Expression>[];

                    for (int i = 0; i < op.outputArg.length; i++)
                      args.add(refer('result\$')
                          .index(refer('idx\$$i'))
                          .asA(convertType(op.outputArg[i], i, op)));

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
          var type = convertType(input, 0, op);
          var name = escapeName(ReCase(input.name).camelCase);
          inputs.add('_convertOutput($name)');

          bool isList =
              input.typeListAttr.isNotEmpty || input.numberAttr.isNotEmpty;
          if (isList) {
            type = TypeReference((b) => b
              ..symbol = 'List'
              ..types.add(type));
          }

          var p = Parameter((b) {
            b
              ..name = escapeName(ReCase(input.name).camelCase)
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

          var paramName = escapeName(ReCase(attr.name).camelCase);
          var p = Parameter((b) {
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
                var firstInput =
                    refer(escapeName(ReCase(op.inputArg[0].name).camelCase));
                body.insert(0,
                    dtype.assignNullAware(inferType([firstInput])).statement);
              }
            }

            var setAttr = StringBuffer('setAttr');
            setAttr.write(attrType(attr.type));
            if (attr.type.startsWith('list')) setAttr.write('List');

            body.add(refer('op\$')
                .property(setAttr.toString())
                .call([literal(attr.name), refer(b.name)]).statement);
          });
          method.optionalParameters.add(p);
        }

        body.add(Code('// ignore: unnecessary_cast'));
        var retVal = refer('op\$').property('finish').call([]);

        if (op.outputArg.isEmpty) {
          body.add(retVal.asA(method.returns).returned.statement);
        } else {
          if (op.outputArg.length <= 1) {
            var retType = method.returns;

            if (retType is TypeReference && retType.symbol == 'Output') {
              if ((retType as TypeReference).types.isNotEmpty) {
                retType = (retType as TypeReference).types[0];
              } else {
                // TODO: Should this always be Uint8List?
                retType = refer('Uint8List');
              }
            }

            retVal = retVal
                .index(literal(op.outputArg.length - 1))
                .property('cast')
                .call([], {}, [retType]);
          } else {
            body.add(retVal.assignVar('result\$').statement);
            var args = <Expression>[refer('graph'), refer('result\$')];

            for (int i = 0; i < op.outputArg.length; i++) {
              //var output = op.outputArg[i];
              var type = convertType(op.outputArg[i], i, op);
              args.add(refer('result\$').index(literal(i)).asA(type));
            }
            retVal = refer(outputTypeName)
                .newInstance(args, {}, hasT ? [refer('T')] : []);
          }

          body.add(retVal.returned.statement);
        }

        method.body = Block.of(body);
      }));
    }
  });

  var dartText = DartFormatter().format(lib.accept(DartEmitter()).toString());
  dartText =
      '// GENERATED CODE. DO NOT MODIFY BY HAND.\n\npart of tensorflow;\n\n' +
          dartText;

  if (!args.contains('--do-it')) {
    print(dartText);
  } else {
    await File('lib/src/dart/op_def.dart').writeAsString(dartText);
  }
}

Expression convertDefaultValue(tf.AttrValue defaultValue) {
  if (defaultValue.hasI()) return literal(defaultValue.i.toInt());
  if (defaultValue.hasF() && defaultValue.f == double.infinity)
    return CodeExpression(Code('double.infinity'));
  if (defaultValue.hasF() && defaultValue.f == double.negativeInfinity)
    return CodeExpression(Code('double.negativeInfinity'));
  if (defaultValue.hasF()) return literal(defaultValue.f);
  if (defaultValue.hasB()) return literalBool(defaultValue.b);
  if (defaultValue.hasType())
    return refer('DataType.${defaultValue.type.name}');
  if (defaultValue.hasS())
    return literalString(String.fromCharCodes(defaultValue.s));
  //print(defaultValue.writeToJson());
  return null;
}

final RegExp _listType = RegExp(r'list\(([^\)]+)\)');

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
