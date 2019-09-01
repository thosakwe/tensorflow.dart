part of tensorflow;

/// Creates a single zero-value tensor for a scalar.
Output<T> zero<T>(DataType dtype, {Graph graph, String operationName}) {
  T value;
  dtype = inferType(dtype);

  switch (dtype) {
    case DataType.DT_INT8:
    case DataType.DT_INT16:
    case DataType.DT_INT32:
    case DataType.DT_INT64:
    case DataType.DT_UINT8:
    case DataType.DT_UINT16:
    case DataType.DT_UINT32:
    case DataType.DT_UINT64:
      value = 0 as T;
      break;
    case DataType.DT_FLOAT:
    case DataType.DT_DOUBLE:
      value = 0.0 as T;
      break;
  }

  if (value != null)
    return constant<T>(value,
        shape: Shape.scalar,
        dtype: dtype,
        operationName: operationName,
        graph: graph);
  throw ArgumentError('Not a scalar type: $dtype');
}

/// Creates a tensor with all elements set to zero.
///
/// This operation returns a tensor of type [dtype] with shape [shape] and all elements set to `0`.
///
/// For example:
///
/// ```dart
/// tf.zeros(tf.Shape(3, 4), dtype: tf.DataType.DT_INT32)  // [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]
/// ```
Output<List<T>> zeros<T extends num>(Shape shape,
    {DataType dtype: DataType.DT_FLOAT, String operationName, Graph graph}) {
  Tensor tensor;

  if (dtype == DataType.DT_DOUBLE) {
    tensor = Tensor.fromFloat64List(
      Float64List.fromList(
        List<double>.filled(shape.size, 0.0),
      ),
    );
  } else if (dtype == DataType.DT_FLOAT) {
    tensor = Tensor.fromFloat32List(
      Float32List.fromList(
        List<double>.filled(shape.size, 0.0),
      ),
    );
  } else if (dtype == DataType.DT_INT8) {
    tensor = Tensor.fromInt8List(
      Int8List.fromList(
        List<int>.filled(shape.size, 0),
      ),
    );
  } else if (dtype == DataType.DT_INT16) {
    tensor = Tensor.fromInt16List(
      Int16List.fromList(
        List<int>.filled(shape.size, 0),
      ),
    );
  } else if (dtype == DataType.DT_INT32) {
    tensor = Tensor.fromInt32List(
      Int32List.fromList(
        List<int>.filled(shape.size, 0),
      ),
    );
  } else if (dtype == DataType.DT_INT64) {
    tensor = Tensor.fromInt64List(
      Int64List.fromList(
        List<int>.filled(shape.size, 0),
      ),
    );
  } else if (dtype == DataType.DT_UINT8) {
    tensor = Tensor.fromUint8List(
      Uint8List.fromList(
        List<int>.filled(shape.size, 0),
      ),
    );
  } else if (dtype == DataType.DT_UINT16) {
    tensor = Tensor.fromUint16List(
      Uint16List.fromList(
        List<int>.filled(shape.size, 0),
      ),
    );
  } else if (dtype == DataType.DT_UINT32) {
    tensor = Tensor.fromUint32List(
      Uint32List.fromList(
        List<int>.filled(shape.size, 0),
      ),
    );
  } else if (dtype == DataType.DT_UINT64) {
    tensor = Tensor.fromUint64List(
      Uint64List.fromList(
        List<int>.filled(shape.size, 0),
      ),
    );
  } else {
    throw ArgumentError('Cannot create zeroed tensor of type $dtype.');
  }

  tensor = tensor.reshape(shape);

  return const$<List<T>>(
    value: tensor,
    dtype: dtype,
    operationName: operationName,
    graph: graph,
  )..reshape(shape);
}

/// The possibly partially known shape of a tensor produced by an operation.
class Shape {
  final List<int> _dims;

  /// Create a Shape representing an N-dimensional value.
  factory Shape.dims(List<int> dims) =>
      Shape._(Int64List.fromList(dims));

