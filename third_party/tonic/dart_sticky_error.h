// Copyright 2016 The Fuchsia Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef LIB_TONIC_DART_STICKY_ERROR_H_
#define LIB_TONIC_DART_STICKY_ERROR_H_

#include "third_party/dart/runtime/include/dart_api.h"

namespace tonic {

class DartStickyError {
 public:
  // Returns true if the sticky error was set.
  static bool MaybeSet(Dart_Handle result);

  // Returns true if the isolate has a sticky error set.
  static bool IsSet();
};

}  // namespace tonic

#endif  // LIB_TONIC_DART_MICROTASK_QUEUE_H_
