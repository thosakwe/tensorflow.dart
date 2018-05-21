///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_step_stats_pbjson;

const AllocationRecord$json = const {
  '1': 'AllocationRecord',
  '2': const [
    const {'1': 'alloc_micros', '3': 1, '4': 1, '5': 3, '10': 'allocMicros'},
    const {'1': 'alloc_bytes', '3': 2, '4': 1, '5': 3, '10': 'allocBytes'},
  ],
};

const AllocatorMemoryUsed$json = const {
  '1': 'AllocatorMemoryUsed',
  '2': const [
    const {
      '1': 'allocator_name',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'allocatorName'
    },
    const {'1': 'total_bytes', '3': 2, '4': 1, '5': 3, '10': 'totalBytes'},
    const {'1': 'peak_bytes', '3': 3, '4': 1, '5': 3, '10': 'peakBytes'},
    const {'1': 'live_bytes', '3': 4, '4': 1, '5': 3, '10': 'liveBytes'},
    const {
      '1': 'allocation_records',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.AllocationRecord',
      '10': 'allocationRecords'
    },
    const {
      '1': 'allocator_bytes_in_use',
      '3': 5,
      '4': 1,
      '5': 3,
      '10': 'allocatorBytesInUse'
    },
  ],
};

const NodeOutput$json = const {
  '1': 'NodeOutput',
  '2': const [
    const {'1': 'slot', '3': 1, '4': 1, '5': 5, '10': 'slot'},
    const {
      '1': 'tensor_description',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorDescription',
      '10': 'tensorDescription'
    },
  ],
};

const MemoryStats$json = const {
  '1': 'MemoryStats',
  '2': const [
    const {
      '1': 'temp_memory_size',
      '3': 1,
      '4': 1,
      '5': 3,
      '10': 'tempMemorySize'
    },
    const {
      '1': 'persistent_memory_size',
      '3': 3,
      '4': 1,
      '5': 3,
      '10': 'persistentMemorySize'
    },
    const {
      '1': 'persistent_tensor_alloc_ids',
      '3': 5,
      '4': 3,
      '5': 3,
      '10': 'persistentTensorAllocIds'
    },
    const {
      '1': 'device_temp_memory_size',
      '3': 2,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'deviceTempMemorySize',
    },
    const {
      '1': 'device_persistent_memory_size',
      '3': 4,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'devicePersistentMemorySize',
    },
    const {
      '1': 'device_persistent_tensor_alloc_ids',
      '3': 6,
      '4': 3,
      '5': 3,
      '8': const {'3': true},
      '10': 'devicePersistentTensorAllocIds',
    },
  ],
};

const NodeExecStats$json = const {
  '1': 'NodeExecStats',
  '2': const [
    const {'1': 'node_name', '3': 1, '4': 1, '5': 9, '10': 'nodeName'},
    const {
      '1': 'all_start_micros',
      '3': 2,
      '4': 1,
      '5': 3,
      '10': 'allStartMicros'
    },
    const {
      '1': 'op_start_rel_micros',
      '3': 3,
      '4': 1,
      '5': 3,
      '10': 'opStartRelMicros'
    },
    const {
      '1': 'op_end_rel_micros',
      '3': 4,
      '4': 1,
      '5': 3,
      '10': 'opEndRelMicros'
    },
    const {
      '1': 'all_end_rel_micros',
      '3': 5,
      '4': 1,
      '5': 3,
      '10': 'allEndRelMicros'
    },
    const {
      '1': 'memory',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.AllocatorMemoryUsed',
      '10': 'memory'
    },
    const {
      '1': 'output',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.NodeOutput',
      '10': 'output'
    },
    const {
      '1': 'timeline_label',
      '3': 8,
      '4': 1,
      '5': 9,
      '10': 'timelineLabel'
    },
    const {
      '1': 'scheduled_micros',
      '3': 9,
      '4': 1,
      '5': 3,
      '10': 'scheduledMicros'
    },
    const {'1': 'thread_id', '3': 10, '4': 1, '5': 13, '10': 'threadId'},
    const {
      '1': 'referenced_tensor',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.AllocationDescription',
      '10': 'referencedTensor'
    },
    const {
      '1': 'memory_stats',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.MemoryStats',
      '10': 'memoryStats'
    },
  ],
};

const DeviceStepStats$json = const {
  '1': 'DeviceStepStats',
  '2': const [
    const {'1': 'device', '3': 1, '4': 1, '5': 9, '10': 'device'},
    const {
      '1': 'node_stats',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.NodeExecStats',
      '10': 'nodeStats'
    },
  ],
};

const StepStats$json = const {
  '1': 'StepStats',
  '2': const [
    const {
      '1': 'dev_stats',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.DeviceStepStats',
      '10': 'devStats'
    },
  ],
};
