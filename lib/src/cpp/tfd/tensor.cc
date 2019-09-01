//
// Created by Tobe on 4/15/18.
//

#include <cstring>
#include <iostream>
#include "../tensorflow_dart.h"
#include "tensor.h"
#include "util.h"

using namespace tfd;

void tfd::Tensors_string(Dart_NativeArguments arguments) {
    // Returns Tuple3<int, String, Uint8List>
    auto *status = TF_NewStatus();
    const char *str;
    Dart_Handle value = Dart_GetNativeArgument(arguments, 0);
    HandleError(Dart_StringToCString(value, &str));
    auto *tensor = TF_AllocateTensor(TF_STRING, nullptr, 0, 8 + TF_StringEncodedSize(strlen(str)));

    if (tensor == nullptr) throwCoreError("Could not allocate string tensor.", "StateError");
    else {
        auto *data = TF_TensorData(tensor);
        memset(data, 0, TF_TensorByteSize(tensor));
        TF_StringEncode(str, strlen(str), 8 + (char *) data, TF_StringEncodedSize(strlen(str)), status);

        int code = TF_GetCode(status);
        Dart_Handle tuple[4];
        tuple[0] = Dart_NewInteger(code);

        if (code != 0) {
            tuple[1] = Dart_NewStringFromCString(TF_Message(status));
            tuple[2] = Dart_Null();
        } else {
            tuple[1] = Dart_Null();

            // Get the raw data.
            Dart_Handle dataHandle = tuple[2] = Dart_NewTypedData(Dart_TypedData_kUint8, TF_TensorByteSize(tensor));
            void *buf;
            intptr_t length;
            Dart_TypedData_Type type;
            HandleError(Dart_TypedDataAcquireData(dataHandle, &type, &buf, &length));
            memcpy(buf, data, (size_t) length);
            HandleError(Dart_TypedDataReleaseData(dataHandle));
        }

        Dart_Handle tupleType = HandleError(getTuple3Type());
        Dart_Handle tupleHandle = Dart_New(tupleType, Dart_NewStringFromCString(""), 3, tuple);
        Dart_SetReturnValue(arguments, tupleHandle);
    }

    TF_DeleteTensor(tensor);
    TF_DeleteStatus(status);
}

