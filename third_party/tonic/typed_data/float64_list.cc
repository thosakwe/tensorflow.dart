// Copyright 2015 The Fuchsia Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "tonic/typed_data/float64_list.h"

#include "tonic/logging/dart_error.h"

namespace tonic {

Float64List::Float64List()
    : data_(nullptr), num_elements_(0), dart_handle_(nullptr) {}

Float64List::Float64List(Dart_Handle list)
    : data_(nullptr), num_elements_(0), dart_handle_(list) {
  if (Dart_IsNull(list))
    return;

  Dart_TypedData_Type type;
  Dart_TypedDataAcquireData(list, &type, reinterpret_cast<void**>(&data_),
                            &num_elements_);
  TONIC_DCHECK(!LogIfError(list));
  if (type != Dart_TypedData_kFloat64)
    Dart_ThrowException(ToDart("Non-genuine Float64List passed to engine."));
}

Float64List::Float64List(Float64List&& other)
    : data_(other.data_),
      num_elements_(other.num_elements_),
      dart_handle_(other.dart_handle_) {
  other.data_ = nullptr;
  other.dart_handle_ = nullptr;
}

Float64List::~Float64List() {
  Release();
}

void Float64List::Release() {
  if (data_) {
    Dart_TypedDataReleaseData(dart_handle_);
    data_ = nullptr;
    num_elements_ = 0;
    dart_handle_ = nullptr;
  }
}

Float64List DartConverter<Float64List>::FromArguments(Dart_NativeArguments args,
                                                      int index,
                                                      Dart_Handle& exception) {
  Dart_Handle list = Dart_GetNativeArgument(args, index);
  TONIC_DCHECK(!LogIfError(list));
  return Float64List(list);
}

void DartConverter<Float64List>::SetReturnValue(Dart_NativeArguments args,
                                                Float64List val) {
  Dart_SetReturnValue(args, val.dart_handle());
}

}  // namespace tonic
