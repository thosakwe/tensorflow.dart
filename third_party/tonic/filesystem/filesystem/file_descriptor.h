// Copyright 2016 The Fuchsia Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef FILESYSTEM_FILE_DESCRIPTOR_H_
#define FILESYSTEM_FILE_DESCRIPTOR_H_

#include <unistd.h>

#include "filesystem/eintr_wrapper.h"

namespace filesystem {

class Descriptor {
 public:
  using Handle = int;

  Descriptor(Handle handle) : handle_(handle) {}

  ~Descriptor() {
    if (is_valid()) {
      IGNORE_EINTR(::close(handle_));
    }
  }

  bool is_valid() { return handle_ >= 0; }

  Handle get() { return handle_; }

 private:
  Handle handle_ = -1;

  Descriptor(Descriptor&) = delete;

  void operator=(const Descriptor&) = delete;
};

bool WriteFileDescriptor(int fd, const char* data, ssize_t size);

ssize_t ReadFileDescriptor(int fd, char* data, ssize_t max_size);

}  // namespace filesystem

#endif  // FILESYSTEM_FILE_DESCRIPTOR_H_
