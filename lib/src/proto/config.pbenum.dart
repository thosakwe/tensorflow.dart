///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_config_pbenum;

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart';

class OptimizerOptions_Level extends ProtobufEnum {
  static const OptimizerOptions_Level L1 =
      const OptimizerOptions_Level._(0, 'L1');
  static const OptimizerOptions_Level L0 =
      const OptimizerOptions_Level._(-1, 'L0');

  static const List<OptimizerOptions_Level> values =
      const <OptimizerOptions_Level>[
    L1,
    L0,
  ];

  static final Map<int, dynamic> _byValue = ProtobufEnum.initByValue(values);
  static OptimizerOptions_Level valueOf(int value) =>
      _byValue[value] as OptimizerOptions_Level;
  static void $checkItem(OptimizerOptions_Level v) {
    if (v is! OptimizerOptions_Level)
      checkItemFailed(v, 'OptimizerOptions_Level');
  }

  const OptimizerOptions_Level._(int v, String n) : super(v, n);
}

class OptimizerOptions_GlobalJitLevel extends ProtobufEnum {
  static const OptimizerOptions_GlobalJitLevel DEFAULT =
      const OptimizerOptions_GlobalJitLevel._(0, 'DEFAULT');
  static const OptimizerOptions_GlobalJitLevel OFF =
      const OptimizerOptions_GlobalJitLevel._(-1, 'OFF');
  static const OptimizerOptions_GlobalJitLevel ON_1 =
      const OptimizerOptions_GlobalJitLevel._(1, 'ON_1');
  static const OptimizerOptions_GlobalJitLevel ON_2 =
      const OptimizerOptions_GlobalJitLevel._(2, 'ON_2');

  static const List<OptimizerOptions_GlobalJitLevel> values =
      const <OptimizerOptions_GlobalJitLevel>[
    DEFAULT,
    OFF,
    ON_1,
    ON_2,
  ];

  static final Map<int, dynamic> _byValue = ProtobufEnum.initByValue(values);
  static OptimizerOptions_GlobalJitLevel valueOf(int value) =>
      _byValue[value] as OptimizerOptions_GlobalJitLevel;
  static void $checkItem(OptimizerOptions_GlobalJitLevel v) {
    if (v is! OptimizerOptions_GlobalJitLevel)
      checkItemFailed(v, 'OptimizerOptions_GlobalJitLevel');
  }

  const OptimizerOptions_GlobalJitLevel._(int v, String n) : super(v, n);
}

class RunOptions_TraceLevel extends ProtobufEnum {
  static const RunOptions_TraceLevel NO_TRACE =
      const RunOptions_TraceLevel._(0, 'NO_TRACE');
  static const RunOptions_TraceLevel SOFTWARE_TRACE =
      const RunOptions_TraceLevel._(1, 'SOFTWARE_TRACE');
  static const RunOptions_TraceLevel HARDWARE_TRACE =
      const RunOptions_TraceLevel._(2, 'HARDWARE_TRACE');
  static const RunOptions_TraceLevel FULL_TRACE =
      const RunOptions_TraceLevel._(3, 'FULL_TRACE');

  static const List<RunOptions_TraceLevel> values =
      const <RunOptions_TraceLevel>[
    NO_TRACE,
    SOFTWARE_TRACE,
    HARDWARE_TRACE,
    FULL_TRACE,
  ];

  static final Map<int, dynamic> _byValue = ProtobufEnum.initByValue(values);
  static RunOptions_TraceLevel valueOf(int value) =>
      _byValue[value] as RunOptions_TraceLevel;
  static void $checkItem(RunOptions_TraceLevel v) {
    if (v is! RunOptions_TraceLevel)
      checkItemFailed(v, 'RunOptions_TraceLevel');
  }

  const RunOptions_TraceLevel._(int v, String n) : super(v, n);
}
