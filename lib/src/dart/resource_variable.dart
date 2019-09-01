import 'package:meta/meta.dart';
import 'package:tensorflow/tensorflow.dart';
import 'package:tensorflow/tensorflow.dart' as tf show assign;

/// A value whose value is mutable.
class Variable<T> {
  final Output<T> handle;
  final DataType dtype;
  final Shape _shape;
  final String name;
  final bool isResourceVariable;
  final Graph _graph;
  Operation _dep;
  String _id;
  Output<T> _pending;
  int _watcher;

  Variable(this.name,
      {@required this.dtype,
      @required Shape shape,
      Graph graph,
      String container,
      Output<T> initializer})
      : _graph = graph ?? defaultGraph,
        _pending = (initializer ??
            (shape == Shape.scalar
                ? zero<T>(dtype)
                : zeros(shape, dtype: dtype))) as Output<T>,
        _shape = shape,
        handle = variableV2(
            graph: graph,
            dtype: dtype,
            shape: shape,
            container: container,
            sharedName: name,
            operationName: scopedName(name)),
        isResourceVariable = false {
    _id = scopedName(name);
  }

  /// Uses `ResourceVariable` under-the-hood.
  Variable.resource(this.name,
      {@required this.dtype,
      @required Shape shape,
      Graph graph,
      String container,
      Output<T> initializer})
      : _graph = graph ?? defaultGraph,
        _pending = (initializer ??
            (shape == Shape.scalar
                ? zero(dtype)
                : zeros(shape, dtype: dtype))) as Output<T>,
        _shape = shape,
        handle = varHandleOp(
            graph: graph,
            dtype: dtype,
            shape: shape,
            container: container,
            sharedName: name,
            operationName: scopedName(name)) as Output<T>,
        isResourceVariable = true {
    _id = String.fromCharCodes(handle.run() as Iterable<int>);
  }

  String get id => _id;

  Output<T> get read => !isResourceVariable
      ? value
      : readVariableOp(handle, graph: _graph, dtype: dtype);

  Shape get shape => _shape; // isResourceVariable ? handle.shape : _shape;

  Output<T> get value {
    if (!isResourceVariable) {
      return tf.assign(handle, _pending);
    } else {
      var deps = <Operation>[];

      if (_pending != null) {
        //print('Requirement for $name: $_pending');
        deps.add(_dep = _assignOp(_pending));
        _pending = null;
      } else if (_dep != null) {
        deps.add(_dep);
      }

      return withControlDependencies(deps, () => identity(read));
    }
  }

  /// Updates the stored value after the next run.
  void watch() {
    if (_watcher != null) return;
    var idx = _watcher = _graph.session.runner.fetchFromOutput(value);
    _graph.addCallback(idx, (v) {
      //print('$name is now $v!');
      _dep = null;
      _watcher = null;
      _pending = constant(v is Iterable ? flatten(v) as T : v as T,
          dtype: dtype, shape: shape);
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
    if (!isResourceVariable)
      return withControlDependencies(
          [assign(value, operationName: operationName).op], f);
    return withControlDependencies<U>(
        [_assignOp(value, operationName: operationName)], f);
  }

  Output<T> assign(Output<T> value,
      {String operationName, bool useLocking: true}) {
    if (!isResourceVariable) {
      watch();
      return tf.assign(handle, _pending = value,
          operationName: operationName, useLocking: useLocking);
    }

    return withValue(value, () {
      watch();
      return value;
    }, operationName: operationName);
  }

  /*
  Output<T> assignAdd(Output<T> value, {String operationName}) {
    return withControlDependencies(
        [_assignAddOp(value, operationName: operationName)], () {
      watch();
      return value;
    });
  }

  Output<T> assignSub(Output<T> value, {String operationName}) {
    return withControlDependencies(
        [_assignSubOp(value, operationName: operationName)], () {
      watch();
      return value;
    });
  }*/

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
