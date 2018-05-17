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
    TF_Operation *dereference_operation_ptr(Dart_Handle handle);
    TF_Tensor *dereference_tensor_ptr(Dart_Handle handle);
    Dart_Handle get_tensor_value(TF_Tensor* tensor);
    TF_Output convert_output_wrapper(Dart_Handle handle, int index);

    void throwArgumentError(const char* msg);
}

#endif //TENSORFLOW_DART_UTIL_H
