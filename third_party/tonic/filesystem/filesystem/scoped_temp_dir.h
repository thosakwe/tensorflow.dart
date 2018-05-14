// Copyright 2016 The Fuchsia Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef FILESYSTEM_SCOPED_TEMP_DIR_H_
#define FILESYSTEM_SCOPED_TEMP_DIR_H_

#include <string>

namespace filesystem {

class ScopedTempDir {
 public:
  ScopedTempDir();

  explicit ScopedTempDir(std::string parent_path);

  ~ScopedTempDir();

  const std::string& path();

  bool NewTempFile(std::string* output);

 private:
  std::string directory_path_;
};

}  // namespace filesystem

#endif  // FILESYSTEM_SCOPED_TEMP_DIR_H_
