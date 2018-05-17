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

    // TODO: Attrs

    // Get all inputs
    Dart_Handle inputs = Dart_GetNativeArgument(arguments, 3);
    intptr_t length;
    HandleError(Dart_ListLength(inputs, &length));

    int index = 0;

    for (intptr_t i = 0; i < length; i++) {
        Dart_Handle obj = Dart_ListGetAt(inputs, i);

        if (Dart_IsList(obj)) {
            // This is a list of outputs.
            intptr_t obj_length;
            HandleError(Dart_ListLength(obj, &obj_length));

            auto *inputArr = new TF_Output[obj_length];

            for (intptr_t j = 0; j < obj_length; j++) {
                inputArr[i] = convert_output_wrapper(Dart_ListGetAt(obj, j), index++);
            }

            TF_AddInputList(desc, inputArr, (int) obj_length);
        } else {
            // This is an output, add it.
            TF_Output arg = convert_output_wrapper(obj, index++);
            TF_AddInput(desc, arg);
        }
    }

    // Add all attrs.
    Dart_Handle attrs = Dart_GetNativeArgument(arguments, 6);
    Dart_Handle attr_names = Dart_GetNativeArgument(arguments, 7);
    HandleError(Dart_ListLength(attrs, &length));

    for (intptr_t i = 0; i < length; i++) {
        const char *name;
        Dart_Handle attr = Dart_ListGetAt(attrs, i);
        Dart_Handle attr_name = Dart_ListGetAt(attr_names, i);
        HandleError(Dart_StringToCString(attr_name, &name));

        // TODO: List attrs?
        if (Dart_IsBoolean(attr)) {
            bool v;
            HandleError(Dart_BooleanValue(attr, &v));
            TF_SetAttrBool(desc, name, (unsigned char) (v ? 1 : 0));
        } else if (Dart_IsInteger(attr)) {
            int64_t v;
            HandleError(Dart_IntegerToInt64(attr, &v));
            TF_SetAttrInt(desc, name, v);
        } else if (Dart_IsDouble(attr)) {
            double v;
            HandleError(Dart_DoubleValue(attr, &v));
            TF_SetAttrFloat(desc, name, (float) v);
        } else if (Dart_IsString(attr)) {

        } else if (Dart_IsType(attr)) {
            int dtype = 0;

            // Is this an int?
            if (Dart_IdentityEquals(attr,
                                    Dart_GetType(Dart_RootLibrary(), Dart_NewStringFromCString("int"), 0, nullptr))) {
                // TODO: Size?
                dtype = TF_INT64;
            }

                // Is this a double?
            else if (Dart_IdentityEquals(attr,
                                         Dart_GetType(Dart_RootLibrary(), Dart_NewStringFromCString("int"), 0,
                                                      nullptr))) {
                // TODO: Size?
                dtype = TF_FLOAT;
            }

                // Is this a String?
            else if (Dart_IdentityEquals(attr,
                                         Dart_GetType(Dart_RootLibrary(), Dart_NewStringFromCString("int"), 0,
                                                      nullptr))) {
                dtype = TF_STRING;
            } else {
                //const char *msg = "Hm";
                //HandleError(Dart_StringToCString(Dart_TypeName(attr), &msg));
                //throwArgumentError(msg);
            }


            if (dtype == 0) {
                //throwArgumentError("Unsupported parameter type.");
            } else {
                TF_SetAttrType(desc, name, (TF_DataType) dtype);
            }
        } else {
            // TODO: More descriptive error/handle every attr type
            throwArgumentError("Unsupported attr");
        }
    }

    auto *operation = TF_FinishOperation(desc, status);

    if (operation == nullptr) {
        Dart_ThrowException(Dart_NewStringFromCString(TF_Message(status)));
        //Dart_ThrowException(Dart_NewStringFromCString("Failed to add node to graph."));
    }

    Dart_Handle outputType = Dart_GetNativeArgument(arguments, 5);
    Dart_Handle outputInstance = Dart_New(outputType, Dart_NewStringFromCString("_"), 1, &graphHandle);
    Dart_SetField(outputInstance, Dart_NewStringFromCString("_operation"),
                  Dart_NewIntegerFromUint64((uint64_t) operation));
    Dart_SetField(outputInstance, Dart_NewStringFromCString("_index"), Dart_GetNativeArgument(arguments, 4));
    Dart_SetReturnValue(arguments, outputInstance);
}
