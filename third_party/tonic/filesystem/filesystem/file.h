// Copyright 2016 The Fuchsia Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef FILESYSTEM_FILE_H_
#define FILESYSTEM_FILE_H_

#include <string>
#include <vector>

namespace filesystem {

// Writes the given data to the file at the given path. Returns true if the data
// was successfully written, otherwise returns false.
bool WriteFile(const std::string& path, const char* data, ssize_t size);

// Writes the given data a temporary file under |temp_root| and then moves the
// temporary file to |path|, ensuring write atomicity. Returns true if the data
// was successfully written, otherwise returns false.
//
// Note that |path| and |temp_root| must be within the same filesystem for the
// move to work. For example, it will not work to use |path| under /data and
// |temp_root| under /tmp.
bool WriteFileInTwoPhases(const std::string& path,
                          const char* data,
                          size_t data_len,
                          const std::string& temp_root);

// Reads the contents of the file at the given path or file descriptor and
// stores the data in result. Returns true if the file was read successfully,
// otherwise returns false. If this function returns false, |result| will be
// the empty string.
bool ReadFileToString(const std::string& path, std::string* result);
bool ReadFileDescriptorToString(int fd, std::string* result);

#if defined(OS_LINUX) || defined(OS_FUCHSIA)
bool ReadFileToStringAt(int dirfd,
                        const std::string& path,
                        std::string* result);
#endif

// Reads the contents of the file at the given path and stores the data in
// result. Returns true if the file was read successfully, otherwise returns
// false. If this function returns false, |result| will be the empty string.
bool ReadFileToVector(const std::string& path, std::vector<uint8_t>* result);

// Reads the contents of the file at the given path and if successful, returns
// pair of read allocated bytes with data and size of the data if succesful.
// pair of <nullptr, -1> if read failed.
std::pair<uint8_t*, intptr_t> ReadFileToBytes(const std::string& path);
std::pair<uint8_t*, intptr_t> ReadFileDescriptorToBytes(int fd);

// Returns whether the given path is a file.
bool IsFile(const std::string& path);
#if defined(OS_LINUX) || defined(OS_FUCHSIA)
bool IsFileAt(int dirfd, const std::string& path);
#endif

// If the given path is a file, set size to the size of the file.
bool GetFileSize(const std::string& path, uint64_t* size);

}  // namespace filesystem

#endif  // FILESYSTEM_FILE_H_
