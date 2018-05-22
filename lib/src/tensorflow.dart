library tensorflow;

import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'dart:core' as core;
import 'dart:math' as math;
import 'dart:typed_data';
import 'dart-ext:tensorflow_dart';
import 'package:collection/collection.dart';
import 'package:fixnum/fixnum.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:symbol_table/symbol_table.dart';
import 'package:tuple/tuple.dart';
import 'proto/proto.dart';
export 'proto/proto.dart';

export 'dart/data.dart';
export 'dart/tensorboard.dart';

part 'dart/enums.dart';

part 'dart/error.dart';

part 'dart/function_node.dart';

part 'dart/graph.dart';

part 'dart/op_def.dart';

part 'dart/operation.dart';

part 'dart/operation_description.dart';

part 'dart/optimizer.dart';

part 'dart/output.dart';

part 'dart/saved_model_bundle.dart';

part 'dart/session.dart';

part 'dart/shape.dart';

part 'dart/tensor.dart';

part 'dart/variable.dart';

String get version native "Version";

Uint8List _getAllOpsInternal() native "Operation_list";

Graph _importGraphDef(Uint8List buffer, Type graphType)
    native "Graph_importGraphDef";

Graph importGraphDef(GraphDef graphDef) =>
    _importGraphDef(graphDef.writeToBuffer(), Graph);

DataType inferType(x) {
  if (x is Output)
    return x.dtype.value > 100
        ? DataType.valueOf(x.dtype.value - 100)
        : x.dtype;
  if (x is int) return DataType.DT_INT32;
  if (x is double) return DataType.DT_FLOAT;
  if (x is bool) return DataType.DT_BOOL;
  if (x is String) return DataType.DT_STRING;
  if (x is Iterable) return x.isEmpty ? DataType.DT_INT32 : inferType(x.first);
  if (x is Shape) return DataType.DT_INT32;
  throw 'Cannot infer Tensorflow data type for value $x';
}

class TFFunction {
  final DataType dtype;

  const TFFunction(this.dtype);
}
