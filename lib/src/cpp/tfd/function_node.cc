//
// Created by Tobe on 5/20/18.
//

#include "function_node.h"

void tfd::FunctionNode_from_graph(Dart_NativeArguments arguments) {
    /*
    auto *buf = TF_NewBuffer();
    auto *status = TF_NewStatus();
    const char *fnName;
    TF_Graph* graph;

    Dart_Handle graphHandle = Dart_GetNativeArgument(arguments, 0); // Graph graph
    Dart_Handle nameHandle = Dart_GetNativeArgument(arguments, 1); // String name
    Dart_Handle outputsHandle = Dart_GetNativeArgument(arguments, 1); // String name

    HandleError(Dart_StringToCString(nameHandle, &fnName));

    auto *function = TF_GraphToFunction(
            graph, // fn_body
            fnName, // fn_name
            0, // append_hash
            nOpers, // n_opers
            opers, // opers
            nInputs, inputs, // n_inputs, inputs
            nOutputs, outputs, outputNames, // n_outputs, outputs, output_names
            description,  // description,
            status // status
    );*/
}

void tfd::FunctionNode_from_function_def(Dart_NativeArguments arguments) {

}
