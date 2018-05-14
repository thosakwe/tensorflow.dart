// Copyright 2016 The Fuchsia Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef LIB_TONIC_TYPED_DATA_UINT8_LIST_H_
#define LIB_TONIC_TYPED_DATA_UINT8_LIST_H_

#include "third_party/dart/runtime/include/dart_api.h"
#include "tonic/converter/dart_converter.h"

namespace tonic {

// A simple wrapper around a Dart Uint8List. It uses Dart_TypedDataAcquireData
// to obtain a raw pointer to the data, which is released when this object is
// destroyed.
//
// This is designed to be used with DartConverter only.
class Uint8List {
 public:
  explicit Uint8List(Dart_Handle list);
  Uint8List(Uint8List&& other);
  Uint8List();
  ~Uint8List();

  uint8_t& at(intptr_t i) {
    TONIC_CHECK(i < num_elements_);
    return data_[i];
  }
  const uint8_t& at(intptr_t i) const {
    TONIC_CHECK(i < num_elements_);
    return data_[i];
  }

  uint8_t& operator[](intptr_t i) { return at(i); }
  const uint8_t& operator[](intptr_t i) const { return at(i); }

  const uint8_t* data() const { return data_; }
  intptr_t num_elements() const { return num_elements_; }
  Dart_Handle dart_handle() const { return dart_handle_; }

  void Release();

 private:
  uint8_t* data_;
  intptr_t num_elements_;
  Dart_Handle dart_handle_;

  Uint8List(const Uint8List& other) = delete;
};

template <>
struct DartConverter<Uint8List> {
  static void SetReturnValue(Dart_NativeArguments args, Uint8List val);
  static Uint8List FromArguments(Dart_NativeArguments args,
                                 int index,
                                 Dart_Handle& exception);
  static Dart_Handle ToDart(const uint8_t* buffer, unsigned int length);
};

}  // namespace tonic

#endif  // LIB_TONIC_TYPED_DATA_UINT8_LIST_H_
