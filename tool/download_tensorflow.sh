#!/usr/bin/env bash
if [ -z "$TF_PLATFORM" ]
then
  echo 'No `TF_PLATFORM` specified; defaulting to `x86_64`'
  export TF_PLATFORM='x86_64'
fi

if [ -z "$TF_VERSION" ]
then
  echo 'No `TF_VERSION` specified; defaulting to `1.7.0`'
  export TF_VERSION='1.7.0'
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

TF=${TF_TYPE}-${TF_OS}-${TF_PLATFORM}-${TF_VERSION}
TARGET_DIRECTORY=`dirname $0`/../third_party/tensorflow-${TF}
mkdir -p $TARGET_DIRECTORY
curl -L \
  "https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-${TF}.tar.gz" |
  tar -C $TARGET_DIRECTORY -xz

if [ "$?" != "0" ]
then
  (>&2 echo 'Tensorflow download failed.')
  rm -rf $TARGET_DIRECTORY
  exit
fi
