//
// Created by Tobe on 4/15/18.
//

#ifndef TENSORFLOW_DART_GRAPH_H
#define TENSORFLOW_DART_GRAPH_H

#include <dart_api.h>
#include <dart_mirrors_api.h>
#include <tensorflow/c/c_api.h>

namespace tfd
{
    void Graph_new(Dart_NativeArguments arguments);
    void Graph_delete(Dart_NativeArguments arguments);
    void Graph_add_operation(Dart_NativeArguments arguments);
    void Graph_operation_by_name(Dart_NativeArguments arguments);
    void Graph_from_graph_def(Dart_NativeArguments arguments);
    void Graph_to_graph_def(Dart_NativeArguments arguments);
    void Graph_iter_next(Dart_NativeArguments arguments);
}

#endif //TENSORFLOW_DART_GRAPH_H
