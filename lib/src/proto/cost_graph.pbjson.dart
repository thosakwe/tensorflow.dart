///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_cost_graph_pbjson;

const CostGraphDef$json = const {
  '1': 'CostGraphDef',
  '2': const [
    const {
      '1': 'node',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.CostGraphDef.Node',
      '10': 'node'
    },
  ],
  '3': const [CostGraphDef_Node$json],
};

const CostGraphDef_Node$json = const {
  '1': 'Node',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'device', '3': 2, '4': 1, '5': 9, '10': 'device'},
    const {'1': 'id', '3': 3, '4': 1, '5': 5, '10': 'id'},
    const {
      '1': 'input_info',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.CostGraphDef.Node.InputInfo',
      '10': 'inputInfo'
    },
    const {
      '1': 'output_info',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.CostGraphDef.Node.OutputInfo',
      '10': 'outputInfo'
    },
    const {
      '1': 'temporary_memory_size',
      '3': 6,
      '4': 1,
      '5': 3,
      '10': 'temporaryMemorySize'
    },
    const {
      '1': 'persistent_memory_size',
      '3': 12,
      '4': 1,
      '5': 3,
      '10': 'persistentMemorySize'
    },
    const {
      '1': 'host_temp_memory_size',
      '3': 10,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'hostTempMemorySize',
    },
    const {
      '1': 'device_temp_memory_size',
      '3': 11,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'deviceTempMemorySize',
    },
    const {
      '1': 'device_persistent_memory_size',
      '3': 16,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'devicePersistentMemorySize',
    },
    const {'1': 'compute_cost', '3': 9, '4': 1, '5': 3, '10': 'computeCost'},
    const {'1': 'compute_time', '3': 14, '4': 1, '5': 3, '10': 'computeTime'},
    const {'1': 'memory_time', '3': 15, '4': 1, '5': 3, '10': 'memoryTime'},
    const {'1': 'is_final', '3': 7, '4': 1, '5': 8, '10': 'isFinal'},
    const {'1': 'control_input', '3': 8, '4': 3, '5': 5, '10': 'controlInput'},
  ],
  '3': const [
    CostGraphDef_Node_InputInfo$json,
    CostGraphDef_Node_OutputInfo$json
  ],
};

const CostGraphDef_Node_InputInfo$json = const {
  '1': 'InputInfo',
  '2': const [
    const {
      '1': 'preceding_node',
      '3': 1,
      '4': 1,
      '5': 5,
      '10': 'precedingNode'
    },
    const {
      '1': 'preceding_port',
      '3': 2,
      '4': 1,
      '5': 5,
      '10': 'precedingPort'
    },
  ],
};

const CostGraphDef_Node_OutputInfo$json = const {
  '1': 'OutputInfo',
  '2': const [
    const {'1': 'size', '3': 1, '4': 1, '5': 3, '10': 'size'},
    const {
      '1': 'alias_input_port',
      '3': 2,
      '4': 1,
      '5': 3,
      '10': 'aliasInputPort'
    },
    const {
      '1': 'shape',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorShapeProto',
      '10': 'shape'
    },
    const {
      '1': 'dtype',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.DataType',
      '10': 'dtype'
    },
  ],
};
