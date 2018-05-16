//
// Created by Tobe on 5/14/18.
//

#ifndef TENSORFLOW_DART_OPERATION_H
#define TENSORFLOW_DART_OPERATION_H


#include <dart_api.h>
#include <tensorflow/c/c_api.h>

namespace tfd
{
    void Operation_list(Dart_NativeArguments arguments);
    void Operation_name(Dart_NativeArguments arguments);
    void Operation_new(Dart_NativeArguments arguments);
}


#endif //TENSORFLOW_DART_OPERATION_H
