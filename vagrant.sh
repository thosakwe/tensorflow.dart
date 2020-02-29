#!/usr/bin/env bash

# Install CMake, etc.
sudo apt-get update
sudo apt-get install -y build-essential cmake
sudo apt-get update
sudo apt-get install apt-transport-https
sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
sudo apt-get update
sudo apt-get install -y dart
echo 'export PATH="/usr/lib/dart/bin:$PATH"' >> ~vagrant/.profile

# Download + install Tensorflow.
wget -O tf.tar.gz https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-gpu-linux-x86_64-1.14.0.tar.gz
sudo tar -C /usr/local -xzf tf.tar.gz
sudo ldconfig
