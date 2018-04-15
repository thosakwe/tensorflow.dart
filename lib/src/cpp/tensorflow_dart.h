//
// Created by Tobe on 4/15/18.
//

#ifndef TENSORFLOW_DART_TENSORFLOW_DART_H
#define TENSORFLOW_DART_TENSORFLOW_DART_H

#include <dart_api.h>
#include <tensorflow/c/c_api.h>

DART_EXPORT Dart_Handle tensorflow_dart_Init(Dart_Handle parent_library);

Dart_NativeFunction ResolveName(Dart_Handle name, int argc, bool *auto_setup_scope);

Dart_Handle HandleError(Dart_Handle handle);

#endif //TENSORFLOW_DART_TENSORFLOW_DART_H