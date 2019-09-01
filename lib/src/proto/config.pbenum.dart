///
//  Generated code. Do not modify.
//  source: config.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class OptimizerOptions_Level extends $pb.ProtobufEnum {
  static const OptimizerOptions_Level L1 = OptimizerOptions_Level._(0, 'L1');
  static const OptimizerOptions_Level L0 = OptimizerOptions_Level._(-1, 'L0');

  static const $core.List<OptimizerOptions_Level> values =
      <OptimizerOptions_Level>[
    L1,
    L0,
  ];

  static final $core.Map<$core.int, OptimizerOptions_Level> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static OptimizerOptions_Level valueOf($core.int value) => _byValue[value];

  const OptimizerOptions_Level._($core.int v, $core.String n) : super(v, n);
}

class OptimizerOptions_GlobalJitLevel extends $pb.ProtobufEnum {
  static const OptimizerOptions_GlobalJitLevel DEFAULT =
      OptimizerOptions_GlobalJitLevel._(0, 'DEFAULT');
  static const OptimizerOptions_GlobalJitLevel OFF =
      OptimizerOptions_GlobalJitLevel._(-1, 'OFF');
  static const OptimizerOptions_GlobalJitLevel ON_1 =
      OptimizerOptions_GlobalJitLevel._(1, 'ON_1');
  static const OptimizerOptions_GlobalJitLevel ON_2 =
      OptimizerOptions_GlobalJitLevel._(2, 'ON_2');

  static const $core.List<OptimizerOptions_GlobalJitLevel> values =
      <OptimizerOptions_GlobalJitLevel>[
    DEFAULT,
    OFF,
    ON_1,
    ON_2,
  ];

  static final $core.Map<$core.int, OptimizerOptions_GlobalJitLevel> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static OptimizerOptions_GlobalJitLevel valueOf($core.int value) =>
      _byValue[value];

  const OptimizerOptions_GlobalJitLevel._($core.int v, $core.String n)
      : super(v, n);
}

class RunOptions_TraceLevel extends $pb.ProtobufEnum {
  static const RunOptions_TraceLevel NO_TRACE =
      RunOptions_TraceLevel._(0, 'NO_TRACE');
  static const RunOptions_TraceLevel SOFTWARE_TRACE =
      RunOptions_TraceLevel._(1, 'SOFTWARE_TRACE');
  static const RunOptions_TraceLevel HARDWARE_TRACE =
      RunOptions_TraceLevel._(2, 'HARDWARE_TRACE');
  static const RunOptions_TraceLevel FULL_TRACE =
      RunOptions_TraceLevel._(3, 'FULL_TRACE');

  static const $core.List<RunOptions_TraceLevel> values =
      <RunOptions_TraceLevel>[
    NO_TRACE,
    SOFTWARE_TRACE,
    HARDWARE_TRACE,
    FULL_TRACE,
  ];

  static final $core.Map<$core.int, RunOptions_TraceLevel> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static RunOptions_TraceLevel valueOf($core.int value) => _byValue[value];

  const RunOptions_TraceLevel._($core.int v, $core.String n) : super(v, n);
}
