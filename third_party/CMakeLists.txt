include(ExternalProject)

macro(get_tf_variable NAME OPTIONS)
    set(TF_VARIABLE_NAME "TF_${NAME}")
    set("${TF_VARIABLE_NAME}" $ENV{${TF_VARIABLE_NAME}})

    if ("${${TF_VARIABLE_NAME}}" STREQUAL "")
        message(FATAL_ERROR "Missing environment variable: ${TF_VARIABLE_NAME}.\n"
                "Set the value to any of the following: ${OPTIONS}")
    endif ()
endmacro()

get_tf_variable(TYPE "`cpu`, `gpu`")
get_tf_variable(PLATFORM "`x86_64`, etc.")
get_tf_variable(OS "`darwin`, `linux`")
get_tf_variable(VERSION "1.1.0, etc.")

set(TF "${TF_TYPE}-${TF_OS}-${TF_PLATFORM}-${TF_VERSION}")
set(TF_URL "https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-${TF}.tar.gz")
ExternalProject_Add(TENSORFLOW
        URL ${TF_URL}
        BUILD_COMMAND ""
        CONFIGURE_COMMAND ""
        INSTALL_COMMAND "")
ExternalProject_Get_Property(TENSORFLOW install_dir)


set(TENSORFLOW_DIR
        "${install_dir}/src/TENSORFLOW"
        CACHE STRING "The Tensorflow root dir")

#if(NOT EXISTS ${TENSORFLOW_DIR})
#    message(FATAL_ERROR
#            "Non-existent Tensorflow directory: ${TENSORFLOW_DIR}.\n"
#            "You likely need to run tool/download_tensorflow.sh.")
#else()
message("Building against Tensorflow: ${TENSORFLOW_DIR}")
#endif()