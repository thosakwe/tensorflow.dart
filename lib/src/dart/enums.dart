part of tensorflow;

/*
/// TF_DataType holds the type for a scalar value.  E.g., one slot in a tensor.
/// The enum values here are identical to corresponding values in types.proto.
enum DataTypea {
  float,
  double,

  /// Int32 tensors are always in 'host' memory.
  int32,
  uInt8,
  int16,
  int8,
  string,

  /// Single-precision complex
  complex64,

  /// Old identifier kept for API backwards compatibility
  complex,
  int64,
  bool,

  /// Quantized int8
  qInt8,

  /// Quantized uint8
  qUint8,

  /// Quantized int32
  qInt32,

  /// Float32 truncated to 16 bits.  Only for cast ops.
  bFloat16,

  /// Quantized int16
  qInt16,

  /// Quantized uint16
  qUint16,
  uInt16,

  /// Double-precision complex
  complex128,
  half,
  resource,
  variant,
  uInt32,
  uInt64,
}*/

/// TF_Code holds an error code.  The enum values here are identical to
/// corresponding values in error_codes.proto.
enum Code {
  ok,
  cancelled,
  unknown,
  invalidArgument,
  deadlineExceeded,
  notFound,
  alreadyExists,
  permissionDenied,
  unauthenticated,
  resourceExhausted,
  failedPrecondition,
  aborted,
  outOfRange,
  unimplemented,
  internal,
  unavailable,
  dataLoss,
}

Code _codeFrom(int value) {
  return Code.values[value];
}

/*
int _dataTypeToInt(DataType type) {
  return DataType.values.indexOf(type) + 1;
}

DataType _dataTypeFrom(int value) {
  return DataType.values[value - 1];
}*/
