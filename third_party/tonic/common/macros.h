// Copyright 2018 The Fuchsia Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef TONIC_COMMON_MACROS_H_
#define TONIC_COMMON_MACROS_H_

#include <cassert>
#include <cstdio>

#define TONIC_DISALLOW_COPY(TypeName) TypeName(const TypeName&) = delete;

#define TONIC_DISALLOW_ASSIGN(TypeName) \
  void operator=(const TypeName&) = delete;

#define TONIC_DISALLOW_COPY_AND_ASSIGN(TypeName) \
  TONIC_DISALLOW_COPY(TypeName)                  \
  TONIC_DISALLOW_ASSIGN(TypeName)

#ifndef NDEBUG
#define TONIC_DCHECK assert
#else  // NDEBUG
#define TONIC_DCHECK (void)
#endif  // NDEBUG

#define TONIC_CHECK assert

#ifndef TONIC_LOG
#define TONIC_LOG(message, ...) printf(message "\n", ##__VA_ARGS__);
#endif  // TONIC_LOG

#endif  // TONIC_COMMON_MACROS_H_
