#!/usr/bin/env bash
set -e
pub get

DEFAULT_NUM_MAKE_JOBS=2

# https://github.com/travis-ci/travis-ci/issues/4696#issuecomment-308517449
NUM_MAKE_JOBS=$(($(nproc 2> /dev/null || echo ${DEFAULT_NUM_MAKE_JOBS})+1))

PWD=`pwd`
cd /usr
# Download tensorflow
wget https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-linux-x86_64-1.14.0.tar.gz
tar -zxvf libtensorflow-cpu-linux-x86_64-1.14.0.tar.gz
cd "$PWD"

# Build the library
mkdir -p cmake-build-debug
cd cmake-build-debug
# LD_LIBRARY_PATH=. cmake -DCMAKE_C_FLAGS="-I." -DCMAKE_CXX_FLAGS="-I." ..
cmake --build . -- "-j${NUM_MAKE_JOBS}"
cd ..

# Now, just run our tests with the newly-built library.
pub run test "-j${NUM_MAKE_JOBS}"