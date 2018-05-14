// Copyright 2016 The Fuchsia Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "tonic/logging/dart_error.h"

#include "tonic/common/macros.h"

namespace tonic {
namespace DartError {
const char kInvalidArgument[] = "Invalid argument.";
}  // namespace DartError

bool LogIfError(Dart_Handle handle) {
  if (Dart_IsError(handle)) {
    TONIC_LOG("Dart Error: %s", Dart_GetError(handle));
    return true;
  }
  return false;
}

DartErrorHandleType GetErrorHandleType(Dart_Handle handle) {
  if (Dart_IsCompilationError(handle)) {
    return kCompilationErrorType;
  } else if (Dart_IsApiError(handle)) {
    return kApiErrorType;
  } else if (Dart_IsError(handle)) {
    return kUnknownErrorType;
  } else {
    return kNoError;
  }
}

}  // namespace tonic
