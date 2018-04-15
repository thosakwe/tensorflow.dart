//
// Created by Tobe on 4/15/18.
//

#ifndef TENSORFLOW_DART_UTIL_H
#define TENSORFLOW_DART_UTIL_H

#include <dart_api.h>
#include <tensorflow/c/c_api.h>

namespace tfd
{
    void *dereference_ptr(Dart_Handle handle);
    TF_Graph *dereference_graph_ptr(Dart_Handle handle);
    TF_Tensor *dereference_tensor_ptr(Dart_Handle handle);
    Dart_Handle get_tensor_value(TF_Tensor* tensor);
}

#endif //TENSORFLOW_DART_UTIL_H
