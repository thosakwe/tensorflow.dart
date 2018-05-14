// Copyright 2016 The Fuchsia Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef LIB_TONIC_FILE_LOADER_FILE_LOADER_H_
#define LIB_TONIC_FILE_LOADER_FILE_LOADER_H_

#include <memory>
#include <set>
#include <string>

#include "third_party/dart/runtime/include/dart_api.h"
#include "tonic/common/macros.h"
#include "tonic/parsers/packages_map.h"

namespace tonic {

class FileLoader {
 public:
  FileLoader(int dirfd = -1);
  ~FileLoader();

  bool LoadPackagesMap(const std::string& packages);

  // The path to the `.packages` file the packages map was loaded from.
  const std::string& packages() const { return packages_; }

  // Fully resolved file paths to dependencies. For example,
  // "package:foo/bar.dart" will be resolved to
  // "/path/to/package/foo/lib/bar.dart".
  const std::set<std::string>& dependencies() const { return dependencies_; }
  // Canonicalized urls to dependencies. No package resolution is done,
  // For example, "package:foo/bar.dart" will be "package:foo/bar.dart".
  const std::set<std::string>& url_dependencies() const {
    return url_dependencies_;
  }

  Dart_Handle HandleLibraryTag(Dart_LibraryTag tag,
                               Dart_Handle library,
                               Dart_Handle url);

  Dart_Handle CanonicalizeURL(Dart_Handle library, Dart_Handle url);
  Dart_Handle Import(Dart_Handle url);
  Dart_Handle Kernel(Dart_Handle url);
  Dart_Handle Source(Dart_Handle library, Dart_Handle url);
  Dart_Handle Script(Dart_Handle url);
  void SetPackagesUrl(Dart_Handle url);

  Dart_Handle LoadLibrary(const std::string& url);
  Dart_Handle LoadScript(const std::string& url);

  std::string Fetch(const std::string& url,
                    std::string* resolved_url = nullptr);
  std::pair<uint8_t*, intptr_t> FetchBytes(const std::string& url);

  static const char kFileURLPrefix[];
  static const size_t kFileURLPrefixLength;
  static const std::string kPathSeparator;

 private:
  static std::string SanitizeURIEscapedCharacters(const std::string& str);
  static std::string SanitizePath(const std::string& path);
  static std::string CanonicalizeFileURL(const std::string& url);

  std::string GetFilePathForURL(std::string url);
  std::string GetFilePathForPackageURL(std::string url);
  std::string GetFilePathForFileURL(std::string url);

  std::string GetFileURLForPath(const std::string& path);

  bool ReadFileToString(const std::string& path, std::string* result);
  std::pair<uint8_t*, intptr_t> ReadFileToBytes(const std::string& path);

  int dirfd_;
  std::set<std::string> dependencies_;
  std::set<std::string> url_dependencies_;
  std::string packages_;
  std::unique_ptr<PackagesMap> packages_map_;

  TONIC_DISALLOW_COPY_AND_ASSIGN(FileLoader);
};

}  // namespace tonic

#endif  // LIB_TONIC_FILE_LOADER_FILE_LOADER_H_
