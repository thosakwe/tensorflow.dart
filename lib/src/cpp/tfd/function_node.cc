//
// Created by Tobe on 5/20/18.
//

#include "function_node.h"
#include "util.h"

void tfd::FunctionNode_add_gradients(Dart_NativeArguments arguments) {
    Dart_Handle functionHandle = Dart_GetNativeArgument(arguments, 0); // `this`
}

void tfd::FunctionNode_from_graph(Dart_NativeArguments arguments) {
    Dart_Handle graphHandle = Dart_GetNativeArgument(arguments, 0); // Graph graph
    Dart_Handle nameHandle = Dart_GetNativeArgument(arguments, 1); // String name
    Dart_Handle outputsHandle = Dart_GetNativeArgument(arguments, 2); // List<Output> outputs
    Dart_Handle outputNamesHandle = Dart_GetNativeArgument(arguments, 3); // List<String> outputNames
    Dart_Handle descriptionHandle = Dart_GetNativeArgument(arguments, 4); // String description
    Dart_Handle inputsHandle = Dart_GetNativeArgument(arguments, 5); // List<Output> inputs
    Dart_Handle nOpersHandle = Dart_GetNativeArgument(arguments, 6); // int nOpers
    Dart_Handle opersHandle = Dart_GetNativeArgument(arguments, 7); // List<int> Operations
    Dart_Handle appendHashHandle = Dart_GetNativeArgument(arguments, 8); // bool appendHashToName

    TF_Operation **opers = nullptr;
    TF_Output *inputs = nullptr, *outputs = nullptr;
    TF_FunctionOptions *options = nullptr;
    auto *status = TF_NewStatus();
    const char *description = nullptr, *fnName, **outputNames = nullptr;
    TF_Graph *graph;
    bool appendHash;
    int64_t nOpers;
    intptr_t nInputs, nOutputs;

    HandleError(Dart_StringToCString(nameHandle, &fnName));

    // Read graph, name
    graph = dereference_graph_ptr(graphHandle);
    HandleError(Dart_StringToCString(nameHandle, &fnName));

    // Read opers
    HandleError(Dart_IntegerToInt64(nOpersHandle, &nOpers));

    if (nOpers != -1) {
        intptr_t length;
        HandleError(Dart_ListLength(opersHandle, &length));

        if (length > 0) {
            opers = (TF_Operation **) Dart_ScopeAllocate(sizeof(TF_Operation *) * length);

            for (intptr_t i = 0; i < length; i++) {
                uint64_t ptr;
                HandleError(Dart_IntegerToUint64(Dart_ListGetAt(opersHandle, i), &ptr));
                opers[i] = (TF_Operation *) ptr;
            }
        }
    }

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

    // Read appendHash
    HandleError(Dart_BooleanValue(appendHashHandle, &appendHash));

    auto *function = TF_GraphToFunction(
            graph, // fn_body
            fnName, // fn_name
            (unsigned char) (appendHash ? 1 : 0), // append_hash
            (int) nOpers, (const TF_Operation *const *) opers, // n_opers, opers
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

    auto out = DartListOf(tuple, 3);
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

    auto out = DartListOf(tuple, 3);
    Dart_SetReturnValue(arguments, out);
    TF_DeleteBuffer(buf);
    TF_DeleteStatus(status);
}


