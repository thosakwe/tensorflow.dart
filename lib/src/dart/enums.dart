part of tensorflow;

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