  const Shape._(this._dims);

  //factory Shape._(Int64List dims) native "Shape_new";

  // Creates a list of lists with all elements set to `0`, corresponding to this shape.
  List get zeros => filled<int>(0);

  /// Creates a list of lists with all elements set to zero, corresponding to this shape.
  List filled<T>(T fill) {
    List last;

    for (int dim = _dims.length - 1; dim >= 0; dim--) {
      if (last == null)
        last = List<T>.filled(_dims[dim], fill);
      else
        last = List.generate(_dims[dim], (_) => List.from(last));
    }

    return last ?? [];
  }

  int get size {
    if (_dims.isEmpty) return 0;
    return _dims.reduce((a, b) => a * b);
  }

  /// Create a Shape representing an N-dimensional (max 10 dims.) value.
  factory Shape(int dim0,
          [int dim1,
          int dim2,
          int dim3,
          int dim4,
          int dim5,
          int dim6,
          int dim7,
          int dim8,
          int dim9]) =>
      Shape.dims([
        dim0,
        dim1,
        dim2,
        dim3,
        dim4,
        dim5,
        dim6,
        dim7,
        dim8,
        dim9
      ].where((n) => n != null).toList());

  //static Shape scalar() native "Shape_scalar";

  //static Shape unknown() native "Shape_unknown";

  /// Returns a Shape representing a scalar value.
  static const Shape scalar = const Shape._(const []);

  /// Returns a reversed version of this dimension vector.
  Shape get reversed => Shape.dims(_dims.reversed.toList());

  /// Create a Shape representing an unknown number of dimensions.
  Int64List get dimensions => Int64List.fromList(_dims);

  /// Convert a 1D list into a list with the correct dimensions.
  ///
  /// Say you received [1, 2, 3, 4, 5, 6, 7, 8].
  /// But your shape is 2x2x2.
  /// What you want is: [[[1, 2], [3, 4]], [[5, 6], [7, 8]]].
  ///
  /// The given list is always [flatten]ed internally before computation,
  /// so the shape does not matter.
  List apply<T>(Iterable<T> items) {
    var out = flatten(items);

    if (this == scalar)
      throw UnsupportedError('The scalar shape cannot populate a list.');

    if (out.length != size)
      throw UnsupportedError('$items does not the match the shape $this.');

    // Say you received [1, 2, 3, 4, 5, 6, 7, 8].
    // But your shape is 2x2x2.
    // What you want is: [[[1, 2], [3, 4]], [[5, 6], [7, 8]]].
    int i = 0;

    List compute(int dim) {
      // At idx 0, size is 2.
      var size = _dims[dim];

      if (dim < _dims.length - 1) {
        // We want to create 2 lists of whatever the next dimension is.
        // In this case, 2 lists of 2.
        return List.generate(size, (_) => compute(dim + 1));
      } else {
        // If this is the last dimension, then just return elements
        // of the linear list.
        return List.generate(size, (_) => out.elementAt(i++));
      }
    }

    return compute(0);
  }

  /// Infers the shape of a single item, or collection of [items].
  static Shape infer(items) {
    if (items is Shape) return items;
    if (items is Tensor) return items.shape;
    if (items is Output) return items.shape;
    if (items is! Iterable) return Shape.scalar;

    var dims = <int>[];
    var list = items;

    while (list is Iterable) {
      dims.add(list.length as int);
      if (list.isNotEmpty == true) list = list.elementAt(0);
    }

    return dims.isEmpty ? Shape.scalar : Shape.dims(dims);
  }

  @override
  String toString() => dimensions.toString();

  @override
  bool operator ==(other) =>
      other is Shape &&
      (other.hashCode == hashCode ||
          const ListEquality<int>().equals(other._dims, _dims));
}

/// Flattens a multi-dimensional list.
List flatten(Iterable iterable) {
  var out = [];

  for (var x in iterable) {
    if (x is Iterable)
      out.addAll(flatten(x));
    else
      out.add(x);
  }

  return out;
}
