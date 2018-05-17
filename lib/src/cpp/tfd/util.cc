//
// Created by Tobe on 4/15/18.
//
#include <iostream>
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
        auto *status = TF_NewStatus();
        const char *str;
        size_t str_len, size = TF_TensorByteSize(tensor);
        TF_StringDecode(8 + (char *) TF_TensorData(tensor), size, &str, &str_len, status);
        return Dart_NewStringFromUTF8((const uint8_t *) str, str_len);
    } else if (type == TF_BOOL) {
        auto v = *((unsigned char *) TF_TensorData(tensor));
        return Dart_NewBoolean(v == 1);
    } else if (type == TF_DOUBLE) {
        auto v = *((double *) TF_TensorData(tensor));
        return Dart_NewDouble(v);
    } else if (type == TF_FLOAT) {
        auto v = *((float *) TF_TensorData(tensor));
        return Dart_NewDouble((double) v);
    } else if (type == TF_INT8) {
        auto v = *((uint8_t *) TF_TensorData(tensor));
        return Dart_NewInteger(v);
    } else if (type == TF_INT16) {
        auto v = *((uint16_t *) TF_TensorData(tensor));
        return Dart_NewInteger(v);
    } else if (type == TF_INT32) {
        auto v = *((uint32_t *) TF_TensorData(tensor));
        return Dart_NewInteger(v);
    } else if (type == TF_INT64) {
        auto v = *((uint64_t *) TF_TensorData(tensor));
        return Dart_NewInteger(v);
    } else if (type == TF_UINT8) {
        auto v = *((uint8_t *) TF_TensorData(tensor));
        return Dart_NewIntegerFromUint64(v);
    } else if (type == TF_UINT16) {
        auto v = *((uint16_t *) TF_TensorData(tensor));
        return Dart_NewIntegerFromUint64(v);
    } else if (type == TF_UINT32) {
        auto v = *((uint32_t *) TF_TensorData(tensor));
        return Dart_NewIntegerFromUint64(v);
    } else if (type == TF_UINT64) {
        auto v = *((uint64_t *) TF_TensorData(tensor));
        return Dart_NewIntegerFromUint64(v);
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

TF_Operation *tfd::dereference_operation_ptr(Dart_Handle handle) {
    return (TF_Operation *) dereference_ptr(handle);
}

void tfd::throwArgumentError(const char *msg) {
    Dart_Handle unsupportedErrorType = Dart_GetClass(Dart_RootLibrary(), Dart_NewStringFromCString("ArgumentError"));
    Dart_Handle msgh = Dart_NewStringFromCString(msg);
    Dart_Handle error = Dart_New(unsupportedErrorType, Dart_NewStringFromCString(""), 1, &msgh);
    Dart_ThrowException(error);
}

TF_Output tfd::convert_output_wrapper(Dart_Handle handle, int index) {
    uint64_t opPtr;
    Dart_Handle opHandle = Dart_GetField(handle, Dart_NewStringFromCString("_operation"));
    HandleError(Dart_IntegerToUint64(opHandle, &opPtr));

    int64_t idx;
    HandleError(Dart_IntegerToInt64(Dart_GetField(handle, Dart_NewStringFromCString("_index")), &idx));
    auto *op = (TF_Operation *) opPtr;
    //std::cout << "Op: " << op << "; index: " << index << std::endl;
    return {op, (int) idx};
}
