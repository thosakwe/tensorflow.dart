//
// Created by Tobe on 4/15/18.
//

#include "../tensorflow_dart.h"
#include "util.h"

TF_Graph *tfd::dereference_graph_ptr(Dart_Handle handle) {
    uint64_t ptr;
    Dart_Handle value = Dart_GetField(handle, Dart_NewStringFromCString("_pointer"));
    HandleError(Dart_IntegerToUint64(value, &ptr));
    return (TF_Graph *) ptr;
}