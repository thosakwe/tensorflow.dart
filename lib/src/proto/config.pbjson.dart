///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_config_pbjson;

const GPUOptions$json = const {
  '1': 'GPUOptions',
  '2': const [
    const {'1': 'per_process_gpu_memory_fraction', '3': 1, '4': 1, '5': 1, '10': 'perProcessGpuMemoryFraction'},
    const {'1': 'allocator_type', '3': 2, '4': 1, '5': 9, '10': 'allocatorType'},
    const {'1': 'deferred_deletion_bytes', '3': 3, '4': 1, '5': 3, '10': 'deferredDeletionBytes'},
    const {'1': 'allow_growth', '3': 4, '4': 1, '5': 8, '10': 'allowGrowth'},
    const {'1': 'visible_device_list', '3': 5, '4': 1, '5': 9, '10': 'visibleDeviceList'},
    const {'1': 'polling_active_delay_usecs', '3': 6, '4': 1, '5': 5, '10': 'pollingActiveDelayUsecs'},
    const {'1': 'polling_inactive_delay_msecs', '3': 7, '4': 1, '5': 5, '10': 'pollingInactiveDelayMsecs'},
    const {'1': 'force_gpu_compatible', '3': 8, '4': 1, '5': 8, '10': 'forceGpuCompatible'},
    const {'1': 'experimental', '3': 9, '4': 1, '5': 11, '6': '.tensorflow.GPUOptions.Experimental', '10': 'experimental'},
  ],
  '3': const [GPUOptions_Experimental$json],
};

const GPUOptions_Experimental$json = const {
  '1': 'Experimental',
  '2': const [
    const {'1': 'virtual_devices', '3': 1, '4': 3, '5': 11, '6': '.tensorflow.GPUOptions.Experimental.VirtualDevices', '10': 'virtualDevices'},
  ],
  '3': const [GPUOptions_Experimental_VirtualDevices$json],
};

const GPUOptions_Experimental_VirtualDevices$json = const {
  '1': 'VirtualDevices',
  '2': const [
    const {'1': 'memory_limit_mb', '3': 1, '4': 3, '5': 2, '10': 'memoryLimitMb'},
  ],
};

const OptimizerOptions$json = const {
  '1': 'OptimizerOptions',
  '2': const [
    const {'1': 'do_common_subexpression_elimination', '3': 1, '4': 1, '5': 8, '10': 'doCommonSubexpressionElimination'},
    const {'1': 'do_constant_folding', '3': 2, '4': 1, '5': 8, '10': 'doConstantFolding'},
    const {'1': 'max_folded_constant_in_bytes', '3': 6, '4': 1, '5': 3, '10': 'maxFoldedConstantInBytes'},
    const {'1': 'do_function_inlining', '3': 4, '4': 1, '5': 8, '10': 'doFunctionInlining'},
    const {'1': 'opt_level', '3': 3, '4': 1, '5': 14, '6': '.tensorflow.OptimizerOptions.Level', '10': 'optLevel'},
    const {'1': 'global_jit_level', '3': 5, '4': 1, '5': 14, '6': '.tensorflow.OptimizerOptions.GlobalJitLevel', '10': 'globalJitLevel'},
  ],
  '4': const [OptimizerOptions_Level$json, OptimizerOptions_GlobalJitLevel$json],
};

const OptimizerOptions_Level$json = const {
  '1': 'Level',
  '2': const [
    const {'1': 'L1', '2': 0},
    const {'1': 'L0', '2': -1},
  ],
};

const OptimizerOptions_GlobalJitLevel$json = const {
  '1': 'GlobalJitLevel',
  '2': const [
    const {'1': 'DEFAULT', '2': 0},
    const {'1': 'OFF', '2': -1},
    const {'1': 'ON_1', '2': 1},
    const {'1': 'ON_2', '2': 2},
  ],
};

const GraphOptions$json = const {
  '1': 'GraphOptions',
  '2': const [
    const {'1': 'enable_recv_scheduling', '3': 2, '4': 1, '5': 8, '10': 'enableRecvScheduling'},
    const {'1': 'optimizer_options', '3': 3, '4': 1, '5': 11, '6': '.tensorflow.OptimizerOptions', '10': 'optimizerOptions'},
    const {'1': 'build_cost_model', '3': 4, '4': 1, '5': 3, '10': 'buildCostModel'},
    const {'1': 'build_cost_model_after', '3': 9, '4': 1, '5': 3, '10': 'buildCostModelAfter'},
    const {'1': 'infer_shapes', '3': 5, '4': 1, '5': 8, '10': 'inferShapes'},
    const {'1': 'place_pruned_graph', '3': 6, '4': 1, '5': 8, '10': 'placePrunedGraph'},
    const {'1': 'enable_bfloat16_sendrecv', '3': 7, '4': 1, '5': 8, '10': 'enableBfloat16Sendrecv'},
    const {'1': 'timeline_step', '3': 8, '4': 1, '5': 5, '10': 'timelineStep'},
    const {'1': 'rewrite_options', '3': 10, '4': 1, '5': 11, '6': '.tensorflow.RewriterConfig', '10': 'rewriteOptions'},
  ],
  '9': const [
    const {'1': 1, '2': 2},
  ],
  '10': const ['skip_common_subexpression_elimination'],
};

const ThreadPoolOptionProto$json = const {
  '1': 'ThreadPoolOptionProto',
  '2': const [
    const {'1': 'num_threads', '3': 1, '4': 1, '5': 5, '10': 'numThreads'},
    const {'1': 'global_name', '3': 2, '4': 1, '5': 9, '10': 'globalName'},
  ],
};

