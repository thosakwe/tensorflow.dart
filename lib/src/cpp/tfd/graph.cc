//
// Created by Tobe on 4/15/18.
//

#include <iostream>
#include "../tensorflow_dart.h"
#include "graph.h"
#include "util.h"

using namespace tfd;

void tfd::Graph_add_gradients(Dart_NativeArguments arguments) {
    // Returns Tuple3<int, String, List<Output>>
    Dart_Handle graphHandle = Dart_GetNativeArgument(arguments, 0); // this
    Dart_Handle ysHandle = Dart_GetNativeArgument(arguments, 1); // List<Output> y
    Dart_Handle xsHandle = Dart_GetNativeArgument(arguments, 2); // List<Output> x
    Dart_Handle dxsHandle = Dart_GetNativeArgument(arguments, 3); // List<Output> dx?
    Dart_Handle outputTypeHandle = Dart_GetNativeArgument(arguments, 4); // Type outputType
    auto *graph = dereference_graph_ptr(graphHandle);
    auto *status = TF_NewStatus();
    TF_Output *y = nullptr, *x = nullptr, *dx = nullptr, *dy = nullptr;
    intptr_t ny, nx;

    HandleError(Dart_ListLength(ysHandle, &ny));
    HandleError(Dart_ListLength(xsHandle, &nx));

    if (ny > 0) {
        y = (TF_Output *) Dart_ScopeAllocate(sizeof(TF_Output) * ny);

        for (intptr_t i = 0; i < ny; i++)
            y[i] = convert_output_wrapper(Dart_ListGetAt(ysHandle, i));
    }


    if (nx > 0) {
        x = (TF_Output *) Dart_ScopeAllocate(sizeof(TF_Output) * nx);
        dy = (TF_Output *) Dart_ScopeAllocate(sizeof(TF_Output) * nx);

        for (intptr_t i = 0; i < nx; i++)
            x[i] = convert_output_wrapper(Dart_ListGetAt(xsHandle, i));

        if (!Dart_IsNull(dxsHandle)) {
            dx = (TF_Output *) Dart_ScopeAllocate(sizeof(TF_Output) * nx);

            for (intptr_t i = 0; i < nx; i++)
                dx[i] = convert_output_wrapper(Dart_ListGetAt(dxsHandle, i));
        }
    }


    TF_AddGradients(graph, y, (int) ny, x, (int) nx, dx, status, dy);

    TF_Code code = TF_GetCode(status);
    Dart_Handle tuple[3] = {Dart_NewInteger(code), Dart_Null(), Dart_Null()};

    if (code != TF_OK)
        tuple[1] = Dart_NewStringFromCString(TF_Message(status));
    else {
        Dart_Handle outYs = tuple[2] = Dart_NewList(nx);

        for (intptr_t i = 0; i < nx; i++) {
            TF_Output output = dy[i];
            auto *args = new Dart_Handle[3]{Dart_NewIntegerFromUint64((uint64_t) output.oper),
                                            Dart_NewInteger(output.index),
                                            graphHandle};
            outYs[i] = Dart_New(outputTypeHandle, Dart_NewStringFromCString("__"), 3, args);
        }
    }

    Dart_Handle out = Dart_New(getTuple3Type(), Dart_NewStringFromCString(""), 3, tuple);
    Dart_SetReturnValue(arguments, out);
    TF_DeleteStatus(status);
}

void tfd::Graph_copy_function(Dart_NativeArguments arguments) {
    Dart_Handle graphHandle = Dart_GetNativeArgument(arguments, 0);
    Dart_Handle funcHandle = Dart_GetNativeArgument(arguments, 1);
    Dart_Handle gradHandle = Dart_GetNativeArgument(arguments, 2);

    auto *graph = dereference_graph_ptr(graphHandle);
    auto *status = TF_NewStatus();
    uint64_t func, grad;

    HandleError(Dart_IntegerToUint64(funcHandle, &func));

    if (Dart_IsNull(gradHandle))
        grad = (uint64_t) nullptr;
    else
        HandleError(Dart_IntegerToUint64(gradHandle, &grad));

    TF_GraphCopyFunction(graph, (TF_Function *) func, (TF_Function *) grad, status);

    int code = TF_GetCode(status);

    Dart_Handle retVal;

    if (code != 0) {
        retVal = Dart_NewStringFromCString(TF_Message(status));
    } else {
        retVal = Dart_Null();
    }

    TF_DeleteStatus(status);
    Dart_SetReturnValue(arguments, retVal);
}

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
    Dart_Handle shapeType = Dart_GetNativeArgument(arguments, 9);
    HandleError(Dart_ListLength(attrs, &length));

    for (intptr_t i = 0; i < length; i++) {
        const char *name;
        bool isDataType, isShape;
        Dart_Handle attr = Dart_ListGetAt(attrs, i);
        Dart_Handle attr_name = Dart_ListGetAt(attr_names, i);
        HandleError(Dart_StringToCString(attr_name, &name));
        HandleError(Dart_ObjectIsType(attr, dataTypeType, &isDataType));
        HandleError(Dart_ObjectIsType(attr, shapeType, &isShape));

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
        } else if (isShape) {
            Dart_Handle dimList = Dart_GetField(attr, Dart_NewStringFromCString("dims"));
            intptr_t dimLength;
            HandleError(Dart_ListLength(dimList, &dimLength));

            auto *dims = new int64_t[dimLength];

            for (intptr_t j = 0; j < dimLength; j++) {
                HandleError(Dart_IntegerToInt64(Dart_ListGetAt(dimList, j), dims + j));
            }

            TF_SetAttrShape(desc, name, dims, (int) dimLength);
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
                dtype = TF_INT32;
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
        } else if (Dart_IsList(attr)) {
            intptr_t listLength;
            HandleError(Dart_ListLength(attr, &listLength));

            if (listLength > 0) {
                Dart_Handle first = HandleError(Dart_ListGetAt(attr, 0));
                bool firstIsDataType, firstIsShape;
                HandleError(Dart_ObjectIsType(first, dataTypeType, &firstIsDataType));
                HandleError(Dart_ObjectIsType(first, shapeType, &firstIsShape));

                if (Dart_IsBoolean(first)) {
                    auto *out = new bool[listLength];

                    for (intptr_t j = 0; j < listLength; j++) {
                        bool v;
                    }

                    //TF_SetAttrBoolList();
                } else if (Dart_IsInteger(first)) {

                } else if (Dart_IsDouble(first)) {

                } else if (Dart_IsString(first)) {

                } else if (firstIsDataType) {

                } else if (firstIsShape) {

                }
            }
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

            throwCoreError(msg.c_str());
        }*/
    }

    auto *operation = TF_FinishOperation(desc, status);

    if (operation == nullptr) {
        Dart_ThrowException(Dart_NewStringFromCString(TF_Message(status)));
        //Dart_ThrowException(Dart_NewStringFromCString("Failed to add node to graph."));
    }

    Dart_Handle outputType = Dart_GetNativeArgument(arguments, 5);
    Dart_Handle outputInstance = Dart_New(outputType, Dart_NewStringFromCString("_"), 1, &graphHandle);
    HandleError(Dart_SetField(outputInstance, Dart_NewStringFromCString("_operation"),
                              Dart_NewIntegerFromUint64((uint64_t) operation)));
    HandleError(
            Dart_SetField(outputInstance, Dart_NewStringFromCString("_index"), Dart_GetNativeArgument(arguments, 4)));
    Dart_SetReturnValue(arguments, outputInstance);
}

