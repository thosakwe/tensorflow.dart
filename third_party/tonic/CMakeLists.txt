FILE(GLOB_RECURSE tonic_srcs *.h *.cc)

add_library(tonic ${tonic_srcs})
include_directories(${CMAKE_CURRENT_LIST_DIR}/..)
include_directories(${CMAKE_CURRENT_LIST_DIR}/filesystem)
include_directories(${CMAKE_CURRENT_LIST_DIR})