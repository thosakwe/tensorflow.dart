//
// Created by Tobe on 5/19/18.
//

#include "saved_model_bundle.h"

void tfd::SavedModelBundle_new(Dart_NativeArguments arguments) {
    // Tuple4<int, String, int, Uint8List> _SavedModelBundle_new(
    // String exportDirectory,
    // List<String> tags,
    // Uint8List runOptions)
    auto *opts = TF_NewSessionOptions(); // TODO: Can these be passed in?
    auto *status = TF_NewStatus();
    const char *exportDirectory, **tags = nullptr;
    int nTags = 0;
    TF_Buffer *runOptions = nullptr;

    HandleError(Dart_StringToCString(Dart_GetNativeArgument(arguments, 0), &exportDirectory)); // String exportDirectory

    Dart_Handle tagsHandle = Dart_GetNativeArgument(arguments, 1); // List<String> tags
    intptr_t length;
    HandleError(Dart_ListLength(tagsHandle, &length));
    nTags = (int) length;
    tags = new const char *[length];

    for (intptr_t i = 0; i < length; i++) {
        HandleError(Dart_StringToCString(Dart_ListGetAt(tagsHandle, i), &tags[i]));
    }

    Dart_Handle runOptionsHandle = Dart_GetNativeArgument(arguments, 2); // Uint8List runOptions
    if (!Dart_IsNull(runOptionsHandle)) {
        Dart_TypedData_Type type;
        void *data;
        intptr_t len;
        HandleError(Dart_TypedDataAcquireData(runOptionsHandle, &type, &data, &len));
        runOptions = TF_NewBufferFromString(data, (size_t) len);
        HandleError(Dart_TypedDataReleaseData(runOptionsHandle));
    }

    // Load the session
    TF_Graph *graph = TF_NewGraph();
    TF_Buffer *metagraph = TF_NewBuffer();
    TF_Session *session = TF_LoadSessionFromSavedModel(
            opts, runOptions, exportDirectory, tags, nTags, graph,
            metagraph, status);

    // Delete parameters
    TF_DeleteSessionOptions(opts);
    if (runOptions != nullptr) TF_DeleteBuffer(runOptions);

    // Return value...
    // Tuple4<int, String, int, Uint8List>
    int code = TF_GetCode(status);
    Dart_Handle tuple[4];
    tuple[0] = Dart_NewInteger(code);

    if (code != 0 ) {
        tuple[1] = Dart_NewStringFromCString(TF_Message(status));
        tuple[2] = Dart_Null();
        tuple[3] = Dart_Null();

        if (session != nullptr) {
            TF_CloseSession(session, status);
            TF_DeleteSession(session, status);
        }

        TF_DeleteGraph(graph);
        TF_DeleteBuffer(metagraph);
    } else {
        tuple[1] = Dart_Null();
        tuple[2] = Dart_NewIntegerFromUint64((uint64_t) graph);
        // Create a Uint8List for the metagraph.
        tuple[3] = Dart_NewExternalTypedData(Dart_TypedData_kUint8, (void *) metagraph->data, metagraph->length);
    }

    // Create a tuple.
    Dart_Handle out = Dart_New(getTuple4Type(), Dart_NewStringFromCString(""), 4, tuple);
    Dart_SetReturnValue(arguments, out);

    // Deletes..
    // TODO: Do we need to delete the metagraph?
    TF_DeleteStatus(status);
}
