#!/usr/bin/env bash
set -e
pub get
pub global activate scripts
alias scripts="pub global run scripts"
scripts build
scripts clean
pub run -test
DEFAULT_NUM_MAKE_JOBS=2

# https://github.com/travis-ci/travis-ci/issues/4696#issuecomment-308517449
NUM_MAKE_JOBS=$(($(nproc 2> /dev/null || echo ${DEFAULT_NUM_MAKE_JOBS})+1))

pub run test "-j${NUM_MAKE_JOBS}"