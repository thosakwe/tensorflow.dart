include(ExternalProject)
find_package(Dart REQUIRED)
find_path(TENSORFLOW_INCLUDE_DIR PATHS "tensorflow/c/c_api.h")
find_library(TENSORFLOW_LIBRARY tensorflow)

add_dart_native_extension(tensorflow_dart
  cpp/tensorflow_dart.h cpp/tensorflow_dart.cc
  cpp/tfd/tfd.h
  cpp/tfd/graph.h cpp/tfd/graph.cc
  cpp/tfd/session.cc cpp/tfd/session.h
  cpp/tfd/util.cc cpp/tfd/util.h
  cpp/tfd/tensor.cc cpp/tfd/tensor.h
  cpp/tfd/operation.cc cpp/tfd/operation.h
  cpp/tfd/saved_model_bundle.cc
  cpp/tfd/saved_model_bundle.h
  cpp/tfd/function_node.cc cpp/tfd/function_node.h)
target_link_libraries(tensorflow_dart tensorflow)
install(TARGETS tensorflow_dart DESTINATION ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})