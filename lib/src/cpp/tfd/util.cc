//
// Created by Tobe on 4/15/18.
//
#include <string>
#include "../tensorflow_dart.h"
#include "util.h"

void *tfd::dereference_ptr(Dart_Handle handle) {
    uint64_t ptr;
    Dart_Handle value = Dart_GetField(handle, Dart_NewStringFromCString("_pointer"));
    HandleError(Dart_IntegerToUint64(value, &ptr));
    return (void *) ptr;
}

TF_Graph *tfd::dereference_graph_ptr(Dart_Handle handle) {
    return (TF_Graph *) dereference_ptr(handle);
}

TF_Tensor *tfd::dereference_tensor_ptr(Dart_Handle handle) {
    return (TF_Tensor *) dereference_ptr(handle);
}

Dart_Handle tfd::get_tensor_value(TF_Tensor *tensor) {
    TF_DataType type = TF_TensorType(tensor);

    if (type == TF_STRING) {
        // TODO: Get String length
        auto *str = ((char *) TF_TensorData(tensor)) + 9;
        return Dart_NewStringFromCString(str);
    }

    // TODO: Other data types

    // Throw an UnsupportedError
    Dart_Handle unsupportedErrorType = Dart_GetClass(Dart_RootLibrary(), Dart_NewStringFromCString("UnsupportedError"));
    std::string msgbuf("Unsupported Tensor type: ");
    msgbuf.append(std::to_string(type));
    Dart_Handle msg = Dart_NewStringFromCString(msgbuf.c_str());
    Dart_Handle error = Dart_New(unsupportedErrorType, Dart_NewStringFromCString(""), 1, &msg);
    Dart_ThrowException(error);
}
