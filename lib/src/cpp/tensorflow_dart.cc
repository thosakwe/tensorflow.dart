#include <cstring>
#include <iostream>
#include "tfd/tfd.h"
#include "tensorflow_dart.h"

// Forward declaration of ResolveName function.

// The name of the initialization function is the extension name followed
// by _Init.
DART_EXPORT Dart_Handle tensorflow_dart_Init(Dart_Handle parent_library) {
    if (Dart_IsError(parent_library)) return parent_library;

    Dart_Handle result_code =
            Dart_SetNativeResolver(parent_library, ResolveName, nullptr);
    if (Dart_IsError(result_code)) return result_code;

    return Dart_Null();
}

Dart_Handle HandleError(Dart_Handle handle) {
    if (Dart_IsError(handle)) {
        Dart_PropagateError(handle);
    }

    return handle;
}

void Version(Dart_NativeArguments arguments) {
    Dart_SetReturnValue(arguments, Dart_NewStringFromCString(TF_Version()));
}

Dart_NativeFunction ResolveName(Dart_Handle name, int argc, bool *auto_setup_scope) {
    // If we fail, we return nullptr, and Dart throws an exception.
    if (!Dart_IsString(name)) return nullptr;
    Dart_NativeFunction result = nullptr;
    const char *cname;
    HandleError(Dart_StringToCString(name, &cname));

    // function_node.h
    if (strcmp("FunctionNode_from_function_def", cname) == 0) result = tfd::FunctionNode_from_function_def;
    if (strcmp("FunctionNode_from_graph", cname) == 0) result = tfd::FunctionNode_from_graph;
    if (strcmp("FunctionNode_to_function_def", cname) == 0) result = tfd::FunctionNode_to_function_def;

        // graph.h
    else if (strcmp("Graph_add_gradients", cname) == 0) result = tfd::Graph_add_gradients;
    else if (strcmp("Graph_copy_function", cname) == 0) result = tfd::Graph_copy_function;
    else if (strcmp("Graph_new", cname) == 0) result = tfd::Graph_new;
    else if (strcmp("Graph_delete", cname) == 0) result = tfd::Graph_delete;
    else if (strcmp("Graph_add_operation", cname) == 0) result = tfd::Graph_add_operation;
    else if (strcmp("Graph_iter_next", cname) == 0) result = tfd::Graph_iter_next;
    else if (strcmp("Graph_operation_by_name", cname) == 0) result = tfd::Graph_operation_by_name;
    else if (strcmp("Graph_from_graph_def", cname) == 0) result = tfd::Graph_from_graph_def;
    else if (strcmp("Graph_to_graph_def", cname) == 0) result = tfd::Graph_to_graph_def;

        // operation.h
    else if (strcmp("Output_get_type", cname) == 0) result = tfd::Output_get_type;
    else if (strcmp("Output_reshape", cname) == 0) result = tfd::Output_reshape;
    else if (strcmp("Output_shape", cname) == 0) result = tfd::Output_shape;
    else if (strcmp("Operation_list", cname) == 0) result = tfd::Operation_list;
    else if (strcmp("Operation_name", cname) == 0) result = tfd::Operation_name;
    else if (strcmp("Operation_new", cname) == 0) result = tfd::Operation_new;
    else if (strcmp("Operation_num_outputs", cname) == 0) result = tfd::Operation_num_outputs;
    else if (strcmp("Operation_type", cname) == 0) result = tfd::Operation_type;
//    else if (strcmp("Operation_output", cname) == 0) result = tfd::Operation_output;
    else if (strcmp("OperationDescription_add_control_input", cname) == 0)
        result = tfd::OperationDescription_add_control_input;
    else if (strcmp("OperationDescription_add_input", cname) == 0) result = tfd::OperationDescription_add_input;
    else if (strcmp("OperationDescription_add_input_list", cname) == 0)
        result = tfd::OperationDescription_add_input_list;
    else if (strcmp("OperationDescription_finish", cname) == 0) result = tfd::OperationDescription_finish;
    else if (strcmp("OperationDescription_new", cname) == 0) result = tfd::OperationDescription_new;
    else if (strcmp("OperationDescription_set_attr_bool", cname) == 0)
        result = tfd::OperationDescription_set_attr_bool;
    else if (strcmp("OperationDescription_set_attr_float", cname) == 0)
        result = tfd::OperationDescription_set_attr_float;
    else if (strcmp("OperationDescription_set_attr_func", cname) == 0)
        result = tfd::OperationDescription_set_attr_func;
    else if (strcmp("OperationDescription_set_attr_int", cname) == 0)
        result = tfd::OperationDescription_set_attr_int;
    else if (strcmp("OperationDescription_set_attr_shape", cname) == 0)
        result = tfd::OperationDescription_set_attr_shape;
    else if (strcmp("OperationDescription_set_attr_shape_list", cname) == 0)
        result = tfd::OperationDescription_set_attr_shape_list;
    else if (strcmp("OperationDescription_set_attr_string", cname) == 0)
        result = tfd::OperationDescription_set_attr_string;
    else if (strcmp("OperationDescription_set_attr_tensor", cname) == 0)
        result = tfd::OperationDescription_set_attr_tensor;
    else if (strcmp("OperationDescription_set_attr_type", cname) == 0) result = tfd::OperationDescription_set_attr_type;
    else if (strcmp("OperationDescription_set_attr_type_list", cname) == 0)
        result = tfd::OperationDescription_set_attr_type_list;

        // saved_model_bundle.h
    else if (strcmp("SavedModelBundle_new", cname) == 0) result = tfd::SavedModelBundle_new;

        // session.h
    else if (strcmp("Session_close", cname) == 0) result = tfd::Session_close;
    else if (strcmp("Session_run", cname) == 0) result = tfd::Session_run;
    else if (strcmp("SessionRunGraph", cname) == 0) result = tfd::SessionRunGraph;

        // tensor.h
    else if (strcmp("Constant", cname) == 0) result = tfd::Constant;
    else if (strcmp("Tensors_string", cname) == 0) result = tfd::Tensors_string;

        // Misc
    else if (strcmp("Version", cname) == 0) result = Version;

    return result;
}