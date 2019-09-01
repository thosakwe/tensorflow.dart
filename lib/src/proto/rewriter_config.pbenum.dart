///
//  Generated code. Do not modify.
//  source: rewriter_config.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class RewriterConfig_Toggle extends $pb.ProtobufEnum {
  static const RewriterConfig_Toggle DEFAULT =
      RewriterConfig_Toggle._(0, 'DEFAULT');
  static const RewriterConfig_Toggle ON = RewriterConfig_Toggle._(1, 'ON');
  static const RewriterConfig_Toggle OFF = RewriterConfig_Toggle._(2, 'OFF');
  static const RewriterConfig_Toggle AGGRESSIVE =
      RewriterConfig_Toggle._(3, 'AGGRESSIVE');

  static const $core.List<RewriterConfig_Toggle> values =
      <RewriterConfig_Toggle>[
    DEFAULT,
    ON,
    OFF,
    AGGRESSIVE,
  ];

  static final $core.Map<$core.int, RewriterConfig_Toggle> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static RewriterConfig_Toggle valueOf($core.int value) => _byValue[value];

  const RewriterConfig_Toggle._($core.int v, $core.String n) : super(v, n);
}

class RewriterConfig_NumIterationsType extends $pb.ProtobufEnum {
  static const RewriterConfig_NumIterationsType DEFAULT_NUM_ITERS =
      RewriterConfig_NumIterationsType._(0, 'DEFAULT_NUM_ITERS');
  static const RewriterConfig_NumIterationsType ONE =
      RewriterConfig_NumIterationsType._(1, 'ONE');
  static const RewriterConfig_NumIterationsType TWO =
      RewriterConfig_NumIterationsType._(2, 'TWO');

  static const $core.List<RewriterConfig_NumIterationsType> values =
      <RewriterConfig_NumIterationsType>[
    DEFAULT_NUM_ITERS,
    ONE,
    TWO,
  ];

  static final $core.Map<$core.int, RewriterConfig_NumIterationsType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static RewriterConfig_NumIterationsType valueOf($core.int value) =>
      _byValue[value];

  const RewriterConfig_NumIterationsType._($core.int v, $core.String n)
      : super(v, n);
}

class RewriterConfig_MemOptType extends $pb.ProtobufEnum {
  static const RewriterConfig_MemOptType DEFAULT_MEM_OPT =
      RewriterConfig_MemOptType._(0, 'DEFAULT_MEM_OPT');
  static const RewriterConfig_MemOptType NO_MEM_OPT =
      RewriterConfig_MemOptType._(1, 'NO_MEM_OPT');
  static const RewriterConfig_MemOptType MANUAL =
      RewriterConfig_MemOptType._(2, 'MANUAL');
  static const RewriterConfig_MemOptType SWAPPING_HEURISTICS =
      RewriterConfig_MemOptType._(4, 'SWAPPING_HEURISTICS');
  static const RewriterConfig_MemOptType RECOMPUTATION_HEURISTICS =
      RewriterConfig_MemOptType._(5, 'RECOMPUTATION_HEURISTICS');
  static const RewriterConfig_MemOptType SCHEDULING_HEURISTICS =
      RewriterConfig_MemOptType._(6, 'SCHEDULING_HEURISTICS');
  static const RewriterConfig_MemOptType HEURISTICS =
      RewriterConfig_MemOptType._(3, 'HEURISTICS');

  static const $core.List<RewriterConfig_MemOptType> values =
      <RewriterConfig_MemOptType>[
    DEFAULT_MEM_OPT,
    NO_MEM_OPT,
    MANUAL,
    SWAPPING_HEURISTICS,
    RECOMPUTATION_HEURISTICS,
    SCHEDULING_HEURISTICS,
    HEURISTICS,
  ];

  static final $core.Map<$core.int, RewriterConfig_MemOptType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static RewriterConfig_MemOptType valueOf($core.int value) => _byValue[value];

  const RewriterConfig_MemOptType._($core.int v, $core.String n) : super(v, n);
}
