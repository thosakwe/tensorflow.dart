//
// Created by Tobe on 4/15/18.
//

#include <iostream>
#include "../tensorflow_dart.h"
#include "session.h"
#include "util.h"

void tfd::SessionRunGraph(Dart_NativeArguments arguments) {
    auto *graph = dereference_graph_ptr(Dart_GetNativeArgument(arguments, 0));
    // TODO: Parse options
    auto *opts = TF_NewSessionOptions();
    auto *status = TF_NewStatus();
    auto *session = TF_NewSession(graph, opts, status);
    TF_Tensor *tensorOutput = nullptr;
    auto *output = (TF_Output *) Dart_ScopeAllocate(sizeof(TF_Output));

    // Find the operation from the given Output.
    Dart_Handle outputInstance = Dart_GetNativeArgument(arguments, 1);
    Dart_Handle operationHandle = HandleError(Dart_GetField(outputInstance, Dart_NewStringFromCString("_operation")));
    Dart_Handle indexHandle = HandleError(Dart_GetField(outputInstance, Dart_NewStringFromCString("_index")));
    uint64_t operationPtr;
    HandleError(Dart_IntegerToUint64(operationHandle, &operationPtr));
    auto *op = (const TF_Operation *) operationPtr;
    output->oper = (TF_Operation *) op;

    int64_t index;
    HandleError(Dart_IntegerToInt64(indexHandle, &index));
    output->index = (int) index;

    // Now, run the session!
    TF_SessionRun(session, // Session
                  nullptr, // Options
                  nullptr, // Inputs
                  nullptr, // Input values
                  0, // nInputs
                  output, // Output struct
                  &tensorOutput, // Output tensor,
                  1, // nOutputs,
                  nullptr, 0, // Targets?
                  nullptr, // Metadata
                  status // Status
    );

    Dart_Handle tuple[3];

    // Get the status code.
    tuple[0] = Dart_NewInteger(TF_GetCode(status));

    // Get the value...
    if (tensorOutput == nullptr) {
        tuple[1] = Dart_Null();
        tuple[2] = Dart_NewStringFromCString(TF_Message(status));
    } else {
        tuple[1] = get_tensor_value(tensorOutput);
        tuple[2] = Dart_EmptyString();
    }

    // Return the tuple.
    Dart_Handle tupleType = getTuple3Type();
    Dart_Handle tupleInstance = Dart_New(tupleType, Dart_NewStringFromCString(""), 3, tuple);
    Dart_SetReturnValue(arguments, tupleInstance);

    // Now, destroy the created session, etc.
    TF_CloseSession(session, status);
    TF_DeleteSession(session, status);
    TF_DeleteStatus(status);
    TF_DeleteSessionOptions(opts);
}

void tfd::Session_close(Dart_NativeArguments arguments) {
    int64_t ptr;
    HandleError(Dart_IntegerToInt64(Dart_GetNativeArgument(arguments, 0), &ptr));
    auto *session = (TF_Session *) ptr;
    auto *status = TF_NewStatus(); // TODO: Handle an error?
    TF_CloseSession(session, status);
    TF_DeleteSession(session, status);
    TF_DeleteStatus(status);
}

