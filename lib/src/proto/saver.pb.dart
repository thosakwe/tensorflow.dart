///
//  Generated code. Do not modify.
//  source: saver.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'saver.pbenum.dart';

export 'saver.pbenum.dart';

class SaverDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo('SaverDef', package: const $pb.PackageName('tensorflow'))
        ..aOS(1, 'filenameTensorName')
        ..aOS(2, 'saveTensorName')
        ..aOS(3, 'restoreOpName')
        ..a<$core.int>(4, 'maxToKeep', $pb.PbFieldType.O3)
        ..aOB(5, 'sharded')
        ..a<$core.double>(6, 'keepCheckpointEveryNHours', $pb.PbFieldType.OF)
        ..e<SaverDef_CheckpointFormatVersion>(
            7,
            'version',
            $pb.PbFieldType.OE,
            SaverDef_CheckpointFormatVersion.LEGACY,
            SaverDef_CheckpointFormatVersion.valueOf,
            SaverDef_CheckpointFormatVersion.values)
        ..hasRequiredFields = false;

  SaverDef._() : super();
  factory SaverDef() => create();
  factory SaverDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SaverDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SaverDef clone() => SaverDef()..mergeFromMessage(this);
  SaverDef copyWith(void Function(SaverDef) updates) =>
      super.copyWith((message) => updates(message as SaverDef));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SaverDef create() => SaverDef._();
  SaverDef createEmptyInstance() => create();
  static $pb.PbList<SaverDef> createRepeated() => $pb.PbList<SaverDef>();
  static SaverDef getDefault() => _defaultInstance ??= create()..freeze();
  static SaverDef _defaultInstance;

  $core.String get filenameTensorName => $_getS(0, '');
  set filenameTensorName($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasFilenameTensorName() => $_has(0);
  void clearFilenameTensorName() => clearField(1);

  $core.String get saveTensorName => $_getS(1, '');
  set saveTensorName($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasSaveTensorName() => $_has(1);
  void clearSaveTensorName() => clearField(2);

  $core.String get restoreOpName => $_getS(2, '');
  set restoreOpName($core.String v) {
    $_setString(2, v);
  }

  $core.bool hasRestoreOpName() => $_has(2);
  void clearRestoreOpName() => clearField(3);

  $core.int get maxToKeep => $_get(3, 0);
  set maxToKeep($core.int v) {
    $_setSignedInt32(3, v);
  }

  $core.bool hasMaxToKeep() => $_has(3);
  void clearMaxToKeep() => clearField(4);

  $core.bool get sharded => $_get(4, false);
  set sharded($core.bool v) {
    $_setBool(4, v);
  }

  $core.bool hasSharded() => $_has(4);
  void clearSharded() => clearField(5);

  $core.double get keepCheckpointEveryNHours => $_getN(5);
  set keepCheckpointEveryNHours($core.double v) {
    $_setFloat(5, v);
  }

  $core.bool hasKeepCheckpointEveryNHours() => $_has(5);
  void clearKeepCheckpointEveryNHours() => clearField(6);

  SaverDef_CheckpointFormatVersion get version => $_getN(6);
  set version(SaverDef_CheckpointFormatVersion v) {
    setField(7, v);
  }

  $core.bool hasVersion() => $_has(6);
  void clearVersion() => clearField(7);
}
