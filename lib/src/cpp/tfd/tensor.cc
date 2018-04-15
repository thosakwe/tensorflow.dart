//
// Created by Tobe on 4/15/18.
//

#include <cstring>
#include "../tensorflow_dart.h"
#include "tensor.h"

void tfd::NewStringTensor(Dart_NativeArguments arguments) {
    const char *str;
    int64_t index;
    Dart_Handle arg0 = Dart_GetNativeArgument(arguments, 0), tensorType
            = Dart_GetNativeArgument(arguments, 1);
    HandleError(Dart_StringToCString(arg0, &str));

    // Make a new Tensor._()
    Dart_Handle tensorInstance = Dart_New(tensorType, Dart_NewStringFromCString("_"), 0, nullptr);

    // Create a `Const` operation.
    // TODO: See if we need to pass a graph?
    //auto *graph = TF_NewGraph();
    auto *status = TF_NewStatus();
    //auto *op = TF_NewOperation(graph, "Const", str);

    // Allocate the tensor.
    auto *tensor = TF_AllocateTensor(TF_STRING, nullptr, 0, 8 + TF_StringEncodedSize(strlen(str)));

    // Next, encode the string, and do some Tensorflow stuff that apparently works
    TF_StringEncode(str, strlen(str), 8 + (char *) TF_TensorData(tensor), TF_StringEncodedSize(strlen(str)), status);
    memset(TF_TensorData(tensor), 0, 8);
    Dart_SetField(tensorInstance, Dart_NewStringFromCString("_pointer"), Dart_NewInteger((int64_t) tensor));

    // Indicate that the tensor we've allocated is the value of this operation.
    //TF_SetAttrTensor(op, "value", tensor, status);
    //TF_SetAttrType(op, "dtype", TF_TensorType(tensor));

    // Finish the operation, set the index, and send the pointer
    // back to Dart-land.
    //auto *operation = TF_FinishOperation(op, status);
    //HandleError(Dart_GetNativeIntegerArgument(arguments, 2, &index));
    //TF_Output output = {operation, (int) index};
    Dart_SetReturnValue(arguments, tensorInstance);
}
