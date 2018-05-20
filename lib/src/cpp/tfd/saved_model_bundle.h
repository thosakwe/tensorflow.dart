//
// Created by Tobe on 5/19/18.
//

#ifndef TENSORFLOW_DART_SAVED_MODEL_BUNDLE_H
#define TENSORFLOW_DART_SAVED_MODEL_BUNDLE_H

#include <dart_api.h>
#include <tensorflow/c/c_api.h>
#include "../tensorflow_dart.h"
#include "util.h"

namespace tfd
{
    void SavedModelBundle_new(Dart_NativeArguments arguments);
}

#endif //TENSORFLOW_DART_SAVED_MODEL_BUNDLE_H
