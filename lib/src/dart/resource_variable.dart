import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:tensorflow/tensorflow.dart';

/// A value whose value is mutable.
///
/// Uses `ResourceVariable` under-the-hood.
class Variable<T> {
  final Output<Uint8List> handle;
  final DataType dtype;
  final Shape shape;
  final String name;
  final Graph _graph;
  Operation _dep;
  String _id;
  Output<T> _pending;
  int _watcher;

  Variable(
      {@required this.dtype,
      @required this.shape,
      this.name,
      Graph graph,
      String container,
      Output<T> initializer})
      : _graph = graph ?? defaultGraph,
        _pending = initializer ??
            (shape == Shape.scalar
                ? zero(dtype)
                : zeros(shape, dtype: dtype)),
        handle = varHandleOp(
            graph: graph,
            dtype: dtype,
            shape: shape,
            container: container,
            sharedName: name,
            operationName: scopedName(name)) {
    _id = new String.fromCharCodes(handle.run());
  }

  String get id => _id;

  Output get read => readVariableOp(handle, graph: _graph, dtype: dtype);

  Output<T> get value {
    var deps = <Operation>[];

    if (_pending != null) {
      //print('Requirement for $name: $_pending');
      deps.add(_dep = _assignOp(_pending));
      _pending = null;
    } else if (_dep != null) {
      deps.add(_dep);
    }

    return withControlDependencies(
      deps,
      () => // new _VariableValue<T>(
          //this,
          identity(read),
      //),
    );
  }

  /// Updates the stored value after the next run.
  void watch() {
    if (_watcher != null) return;
    var idx = _watcher = _graph.session.runner.fetchFromOutput(value);
    _graph.addCallback(idx, (v) {
      //print('$name is now $v!');
      _dep = null;
      _watcher = null;
      _pending = constant(v, dtype: dtype, shape: shape);
    });
  }

  Output sparseRead(List<int> indices,
      {String operationName, DataType tindices: DataType.DT_INT32}) {
    var value = resourceGather(handle, constant(indices, dtype: tindices),
        dtype: dtype, tindices: tindices, operationName: operationName);
    return identity(value);
  }

  /// Assigns a [value], and runs a callback that ensures the value is respected.
  U withValue<U>(Output<T> value, U Function() f, {String operationName}) {
    return withControlDependencies<U>(
        [_assignOp(value, operationName: operationName)], f);
  }

  Output<T> assign(Output<T> value, {String operationName}) {
    return withValue(value, () {
      watch();
      return value;
    }, operationName: operationName);
  }

  Output<T> assignAdd(Output<T> value, {String operationName}) {
    watch();
    return withControlDependencies(
        [_assignAddOp(value, operationName: operationName)], () {
      watch();
      return value;
    });
  }

  Output<T> assignSub(Output<T> value, {String operationName}) {
    watch();
    return withControlDependencies(
        [_assignSubOp(value, operationName: operationName)], () {
      watch();
      return value;
    });
  }

  Operation _assignOp(Output<T> value, {String operationName}) {
    return assignVariableOp(handle, _pending = value,
        graph: _graph, operationName: operationName, dtype: dtype);
  }

  Operation _assignAddOp(Output<T> value, {String operationName}) {
    return assignAddVariableOp(handle, value,
        graph: _graph, operationName: operationName, dtype: dtype);
  }

  Operation _assignSubOp(Output<T> value, {String operationName}) {
    return assignSubVariableOp(handle, value,
        graph: _graph, operationName: operationName, dtype: dtype);
  }
}
