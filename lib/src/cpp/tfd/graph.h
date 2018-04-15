//
// Created by Tobe on 4/15/18.
//

#ifndef TENSORFLOW_DART_GRAPH_H
#define TENSORFLOW_DART_GRAPH_H

#include <dart_api.h>
#include <tensorflow/c/c_api.h>

namespace tfd {
    void NewGraph(Dart_NativeArguments arguments);
}

#endif //TENSORFLOW_DART_GRAPH_H