void tfd::Graph_operation_by_name(Dart_NativeArguments arguments) {
    const char *name;
    auto *graph = dereference_graph_ptr(Dart_GetNativeArgument(arguments, 0));
    HandleError(Dart_StringToCString(Dart_GetNativeArgument(arguments, 1), &name));
    auto *op = TF_GraphOperationByName(graph, name);
    Dart_SetReturnValue(arguments, Dart_NewIntegerFromUint64((uint64_t) op));
}

void tfd::Graph_from_graph_def(Dart_NativeArguments arguments) {
    // Returns Tuple3<int, String, int>
    Dart_Handle dataHandle = Dart_GetNativeArgument(arguments, 0); // Uint8List data
    //Dart_Handle prefixHandle = Dart_GetNativeArgument(arguments, 1); // String prefix
    auto *graph = TF_NewGraph();
    auto *opts = TF_NewImportGraphDefOptions();
    auto *status = TF_NewStatus();
    Dart_TypedData_Type type;
    void *data;
    intptr_t length;
    HandleError(Dart_TypedDataAcquireData(dataHandle, &type, &data, &length));
    auto *buf = TF_NewBufferFromString(data, (size_t) length);
    HandleError(Dart_TypedDataReleaseData(dataHandle));
    auto *results = TF_GraphImportGraphDefWithResults(graph, buf, opts, status);

    int code = TF_GetCode(status);
    Dart_Handle tuple[3]; // Tuple3<int, String, int>
    tuple[0] = Dart_NewInteger(code);

    if (code != 0 || results == nullptr) {
        tuple[1] = Dart_NewStringFromCString(TF_Message(status));
        tuple[2] = Dart_Null();
        TF_DeleteGraph(graph);
    } else {
        tuple[1] = Dart_Null();
        tuple[2] = Dart_NewIntegerFromUint64((uint64_t) graph);
        TF_DeleteImportGraphDefResults(results);
        Dart_Handle out = Dart_New(getTuple3Type(), Dart_NewStringFromCString(""), 3, tuple);
        Dart_SetReturnValue(arguments, out);
    }

    TF_DeleteImportGraphDefOptions(opts);
    TF_DeleteBuffer(buf);
    TF_DeleteStatus(status);
}

void tfd::Graph_to_graph_def(Dart_NativeArguments arguments) {
    auto *graph = dereference_graph_ptr(Dart_GetNativeArgument(arguments, 0));
    auto *status = TF_NewStatus();
    auto *buf = TF_NewBuffer();
    TF_GraphToGraphDef(graph, buf, status);
    int code = TF_GetCode(status);

    Dart_Handle tuple[3];
    tuple[0] = Dart_NewInteger(code);

    if (code == TF_OK) {
        tuple[1] = Dart_Null();
        // Create a Uint8List for the run metadata.
        tuple[2] = Dart_NewExternalTypedData(Dart_TypedData_kUint8, (void *) buf->data, buf->length);
    } else {
        tuple[1] = Dart_NewStringFromCString(TF_Message(status));
        tuple[2] = Dart_Null();
    }

    // Create a new tuple.
    Dart_Handle out = Dart_New(getTuple3Type(), Dart_NewStringFromCString(""), 3, tuple);
    Dart_SetReturnValue(arguments, out);
}

void tfd::Graph_iter_next(Dart_NativeArguments arguments) {
    auto *graph = dereference_graph_ptr(Dart_GetNativeArgument(arguments, 0));
    int64_t index;
    HandleError(Dart_IntegerToInt64(Dart_GetNativeArgument(arguments, 1), &index));
    auto pos = (size_t) index;
    TF_Operation *oper = TF_GraphNextOperation(graph, &pos);

    if (oper == nullptr)
        Dart_SetReturnValue(arguments, Dart_Null());
    else
        Dart_SetReturnValue(arguments, Dart_NewIntegerFromUint64((uint64_t) oper));
}
