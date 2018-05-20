///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_saver;

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

import 'saver.pbenum.dart';

export 'saver.pbenum.dart';

class SaverDef extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('SaverDef')
    ..aOS(1, 'filenameTensorName')
    ..aOS(2, 'saveTensorName')
    ..aOS(3, 'restoreOpName')
    ..a<int>(4, 'maxToKeep', PbFieldType.O3)
    ..aOB(5, 'sharded')
    ..a<double>(6, 'keepCheckpointEveryNHours', PbFieldType.OF)
    ..e<SaverDef_CheckpointFormatVersion>(7, 'version', PbFieldType.OE, SaverDef_CheckpointFormatVersion.LEGACY, SaverDef_CheckpointFormatVersion.valueOf, SaverDef_CheckpointFormatVersion.values)
    ..hasRequiredFields = false
  ;

  SaverDef() : super();
  SaverDef.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  SaverDef.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  SaverDef clone() => new SaverDef()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static SaverDef create() => new SaverDef();
  static PbList<SaverDef> createRepeated() => new PbList<SaverDef>();
  static SaverDef getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlySaverDef();
    return _defaultInstance;
  }
  static SaverDef _defaultInstance;
  static void $checkItem(SaverDef v) {
    if (v is! SaverDef) checkItemFailed(v, 'SaverDef');
  }

  String get filenameTensorName => $_getS(0, '');
  set filenameTensorName(String v) { $_setString(0, v); }
  bool hasFilenameTensorName() => $_has(0);
  void clearFilenameTensorName() => clearField(1);

  String get saveTensorName => $_getS(1, '');
  set saveTensorName(String v) { $_setString(1, v); }
  bool hasSaveTensorName() => $_has(1);
  void clearSaveTensorName() => clearField(2);

  String get restoreOpName => $_getS(2, '');
  set restoreOpName(String v) { $_setString(2, v); }
  bool hasRestoreOpName() => $_has(2);
  void clearRestoreOpName() => clearField(3);

  int get maxToKeep => $_get(3, 0);
  set maxToKeep(int v) { $_setUnsignedInt32(3, v); }
  bool hasMaxToKeep() => $_has(3);
  void clearMaxToKeep() => clearField(4);

  bool get sharded => $_get(4, false);
  set sharded(bool v) { $_setBool(4, v); }
  bool hasSharded() => $_has(4);
  void clearSharded() => clearField(5);

  double get keepCheckpointEveryNHours => $_getN(5);
  set keepCheckpointEveryNHours(double v) { $_setFloat(5, v); }
  bool hasKeepCheckpointEveryNHours() => $_has(5);
  void clearKeepCheckpointEveryNHours() => clearField(6);

  SaverDef_CheckpointFormatVersion get version => $_getN(6);
  set version(SaverDef_CheckpointFormatVersion v) { setField(7, v); }
  bool hasVersion() => $_has(6);
  void clearVersion() => clearField(7);
}

class _ReadonlySaverDef extends SaverDef with ReadonlyMessageMixin {}

