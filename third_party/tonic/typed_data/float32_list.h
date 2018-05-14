// Copyright 2015 The Fuchsia Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef LIB_TONIC_TYPED_DATA_FLOAT32_LIST_H_
#define LIB_TONIC_TYPED_DATA_FLOAT32_LIST_H_

#include "third_party/dart/runtime/include/dart_api.h"
#include "tonic/converter/dart_converter.h"

namespace tonic {

// A simple wrapper around a Dart Float32List. It uses Dart_TypedDataAcquireData
// to obtain a raw pointer to the data, which is released when this object is
// destroyed.
//
// This is designed to be used with DartConverter only.
class Float32List {
 public:
  explicit Float32List(Dart_Handle list);
  Float32List(Float32List&& other);
  Float32List();
  ~Float32List();

  float& at(intptr_t i) {
    TONIC_CHECK(i < num_elements_);
    return data_[i];
  }
  const float& at(intptr_t i) const {
    TONIC_CHECK(i < num_elements_);
    return data_[i];
  }

  float& operator[](intptr_t i) { return at(i); }
  const float& operator[](intptr_t i) const { return at(i); }

  const float* data() const { return data_; }
  intptr_t num_elements() const { return num_elements_; }
  Dart_Handle dart_handle() const { return dart_handle_; }

  void Release();

 private:
  float* data_;
  intptr_t num_elements_;
  Dart_Handle dart_handle_;

  Float32List(const Float32List& other) = delete;
};

template <>
struct DartConverter<Float32List> {
  static void SetReturnValue(Dart_NativeArguments args, Float32List val);
  static Float32List FromArguments(Dart_NativeArguments args,
                                   int index,
                                   Dart_Handle& exception);
};

}  // namespace tonic

#endif  // LIB_TONIC_TYPED_DATA_FLOAT32_LIST_H_
