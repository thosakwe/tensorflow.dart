part of tensorflow;

/// Creates a tensor with all elements set to zero.
///
/// This operation returns a tensor of type [dtype] with shape [shape] and all elements set to `0`.
///
/// For example:
///
/// ```dart
/// tf.zeros(new tf.Shape(3, 4), dtype: tf.DataType.DT_INT32)  // [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]
/// ```
Output<List<T>> zeros<T extends num>(Shape shape,
    {DataType dtype: DataType.DT_FLOAT, String operationName, Graph graph}) {
  Tensor tensor;

  if (dtype == DataType.DT_DOUBLE) {
    tensor = new Tensor.fromFloat64List(
      new Float64List.fromList(
        new List<double>.filled(shape.size, 0.0),
      ),
    );
  } else if (dtype == DataType.DT_FLOAT) {
    tensor = new Tensor.fromFloat32List(
      new Float32List.fromList(
        new List<double>.filled(shape.size, 0.0),
      ),
    );
  } else if (dtype == DataType.DT_INT8) {
    tensor = new Tensor.fromInt8List(
      new Int8List.fromList(
        new List<int>.filled(shape.size, 0),
      ),
    );
  } else if (dtype == DataType.DT_INT16) {
    tensor = new Tensor.fromInt16List(
      new Int16List.fromList(
        new List<int>.filled(shape.size, 0),
      ),
    );
  } else if (dtype == DataType.DT_INT32) {
    tensor = new Tensor.fromInt32List(
      new Int32List.fromList(
        new List<int>.filled(shape.size, 0),
      ),
    );
  } else if (dtype == DataType.DT_INT64) {
    tensor = new Tensor.fromInt64List(
      new Int64List.fromList(
        new List<int>.filled(shape.size, 0),
      ),
    );
  } else if (dtype == DataType.DT_UINT8) {
    tensor = new Tensor.fromUint8List(
      new Uint8List.fromList(
        new List<int>.filled(shape.size, 0),
      ),
    );
  } else if (dtype == DataType.DT_UINT16) {
    tensor = new Tensor.fromUint16List(
      new Uint16List.fromList(
        new List<int>.filled(shape.size, 0),
      ),
    );
  } else if (dtype == DataType.DT_UINT32) {
    tensor = new Tensor.fromUint32List(
      new Uint32List.fromList(
        new List<int>.filled(shape.size, 0),
      ),
    );
  } else if (dtype == DataType.DT_UINT64) {
    tensor = new Tensor.fromUint64List(
      new Uint64List.fromList(
        new List<int>.filled(shape.size, 0),
      ),
    );
  } else {
    throw new ArgumentError('Cannot create zeroed tensor of type $dtype.');
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
      new Shape._(new Int64List.fromList(dims));

  Shape._(this._dims);

  //factory Shape._(Int64List dims) native "Shape_new";

  // Creates a list of lists with all elements set to `0`, corresponding to this shape.
  List get zeros => filled<int>(0);

  /// Creates a list of lists with all elements set to zero, corresponding to this shape.
  List filled<T>(T fill) {
    List last;

    for (int dim = _dims.length - 1; dim >= 0; dim--) {
      if (last == null)
        last = new List<T>.filled(_dims[dim], fill);
      else
        last = new List.generate(_dims[dim], (_) => new List.from(last));
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
      new Shape.dims([
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
  static Shape get scalar => new Shape.dims([]);

  /// Returns a reversed version of this dimension vector.
  Shape get reversed => new Shape.dims(_dims.reversed.toList());

  /// Create a Shape representing an unknown number of dimensions.
  Int64List get dimensions => new Int64List.fromList(_dims);

  @override
  String toString() => dimensions.toString();

  @override
  bool operator ==(other) =>
      other is Shape && const ListEquality<int>().equals(other._dims, _dims);
}
