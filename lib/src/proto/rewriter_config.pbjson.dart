///
//  Generated code. Do not modify.
//  source: rewriter_config.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const AutoParallelOptions$json = const {
  '1': 'AutoParallelOptions',
  '2': const [
    const {'1': 'enable', '3': 1, '4': 1, '5': 8, '10': 'enable'},
    const {'1': 'num_replicas', '3': 2, '4': 1, '5': 5, '10': 'numReplicas'},
  ],
};

const RewriterConfig$json = const {
  '1': 'RewriterConfig',
  '2': const [
    const {
      '1': 'layout_optimizer',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.RewriterConfig.Toggle',
      '10': 'layoutOptimizer'
    },
    const {
      '1': 'constant_folding',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.RewriterConfig.Toggle',
      '10': 'constantFolding'
    },
    const {
      '1': 'shape_optimization',
      '3': 13,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.RewriterConfig.Toggle',
      '10': 'shapeOptimization'
    },
    const {
      '1': 'remapping',
      '3': 14,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.RewriterConfig.Toggle',
      '10': 'remapping'
    },
    const {
      '1': 'arithmetic_optimization',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.RewriterConfig.Toggle',
      '10': 'arithmeticOptimization'
    },
    const {
      '1': 'dependency_optimization',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.RewriterConfig.Toggle',
      '10': 'dependencyOptimization'
    },
    const {
      '1': 'loop_optimization',
      '3': 9,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.RewriterConfig.Toggle',
      '10': 'loopOptimization'
    },
    const {
      '1': 'function_optimization',
      '3': 10,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.RewriterConfig.Toggle',
      '10': 'functionOptimization'
    },
    const {
      '1': 'debug_stripper',
      '3': 11,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.RewriterConfig.Toggle',
      '10': 'debugStripper'
    },
    const {
      '1': 'disable_model_pruning',
      '3': 2,
      '4': 1,
      '5': 8,
      '10': 'disableModelPruning'
    },
    const {
      '1': 'meta_optimizer_iterations',
      '3': 12,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.RewriterConfig.NumIterationsType',
      '10': 'metaOptimizerIterations'
    },
    const {
      '1': 'memory_optimization',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.RewriterConfig.MemOptType',
      '10': 'memoryOptimization'
    },
    const {
      '1': 'memory_optimizer_target_node_name_scope',
      '3': 6,
      '4': 1,
      '5': 9,
      '10': 'memoryOptimizerTargetNodeNameScope'
    },
    const {
      '1': 'auto_parallel',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.AutoParallelOptions',
      '10': 'autoParallel'
    },
    const {'1': 'optimizers', '3': 100, '4': 3, '5': 9, '10': 'optimizers'},
    const {
      '1': 'custom_optimizers',
      '3': 200,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.RewriterConfig.CustomGraphOptimizer',
      '10': 'customOptimizers'
    },
  ],
  '3': const [RewriterConfig_CustomGraphOptimizer$json],
  '4': const [
    RewriterConfig_Toggle$json,
    RewriterConfig_NumIterationsType$json,
    RewriterConfig_MemOptType$json
  ],
};

const RewriterConfig_CustomGraphOptimizer$json = const {
  '1': 'CustomGraphOptimizer',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'parameter_map',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.RewriterConfig.CustomGraphOptimizer.ParameterMapEntry',
      '10': 'parameterMap'
    },
  ],
  '3': const [RewriterConfig_CustomGraphOptimizer_ParameterMapEntry$json],
};

const RewriterConfig_CustomGraphOptimizer_ParameterMapEntry$json = const {
  '1': 'ParameterMapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.AttrValue',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

const RewriterConfig_Toggle$json = const {
  '1': 'Toggle',
  '2': const [
    const {'1': 'DEFAULT', '2': 0},
    const {'1': 'ON', '2': 1},
    const {'1': 'OFF', '2': 2},
    const {'1': 'AGGRESSIVE', '2': 3},
  ],
};

const RewriterConfig_NumIterationsType$json = const {
  '1': 'NumIterationsType',
  '2': const [
    const {'1': 'DEFAULT_NUM_ITERS', '2': 0},
    const {'1': 'ONE', '2': 1},
    const {'1': 'TWO', '2': 2},
  ],
};

const RewriterConfig_MemOptType$json = const {
  '1': 'MemOptType',
  '2': const [
    const {'1': 'DEFAULT_MEM_OPT', '2': 0},
    const {'1': 'NO_MEM_OPT', '2': 1},
    const {'1': 'MANUAL', '2': 2},
    const {'1': 'SWAPPING_HEURISTICS', '2': 4},
    const {'1': 'RECOMPUTATION_HEURISTICS', '2': 5},
    const {'1': 'SCHEDULING_HEURISTICS', '2': 6},
    const {'1': 'HEURISTICS', '2': 3},
  ],
};
