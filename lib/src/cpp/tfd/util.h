//
// Created by Tobe on 4/15/18.
//

#ifndef TENSORFLOW_DART_UTIL_H
#define TENSORFLOW_DART_UTIL_H

#include <cstdlib>
#include <cstring>
#include <dart_api.h>
#include <tensorflow/c/c_api.h>

namespace tfd {
void *dereference_ptr(Dart_Handle handle);

TF_Graph *dereference_graph_ptr(Dart_Handle handle);

TF_Operation *dereference_operation_ptr(Dart_Handle handle);

TF_OperationDescription *
dereference_operation_description_ptr(Dart_Handle handle);

TF_Function *dereference_function_ptr(Dart_Handle handle);

TF_Tensor *convert_tensor(Dart_Handle handle);

Dart_Handle get_tensor_value(TF_Tensor *tensor);

TF_Output convert_output_wrapper(Dart_Handle handle, int index = 0);

void throwCoreError(const char *msg, const char *errorType = "ArgumentError");

Dart_Handle DartListOf(Dart_Handle *arr, intptr_t length);
//
//    Dart_Handle getTuple2Type();
//
//    Dart_Handle getTuple3Type();
//
//    Dart_Handle getTuple4Type();
} // namespace tfd

#endif // TENSORFLOW_DART_UTIL_H
