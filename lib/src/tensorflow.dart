library tensorflow;

import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'dart:core' as core;
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

export 'dart/control_flow.dart';
export 'dart/data.dart';
export 'dart/gradient_tape.dart';
export 'dart/optimizer.dart';
export 'dart/resource_variable.dart';
export 'dart/tensorboard.dart';

part 'dart/enums.dart';

part 'dart/error.dart';

part 'dart/function_node.dart';

part 'dart/graph.dart';

part 'dart/op_def.dart';

part 'dart/operation.dart';

part 'dart/operation_description.dart';

part 'dart/output.dart';

part 'dart/saved_model_bundle.dart';

part 'dart/session.dart';

part 'dart/shape.dart';

part 'dart/tensor.dart';

part 'dart/variable.dart';

String get version native "Version";

Uint8List _getAllOpsInternal() native "Operation_list";

/*
Graph _importGraphDef(Uint8List buffer, Type graphType)
    native "Graph_importGraphDef";

Graph importGraphDef(GraphDef graphDef) =>
    _importGraphDef(graphDef.writeToBuffer(), Graph);*/

DataType inferType(x) {
  if (x is DataType) return x.value > 100 ? DataType.valueOf(x.value - 100) : x;
  if (x is Output) return inferType(x.dtype);
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

String scopedName(String name) {
  var b = new StringBuffer();
  var scopes = Zone.current[_scopesSymbol] ?? [];
  //shape ??= Shape.scalar;

  for (var n in scopes) b.write('$n/');
  b.write(name);
  return b.toString();
}

/// Applies [op] to [value] until it is a scalar.
Output<T> reduce<T>(Output<T> value, Output<T> Function(Output<T>) op,
    {Graph graph}) {
  var lastShape = value.shape;
  while (value.shape != Shape.scalar) {
    value = withScope(graph, () => op(value));

    if (value.shape == lastShape) break;
    lastShape = value.shape;
  }
  return value;
}

/// Reduces input_tensor along the dimensions given in axis.
///
/// Unless [keepDims] is true, the rank of the tensor is reduced by 1 for each entry in axis.
/// If [keepDims] is true, the reduced dimensions are retained with length 1.
Output<T> reduceMean<T>(Output<T> value, Output<T> axis,
    {Graph graph, bool keepDims: true, DataType tidx: DataType.DT_INT32}) {
  return reduce<T>(value,
      (v) => mean(v, axis, keepDims: keepDims, graph: graph, tidx: tidx));
}

/// Same as [reduceMean], but performs a product.
Output<T> reduceProd<T>(Output<T> value, Output<T> axis,
    {Graph graph, bool keepDims: true, DataType tidx: DataType.DT_INT32}) {
  return reduce<T>(value,
      (v) => prod(v, axis, keepDims: keepDims, graph: graph, tidx: tidx));
}

/// Same as [reduceMean], but performs a sum.
Output<T> reduceSum<T>(Output<T> value, Output<T> axis,
    {Graph graph, bool keepDims: true, DataType tidx: DataType.DT_INT32}) {
  return reduce<T>(
      value, (v) => sum(v, axis, keepDims: keepDims, graph: graph, tidx: tidx));
}

/*
/// Same as [reduceMean], but performs a logical "and."
Output<bool> reduceAll<T>(Output<T> value, Output<T> axis,
    {Graph graph, bool keepDims: true, DataType tidx: DataType.DT_INT32}) {
  return reduce<bool>(
      value, (v) => all(v, axis, keepDims: keepDims, graph: graph, tidx: tidx));
}
*/


/// Same as [reduceMean], but performs a "min."
Output<T> reduceMin<T>(Output<T> value, Output<T> axis,
    {Graph graph, bool keepDims: true, DataType tidx: DataType.DT_INT32}) {
  return reduce<T>(
      value, (v) => min(v, axis, keepDims: keepDims, graph: graph, tidx: tidx));
}

/// Same as [reduceMean], but performs a "max."
Output<T> reduceMax<T>(Output<T> value, Output<T> axis,
    {Graph graph, bool keepDims: true, DataType tidx: DataType.DT_INT32}) {
  return reduce<T>(
      value, (v) => max(v, axis, keepDims: keepDims, graph: graph, tidx: tidx));
}
