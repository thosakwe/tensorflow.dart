//
// Created by Tobe on 4/15/18.
//

#include <iostream>
#include "../tensorflow_dart.h"
#include "graph.h"
#include "util.h"

using namespace tfd;

void tfd::Graph_new(Dart_NativeArguments arguments) {
    auto *graph = TF_NewGraph();
    Dart_SetReturnValue(arguments, Dart_NewIntegerFromUint64((uint64_t) graph));
}

void tfd::Graph_delete(Dart_NativeArguments arguments) {
    auto *graph = dereference_graph_ptr(Dart_GetNativeArgument(arguments, 0));
    TF_DeleteGraph(graph);
    Dart_SetReturnValue(arguments, Dart_Null());
}

void tfd::Graph_add_operation(Dart_NativeArguments arguments) {
    const char *opType, *opName;
    auto *status = TF_NewStatus();
    Dart_Handle graphHandle = Dart_GetNativeArgument(arguments, 0);
    auto *graph = dereference_graph_ptr(graphHandle);
    HandleError(Dart_StringToCString(Dart_GetNativeArgument(arguments, 1), &opType));
    HandleError(Dart_StringToCString(Dart_GetNativeArgument(arguments, 2), &opName));
    auto *desc = TF_NewOperation(graph, opType, opName);

    // Get all inputs
    Dart_Handle inputs = Dart_GetNativeArgument(arguments, 3);
    intptr_t length;
    HandleError(Dart_ListLength(inputs, &length));

    for (intptr_t i = 0; i < length; i++) {
        // Call `addOperation` to recursively compile the operation in question
        uint64_t opPtr;
        int64_t index = 0;
        Dart_Handle output = HandleError(Dart_ListGetAt(inputs, i));
        Dart_Handle opHandle = Dart_GetField(output, Dart_NewStringFromCString("_operation"));
        HandleError(Dart_IntegerToUint64(opHandle, &opPtr));
        //HandleError(Dart_IntegerToInt64(Dart_GetNativeArgument(arguments, 4), &index));
        auto *op = (TF_Operation *) opPtr;
        TF_Output arg = {op, (int) i};
        //TF_Output arg = {op, (int) (index + i)};
        TF_AddInput(desc, arg);
    }

    auto *operation = TF_FinishOperation(desc, status);

    if (operation == nullptr) {
        Dart_ThrowException(Dart_NewStringFromCString("Failed to add node to graph."));
    }

    Dart_Handle outputType = Dart_GetNativeArgument(arguments, 5);
    Dart_Handle outputInstance = Dart_New(outputType, Dart_NewStringFromCString("_"), 1, &graphHandle);
    Dart_SetField(outputInstance, Dart_NewStringFromCString("_operation"),
                  Dart_NewIntegerFromUint64((uint64_t) operation));
    Dart_SetField(outputInstance, Dart_NewStringFromCString("_index"), Dart_GetNativeArgument(arguments, 4));
    Dart_SetReturnValue(arguments, outputInstance);
}
