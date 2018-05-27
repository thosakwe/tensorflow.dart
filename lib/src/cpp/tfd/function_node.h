//
// Created by Tobe on 5/20/18.
//

#ifndef TENSORFLOW_DART_FUNCTION_NODE_H
#define TENSORFLOW_DART_FUNCTION_NODE_H

#include <tensorflow/c/c_api.h>
#include <dart_api.h>
#include "../tensorflow_dart.h"
#include "util.h"

namespace tfd {
    void FunctionNode_add_gradients(Dart_NativeArguments arguments);
    void FunctionNode_from_graph(Dart_NativeArguments arguments);
    void FunctionNode_from_function_def(Dart_NativeArguments arguments);
    void FunctionNode_to_function_def(Dart_NativeArguments arguments);
}

#endif //TENSORFLOW_DART_FUNCTION_NODE_H
