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
    if (Dart_IsError(handle)) Dart_PropagateError(handle);
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

    // graph.h
    if (strcmp("Graph_new", cname) == 0) result = tfd::Graph_new;
    else if (strcmp("Graph_delete", cname) == 0) result = tfd::Graph_delete;
    else if (strcmp("Graph_add_operation", cname) == 0) result = tfd::Graph_add_operation;
    else if (strcmp("Operation_list", cname) == 0) result = tfd::Operation_list;
    else if (strcmp("Operation_name", cname) == 0) result = tfd::Operation_name;
    else if (strcmp("Operation_new", cname) == 0) result = tfd::Operation_new;

        // session.h
    else if (strcmp("SessionRunGraph", cname) == 0) result = tfd::SessionRunGraph;

        // tensor.h
    else if (strcmp("Constant", cname) == 0) result = tfd::Constant;

    // Misc
    else if (strcmp("Version", cname) == 0) result = Version;

    return result;
}