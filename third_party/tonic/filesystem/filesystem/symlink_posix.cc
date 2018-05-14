// Copyright 2016 The Fuchsia Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "filesystem/symlink.h"

#include <limits.h>
#include <stdlib.h>
#include <unistd.h>

#include "filesystem/build_config.h"
#include "filesystem/path.h"

namespace filesystem {

bool ReadSymbolicLink(const std::string& path, std::string* resolved_path) {
  if (path.empty() || resolved_path == nullptr) {
    return false;
  }

  char buffer[PATH_MAX];
  ssize_t length = readlink(path.c_str(), buffer, sizeof(buffer));

  if (length <= 0) {
    resolved_path->clear();
    return false;
  }

  *resolved_path = std::string(buffer, length);
  return true;
}

std::string GetAbsoluteFilePath(const std::string& path) {
#if defined(OS_FUCHSIA)
  // realpath() isn't supported by Fuchsia. See MG-425.
  return SimplifyPath(AbsolutePath(path));
#else
  char buffer[PATH_MAX];
  if (realpath(path.c_str(), buffer) == nullptr)
    return std::string();
  return buffer;
#endif  // defined(OS_FUCHSIA)
}

}  // namespace filesystem
