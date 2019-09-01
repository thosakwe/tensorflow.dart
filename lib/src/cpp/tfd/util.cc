//
// Created by Tobe on 4/15/18.
//
#include "util.h"
#include "../tensorflow_dart.h"
#include <cstring>
#include <iostream>
#include <string>

void *tfd::dereference_ptr(Dart_Handle handle) {
  uint64_t ptr;
  Dart_Handle value =
      Dart_GetField(handle, Dart_NewStringFromCString("_pointer"));
  HandleError(Dart_IntegerToUint64(value, &ptr));
  return (void *)ptr;
}

TF_Graph *tfd::dereference_graph_ptr(Dart_Handle handle) {
  return (TF_Graph *)dereference_ptr(handle);
}

TF_Tensor *tfd::convert_tensor(Dart_Handle handle) {
  Dart_Handle dtypeHandle =
      Dart_GetField(handle, Dart_NewStringFromCString("_dataType")); // int
  Dart_Handle shapeHandle =
      Dart_GetField(handle, Dart_NewStringFromCString("_shape")); // Int64List
  Dart_Handle dataHandle =
      Dart_GetField(handle, Dart_NewStringFromCString("_data")); // Uint8List
  auto *status = TF_NewStatus();
  Dart_TypedData_Type type;
  int64_t dtype;
  int64_t *dims;
  intptr_t nDims, length;
  const char *data;

  // Get the dtype, easy.
  HandleError(Dart_IntegerToInt64(dtypeHandle, &dtype));

  // Next, read the shape.
  HandleError(Dart_ListLength(shapeHandle, &length));

  if (length == 0) {
    dims = nullptr;
    nDims = 0;
  } else {
    nDims = length;
    HandleError(
        Dart_TypedDataAcquireData(shapeHandle, &type, (void **)&dims, &length));
    Dart_TypedDataReleaseData(shapeHandle);
  }

  HandleError(
      Dart_TypedDataAcquireData(dataHandle, &type, (void **)&data, &length));
  if (dtype == TF_STRING)
    length = 8 + TF_StringEncodedSize(strlen(data));
  auto *tensor =
      TF_AllocateTensor((TF_DataType)dtype, dims, (int)nDims, (size_t)length);

  if (tensor == nullptr) {
    throwCoreError("Could not create a tensor.", "StateError");
  } else {
    // Write the data into the tensor.

    auto *tensorData = TF_TensorData(tensor);

    if (TF_TensorType(tensor) == TF_STRING) {
      // auto ptr = (uint64_t) tensorData;
      // tensorData = (void *) (ptr + 0);
      // length -= 8;
      memset(tensorData, 0, 8);
      TF_StringEncode(data, strlen(data), 8 + (char *)tensorData,
                      TF_StringEncodedSize(strlen(data)), status);
    } else {
      memcpy(tensorData, data, (size_t)length);
    }
  }

  HandleError(Dart_TypedDataReleaseData(dataHandle));
  TF_DeleteStatus(status);
  return tensor;
}

