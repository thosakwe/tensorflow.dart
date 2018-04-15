#include <cstring>
#include "tensorflow_dart.h"

// Forward declaration of ResolveName function.


// The name of the initialization function is the extension name followed
// by _Init.
DART_EXPORT Dart_Handle sample_extension_Init(Dart_Handle parent_library) {
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

Dart_NativeFunction ResolveName(Dart_Handle name, int argc, bool *auto_setup_scope) {
    // If we fail, we return nullptr, and Dart throws an exception.
    if (!Dart_IsString(name)) return nullptr;
    Dart_NativeFunction result = nullptr;
    const char *cname;
    HandleError(Dart_StringToCString(name, &cname));

    //if (strcmp("SystemRand", cname) == 0) result = SystemRand;
    //if (strcmp("SystemSrand", cname) == 0) result = SystemSrand;
    return result;
}