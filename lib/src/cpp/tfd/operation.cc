//
// Created by Tobe on 5/14/18.
//

#include "../tensorflow_dart.h"
#include "operation.h"

void tfd::Operation_new(Dart_NativeArguments arguments) {
    //auto *op = TF_NewOperation();
}

void tfd::Operation_list(Dart_NativeArguments arguments) {
    auto *buf = TF_GetAllOpList();
    Dart_Handle handle = HandleError(Dart_NewExternalTypedData(Dart_TypedData_kUint8, (void *) buf->data, buf->length));
    Dart_SetReturnValue(arguments, handle);
}
