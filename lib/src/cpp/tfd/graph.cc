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
    Dart_Handle dataTypeType = Dart_GetNativeArgument(arguments, 8);
    HandleError(Dart_ListLength(attrs, &length));

    for (intptr_t i = 0; i < length; i++) {
        const char *name;
        bool isDataType;
        Dart_Handle attr = Dart_ListGetAt(attrs, i);
        Dart_Handle attr_name = Dart_ListGetAt(attr_names, i);
        HandleError(Dart_StringToCString(attr_name, &name));
        HandleError(Dart_ObjectIsType(attr, dataTypeType, &isDataType));

        // TODO: List attrs?

        int dtype = 0;

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
            const char *str;
            HandleError(Dart_StringToCString(attr, &str));
            TF_SetAttrString(desc, name, str, strlen(str));
        } else if (isDataType) {
            int64_t v;
            Dart_Handle valueProp = HandleError(Dart_GetField(attr, Dart_NewStringFromCString("value")));
            HandleError(Dart_IntegerToInt64(valueProp, &v));
            TF_SetAttrType(desc, name, (TF_DataType) v);
        } else if (Dart_IsType(attr)) {
            // Is this dynamic
            if (Dart_IdentityEquals(attr,
                                    Dart_GetType(Dart_RootLibrary(), Dart_NewStringFromCString("dynamic"), 0,
                                                 nullptr))) {
                // TODO: Size?
                //dtype = TF_INT64;
            }
                // Is this an int?
            else if (Dart_IdentityEquals(attr,
                                         Dart_GetType(Dart_RootLibrary(), Dart_NewStringFromCString("int"), 0,
                                                      nullptr))) {
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
            } //else {
            //const char *msg;
            //HandleError(Dart_StringToCString(Dart_TypeName(attr), &msg));
            //Dart_ThrowException(attr);
            //}
        }

        if (dtype != 0) {
            TF_SetAttrType(desc, name, (TF_DataType) dtype);
        } /*else {
            // TODO: More descriptive error/handle every attr type
            const char *toString;
            std::string msg("Unsupported attr: ");

            if (Dart_IsType(attr)) {
                msg.append("<type>");
            } else {

                Dart_Handle toStringHandle = HandleError(
                        Dart_Invoke(attr, Dart_NewStringFromCString("toString"), 0, nullptr));
                HandleError(Dart_StringToCString(toStringHandle, &toString));
                msg.append(toString);
            }

            throwArgumentError(msg.c_str());
        }*/
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
