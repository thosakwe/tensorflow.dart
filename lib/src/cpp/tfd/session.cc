//
// Created by Tobe on 4/15/18.
//

#include "session.h"
#include "util.h"

void tfd::Session_Run(Dart_NativeArguments arguments) {
    Dart_Handle sessionInstance = Dart_GetNativeArgument(arguments, 0);
    TF_Graph *graph = dereference_graph_ptr(Dart_GetNativeArgument(arguments, 1));
    auto *opts = TF_NewSessionOptions();
    auto *status = TF_NewStatus();
    auto *session = TF_NewSession(graph, opts, status);

    // Set the value of "_pointer"
    Dart_SetField(sessionInstance, Dart_NewStringFromCString("_pointer"), Dart_NewInteger((int64_t) session));

    // TODO: Actually run
    Dart_Handle unsupportedError = Dart_GetClass(Dart_RootLibrary(), Dart_NewStringFromCString("UnimplementedError"));
    Dart_Handle message = Dart_NewStringFromCString("Running sessions is not yet implemented.");
    Dart_ThrowException(Dart_New(unsupportedError, Dart_NewStringFromCString(""), 1, &message));
    Dart_SetReturnValue(arguments, Dart_Null());
}
