///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_saver_pbenum;

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart';

class SaverDef_CheckpointFormatVersion extends ProtobufEnum {
  static const SaverDef_CheckpointFormatVersion LEGACY =
      const SaverDef_CheckpointFormatVersion._(0, 'LEGACY');
  static const SaverDef_CheckpointFormatVersion V1 =
      const SaverDef_CheckpointFormatVersion._(1, 'V1');
  static const SaverDef_CheckpointFormatVersion V2 =
      const SaverDef_CheckpointFormatVersion._(2, 'V2');

  static const List<SaverDef_CheckpointFormatVersion> values =
      const <SaverDef_CheckpointFormatVersion>[
    LEGACY,
    V1,
    V2,
  ];

  static final Map<int, dynamic> _byValue = ProtobufEnum.initByValue(values);
  static SaverDef_CheckpointFormatVersion valueOf(int value) =>
      _byValue[value] as SaverDef_CheckpointFormatVersion;
  static void $checkItem(SaverDef_CheckpointFormatVersion v) {
    if (v is! SaverDef_CheckpointFormatVersion)
      checkItemFailed(v, 'SaverDef_CheckpointFormatVersion');
  }

  const SaverDef_CheckpointFormatVersion._(int v, String n) : super(v, n);
}
