//
// Created by Tobe on 4/15/18.
//

#include "../tensorflow_dart.h"
#include "graph.h"
#include "util.h"

void tfd::NewGraph(Dart_NativeArguments arguments) {
    auto *ptr = TF_NewGraph();
    Dart_SetReturnValue(arguments, Dart_NewInteger((int64_t) ptr));
}

void tfd::Graph_Delete(Dart_NativeArguments arguments) {
    auto * graph = dereference_graph_ptr(Dart_GetNativeArgument(arguments, 0));
    TF_DeleteGraph(graph);
    Dart_SetReturnValue(arguments, Dart_Null());
}
