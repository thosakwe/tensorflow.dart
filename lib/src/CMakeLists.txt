include(ExternalProject)
find_package(Dart REQUIRED)

# Tensorflow configuration
set(TF_VERSION 1.14.0)
if("${CMAKE_SIZEOF_VOID_P}" EQUAL "8")
  set(TF_PLATFORM x86_64)
 else() 
  message(ERROR "tensorflow_dart only supports x86_64.") 
endif()
if(LINUX)
  set(TF_TYPE gpu)
  set(TF_OS linux)
elseif(APPLE)
  set(TF_TYPE cpu)
  set(TF_OS darwin)
elseif(WIN32)
  set(TF_TYPE gpu)
  set(TF_OS windows)
endif()
set(TF "${TF_TYPE}-${TF_OS}-${TF_PLATFORM}-${TF_VERSION}")
set(TF_URL "https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-${TF}.tar.gz")
ExternalProject_Add(tensorflow_dist
  URL ${TF_URL}
  BUILD_COMMAND ""
  CONFIGURE_COMMAND ""
  INSTALL_COMMAND "")
ExternalProject_Get_Property(tensorflow_dist source_dir)
ExternalProject_Get_Property(tensorflow_dist install_dir)
set(TENSORFLOW_DIR ${source_dir})
include_directories("${TENSORFLOW_DIR}/include")
link_directories("${TENSORFLOW_DIR}/lib")

add_dart_native_extension(tensorflow_dart SHARED
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
add_dependencies(tensorflow_dart tensorflow_dist)
target_link_libraries(tensorflow_dart tensorflow)
install(TARGETS tensorflow_dart DESTINATION ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
install(DIRECTORY "${TENSORFLOW_DIR}/lib/" DESTINATION ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})