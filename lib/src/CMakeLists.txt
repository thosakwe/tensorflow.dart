set(CMAKE_CXX_STANDARD 11)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib/src)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib/src)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

# Find Dart
set(DART_SDK $ENV{DART_SDK})

if (${DART_SDK} STREQUAL "")
    message(FATAL_ERROR "You must set the `DART_SDK` environment variable to the path of the Dart SDK.")
else ()
    message("Building against Dart SDK: ${DART_SDK}")
endif ()

include_directories(${DART_SDK}/include)
add_definitions(-DDART_SHARED_LIB=1)

# OS-specific flags
if (${APPLE})
    SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -undefined dynamic_lookup")
endif ()

# Bundle in Tensorflow
include_directories("${TENSORFLOW_DIR}/include")
link_directories("${TENSORFLOW_DIR}/lib")

add_library(tensorflow_dart SHARED
        cpp/tensorflow_dart.h cpp/tensorflow_dart.cc
        cpp/tfd/tfd.h
        cpp/tfd/graph.h cpp/tfd/graph.cc
        cpp/tfd/session.cc cpp/tfd/session.h
        cpp/tfd/util.cc cpp/tfd/util.h
        cpp/tfd/tensor.cc cpp/tfd/tensor.h
        cpp/tfd/operation.cc cpp/tfd/operation.h cpp/tfd/saved_model_bundle.cc cpp/tfd/saved_model_bundle.h)
include_directories(${CMAKE_CURRENT_LIST_DIR}/../../third_party)
target_link_libraries(tensorflow_dart tensorflow)
install(TARGETS tensorflow_dart DESTINATION lib)