void tfd::Session_run(Dart_NativeArguments arguments) {
    auto *status = TF_NewStatus();
    TF_SessionOptions *config = nullptr;
    TF_Buffer *runOptions = nullptr;

    Dart_TypedData_Type type;
    intptr_t length;
    uint64_t graph;

    Dart_EnterScope();
    Dart_Handle graphHandle = Dart_GetNativeArgument(arguments, 0); // int graph
    Dart_Handle configHandle = Dart_GetNativeArgument(arguments, 1); // Uint8List config
    Dart_Handle runOptionsHandle = Dart_GetNativeArgument(arguments, 2); // Uint8List runOptions
    Dart_Handle inputTensorsHandle = Dart_GetNativeArgument(arguments, 3); // List<Uint8List> inputTensors
    Dart_Handle outputsHandle = Dart_GetNativeArgument(arguments, 4); // List<Output> outputs
    Dart_Handle nOutputsHandle = Dart_GetNativeArgument(arguments, 5); // int nOutputs
    Dart_Handle targetsHandle = Dart_GetNativeArgument(arguments, 6); // List<int> targets
    Dart_Handle inputsHandle = Dart_GetNativeArgument(arguments, 7); // List<Output> inputs

    // Get the graph
    HandleError(Dart_IntegerToUint64(graphHandle, &graph));

    // Read session configuration
    if (!Dart_IsNull(configHandle)) {
        void *buf;
        HandleError(Dart_TypedDataAcquireData(configHandle, &type, &buf, &length));
        config = (TF_SessionOptions *) buf;
    } else {
        config = TF_NewSessionOptions();
    }

    auto *session = TF_NewSession((TF_Graph *) graph, config, status);

    if (!Dart_IsNull(configHandle))
        HandleError(Dart_TypedDataReleaseData(configHandle));

    // Read run options, if any.
    if (!Dart_IsNull(runOptionsHandle) && Dart_IsTypedData(runOptionsHandle)) {
        void *buf;
        intptr_t len;
        HandleError(Dart_TypedDataAcquireData(runOptionsHandle, &type, &buf, &len));
        runOptions = TF_NewBufferFromString(buf, (size_t) len);
        HandleError(Dart_TypedDataReleaseData(runOptionsHandle));
    }

    /*
    // Get all inputs.
    TF_Output *inputs = nullptr;
    intptr_t nInputs;
    HandleError(Dart_ListLength(inputsHandle, &nInputs));

    if (nInputs > 0) {
        inputs = new TF_Output[nInputs];

        for (intptr_t i = 0; i < nInputs; i++) {
            inputs[i] = convert_output_wrapper(Dart_ListGetAt(inputsHandle, i), (int) i);
        }
    }


     */
    int64_t nOutputs;
    HandleError(Dart_IntegerToInt64(nOutputsHandle, &nOutputs));

    struct TF_Output *outputs = nullptr;

    if (!Dart_IsNull(outputsHandle) && nOutputs > 0) {
        outputs = (struct TF_Output *) Dart_ScopeAllocate(sizeof(struct TF_Output) * nOutputs);

        for (intptr_t i = 0; i < nOutputs; i++) {
            Dart_Handle element = Dart_ListGetAt(outputsHandle, i);
            outputs[i] = convert_output_wrapper(element);
        }
    }

    auto *metadata = TF_NewBuffer();
    TF_Tensor **tensorOutput = nullptr;

    if (nOutputs > 0)
        tensorOutput = (TF_Tensor **) Dart_ScopeAllocate(sizeof(struct TF_Tensor *) * nOutputs);

    int nTargets = 0;
    TF_Output *inputs = nullptr;
    TF_Operation **targets = nullptr;

    // Get all inputs
    HandleError(Dart_ListLength(inputsHandle, &length));

    if (length > 0) {
        inputs = (TF_Output *) Dart_ScopeAllocate(sizeof(TF_Output) * length);

        for (intptr_t i = 0; i < length; i++) {
            inputs[i] = convert_output_wrapper(Dart_ListGetAt(inputsHandle, i));
        }
    }

    // Get all targets
    HandleError(Dart_ListLength(targetsHandle, &length));

    if (length > 0) {
        nTargets = (int) length;
        targets = (TF_Operation **) Dart_ScopeAllocate(sizeof(TF_Operation *) * length);

        for (intptr_t i = 0; i < length; i++) {
            uint64_t v;
            HandleError(Dart_IntegerToUint64(Dart_ListGetAt(targetsHandle, i), &v));
            targets[i] = (TF_Operation *) v;
        }
    }

    // Get input tensors
    intptr_t nInputs = 0;
    TF_Tensor **inputTensors = nullptr;
    HandleError(Dart_ListLength(inputTensorsHandle, &nInputs));

    if (nInputs > 0) {
        inputTensors = (TF_Tensor **) Dart_ScopeAllocate(sizeof(TF_Tensor *) * nInputs);

        for (intptr_t i = 0; i < nInputs; i++) {
            // Convert a TensorProto to a Tensor, on-the-fly.
            Dart_Handle tensorHandle = Dart_ListGetAt(inputTensorsHandle, i); // TensorProto
            inputTensors[i] = convert_tensor(tensorHandle);
        }
    }

    // Now, run the session!
    TF_SessionRun(session, // Session
                  runOptions, // Options
                  inputs, // Inputs
                  inputTensors, // Input values
                  (int) nInputs, // nInputs
                  outputs, // Output struct
                  tensorOutput, // Output tensor,
                  (int) nOutputs, // nOutputs,
                  (const TF_Operation *const *) targets, nTargets, // Targets?
                  metadata, // Metadata
                  status // Status
    );

    // Release input tensors.
    if (inputTensors != nullptr) {
        for (intptr_t i = 0; i < nInputs; i++) {
            TF_DeleteTensor(inputTensors[i]);
        }
    }

    int code = TF_GetCode(status);
    Dart_Handle tuple[4];

    tuple[0] = Dart_NewInteger(code);//

    if (tensorOutput != nullptr && (tensorOutput[0] == nullptr || code != 0)) {
        tuple[1] = Dart_NewStringFromCString(TF_Message(status));
    } else {
        tuple[1] = Dart_EmptyString();
    }

    // Create a List of Uint8Lists, one per tensor.
    Dart_Handle tensors = tuple[2] = Dart_NewList(nOutputs);

    if (tensorOutput != nullptr) {
        for (int i = 0; i < nOutputs; i++) {
            auto *tensor = tensorOutput[i];
            Dart_ListSetAt(tensors, i, get_tensor_value(tensor));
            //size_t size = TF_TensorByteSize(tensor);
            //auto *data = TF_TensorData(tensor);
            //Dart_ListSetAt(tensors, i, Dart_NewExternalTypedData(Dart_TypedData_kUint8, data, size));
        }
    }

    // Create a Uint8List for the run metadata.
    tuple[3] = Dart_NewExternalTypedData(Dart_TypedData_kUint8, (void *) metadata->data, metadata->length);

    // Create a new tuple.
    Dart_Handle out = Dart_New(getTuple4Type(), Dart_NewStringFromCString(""), 4, tuple);
    Dart_SetReturnValue(arguments, out);

    if (runOptions != nullptr)
        TF_DeleteBuffer(runOptions);

    TF_DeleteSessionOptions(config);
    TF_DeleteSession(session, status);
    TF_DeleteStatus(status);
    Dart_ExitScope();
}