void tfd::Constant(Dart_NativeArguments arguments) {
    const char *operationName;
    int64_t dtype;
    bool isShape;
    Dart_Handle graphHandle = Dart_GetNativeArgument(arguments, 0);
    auto *graph = dereference_graph_ptr(graphHandle);
    Dart_Handle value = Dart_GetNativeArgument(arguments, 1);
    Dart_Handle outputType = Dart_GetNativeArgument(arguments, 2);
    Dart_Handle shapeType = Dart_GetNativeArgument(arguments, 6);
    HandleError(Dart_StringToCString(Dart_GetNativeArgument(arguments, 3), &operationName));
    HandleError(Dart_IntegerToInt64(Dart_GetNativeArgument(arguments, 4), &dtype));

    // Make a Output._()
    Dart_Handle outputInstance = Dart_New(outputType, Dart_NewStringFromCString("_"), 1, &graphHandle);

    // Create a `Const` operation.
    auto *status = TF_NewStatus(); // TODO: Preserve this for a graph
    auto *desc = TF_NewOperation(graph, "Const", operationName);
    TF_Tensor *tensor = nullptr;
    HandleError(Dart_ObjectIsType(value, shapeType, &isShape));

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
        if (dtype == -1) dtype = TF_INT32;
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
    } else if (Dart_IsList(value)) {
        intptr_t length;
        HandleError(Dart_ListLength(value, &length));
        Dart_Handle first = length == 0 ? nullptr : Dart_ListGetAt(value, 0);
        int64_t dims = (int64_t) length + 0;
        int nDims = 1;

        if (length == 0) {
            tensor = TF_AllocateTensor(TF_INT32, nullptr, 0, 0);
        } else {
            if (dtype == TF_INT8) {
                tensor = TF_AllocateTensor((TF_DataType) dtype, &dims, nDims, sizeof(int8_t) * length);
                auto *arr = (int8_t *) TF_TensorData(tensor);

                for (intptr_t i = 0; i < length; i++) {
                    int64_t v;
                    HandleError(Dart_IntegerToInt64(Dart_ListGetAt(value, i), &v));
                    arr[i] = (int8_t) v;
                }
            } else if (dtype == TF_INT16) {
                tensor = TF_AllocateTensor((TF_DataType) dtype, &dims, nDims, sizeof(int16_t) * length);
                auto *arr = (int16_t *) TF_TensorData(tensor);

                for (intptr_t i = 0; i < length; i++) {
                    int64_t v;
                    HandleError(Dart_IntegerToInt64(Dart_ListGetAt(value, i), &v));
                    arr[i] = (int16_t) v;
                }
            } else if (dtype == TF_INT32) {
                tensor = TF_AllocateTensor((TF_DataType) dtype, &dims, nDims, sizeof(int32_t) * length);
                auto *arr = (int32_t *) TF_TensorData(tensor);

                for (intptr_t i = 0; i < length; i++) {
                    int64_t v;
                    HandleError(Dart_IntegerToInt64(Dart_ListGetAt(value, i), &v));
                    arr[i] = (int32_t) v;
                }
            } else if (dtype == TF_INT64) {
                tensor = TF_AllocateTensor((TF_DataType) dtype, &dims, nDims, sizeof(int64_t) * length);
                auto *arr = (int64_t *) TF_TensorData(tensor);

                for (intptr_t i = 0; i < length; i++) {
                    HandleError(Dart_IntegerToInt64(Dart_ListGetAt(value, i), &(arr[i])));
                }
            } else if (dtype == TF_UINT8) {
                tensor = TF_AllocateTensor((TF_DataType) dtype, &dims, nDims, sizeof(uint8_t) * length);
                auto *arr = (uint8_t *) TF_TensorData(tensor);

                for (intptr_t i = 0; i < length; i++) {
                    uint64_t v;
                    HandleError(Dart_IntegerToUint64(Dart_ListGetAt(value, i), &v));
                    arr[i] = (uint8_t) v;
                }
            } else if (dtype == TF_UINT16) {
                tensor = TF_AllocateTensor((TF_DataType) dtype, &dims, nDims, sizeof(uint16_t) * length);
                auto *arr = (uint16_t *) TF_TensorData(tensor);

                for (intptr_t i = 0; i < length; i++) {
                    uint64_t v;
                    HandleError(Dart_IntegerToUint64(Dart_ListGetAt(value, i), &v));
                    arr[i] = (uint16_t) v;
                }
            } else if (dtype == TF_UINT32) {
                tensor = TF_AllocateTensor((TF_DataType) dtype, &dims, nDims, sizeof(uint32_t) * length);
                auto *arr = (uint32_t *) TF_TensorData(tensor);

                for (intptr_t i = 0; i < length; i++) {
                    uint64_t v;
                    HandleError(Dart_IntegerToUint64(Dart_ListGetAt(value, i), &v));
                    arr[i] = (uint32_t) v;
                }
            } else if (dtype == TF_UINT64) {
                tensor = TF_AllocateTensor((TF_DataType) dtype, &dims, nDims, sizeof(uint64_t) * length);
                auto *arr = (uint64_t *) TF_TensorData(tensor);

                for (intptr_t i = 0; i < length; i++) {
                    HandleError(Dart_IntegerToUint64(Dart_ListGetAt(value, i), &(arr[i])));
                }
            } else if (dtype == TF_FLOAT || Dart_IsDouble(first)) {
                tensor = TF_AllocateTensor((TF_DataType) dtype, &dims, nDims, sizeof(float) * length);
                auto *arr = (float *) TF_TensorData(tensor);

                for (intptr_t i = 0; i < length; i++) {
                    double v;
                    HandleError(Dart_DoubleValue(Dart_ListGetAt(value, i), &v));
                    arr[i] = (float) v;
                }
            } else if (dtype == TF_BOOL || Dart_IsString(first)) {
                tensor = TF_AllocateTensor((TF_DataType) dtype, &dims, nDims, sizeof(unsigned char) * length);
                auto *arr = (unsigned char *) TF_TensorData(tensor);

                for (intptr_t i = 0; i < length; i++) {
                    bool v;
                    HandleError(Dart_BooleanValue(Dart_ListGetAt(value, i), &v));
                    arr[i] = (unsigned char) (v ? 1 : 0);
                }
            } else if (dtype == TF_STRING || Dart_IsString(first)) {
                size_t len = 0;

                for (intptr_t i = 0; i < length; i++) {
                    intptr_t size;
                    HandleError(Dart_StringLength(Dart_ListGetAt(value, i), &size));
                    len += 8 + TF_StringEncodedSize((size_t) size);
                }

                tensor = TF_AllocateTensor((TF_DataType) dtype, &dims, nDims, len);

                auto *data = (uint8_t *) TF_TensorData(tensor);
                intptr_t offset = 0;

                for (intptr_t i = 0; i < length; i++) {
                    const char *str;
                    HandleError(Dart_StringToCString(Dart_ListGetAt(value, i), &str));
                    size_t size = TF_StringEncodedSize((size_t) strlen(str));
                    uint8_t *ptr = data + offset;
                    memset(ptr, 0, 8);
                    ptr += 8;
                    TF_StringEncode(str, strlen(str), (char *) ptr, TF_StringEncodedSize(strlen(str)), status);
                    ptr += size;
                }
            }
        }
    }

    if (tensor == nullptr) {
        throwCoreError("Unsupported type for constant.");
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
    Dart_SetField(outputInstance, Dart_NewStringFromCString("_dtype"), Dart_NewInteger(TF_TensorType(tensor)));
    Dart_SetReturnValue(arguments, outputInstance);
}
