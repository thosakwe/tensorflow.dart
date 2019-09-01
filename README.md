<div align="center" style="text-align: center">
  <img src="https://github.com/thosakwe/tensorflow.dart/raw/master/logo/tensorflow-layout-400.png"><br><br>
  <hr>
  <a href="https://pub.dartlang.org/packages/tensorflow"><img alt="Pub" src="https://img.shields.io/pub/v/tensorflow.svg"></a>
  <a href="https://travis-ci.org/thosakwe/tensorflow.dart"><img alt="Build status" src="https://travis-ci.org/thosakwe/tensorflow.dart.svg?branch=master"></a>
  <a href="https://gitter.im/tensorflow-dart/Lobby"><img alt="Gitter" src="https://img.shields.io/gitter/room/tensorflow-dart/Lobby.svg"></a>
  <a href="https://github.com/thosakwe/tensorflow.dart/blob/master/LICENSE"><img alt="License" src="https://img.shields.io/github/license/thosakwe/tensorflow.dart.svg"></a><br><br>
</div>

[Tensorflow](https://github.com/tensorflow/tensorflow)
API for the [Dart](https://dartlang.org)
programming language.

The *revised* goal of this project to provide an API for running pre-built
Tensorflow models/graphs, typically built in another language, like Python.

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

The Pub package does include pre-built libraries, but *your mileage may vary*.
It may make sense in your case to run the CMake build from within your `~/.pub-cache`
locally.

## Prerequisites
You'll need the following installed to run Tensorflow for Dart:

- [CMake](https://cmake.org/)
- [Dart SDK `^2.0.0`](https://www.dartlang.org/install)
- [`libtensorflow`](https://www.tensorflow.org/install/lang_c)

## Building as a Dependency
If you are using `package:tensorflow` as a dependency in a Dart project, then
you may be able to get by with the pre-built dynamic libraries in the `lib/`
folder. If not, you will have to manually enter the `~/.pub-cache` and run the
build.

## Building by Itself

If you are contributing to the project, you will certainly need to be able to
build the project on the fly. Use the provided `CMakeLists.txt` script to build
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
`package:tensorflow/tensorflow.dart` *theoretically* supports the entire low-level
Tensorflow API. This can be used to perform a variety of complex mathematical
operations, and also be used to compose higher-level functionality. These bindings
are, for the most part, auto-generated, and there is not much incentive to properly
unit test them, considering that the most common use of this package will be to
execute existing Tensorflow models from other languages.

```dart
import 'package:tensorflow/tensorflow.dart' as tf;

void main() {
    var shape = tf.Shape(6, 6);

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
