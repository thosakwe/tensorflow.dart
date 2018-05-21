//
// Created by Tobe on 5/20/18.
//

#include "function_node.h"

void tfd::FunctionNode_from_graph(Dart_NativeArguments arguments) {
    auto *graph = dereference_graph_ptr(Dart_GetNativeArgument(arguments, 0));
    auto *buf = TF_NewBuffer();
    auto *status = TF_NewStatus();
}
