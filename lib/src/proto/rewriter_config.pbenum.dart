///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_rewriter_config_pbenum;

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart';

class RewriterConfig_Toggle extends ProtobufEnum {
  static const RewriterConfig_Toggle DEFAULT =
      const RewriterConfig_Toggle._(0, 'DEFAULT');
  static const RewriterConfig_Toggle ON =
      const RewriterConfig_Toggle._(1, 'ON');
  static const RewriterConfig_Toggle OFF =
      const RewriterConfig_Toggle._(2, 'OFF');
  static const RewriterConfig_Toggle AGGRESSIVE =
      const RewriterConfig_Toggle._(3, 'AGGRESSIVE');

  static const List<RewriterConfig_Toggle> values =
      const <RewriterConfig_Toggle>[
    DEFAULT,
    ON,
    OFF,
    AGGRESSIVE,
  ];

  static final Map<int, dynamic> _byValue = ProtobufEnum.initByValue(values);
  static RewriterConfig_Toggle valueOf(int value) =>
      _byValue[value] as RewriterConfig_Toggle;
  static void $checkItem(RewriterConfig_Toggle v) {
    if (v is! RewriterConfig_Toggle)
      checkItemFailed(v, 'RewriterConfig_Toggle');
  }

  const RewriterConfig_Toggle._(int v, String n) : super(v, n);
}

class RewriterConfig_NumIterationsType extends ProtobufEnum {
  static const RewriterConfig_NumIterationsType DEFAULT_NUM_ITERS =
      const RewriterConfig_NumIterationsType._(0, 'DEFAULT_NUM_ITERS');
  static const RewriterConfig_NumIterationsType ONE =
      const RewriterConfig_NumIterationsType._(1, 'ONE');
  static const RewriterConfig_NumIterationsType TWO =
      const RewriterConfig_NumIterationsType._(2, 'TWO');

  static const List<RewriterConfig_NumIterationsType> values =
      const <RewriterConfig_NumIterationsType>[
    DEFAULT_NUM_ITERS,
    ONE,
    TWO,
  ];

  static final Map<int, dynamic> _byValue = ProtobufEnum.initByValue(values);
  static RewriterConfig_NumIterationsType valueOf(int value) =>
      _byValue[value] as RewriterConfig_NumIterationsType;
  static void $checkItem(RewriterConfig_NumIterationsType v) {
    if (v is! RewriterConfig_NumIterationsType)
      checkItemFailed(v, 'RewriterConfig_NumIterationsType');
  }

  const RewriterConfig_NumIterationsType._(int v, String n) : super(v, n);
}

class RewriterConfig_MemOptType extends ProtobufEnum {
  static const RewriterConfig_MemOptType DEFAULT_MEM_OPT =
      const RewriterConfig_MemOptType._(0, 'DEFAULT_MEM_OPT');
  static const RewriterConfig_MemOptType NO_MEM_OPT =
      const RewriterConfig_MemOptType._(1, 'NO_MEM_OPT');
  static const RewriterConfig_MemOptType MANUAL =
      const RewriterConfig_MemOptType._(2, 'MANUAL');
  static const RewriterConfig_MemOptType SWAPPING_HEURISTICS =
      const RewriterConfig_MemOptType._(4, 'SWAPPING_HEURISTICS');
  static const RewriterConfig_MemOptType RECOMPUTATION_HEURISTICS =
      const RewriterConfig_MemOptType._(5, 'RECOMPUTATION_HEURISTICS');
  static const RewriterConfig_MemOptType SCHEDULING_HEURISTICS =
      const RewriterConfig_MemOptType._(6, 'SCHEDULING_HEURISTICS');
  static const RewriterConfig_MemOptType HEURISTICS =
      const RewriterConfig_MemOptType._(3, 'HEURISTICS');

  static const List<RewriterConfig_MemOptType> values =
      const <RewriterConfig_MemOptType>[
    DEFAULT_MEM_OPT,
    NO_MEM_OPT,
    MANUAL,
    SWAPPING_HEURISTICS,
    RECOMPUTATION_HEURISTICS,
    SCHEDULING_HEURISTICS,
    HEURISTICS,
  ];

  static final Map<int, dynamic> _byValue = ProtobufEnum.initByValue(values);
  static RewriterConfig_MemOptType valueOf(int value) =>
      _byValue[value] as RewriterConfig_MemOptType;
  static void $checkItem(RewriterConfig_MemOptType v) {
    if (v is! RewriterConfig_MemOptType)
      checkItemFailed(v, 'RewriterConfig_MemOptType');
  }

  const RewriterConfig_MemOptType._(int v, String n) : super(v, n);
}
