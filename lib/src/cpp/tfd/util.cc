//
// Created by Tobe on 4/15/18.
//

#include "../tensorflow_dart.h"
#include "util.h"

void * tfd::dereference_ptr(Dart_Handle handle) {
    uint64_t ptr;
    Dart_Handle value = Dart_GetField(handle, Dart_NewStringFromCString("_pointer"));
    HandleError(Dart_IntegerToUint64(value, &ptr));
    return (void *) ptr;
}

TF_Graph *tfd::dereference_graph_ptr(Dart_Handle handle) {
    return (TF_Graph*) dereference_ptr(handle);
}

TF_Tensor *tfd::dereference_tensor_ptr(Dart_Handle handle) {
    return (TF_Tensor*) dereference_ptr(handle);
}