Dart_Handle tfd::get_tensor_value(TF_Tensor *tensor) {
  if (tensor == nullptr)
    return Dart_Null();

  TF_DataType type = TF_TensorType(tensor);

  // TODO: String list, bool list

  if (type == TF_STRING) {
    auto *status = TF_NewStatus();
    const char *str;
    size_t str_len, size = TF_TensorByteSize(tensor);
    TF_StringDecode(8 + (char *)TF_TensorData(tensor), size, &str, &str_len,
                    status);
    return Dart_NewStringFromUTF8((const uint8_t *)str, str_len);
  } else if (type == TF_BOOL) {
    auto v = *((unsigned char *)TF_TensorData(tensor));
    return Dart_NewBoolean(v == 1);
  } else if (type == TF_DOUBLE) {
    auto *v = ((double *)TF_TensorData(tensor));
    intptr_t length = TF_TensorByteSize(tensor) / sizeof(double);

    if (length == 1) {
      return Dart_NewDouble(*v);
    } else {
      Dart_Handle list = Dart_NewList(length);

      for (intptr_t i = 0; i < length; i++) {
        HandleError(Dart_ListSetAt(list, i, Dart_NewDouble(v[i])));
      }

      return list;
    }
  } else if (type == TF_FLOAT) {
    auto *v = ((float *)TF_TensorData(tensor));
    intptr_t length = TF_TensorByteSize(tensor) / sizeof(float);

    if (length == 1) {
      return Dart_NewDouble((double)*v);
    } else {
      return Dart_NewExternalTypedData(Dart_TypedData_kFloat32, v, length);
    }
  } else if (type == TF_INT8) {
    auto *v = ((int8_t *)TF_TensorData(tensor));
    intptr_t length = TF_TensorByteSize(tensor) / sizeof(int8_t);

    if (length == 1) {
      return Dart_NewInteger(*v);
    } else {
      return Dart_NewExternalTypedData(Dart_TypedData_kInt8, v, length);
    }
  } else if (type == TF_INT16) {
    auto *v = ((int16_t *)TF_TensorData(tensor));
    intptr_t length = TF_TensorByteSize(tensor) / sizeof(int16_t);

    if (length == 1) {
      return Dart_NewInteger(*v);
    } else {
      return Dart_NewExternalTypedData(Dart_TypedData_kInt16, v, length);
    }
  } else if (type == TF_INT32) {
    auto *v = ((int32_t *)TF_TensorData(tensor));
    intptr_t length = TF_TensorByteSize(tensor) / sizeof(int32_t);

    if (length == 1) {
      return Dart_NewInteger(*v);
    } else {
      return Dart_NewExternalTypedData(Dart_TypedData_kInt32, v, length);
    }
  } else if (type == TF_INT64) {
    auto *v = ((int64_t *)TF_TensorData(tensor));
    intptr_t length = TF_TensorByteSize(tensor) / sizeof(int64_t);

    if (length == 1) {
      return Dart_NewInteger(*v);
    } else {
      return Dart_NewExternalTypedData(Dart_TypedData_kInt64, v, length);
    }
  } else if (type == TF_UINT8) {
    auto *v = ((uint8_t *)TF_TensorData(tensor));
    intptr_t length = TF_TensorByteSize(tensor) / sizeof(uint8_t);

    if (length == 1) {
      return Dart_NewInteger(*v);
    } else {
      return Dart_NewExternalTypedData(Dart_TypedData_kUint8, v, length);
    }
  } else if (type == TF_UINT16) {
    auto *v = ((uint16_t *)TF_TensorData(tensor));
    intptr_t length = TF_TensorByteSize(tensor) / sizeof(uint16_t);

    if (length == 1) {
      return Dart_NewInteger(*v);
    } else {
      return Dart_NewExternalTypedData(Dart_TypedData_kUint16, v, length);
    }
  } else if (type == TF_UINT32) {
    auto *v = ((uint32_t *)TF_TensorData(tensor));
    intptr_t length = TF_TensorByteSize(tensor) / sizeof(uint32_t);

    if (length == 1) {
      return Dart_NewInteger(*v);
    } else {
      return Dart_NewExternalTypedData(Dart_TypedData_kUint32, v, length);
    }
  } else if (type == TF_UINT64) {
    auto *v = ((uint64_t *)TF_TensorData(tensor));
    intptr_t length = TF_TensorByteSize(tensor) / sizeof(uint64_t);

    if (length == 1) {
      return Dart_NewInteger(*v);
    } else {
      return Dart_NewExternalTypedData(Dart_TypedData_kUint64, v, length);
    }
  } else if (type == TF_RESOURCE) {
    size_t size = TF_TensorByteSize(tensor);
    // char msg[size];
    // memset((void *) msg, 0, size);
    // sprintf(msg, "Resource { size: %zu }", size);
    // return Dart_NewStringFromCString(msg);
    return Dart_NewExternalTypedData(Dart_TypedData_kUint8,
                                     TF_TensorData(tensor), size);
  }

  // TODO: Other data types

  // Throw an UnsupportedError
  /*Dart_Handle unsupportedErrorType = Dart_GetClass(Dart_RootLibrary(),
                                                   Dart_NewStringFromCString("UnsupportedError"));
  std::string msgbuf("Unsupported Tensor type: ");
  msgbuf.append(std::to_string(type));
  Dart_Handle msg = Dart_NewStringFromCString(msgbuf.c_str());
  Dart_Handle error = Dart_New(unsupportedErrorType,
  Dart_NewStringFromCString(""), 1, &msg); Dart_ThrowException(error);*/
  return Dart_Null();
}

TF_Operation *tfd::dereference_operation_ptr(Dart_Handle handle) {
  return (TF_Operation *)dereference_ptr(handle);
}

TF_OperationDescription *
tfd::dereference_operation_description_ptr(Dart_Handle handle) {
  return (TF_OperationDescription *)dereference_ptr(handle);
}

TF_Function *tfd::dereference_function_ptr(Dart_Handle handle) {
  return (TF_Function *)dereference_ptr(handle);
}

void tfd::throwCoreError(const char *msg, const char *errorType) {
  Dart_Handle unsupportedErrorType =
      Dart_GetClass(Dart_RootLibrary(), Dart_NewStringFromCString(errorType));
  Dart_Handle msgh = Dart_NewStringFromCString(msg);
  Dart_Handle error =
      Dart_New(unsupportedErrorType, Dart_NewStringFromCString(""), 1, &msgh);
  Dart_ThrowException(error);
}

TF_Output tfd::convert_output_wrapper(Dart_Handle handle, int index) {
  uint64_t opPtr;
  Dart_Handle opHandle =
      Dart_GetField(handle, Dart_NewStringFromCString("_operation"));
  HandleError(Dart_IntegerToUint64(opHandle, &opPtr));

  int64_t idx;
  HandleError(Dart_IntegerToInt64(
      Dart_GetField(handle, Dart_NewStringFromCString("_index")), &idx));
  auto *op = (TF_Operation *)opPtr;
  // std::cout << "Op: " << op << "; index: " << index << std::endl;
  return {op, (int)idx};
}

Dart_Handle tfd::DartListOf(Dart_Handle *arr, intptr_t length) {
  auto out = Dart_NewList(length);
  for (intptr_t i = 0; i < length; i++) {
    Dart_ListSetAt(out, i, arr[i]);
  }
  return out;
}

//
// Dart_Handle tfd::getTuple2Type() {
//    Dart_Handle tupleLib =
//    Dart_LookupLibrary(Dart_NewStringFromCString("package:tuple/tuple.dart"));
//    return Dart_GetClass(tupleLib, Dart_NewStringFromCString("Tuple2"));
//}
//
// Dart_Handle tfd::getTuple3Type() {
//    Dart_Handle tupleLib =
//    Dart_LookupLibrary(Dart_NewStringFromCString("package:tuple/tuple.dart"));
//    return Dart_GetClass(tupleLib, Dart_NewStringFromCString("Tuple3"));
//}
//
// Dart_Handle tfd::getTuple4Type() {
//    Dart_Handle tupleLib =
//    Dart_LookupLibrary(Dart_NewStringFromCString("package:tuple/tuple.dart"));
//    return Dart_GetClass(tupleLib, Dart_NewStringFromCString("Tuple4"));
//}
