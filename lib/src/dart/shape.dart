part of tensorflow;

/// The possibly partially known shape of a tensor produced by an operation.
class Shape {
  final List<int> _dims;

  /// Create a Shape representing an N-dimensional value.
  factory Shape.dims(List<int> dims) =>
      new Shape._(new Int64List.fromList(dims));

  Shape._(this._dims);

  //factory Shape._(Int64List dims) native "Shape_new";

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

  /// Create a Shape representing an unknown number of dimensions.
  Int64List get dimensions => new Int64List.fromList(_dims);

  @override
  String toString() => dimensions.toString();
}
