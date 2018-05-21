//
// Created by Tobe on 5/14/18.
//

#ifndef TENSORFLOW_DART_OPERATION_H
#define TENSORFLOW_DART_OPERATION_H


#include <dart_api.h>
#include <tensorflow/c/c_api.h>

namespace tfd
{
    void Output_get_type(Dart_NativeArguments arguments);
    void Output_reshape(Dart_NativeArguments arguments);
    void Output_shape(Dart_NativeArguments arguments);

    void Operation_list(Dart_NativeArguments arguments);
    void Operation_name(Dart_NativeArguments arguments);
    void Operation_new(Dart_NativeArguments arguments);
    void Operation_num_outputs(Dart_NativeArguments arguments);
    void Operation_type(Dart_NativeArguments arguments);
    void Operation_output(Dart_NativeArguments arguments);

    void OperationDescription_add_input(Dart_NativeArguments arguments);
    void OperationDescription_finish(Dart_NativeArguments arguments);
    void OperationDescription_new(Dart_NativeArguments arguments);
    void OperationDescription_set_attr_bool(Dart_NativeArguments arguments);
    void OperationDescription_set_attr_int(Dart_NativeArguments arguments);
    void OperationDescription_set_attr_shape(Dart_NativeArguments arguments);
    void OperationDescription_set_attr_string(Dart_NativeArguments arguments);
    void OperationDescription_set_attr_tensor(Dart_NativeArguments arguments);
    void OperationDescription_set_attr_type(Dart_NativeArguments arguments);
}


#endif //TENSORFLOW_DART_OPERATION_H
