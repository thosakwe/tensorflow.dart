///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_debug_pbjson;

const DebugTensorWatch$json = const {
  '1': 'DebugTensorWatch',
  '2': const [
    const {'1': 'node_name', '3': 1, '4': 1, '5': 9, '10': 'nodeName'},
    const {'1': 'output_slot', '3': 2, '4': 1, '5': 5, '10': 'outputSlot'},
    const {'1': 'debug_ops', '3': 3, '4': 3, '5': 9, '10': 'debugOps'},
    const {'1': 'debug_urls', '3': 4, '4': 3, '5': 9, '10': 'debugUrls'},
    const {
      '1': 'tolerate_debug_op_creation_failures',
      '3': 5,
      '4': 1,
      '5': 8,
      '10': 'tolerateDebugOpCreationFailures'
    },
  ],
};

const DebugOptions$json = const {
  '1': 'DebugOptions',
  '2': const [
    const {
      '1': 'debug_tensor_watch_opts',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.DebugTensorWatch',
      '10': 'debugTensorWatchOpts'
    },
    const {'1': 'global_step', '3': 10, '4': 1, '5': 3, '10': 'globalStep'},
  ],
};

const DebuggedSourceFile$json = const {
  '1': 'DebuggedSourceFile',
  '2': const [
    const {'1': 'host', '3': 1, '4': 1, '5': 9, '10': 'host'},
    const {'1': 'file_path', '3': 2, '4': 1, '5': 9, '10': 'filePath'},
    const {'1': 'last_modified', '3': 3, '4': 1, '5': 3, '10': 'lastModified'},
    const {'1': 'bytes', '3': 4, '4': 1, '5': 3, '10': 'bytes'},
    const {'1': 'lines', '3': 5, '4': 3, '5': 9, '10': 'lines'},
  ],
};

const DebuggedSourceFiles$json = const {
  '1': 'DebuggedSourceFiles',
  '2': const [
    const {
      '1': 'source_files',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.DebuggedSourceFile',
      '10': 'sourceFiles'
    },
  ],
};
