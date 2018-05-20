//
// Created by Tobe on 4/15/18.
//

#ifndef TENSORFLOW_DART_SESSION_H
#define TENSORFLOW_DART_SESSION_H

#include <dart_api.h>
#include <tensorflow/c/c_api.h>

namespace tfd {
    void Session_close(Dart_NativeArguments arguments);
    void Session_run(Dart_NativeArguments arguments);

    void SessionRunGraph(Dart_NativeArguments arguments);
}

#endif //TENSORFLOW_DART_SESSION_H
