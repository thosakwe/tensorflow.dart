//
// Created by Tobe on 5/14/18.
//

#include <cstring>
#include <iostream>
#include "../tensorflow_dart.h"
#include "operation.h"
#include "util.h"

void tfd::Output_get_type(Dart_NativeArguments arguments) {
    TF_Output output = convert_output_wrapper(Dart_GetNativeArgument(arguments, 0));
    Dart_SetReturnValue(arguments, Dart_NewInteger(TF_OperationOutputType(output)));
}

void tfd::Output_reshape(Dart_NativeArguments arguments) {
    TF_Output output = convert_output_wrapper(Dart_GetNativeArgument(arguments, 0));
    Dart_Handle shapeHandle = Dart_GetNativeArgument(arguments, 2);
    auto *graph = dereference_graph_ptr(Dart_GetNativeArgument(arguments, 1));
    auto *status = TF_NewStatus();
    int64_t *dims = nullptr, nDims = 0;
    intptr_t length;
    Dart_TypedData_Type type;

    HandleError(Dart_ListLength(shapeHandle, &length));

    if (length > 0) {
        nDims = length;
        HandleError(Dart_TypedDataAcquireData(shapeHandle, &type, (void **) &dims, &length));
        TF_GraphSetTensorShape(graph, output, dims, (const int) nDims, status);
        HandleError(Dart_TypedDataReleaseData(shapeHandle));
    }

    int code = TF_GetCode(status);
    Dart_Handle tuple[2];
    tuple[0] = Dart_NewInteger(code);

    if (code != 0)
        tuple[1] = Dart_NewStringFromCString(TF_Message(status));
    else
        tuple[1] = Dart_Null();

    Dart_Handle tupleType = HandleError(getTuple2Type());
    Dart_Handle tupleHandle = Dart_New(tupleType, Dart_NewStringFromCString(""), 2, tuple);
    Dart_SetReturnValue(arguments, tupleHandle);
    TF_DeleteStatus(status);
}

void tfd::Output_shape(Dart_NativeArguments arguments) {
    TF_Output output = convert_output_wrapper(Dart_GetNativeArgument(arguments, 0));
    auto *graph = dereference_graph_ptr(Dart_GetNativeArgument(arguments, 1));
    auto *status = TF_NewStatus();
    int nDims = TF_GraphGetTensorNumDims(graph, output, status);
    auto *dims = new int64_t[nDims];
    TF_GraphGetTensorShape(graph, output, dims, nDims, status);
    Dart_SetReturnValue(arguments, Dart_NewExternalTypedData(Dart_TypedData_kInt64, dims, nDims));
    TF_DeleteStatus(status);
}

void tfd::Operation_new(Dart_NativeArguments arguments) {
    //auto *op = TF_NewOperation();
}

void tfd::Operation_output(Dart_NativeArguments arguments) {
    auto *op = dereference_operation_ptr(Dart_GetNativeArgument(arguments, 0));
    int64_t index;
    HandleError(Dart_IntegerToInt64(Dart_GetNativeArgument(arguments, 1), &index));
    TF_Input input = {op, (int) index};
    TF_Output output = TF_OperationInput(input);

    Dart_Handle tuple[2];
    tuple[0] = Dart_NewIntegerFromUint64((uint64_t) output.oper);
    tuple[1] = Dart_NewInteger(output.index);

    // Create a new tuple.
    Dart_Handle out = Dart_New(getTuple2Type(), Dart_NewStringFromCString(""), 2, tuple);
    Dart_SetReturnValue(arguments, out);
}

void tfd::Operation_list(Dart_NativeArguments arguments) {
    auto *buf = TF_GetAllOpList();
    Dart_Handle handle = HandleError(Dart_NewExternalTypedData(Dart_TypedData_kUint8, (void *) buf->data, buf->length));
    Dart_SetReturnValue(arguments, handle);
}

