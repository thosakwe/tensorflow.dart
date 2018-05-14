//
// Created by Tobe on 4/15/18.
//

#include <cstring>
#include "../tensorflow_dart.h"
#include "tensor.h"

using namespace tfd;

void tfd::NewStringTensor(Dart_NativeArguments arguments) {
    const char *str;
    Dart_Handle arg0 = Dart_GetNativeArgument(arguments, 0), tensorType
            = Dart_GetNativeArgument(arguments, 1);
    HandleError(Dart_StringToCString(arg0, &str));

    /*
    const char *str;
    Dart_Handle arg0 = Dart_GetNativeArgument(arguments, 0), tensorType
            = Dart_GetNativeArgument(arguments, 1);
    HandleError(Dart_StringToCString(arg0, &str));

    // Make a new Tensor._()
    Dart_Handle tensorInstance = Dart_New(tensorType, Dart_NewStringFromCString("_"), 0, nullptr);

    // Create a `Const` operation.
    // TODO: See if we need to pass a graph?
    auto *status = TF_NewStatus();
    //auto *op = TF_NewOperation(graph, "Const", str);

    // Allocate the tensor.
    auto *tensor = TF_AllocateTensor(TF_STRING, nullptr, 0, 8 + TF_StringEncodedSize(strlen(str)));

    // Next, encode the string, and do some Tensorflow stuff that apparently works
    TF_StringEncode(str, strlen(str), 8 + (char *) TF_TensorData(tensor), TF_StringEncodedSize(strlen(str)), status);
    memset(TF_TensorData(tensor), 0, 8);
    Dart_SetField(tensorInstance, Dart_NewStringFromCString("_pointer"), Dart_NewInteger((int64_t) tensor));


    Dart_SetReturnValue(arguments, tensorInstance);*/
}
