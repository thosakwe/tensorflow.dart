//
// Created by Tobe on 4/15/18.
//

#ifndef TENSORFLOW_DART_UTIL_H
#define TENSORFLOW_DART_UTIL_H

#include <dart_api.h>
#include <tensorflow/c/c_api.h>

namespace tfd
{
    TF_Graph *dereference_graph_ptr(Dart_Handle handle);
}

#endif //TENSORFLOW_DART_UTIL_H
