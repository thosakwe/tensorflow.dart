//
// Created by Tobe on 5/20/18.
//

#include "function_node.h"
#include "util.h"

void tfd::FunctionNode_from_graph(Dart_NativeArguments arguments) {
    Dart_Handle graphHandle = Dart_GetNativeArgument(arguments, 0); // Graph graph
    Dart_Handle nameHandle = Dart_GetNativeArgument(arguments, 1); // String name
    Dart_Handle outputsHandle = Dart_GetNativeArgument(arguments, 2); // List<Output> outputs
    Dart_Handle outputNamesHandle = Dart_GetNativeArgument(arguments, 3); // List<String> outputNames
    Dart_Handle descriptionHandle = Dart_GetNativeArgument(arguments, 4); // String description
    Dart_Handle inputsHandle = Dart_GetNativeArgument(arguments, 5); // List<Output> inputs

    TF_Output *inputs = nullptr, *outputs = nullptr;
    TF_FunctionOptions *options = nullptr;
    auto *status = TF_NewStatus();
    const char *description = nullptr, *fnName, **outputNames = nullptr;
    TF_Graph *graph;
    intptr_t nInputs, nOutputs;

    HandleError(Dart_StringToCString(nameHandle, &fnName));

    // Read graph, name
    graph = dereference_graph_ptr(graphHandle);
    HandleError(Dart_StringToCString(nameHandle, &fnName));

    // Read outputs, output_names
    HandleError(Dart_ListLength(outputsHandle, &nOutputs));

    if (nOutputs > 0) {
        outputs = (TF_Output *) Dart_ScopeAllocate(sizeof(TF_Output) * nOutputs);
        outputNames = (const char **) Dart_ScopeAllocate(sizeof(const char *) * nOutputs);

        for (intptr_t i = 0; i < nOutputs; i++) {
            outputs[i] = convert_output_wrapper(Dart_ListGetAt(outputsHandle, i));
            HandleError(Dart_StringToCString(Dart_ListGetAt(outputNamesHandle, i), &outputNames[i]));
        }
    }

    // Read description
    if (!Dart_IsNull(descriptionHandle))
        HandleError(Dart_StringToCString(descriptionHandle, &description));

    // Read inputs
    HandleError(Dart_ListLength(inputsHandle, &nInputs));

    if (nInputs > 0) {
        inputs = (TF_Output *) Dart_ScopeAllocate(sizeof(TF_Output) * nInputs);

        for (intptr_t i = 0; i < nOutputs; i++) {
            inputs[i] = convert_output_wrapper(Dart_ListGetAt(inputsHandle, i));
        }
    }

    auto *function = TF_GraphToFunction(
            graph, // fn_body
            fnName, // fn_name
            0, // append_hash
            -1, nullptr, // n_opers, opers
            (int) nInputs, inputs, // n_inputs, inputs
            (int) nOutputs, outputs, (const char *const *) outputNames, // n_outputs, outputs, output_names
            options, // options
            description,  // description,
            status // status
    );

    TF_Code code = TF_GetCode(status);
    Dart_Handle tuple[3];
    tuple[0] = Dart_NewInteger(code);

    if (code != 0) {
        tuple[1] = Dart_NewStringFromCString(TF_Message(status));
        tuple[2] = Dart_Null();
    } else {
        tuple[1] = Dart_Null();
        tuple[2] = Dart_NewIntegerFromUint64((uint64_t) function);
    }

    Dart_Handle out = Dart_New(getTuple3Type(), Dart_NewStringFromCString(""), 3, tuple);
    Dart_SetReturnValue(arguments, out);
    TF_DeleteStatus(status);
}

void tfd::FunctionNode_from_function_def(Dart_NativeArguments arguments) {
    // TODO: Import function def
}

void tfd::FunctionNode_to_function_def(Dart_NativeArguments arguments) {
    TF_Function *function = dereference_function_ptr(Dart_GetNativeArgument(arguments, 0));
    TF_Buffer *buf = TF_NewBuffer();
    TF_Status *status = TF_NewStatus();
    TF_FunctionToFunctionDef(function, buf, status);

    TF_Code code = TF_GetCode(status);
    Dart_Handle tuple[3];
    tuple[0] = Dart_NewInteger(code);

    if (code != 0) {
        tuple[1] = Dart_NewStringFromCString(TF_Message(status));
        tuple[2] = Dart_Null();
    } else {
        tuple[1] = Dart_Null();
        tuple[2] = Dart_NewExternalTypedData(Dart_TypedData_kUint8, (void *) buf->data, buf->length);
    }

    Dart_Handle out = Dart_New(getTuple3Type(), Dart_NewStringFromCString(""), 3, tuple);
    Dart_SetReturnValue(arguments, out);
    TF_DeleteBuffer(buf);
    TF_DeleteStatus(status);
}