void tfd::Operation_name(Dart_NativeArguments arguments) {
    auto *op = dereference_operation_ptr(Dart_GetNativeArgument(arguments, 0));
    Dart_SetReturnValue(arguments, Dart_NewStringFromCString(TF_OperationName(op)));
}

void tfd::Operation_type(Dart_NativeArguments arguments) {
    auto *op = dereference_operation_ptr(Dart_GetNativeArgument(arguments, 0));
    Dart_SetReturnValue(arguments, Dart_NewStringFromCString(TF_OperationOpType(op)));
}

void tfd::OperationDescription_new(Dart_NativeArguments arguments) {
    uint64_t graph;
    const char *type, *name;
    HandleError(Dart_IntegerToUint64(Dart_GetNativeArgument(arguments, 0), &graph)); // int graph
    HandleError(Dart_StringToCString(Dart_GetNativeArgument(arguments, 1), &type)); // String type
    HandleError(Dart_StringToCString(Dart_GetNativeArgument(arguments, 2), &name)); // String name
    auto *desc = TF_NewOperation((TF_Graph *) graph, type, name);
    Dart_SetReturnValue(arguments, Dart_NewIntegerFromUint64((uint64_t) desc));
}

void tfd::OperationDescription_add_input(Dart_NativeArguments arguments) {
    auto *desc = dereference_operation_description_ptr(Dart_GetNativeArgument(arguments, 0));
    int64_t index;
    HandleError(Dart_IntegerToInt64(Dart_GetNativeArgument(arguments, 2), &index));
    TF_Output input = convert_output_wrapper(Dart_GetNativeArgument(arguments, 1), 0);
    //input.index = (int) index;
    TF_AddInput(desc, input);
}

void tfd::OperationDescription_add_input_list(Dart_NativeArguments arguments) {
    Dart_Handle listHandle = Dart_GetNativeArgument(arguments, 1);
    auto *desc = dereference_operation_description_ptr(Dart_GetNativeArgument(arguments, 0));
    intptr_t length;
    HandleError(Dart_ListLength(listHandle, &length));
    auto *inputs = new TF_Output[length];

    for (intptr_t i = 0; i < length; i++) {
        inputs[i] = convert_output_wrapper(Dart_ListGetAt(listHandle, i));
    }

    TF_AddInputList(desc, inputs, (int) length);
}

void tfd::OperationDescription_finish(Dart_NativeArguments arguments) {
    auto *desc = dereference_operation_description_ptr(Dart_GetNativeArgument(arguments, 0));
    auto *status = TF_NewStatus();
    auto *op = TF_FinishOperation(desc, status);
    int code = TF_GetCode(status);

    if (code != 0 || op == nullptr) {
        Dart_Handle error[2];
        error[0] = Dart_NewInteger(code);
        error[1] = Dart_NewStringFromCString(TF_Message(status));
        Dart_Handle tfExceptionType = Dart_GetNativeArgument(arguments, 1);
        Dart_ThrowException(Dart_New(tfExceptionType, Dart_NewStringFromCString("_"), 2, error));
    } else {
        Dart_SetReturnValue(arguments, Dart_NewIntegerFromUint64((uint64_t) op));
    }
}

void tfd::Operation_num_outputs(Dart_NativeArguments arguments) {
    auto *oper = dereference_operation_ptr(Dart_GetNativeArgument(arguments, 0));
    Dart_SetReturnValue(arguments, Dart_NewInteger(TF_OperationNumOutputs(oper)));
}

void tfd::OperationDescription_set_attr_bool(Dart_NativeArguments arguments) {
    auto *desc = dereference_operation_description_ptr(Dart_GetNativeArgument(arguments, 0));
    const char *name;
    bool value;
    HandleError(Dart_StringToCString(Dart_GetNativeArgument(arguments, 1), &name));
    HandleError(Dart_BooleanValue(Dart_GetNativeArgument(arguments, 2), &value));
    TF_SetAttrBool(desc, name, (unsigned char) (value ? 1 : 0));
}

