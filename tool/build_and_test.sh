#!/usr/bin/env bash
clear
cmake .
cmake --build . --target tensorflow_dart -- -j 4
pub run test -j 4
