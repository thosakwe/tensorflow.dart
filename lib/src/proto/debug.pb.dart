///
//  Generated code. Do not modify.
//  source: debug.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class DebugTensorWatch extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DebugTensorWatch',
      package: const $pb.PackageName('tensorflow'))
    ..aOS(1, 'nodeName')
    ..a<$core.int>(2, 'outputSlot', $pb.PbFieldType.O3)
    ..pPS(3, 'debugOps')
    ..pPS(4, 'debugUrls')
    ..aOB(5, 'tolerateDebugOpCreationFailures')
    ..hasRequiredFields = false;

  DebugTensorWatch._() : super();
  factory DebugTensorWatch() => create();
  factory DebugTensorWatch.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DebugTensorWatch.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DebugTensorWatch clone() => DebugTensorWatch()..mergeFromMessage(this);
  DebugTensorWatch copyWith(void Function(DebugTensorWatch) updates) =>
      super.copyWith((message) => updates(message as DebugTensorWatch));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DebugTensorWatch create() => DebugTensorWatch._();
  DebugTensorWatch createEmptyInstance() => create();
  static $pb.PbList<DebugTensorWatch> createRepeated() =>
      $pb.PbList<DebugTensorWatch>();
  static DebugTensorWatch getDefault() =>
      _defaultInstance ??= create()..freeze();
  static DebugTensorWatch _defaultInstance;

  $core.String get nodeName => $_getS(0, '');
  set nodeName($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasNodeName() => $_has(0);
  void clearNodeName() => clearField(1);

  $core.int get outputSlot => $_get(1, 0);
  set outputSlot($core.int v) {
    $_setSignedInt32(1, v);
  }

  $core.bool hasOutputSlot() => $_has(1);
  void clearOutputSlot() => clearField(2);

  $core.List<$core.String> get debugOps => $_getList(2);

  $core.List<$core.String> get debugUrls => $_getList(3);

  $core.bool get tolerateDebugOpCreationFailures => $_get(4, false);
  set tolerateDebugOpCreationFailures($core.bool v) {
    $_setBool(4, v);
  }

  $core.bool hasTolerateDebugOpCreationFailures() => $_has(4);
  void clearTolerateDebugOpCreationFailures() => clearField(5);
}

class DebugOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DebugOptions',
      package: const $pb.PackageName('tensorflow'))
    ..pc<DebugTensorWatch>(
        4, 'debugTensorWatchOpts', $pb.PbFieldType.PM, DebugTensorWatch.create)
    ..aInt64(10, 'globalStep')
    ..hasRequiredFields = false;

  DebugOptions._() : super();
  factory DebugOptions() => create();
  factory DebugOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DebugOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DebugOptions clone() => DebugOptions()..mergeFromMessage(this);
  DebugOptions copyWith(void Function(DebugOptions) updates) =>
      super.copyWith((message) => updates(message as DebugOptions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DebugOptions create() => DebugOptions._();
  DebugOptions createEmptyInstance() => create();
  static $pb.PbList<DebugOptions> createRepeated() =>
      $pb.PbList<DebugOptions>();
  static DebugOptions getDefault() => _defaultInstance ??= create()..freeze();
  static DebugOptions _defaultInstance;

  $core.List<DebugTensorWatch> get debugTensorWatchOpts => $_getList(0);

  Int64 get globalStep => $_getI64(1);
  set globalStep(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasGlobalStep() => $_has(1);
  void clearGlobalStep() => clearField(10);
}

class DebuggedSourceFile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DebuggedSourceFile',
      package: const $pb.PackageName('tensorflow'))
    ..aOS(1, 'host')
    ..aOS(2, 'filePath')
    ..aInt64(3, 'lastModified')
    ..aInt64(4, 'bytes')
    ..pPS(5, 'lines')
    ..hasRequiredFields = false;

  DebuggedSourceFile._() : super();
  factory DebuggedSourceFile() => create();
  factory DebuggedSourceFile.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DebuggedSourceFile.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DebuggedSourceFile clone() => DebuggedSourceFile()..mergeFromMessage(this);
  DebuggedSourceFile copyWith(void Function(DebuggedSourceFile) updates) =>
      super.copyWith((message) => updates(message as DebuggedSourceFile));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DebuggedSourceFile create() => DebuggedSourceFile._();
  DebuggedSourceFile createEmptyInstance() => create();
  static $pb.PbList<DebuggedSourceFile> createRepeated() =>
      $pb.PbList<DebuggedSourceFile>();
  static DebuggedSourceFile getDefault() =>
      _defaultInstance ??= create()..freeze();
  static DebuggedSourceFile _defaultInstance;

  $core.String get host => $_getS(0, '');
  set host($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasHost() => $_has(0);
  void clearHost() => clearField(1);

  $core.String get filePath => $_getS(1, '');
  set filePath($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasFilePath() => $_has(1);
  void clearFilePath() => clearField(2);

  Int64 get lastModified => $_getI64(2);
  set lastModified(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasLastModified() => $_has(2);
  void clearLastModified() => clearField(3);

  Int64 get bytes => $_getI64(3);
  set bytes(Int64 v) {
    $_setInt64(3, v);
  }

  $core.bool hasBytes() => $_has(3);
  void clearBytes() => clearField(4);

  $core.List<$core.String> get lines => $_getList(4);
}

class DebuggedSourceFiles extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DebuggedSourceFiles',
      package: const $pb.PackageName('tensorflow'))
    ..pc<DebuggedSourceFile>(
        1, 'sourceFiles', $pb.PbFieldType.PM, DebuggedSourceFile.create)
    ..hasRequiredFields = false;

  DebuggedSourceFiles._() : super();
  factory DebuggedSourceFiles() => create();
  factory DebuggedSourceFiles.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DebuggedSourceFiles.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DebuggedSourceFiles clone() => DebuggedSourceFiles()..mergeFromMessage(this);
  DebuggedSourceFiles copyWith(void Function(DebuggedSourceFiles) updates) =>
      super.copyWith((message) => updates(message as DebuggedSourceFiles));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DebuggedSourceFiles create() => DebuggedSourceFiles._();
  DebuggedSourceFiles createEmptyInstance() => create();
  static $pb.PbList<DebuggedSourceFiles> createRepeated() =>
      $pb.PbList<DebuggedSourceFiles>();
  static DebuggedSourceFiles getDefault() =>
      _defaultInstance ??= create()..freeze();
  static DebuggedSourceFiles _defaultInstance;

  $core.List<DebuggedSourceFile> get sourceFiles => $_getList(0);
}
