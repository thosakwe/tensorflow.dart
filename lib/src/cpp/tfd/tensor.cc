//
// Created by Tobe on 4/15/18.
//

#include <cstring>
#include <iostream>
#include "../tensorflow_dart.h"
#include "tensor.h"
#include "util.h"

using namespace tfd;

void tfd::Constant(Dart_NativeArguments arguments) {
    const char *operationName;
    int64_t dtype;
    auto *graph = dereference_graph_ptr(Dart_GetNativeArgument(arguments, 0));
    Dart_Handle value = Dart_GetNativeArgument(arguments, 1), outputType
            = Dart_GetNativeArgument(arguments, 2);
    HandleError(Dart_StringToCString(Dart_GetNativeArgument(arguments, 3), &operationName));
    HandleError(Dart_IntegerToInt64(Dart_GetNativeArgument(arguments, 4), &dtype));

    // Make a new Output._()
    Dart_Handle outputInstance = Dart_New(outputType, Dart_NewStringFromCString("_"), 0, nullptr);

    // Create a `Const` operation.
    auto *status = TF_NewStatus(); // TODO: Preserve this for a graph
    auto *desc = TF_NewOperation(graph, "Const", operationName);
    TF_Tensor *tensor;

    if (Dart_IsString(value)) {
        const char *str;
        HandleError(Dart_StringToCString(value, &str));
        tensor = TF_AllocateTensor(TF_STRING, nullptr, 0, 8 + TF_StringEncodedSize(strlen(str)));
        TF_StringEncode(str, strlen(str), 8 + (char *) TF_TensorData(tensor), TF_StringEncodedSize(strlen(str)),
                        status);
        memset(TF_TensorData(tensor), 0, 8);
    } else if (Dart_IsBoolean(value)) {
        bool v;
        HandleError(Dart_BooleanValue(value, &v));
        tensor = TF_AllocateTensor(TF_BOOL, nullptr, 0, sizeof(unsigned char));
        *((unsigned char *) (TF_TensorData(tensor))) = (unsigned char) (v ? 1 : 0);
    } else if (Dart_IsInteger(value)) {
        if (dtype == -1) dtype = TF_INT64;
        int64_t v;
        HandleError(Dart_IntegerToInt64(value, &v));
        tensor = TF_AllocateTensor((TF_DataType) dtype, nullptr, 0, sizeof(v));
        *((int64_t *) (TF_TensorData(tensor))) = v;
    } else if (Dart_IsDouble(value)) {
        if (dtype == -1) dtype = TF_FLOAT;
        double v;
        HandleError(Dart_DoubleValue(value, &v));
        tensor = TF_AllocateTensor((TF_DataType) dtype, nullptr, 0, sizeof(v));
        *((float *) (TF_TensorData(tensor))) = (float) v;
    } else {
        throwArgumentError("Unsupported type for constant.");
        return;
    }

    TF_SetAttrTensor(desc, "value", tensor, status);
    TF_SetAttrType(desc, "dtype", TF_TensorType(tensor));

    auto *op = TF_FinishOperation(desc, status);

    if (op == nullptr) {
        Dart_ThrowException(Dart_NewStringFromCString("Failed to add node to graph."));
    }

    Dart_SetField(outputInstance, Dart_NewStringFromCString("_operation"), Dart_NewIntegerFromUint64((uint64_t) op));
    Dart_SetField(outputInstance, Dart_NewStringFromCString("_index"), Dart_GetNativeArgument(arguments, 5));
    Dart_SetReturnValue(arguments, outputInstance);
}
