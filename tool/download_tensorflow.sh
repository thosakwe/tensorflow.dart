#!/usr/bin/env bash
if [ -z "$TF_PLATFORM" ]
then
  echo 'No `TF_PLATFORM` specified; defaulting to `x86_64`'
  export TF_PLATFORM='x86_64'
fi

if [ -z "$TF_VERSION" ]
then
  echo 'No `TF_VERSION` specified; defaulting to `1.11.0`'
  export TF_VERSION='1.11.0'
fi

if [ -z "$TF_TYPE" ]
then
  (>&2 echo 'Error: `TF_TYPE` is not defined.')
  (>&2 echo 'Supported options: `cpu`, `gpu`')
  exit 1
fi

if [ -z "$TF_OS" ]
then
  (>&2 echo 'Error: `TF_OS` is not defined.')
  (>&2 echo 'Supported options: `linux`, `darwin`')
  exit 1
fi

if [ "$TF_OS" == "darwin" ]
then
    if [ "$TF_TYPE" == "gpu" ]
    then
        (>&2 echo 'Tensorflow currently does not support GPU acceleration on MacOS.')
        exit 1
    fi
fi

set -e
TF=${TF_TYPE}-${TF_OS}-${TF_PLATFORM}-${TF_VERSION}
URL="https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-${TF}.tar.gz"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TARGET_DIRECTORY="${DIR}/../third_party/tensorflow-${TF}"
FILE="tensorflow.tar.gz"
echo "Downloading ${URL} to ${TARGET_DIRECTORY}..."
mkdir -p $TARGET_DIRECTORY
wget -q -O $FILE $URL
LAST=`pwd`
tar -xzvf "$FILE" -C "$TARGET_DIRECTORY"

if [ "$?" != "0" ]
then
  (>&2 echo 'Tensorflow download failed.')
  rm -rf $TARGET_DIRECTORY
  exit
fi
