///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_meta_graph_pbjson;

const MetaGraphDef$json = const {
  '1': 'MetaGraphDef',
  '2': const [
    const {'1': 'meta_info_def', '3': 1, '4': 1, '5': 11, '6': '.tensorflow.MetaGraphDef.MetaInfoDef', '10': 'metaInfoDef'},
    const {'1': 'graph_def', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.GraphDef', '10': 'graphDef'},
    const {'1': 'saver_def', '3': 3, '4': 1, '5': 11, '6': '.tensorflow.SaverDef', '10': 'saverDef'},
    const {'1': 'collection_def', '3': 4, '4': 3, '5': 11, '6': '.tensorflow.MetaGraphDef.CollectionDefEntry', '10': 'collectionDef'},
    const {'1': 'signature_def', '3': 5, '4': 3, '5': 11, '6': '.tensorflow.MetaGraphDef.SignatureDefEntry', '10': 'signatureDef'},
    const {'1': 'asset_file_def', '3': 6, '4': 3, '5': 11, '6': '.tensorflow.AssetFileDef', '10': 'assetFileDef'},
  ],
  '3': const [MetaGraphDef_MetaInfoDef$json, MetaGraphDef_CollectionDefEntry$json, MetaGraphDef_SignatureDefEntry$json],
};

const MetaGraphDef_MetaInfoDef$json = const {
  '1': 'MetaInfoDef',
  '2': const [
    const {'1': 'meta_graph_version', '3': 1, '4': 1, '5': 9, '10': 'metaGraphVersion'},
    const {'1': 'stripped_op_list', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.OpList', '10': 'strippedOpList'},
    const {'1': 'any_info', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'anyInfo'},
    const {'1': 'tags', '3': 4, '4': 3, '5': 9, '10': 'tags'},
    const {'1': 'tensorflow_version', '3': 5, '4': 1, '5': 9, '10': 'tensorflowVersion'},
    const {'1': 'tensorflow_git_version', '3': 6, '4': 1, '5': 9, '10': 'tensorflowGitVersion'},
    const {'1': 'stripped_default_attrs', '3': 7, '4': 1, '5': 8, '10': 'strippedDefaultAttrs'},
  ],
};

const MetaGraphDef_CollectionDefEntry$json = const {
  '1': 'CollectionDefEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.CollectionDef', '10': 'value'},
  ],
  '7': const {'7': true},
};

const MetaGraphDef_SignatureDefEntry$json = const {
  '1': 'SignatureDefEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.SignatureDef', '10': 'value'},
  ],
  '7': const {'7': true},
};

const CollectionDef$json = const {
  '1': 'CollectionDef',
  '2': const [
    const {'1': 'node_list', '3': 1, '4': 1, '5': 11, '6': '.tensorflow.CollectionDef.NodeList', '9': 0, '10': 'nodeList'},
    const {'1': 'bytes_list', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.CollectionDef.BytesList', '9': 0, '10': 'bytesList'},
    const {'1': 'int64_list', '3': 3, '4': 1, '5': 11, '6': '.tensorflow.CollectionDef.Int64List', '9': 0, '10': 'int64List'},
    const {'1': 'float_list', '3': 4, '4': 1, '5': 11, '6': '.tensorflow.CollectionDef.FloatList', '9': 0, '10': 'floatList'},
    const {'1': 'any_list', '3': 5, '4': 1, '5': 11, '6': '.tensorflow.CollectionDef.AnyList', '9': 0, '10': 'anyList'},
  ],
  '3': const [CollectionDef_NodeList$json, CollectionDef_BytesList$json, CollectionDef_Int64List$json, CollectionDef_FloatList$json, CollectionDef_AnyList$json],
  '8': const [
    const {'1': 'kind'},
  ],
};

const CollectionDef_NodeList$json = const {
  '1': 'NodeList',
  '2': const [
    const {'1': 'value', '3': 1, '4': 3, '5': 9, '10': 'value'},
  ],
};

const CollectionDef_BytesList$json = const {
  '1': 'BytesList',
  '2': const [
    const {'1': 'value', '3': 1, '4': 3, '5': 12, '10': 'value'},
  ],
};

const CollectionDef_Int64List$json = const {
  '1': 'Int64List',
  '2': const [
    const {
      '1': 'value',
      '3': 1,
      '4': 3,
      '5': 3,
      '8': const {'2': true},
      '10': 'value',
    },
  ],
};

const CollectionDef_FloatList$json = const {
  '1': 'FloatList',
  '2': const [
    const {
      '1': 'value',
      '3': 1,
      '4': 3,
      '5': 2,
      '8': const {'2': true},
      '10': 'value',
    },
  ],
};

const CollectionDef_AnyList$json = const {
  '1': 'AnyList',
  '2': const [
    const {'1': 'value', '3': 1, '4': 3, '5': 11, '6': '.google.protobuf.Any', '10': 'value'},
  ],
};

const TensorInfo$json = const {
  '1': 'TensorInfo',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'name'},
    const {'1': 'coo_sparse', '3': 4, '4': 1, '5': 11, '6': '.tensorflow.TensorInfo.CooSparse', '9': 0, '10': 'cooSparse'},
    const {'1': 'dtype', '3': 2, '4': 1, '5': 14, '6': '.tensorflow.DataType', '10': 'dtype'},
    const {'1': 'tensor_shape', '3': 3, '4': 1, '5': 11, '6': '.tensorflow.TensorShapeProto', '10': 'tensorShape'},
  ],
  '3': const [TensorInfo_CooSparse$json],
  '8': const [
    const {'1': 'encoding'},
  ],
};

const TensorInfo_CooSparse$json = const {
  '1': 'CooSparse',
  '2': const [
    const {'1': 'values_tensor_name', '3': 1, '4': 1, '5': 9, '10': 'valuesTensorName'},
    const {'1': 'indices_tensor_name', '3': 2, '4': 1, '5': 9, '10': 'indicesTensorName'},
    const {'1': 'dense_shape_tensor_name', '3': 3, '4': 1, '5': 9, '10': 'denseShapeTensorName'},
  ],
};

const SignatureDef$json = const {
  '1': 'SignatureDef',
  '2': const [
    const {'1': 'inputs', '3': 1, '4': 3, '5': 11, '6': '.tensorflow.SignatureDef.InputsEntry', '10': 'inputs'},
    const {'1': 'outputs', '3': 2, '4': 3, '5': 11, '6': '.tensorflow.SignatureDef.OutputsEntry', '10': 'outputs'},
    const {'1': 'method_name', '3': 3, '4': 1, '5': 9, '10': 'methodName'},
  ],
  '3': const [SignatureDef_InputsEntry$json, SignatureDef_OutputsEntry$json],
};

const SignatureDef_InputsEntry$json = const {
  '1': 'InputsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.TensorInfo', '10': 'value'},
  ],
  '7': const {'7': true},
};

const SignatureDef_OutputsEntry$json = const {
  '1': 'OutputsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.TensorInfo', '10': 'value'},
  ],
  '7': const {'7': true},
};

const AssetFileDef$json = const {
  '1': 'AssetFileDef',
  '2': const [
    const {'1': 'tensor_info', '3': 1, '4': 1, '5': 11, '6': '.tensorflow.TensorInfo', '10': 'tensorInfo'},
    const {'1': 'filename', '3': 2, '4': 1, '5': 9, '10': 'filename'},
  ],
};

