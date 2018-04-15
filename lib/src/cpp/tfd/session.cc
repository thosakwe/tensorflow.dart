//
// Created by Tobe on 4/15/18.
//

#include "../tensorflow_dart.h"
#include "session.h"
#include "util.h"

void tfd::SessionRunTensor(Dart_NativeArguments arguments) {
    const char *operationName;
    TF_Tensor *tensor = dereference_tensor_ptr(Dart_GetNativeArgument(arguments, 0));
    HandleError(Dart_StringToCString(Dart_GetNativeArgument(arguments, 1), &operationName));
    auto *graph = TF_NewGraph();
    // TODO: Parse options
    auto *opts = TF_NewSessionOptions();
    auto *status = TF_NewStatus();
    auto *session = TF_NewSession(graph, opts, status);

    // Create a `Const` operation.
    auto *op = TF_NewOperation(graph, "Const", operationName);

    // Indicate that the tensor we've allocated is the value of this operation.
    TF_SetAttrTensor(op, "value", tensor, status);
    TF_SetAttrType(op, "dtype", TF_TensorType(tensor));

    // Finish the operation, and set the index.
    auto *operation = TF_FinishOperation(op, status);
    int index = 0;
    TF_Output output = {operation, index};

    // Now, run the operation we have created.
    TF_SessionRun(session, nullptr,
                  nullptr, nullptr, 0,  // Inputs
                  &output, &tensor, 1,  // Outputs
                  (const TF_Operation *const *) &operation, 1,  // Operations
                  nullptr, status);

    // Get the status code, and return it
    Dart_SetReturnValue(arguments, Dart_NewInteger(TF_GetCode(status)));

    // Now, destroy the created session, etc.
    TF_CloseSession(session, status);
    TF_DeleteSession(session, status);
    TF_DeleteStatus(status);
    TF_DeleteSessionOptions(opts);
}
