#!/usr/bin/env bash
set -e
pub get

DEFAULT_NUM_MAKE_JOBS=2

# https://github.com/travis-ci/travis-ci/issues/4696#issuecomment-308517449
NUM_MAKE_JOBS=$(($(nproc 2> /dev/null || echo ${DEFAULT_NUM_MAKE_JOBS})+1))

# Build the library
mkdir -p cmake-build-debug
cd cmake-build-debug
cmake ..
cmake --build . -- "-j${NUM_MAKE_JOBS}"
cd ..

# Now, just run our tests with the newly-built library.
pub run test "-j${NUM_MAKE_JOBS}"