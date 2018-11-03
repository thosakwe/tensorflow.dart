<div align="center" style="text-align: center">
  <img src="https://github.com/thosakwe/tensorflow.dart/raw/master/logo/tensorflow-layout-400.png"><br><br>
  <hr>
  <a href="https://pub.dartlang.org/packages/tensorflow"><img alt="Pub" src="https://img.shields.io/pub/v/tensorflow.svg"></a>
  <a href="https://travis-ci.org/thosakwe/tensorflow.dart"><img alt="Build status" src="https://travis-ci.org/thosakwe/tensorflow.dart.svg?branch=master"></a>
  <a href="https://gitter.im/tensorflow-dart/Lobby"><img alt="Gitter" src="https://img.shields.io/gitter/room/tensorflow-dart/Lobby.svg"></a>
  <a href="https://github.com/thosakwe/tensorflow.dart/blob/master/LICENSE"><img alt="License" src="https://img.shields.io/github/license/thosakwe/tensorflow.dart.svg"></a><br>
</div>

[Tensorflow](https://github.com/tensorflow/tensorflow)
API for the [Dart](https://dartlang.org)
programming language.

The goal of this project is to provide first-class support for machine learning
and data science in Dart, a strongly-typed language that runs
across all platforms.

This project is still in its early stages, but will grow very quickly.

- [Installation](#installation)
  - [Prerequisites](#prerequisites)
  - [Building as a Dependency](#building-as-a-dependency)
  - [Building by Itself](#building-by-itself)
- [Basic Usage](#basic-usage)
  - [Importing Graphs](#importing-graphs)
  - [Low Level API](#low-level-api)

## Installation

This library uses native bindings, which (currently) are not easily
distributed using Dart's Pub package manager.

Building the bindings, however, is easy and quick, as the build uses pre-built
Tensorflow binaries, rather than re-building per user.

## Prerequisites

You'll need the following installed to run Tensorflow for Dart:

- [CMake](https://cmake.org/)
- [Dart SDK >=2.0.0-dev](https://www.dartlang.org/install)

It's also strongly recommended to install the
[`scripts`](https://github.com/thosakwe/dart_scripts) command-line utility for Dart,
which allows you to build the bindings in one step:

```bash
$ pub global activate scripts
```

Ensure that you have the path to Pub's global executables in your `PATH` environment variable.

On Windows, this is `%APPDATA%\Pub\Cache\bin`, whereas on UNIX-based systems, it should be
`~/.pub-cache/bin`.

## Building as a Dependency

If you are using `package:tensorflow` as a dependency in a Dart project, then you will
need to build the native bindings. This process is made simple the `tool/build.dart` file
included with this project.

Using the `scripts` tool, you can build the bindings in your Pub cache, and they will be
available to all Dart projects on your system:

```bash
$ scripts get && scripts clean
```

As an added bonus, the files generated by CMake are cached, which means you likely only
ever have to build them once.

## Building by Itself

If you are contributing to the project, you will certainly need to be able to
build the project on the fly. Use the provided `tool/build.dart` script to build
the project on-the-fly.

# Basic Usage

## Importing Graphs

This project supports loading and restoring models saved from other Tensorflow
frontends, i.e. Python:

```dart
import 'package:tensorflow/tensorflow.dart' as tf;

void main() {
  // Using the `SavedModel` API:
  var model = new SavedModelBundle('example/saved_models');
  model.restore('variables.index');

  // Or, you can import from a `GraphDef` protocol buffer:
  var graph = new Graph.fromGraphDef(graphDef);
  graph['output'].run(feed: {'input': new Tensor.from('Hello, world!')});
}
```

## Low Level API

`package:tensorflow/tensorflow.dart` supports the entire low-level
Tensorflow API. This can be used to perform a variety of complex mathematical
operations, and also be used to compose higher-level functionality.

```dart
import 'package:tensorflow/tensorflow.dart' as tf;

void main() {
    var shape = new tf.Shape(6, 6);

    var x = tf.getVariable(
      'x',
      shape: shape,
      initializer: tf.randomUniform(
        tf.constant(shape),
        dtype: tf.DataType.DT_FLOAT,
      ),
    );

    x = tf.matMul(x, x);

    print(x.run());
}
```