const RPCOptions$json = const {
  '1': 'RPCOptions',
  '2': const [
    const {'1': 'use_rpc_for_inprocess_master', '3': 1, '4': 1, '5': 8, '10': 'useRpcForInprocessMaster'},
  ],
};

const ConfigProto$json = const {
  '1': 'ConfigProto',
  '2': const [
    const {'1': 'device_count', '3': 1, '4': 3, '5': 11, '6': '.tensorflow.ConfigProto.DeviceCountEntry', '10': 'deviceCount'},
    const {'1': 'intra_op_parallelism_threads', '3': 2, '4': 1, '5': 5, '10': 'intraOpParallelismThreads'},
    const {'1': 'inter_op_parallelism_threads', '3': 5, '4': 1, '5': 5, '10': 'interOpParallelismThreads'},
    const {'1': 'use_per_session_threads', '3': 9, '4': 1, '5': 8, '10': 'usePerSessionThreads'},
    const {'1': 'session_inter_op_thread_pool', '3': 12, '4': 3, '5': 11, '6': '.tensorflow.ThreadPoolOptionProto', '10': 'sessionInterOpThreadPool'},
    const {'1': 'placement_period', '3': 3, '4': 1, '5': 5, '10': 'placementPeriod'},
    const {'1': 'device_filters', '3': 4, '4': 3, '5': 9, '10': 'deviceFilters'},
    const {'1': 'gpu_options', '3': 6, '4': 1, '5': 11, '6': '.tensorflow.GPUOptions', '10': 'gpuOptions'},
    const {'1': 'allow_soft_placement', '3': 7, '4': 1, '5': 8, '10': 'allowSoftPlacement'},
    const {'1': 'log_device_placement', '3': 8, '4': 1, '5': 8, '10': 'logDevicePlacement'},
    const {'1': 'graph_options', '3': 10, '4': 1, '5': 11, '6': '.tensorflow.GraphOptions', '10': 'graphOptions'},
    const {'1': 'operation_timeout_in_ms', '3': 11, '4': 1, '5': 3, '10': 'operationTimeoutInMs'},
    const {'1': 'rpc_options', '3': 13, '4': 1, '5': 11, '6': '.tensorflow.RPCOptions', '10': 'rpcOptions'},
    const {'1': 'cluster_def', '3': 14, '4': 1, '5': 11, '6': '.tensorflow.ClusterDef', '10': 'clusterDef'},
    const {'1': 'isolate_session_state', '3': 15, '4': 1, '5': 8, '10': 'isolateSessionState'},
  ],
  '3': const [ConfigProto_DeviceCountEntry$json],
};

const ConfigProto_DeviceCountEntry$json = const {
  '1': 'DeviceCountEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': const {'7': true},
};

const RunOptions$json = const {
  '1': 'RunOptions',
  '2': const [
    const {'1': 'trace_level', '3': 1, '4': 1, '5': 14, '6': '.tensorflow.RunOptions.TraceLevel', '10': 'traceLevel'},
    const {'1': 'timeout_in_ms', '3': 2, '4': 1, '5': 3, '10': 'timeoutInMs'},
    const {'1': 'inter_op_thread_pool', '3': 3, '4': 1, '5': 5, '10': 'interOpThreadPool'},
    const {'1': 'output_partition_graphs', '3': 5, '4': 1, '5': 8, '10': 'outputPartitionGraphs'},
    const {'1': 'debug_options', '3': 6, '4': 1, '5': 11, '6': '.tensorflow.DebugOptions', '10': 'debugOptions'},
    const {'1': 'report_tensor_allocations_upon_oom', '3': 7, '4': 1, '5': 8, '10': 'reportTensorAllocationsUponOom'},
  ],
  '4': const [RunOptions_TraceLevel$json],
  '9': const [
    const {'1': 4, '2': 5},
  ],
};

const RunOptions_TraceLevel$json = const {
  '1': 'TraceLevel',
  '2': const [
    const {'1': 'NO_TRACE', '2': 0},
    const {'1': 'SOFTWARE_TRACE', '2': 1},
    const {'1': 'HARDWARE_TRACE', '2': 2},
    const {'1': 'FULL_TRACE', '2': 3},
  ],
};

const RunMetadata$json = const {
  '1': 'RunMetadata',
  '2': const [
    const {'1': 'step_stats', '3': 1, '4': 1, '5': 11, '6': '.tensorflow.StepStats', '10': 'stepStats'},
    const {'1': 'cost_graph', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.CostGraphDef', '10': 'costGraph'},
    const {'1': 'partition_graphs', '3': 3, '4': 3, '5': 11, '6': '.tensorflow.GraphDef', '10': 'partitionGraphs'},
  ],
};

const TensorConnection$json = const {
  '1': 'TensorConnection',
  '2': const [
    const {'1': 'from_tensor', '3': 1, '4': 1, '5': 9, '10': 'fromTensor'},
    const {'1': 'to_tensor', '3': 2, '4': 1, '5': 9, '10': 'toTensor'},
  ],
};

const CallableOptions$json = const {
  '1': 'CallableOptions',
  '2': const [
    const {'1': 'feed', '3': 1, '4': 3, '5': 9, '10': 'feed'},
    const {'1': 'fetch', '3': 2, '4': 3, '5': 9, '10': 'fetch'},
    const {'1': 'target', '3': 3, '4': 3, '5': 9, '10': 'target'},
    const {'1': 'run_options', '3': 4, '4': 1, '5': 11, '6': '.tensorflow.RunOptions', '10': 'runOptions'},
    const {'1': 'tensor_connection', '3': 5, '4': 3, '5': 11, '6': '.tensorflow.TensorConnection', '10': 'tensorConnection'},
  ],
};

