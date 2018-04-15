//
// Created by Tobe on 4/15/18.
//

#include "../tensorflow_dart.h"
#include "graph.h"
#include <iostream>

TF_Graph *dereference_graph_ptr(Dart_Handle handle) {
    uint64_t ptr;
    Dart_Handle value = Dart_GetField(handle, Dart_NewStringFromCString("_pointer"));
    HandleError(Dart_IntegerToUint64(value, &ptr));
    return (TF_Graph *) ptr;
}

void tfd::NewGraph(Dart_NativeArguments arguments) {
    auto *ptr = TF_NewGraph();
    Dart_SetReturnValue(arguments, Dart_NewInteger((int64_t) ptr));
}

void tfd::Graph_Delete(Dart_NativeArguments arguments) {
    auto * graph = dereference_graph_ptr(Dart_GetNativeArgument(arguments, 0));
    TF_DeleteGraph(graph);
    Dart_SetReturnValue(arguments, Dart_Null());
}
