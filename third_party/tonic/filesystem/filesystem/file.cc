// Copyright 2016 The Fuchsia Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "filesystem/file.h"

#include <fcntl.h>
#include <limits.h>
#include <sys/stat.h>

#if defined(OS_WIN)
#define FILE_CREATE_MODE _S_IREAD | _S_IWRITE
#define BINARY_MODE _O_BINARY
#else
#define FILE_CREATE_MODE 0666
#define BINARY_MODE 0
#endif

#include "filesystem/eintr_wrapper.h"
#include "filesystem/file_descriptor.h"
#include "filesystem/portable_unistd.h"
#include "filesystem/scoped_temp_dir.h"

namespace filesystem {
namespace {

template <typename T>
bool ReadFileDescriptor(int fd, T* result) {
  if (!result) {
    return false;
  }

  result->clear();

  if (fd < 0)
    return false;

  constexpr size_t kBufferSize = 1 << 16;
  size_t offset = 0;
  ssize_t bytes_read = 0;
  do {
    offset += bytes_read;
    result->resize(offset + kBufferSize);
    bytes_read = HANDLE_EINTR(read(fd, &(*result)[offset], kBufferSize));
  } while (bytes_read > 0);

  if (bytes_read < 0) {
    result->clear();
    return false;
  }

  result->resize(offset + bytes_read);
  return true;
}

}  // namespace

bool WriteFile(const std::string& path, const char* data, ssize_t size) {
  Descriptor fd(HANDLE_EINTR(creat(path.c_str(), FILE_CREATE_MODE)));
  if (!fd.is_valid())
    return false;
  return WriteFileDescriptor(fd.get(), data, size);
}

bool WriteFileInTwoPhases(const std::string& path,
                          const char* data,
                          size_t data_len,
                          const std::string& temp_root) {
  ScopedTempDir temp_dir(temp_root);

  std::string temp_file_path;
  if (!temp_dir.NewTempFile(&temp_file_path)) {
    return false;
  }

  if (!WriteFile(temp_file_path, data, data_len)) {
    return false;
  }

  if (rename(temp_file_path.c_str(), path.c_str()) != 0) {
    return false;
  }

  return true;
}

bool ReadFileToString(const std::string& path, std::string* result) {
  Descriptor fd(open(path.c_str(), O_RDONLY));
  return ReadFileDescriptor(fd.get(), result);
}

bool ReadFileDescriptorToString(int fd, std::string* result) {
  return ReadFileDescriptor(fd, result);
}

#if defined(OS_LINUX) || defined(OS_FUCHSIA)
bool ReadFileToStringAt(int dirfd,
                        const std::string& path,
                        std::string* result) {
  Descriptor fd(openat(dirfd, path.c_str(), O_RDONLY));
  return ReadFileDescriptor(fd.get(), result);
}
#endif

bool ReadFileToVector(const std::string& path, std::vector<uint8_t>* result) {
  Descriptor fd(open(path.c_str(), O_RDONLY | BINARY_MODE));
  return ReadFileDescriptor(fd.get(), result);
}

std::pair<uint8_t*, intptr_t> ReadFileToBytes(const std::string& path) {
  std::pair<uint8_t*, intptr_t> failure_pair{nullptr, -1};
  Descriptor fd(open(path.c_str(), O_RDONLY | BINARY_MODE));
  if (!fd.is_valid())
    return failure_pair;
  return ReadFileDescriptorToBytes(fd.get());
}

std::pair<uint8_t*, intptr_t> ReadFileDescriptorToBytes(int fd) {
  std::pair<uint8_t*, intptr_t> failure_pair{nullptr, -1};
  struct stat st;
  if (fstat(fd, &st) != 0) {
    return failure_pair;
  }
  intptr_t file_size = st.st_size;
  uint8_t* ptr = (uint8_t*)malloc(file_size);

  size_t bytes_left = file_size;
  size_t offset = 0;
  while (bytes_left > 0) {
    ssize_t bytes_read = HANDLE_EINTR(read(fd, &ptr[offset], bytes_left));
    if (bytes_read < 0) {
      return failure_pair;
    }
    offset += bytes_read;
    bytes_left -= bytes_read;
  }
  return std::pair<uint8_t*, intptr_t>(ptr, file_size);
}

bool IsFile(const std::string& path) {
  struct stat buf;
  if (stat(path.c_str(), &buf) != 0)
    return false;
  return S_ISREG(buf.st_mode);
}

#if defined(OS_LINUX) || defined(OS_FUCHSIA)
bool IsFileAt(int dirfd, const std::string& path) {
  struct stat buf;
  if (fstatat(dirfd, path.c_str(), &buf, 0 /* flags */) != 0)
    return false;
  return S_ISREG(buf.st_mode);
}
#endif

bool GetFileSize(const std::string& path, uint64_t* size) {
  struct stat stat_buffer;
  if (stat(path.c_str(), &stat_buffer) != 0)
    return false;
  *size = stat_buffer.st_size;
  return true;
}

}  // namespace filesystem
