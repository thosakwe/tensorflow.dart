//
// Created by Tobe on 4/15/18.
//

#include "graph.h"

void tfd::NewGraph(Dart_NativeArguments arguments) {
    auto *ptr = TF_NewGraph();
    Dart_SetReturnValue(arguments, Dart_NewInteger((int64_t) ptr));
}
