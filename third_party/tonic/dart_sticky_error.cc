// Copyright 2016 The Fuchsia Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "tonic/dart_sticky_error.h"

namespace tonic {

bool DartStickyError::MaybeSet(Dart_Handle result) {
  if (!Dart_IsError(result)) {
    // Not an error.
    return false;
  }
  if (Dart_HasStickyError()) {
    // We only remember the first error.
    return false;
  }
  if (!Dart_IsUnhandledExceptionError(result)) {
    result = Dart_NewUnhandledExceptionError(result);
  }
  Dart_SetStickyError(result);
  return true;
}

bool DartStickyError::IsSet() {
  return Dart_HasStickyError();
}

}  // namespace tonic
