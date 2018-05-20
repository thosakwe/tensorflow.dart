//
// Created by Tobe on 4/15/18.
//

#ifndef TENSORFLOW_DART_TENSOR_H
#define TENSORFLOW_DART_TENSOR_H

#include <dart_api.h>
#include <tensorflow/c/c_api.h>

namespace tfd
{
    void Constant(Dart_NativeArguments arguments);
    void Tensors_string(Dart_NativeArguments arguments);
}

#endif //TENSORFLOW_DART_TENSOR_H
