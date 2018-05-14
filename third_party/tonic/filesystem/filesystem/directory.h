// Copyright 2016 The Fuchsia Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef FILESYSTEM_DIRECTORY_H_
#define FILESYSTEM_DIRECTORY_H_

#include <string>

namespace filesystem {

// Returns the current directory. If the current directory cannot be determined,
// this function will terminate the process.
std::string GetCurrentDirectory();

// Returns whether the given path is a directory.
bool IsDirectory(const std::string& path);

// Create a directory at the given path. If necessary, creates any intermediary
// directory.
bool CreateDirectory(const std::string& path);

}  // namespace filesystem

#endif  // FILESYSTEM_DIRECTORY_H_