void tfd::OperationDescription_set_attr_float(Dart_NativeArguments arguments) {
    auto *desc = dereference_operation_description_ptr(Dart_GetNativeArgument(arguments, 0));
    const char *name;
    double value;
    HandleError(Dart_StringToCString(Dart_GetNativeArgument(arguments, 1), &name));
    HandleError(Dart_DoubleValue(Dart_GetNativeArgument(arguments, 2), &value));
    TF_SetAttrFloat(desc, name, (float) value);
}

void tfd::OperationDescription_set_attr_int(Dart_NativeArguments arguments) {
    auto *desc = dereference_operation_description_ptr(Dart_GetNativeArgument(arguments, 0));
    const char *name;
    int64_t value;
    HandleError(Dart_StringToCString(Dart_GetNativeArgument(arguments, 1), &name));
    HandleError(Dart_IntegerToInt64(Dart_GetNativeArgument(arguments, 2), &value));
    TF_SetAttrInt(desc, name, value);
}

void tfd::OperationDescription_set_attr_tensor(Dart_NativeArguments arguments) {
    Dart_Handle tensorHandle = Dart_GetNativeArgument(arguments, 2);
    auto *desc = dereference_operation_description_ptr(Dart_GetNativeArgument(arguments, 0));
    auto *status = TF_NewStatus();
    const char *name;
    HandleError(Dart_StringToCString(Dart_GetNativeArgument(arguments, 1), &name));
    TF_SetAttrTensor(desc, name, convert_tensor(tensorHandle), status);

    int code = TF_GetCode(status);
    Dart_Handle tuple[2];
    tuple[0] = Dart_NewInteger(code);

    if (code != 0)
        tuple[1] = Dart_NewStringFromCString(TF_Message(status));
    else tuple[1] = Dart_Null();

    TF_DeleteStatus(status);
    Dart_Handle out = Dart_New(getTuple2Type(), Dart_NewStringFromCString(""), 2, tuple);
    Dart_SetReturnValue(arguments, out);
}

void tfd::OperationDescription_set_attr_type(Dart_NativeArguments arguments) {
    auto *desc = dereference_operation_description_ptr(Dart_GetNativeArgument(arguments, 0));
    const char *name;
    int64_t value;
    HandleError(Dart_StringToCString(Dart_GetNativeArgument(arguments, 1), &name));
    HandleError(Dart_IntegerToInt64(Dart_GetNativeArgument(arguments, 2), &value));
    TF_SetAttrType(desc, name, (TF_DataType) value);
}

void tfd::OperationDescription_set_attr_shape(Dart_NativeArguments arguments) {
    auto dimsHandle = Dart_GetNativeArgument(arguments, 2); // Int64List
    auto *desc = dereference_operation_description_ptr(Dart_GetNativeArgument(arguments, 0));
    const char *name;
    int64_t *dims;
    intptr_t length;
    Dart_TypedData_Type type;
    HandleError(Dart_StringToCString(Dart_GetNativeArgument(arguments, 1), &name));
    HandleError(Dart_TypedDataAcquireData(dimsHandle, &type, (void **) &dims, &length));
    TF_SetAttrShape(desc, name, dims, (int) length);
    HandleError(Dart_TypedDataReleaseData(dimsHandle));
}

void tfd::OperationDescription_set_attr_string(Dart_NativeArguments arguments) {
    auto *desc = dereference_operation_description_ptr(Dart_GetNativeArgument(arguments, 0));
    const char *name, *value;
    HandleError(Dart_StringToCString(Dart_GetNativeArgument(arguments, 1), &name));
    HandleError(Dart_StringToCString(Dart_GetNativeArgument(arguments, 2), &value));
    TF_SetAttrString(desc, name, value, strlen(value));
}
