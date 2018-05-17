//
// Created by Tobe on 4/15/18.
//

#include <iostream>
#include "../tensorflow_dart.h"
#include "session.h"
#include "util.h"

Dart_Handle getTuple3Type() {
    Dart_Handle tupleLib = Dart_LookupLibrary(Dart_NewStringFromCString("package:tuple/tuple.dart"));
    return Dart_GetClass(tupleLib, Dart_NewStringFromCString("Tuple3"));
}

void tfd::SessionRunGraph(Dart_NativeArguments arguments) {
    auto *graph = dereference_graph_ptr(Dart_GetNativeArgument(arguments, 0));
    // TODO: Parse options
    auto *opts = TF_NewSessionOptions();
    auto *status = TF_NewStatus();
    auto *session = TF_NewSession(graph, opts, status);
    TF_Tensor *tensorOutput = nullptr;
    auto *output = new TF_Output;

    // Find the operation from the given Output.
    Dart_Handle outputInstance = Dart_GetNativeArgument(arguments, 1);
    Dart_Handle operationHandle = HandleError(Dart_GetField(outputInstance, Dart_NewStringFromCString("_operation")));
    Dart_Handle indexHandle = HandleError(Dart_GetField(outputInstance, Dart_NewStringFromCString("_index")));
    uint64_t operationPtr;
    HandleError(Dart_IntegerToUint64(operationHandle, &operationPtr));
    auto *op = (const TF_Operation*) operationPtr;
    output->oper = (TF_Operation*) op;

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
