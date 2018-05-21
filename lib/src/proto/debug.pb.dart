///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_debug;

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart';

class DebugTensorWatch extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('DebugTensorWatch')
    ..aOS(1, 'nodeName')
    ..a<int>(2, 'outputSlot', PbFieldType.O3)
    ..pPS(3, 'debugOps')
    ..pPS(4, 'debugUrls')
    ..aOB(5, 'tolerateDebugOpCreationFailures')
    ..hasRequiredFields = false;

  DebugTensorWatch() : super();
  DebugTensorWatch.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  DebugTensorWatch.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  DebugTensorWatch clone() => new DebugTensorWatch()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static DebugTensorWatch create() => new DebugTensorWatch();
  static PbList<DebugTensorWatch> createRepeated() =>
      new PbList<DebugTensorWatch>();
  static DebugTensorWatch getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyDebugTensorWatch();
    return _defaultInstance;
  }

  static DebugTensorWatch _defaultInstance;
  static void $checkItem(DebugTensorWatch v) {
    if (v is! DebugTensorWatch) checkItemFailed(v, 'DebugTensorWatch');
  }

  String get nodeName => $_getS(0, '');
  set nodeName(String v) {
    $_setString(0, v);
  }

  bool hasNodeName() => $_has(0);
  void clearNodeName() => clearField(1);

  int get outputSlot => $_get(1, 0);
  set outputSlot(int v) {
    $_setUnsignedInt32(1, v);
  }

  bool hasOutputSlot() => $_has(1);
  void clearOutputSlot() => clearField(2);

  List<String> get debugOps => $_getList(2);

  List<String> get debugUrls => $_getList(3);

  bool get tolerateDebugOpCreationFailures => $_get(4, false);
  set tolerateDebugOpCreationFailures(bool v) {
    $_setBool(4, v);
  }

  bool hasTolerateDebugOpCreationFailures() => $_has(4);
  void clearTolerateDebugOpCreationFailures() => clearField(5);
}

class _ReadonlyDebugTensorWatch extends DebugTensorWatch
    with ReadonlyMessageMixin {}

class DebugOptions extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('DebugOptions')
    ..pp<DebugTensorWatch>(4, 'debugTensorWatchOpts', PbFieldType.PM,
        DebugTensorWatch.$checkItem, DebugTensorWatch.create)
    ..aInt64(10, 'globalStep')
    ..hasRequiredFields = false;

  DebugOptions() : super();
  DebugOptions.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  DebugOptions.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  DebugOptions clone() => new DebugOptions()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static DebugOptions create() => new DebugOptions();
  static PbList<DebugOptions> createRepeated() => new PbList<DebugOptions>();
  static DebugOptions getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyDebugOptions();
    return _defaultInstance;
  }

  static DebugOptions _defaultInstance;
  static void $checkItem(DebugOptions v) {
    if (v is! DebugOptions) checkItemFailed(v, 'DebugOptions');
  }

  List<DebugTensorWatch> get debugTensorWatchOpts => $_getList(0);

  Int64 get globalStep => $_getI64(1);
  set globalStep(Int64 v) {
    $_setInt64(1, v);
  }

  bool hasGlobalStep() => $_has(1);
  void clearGlobalStep() => clearField(10);
}

class _ReadonlyDebugOptions extends DebugOptions with ReadonlyMessageMixin {}

class DebuggedSourceFile extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('DebuggedSourceFile')
    ..aOS(1, 'host')
    ..aOS(2, 'filePath')
    ..aInt64(3, 'lastModified')
    ..aInt64(4, 'bytes')
    ..pPS(5, 'lines')
    ..hasRequiredFields = false;

  DebuggedSourceFile() : super();
  DebuggedSourceFile.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  DebuggedSourceFile.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  DebuggedSourceFile clone() =>
      new DebuggedSourceFile()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static DebuggedSourceFile create() => new DebuggedSourceFile();
  static PbList<DebuggedSourceFile> createRepeated() =>
      new PbList<DebuggedSourceFile>();
  static DebuggedSourceFile getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyDebuggedSourceFile();
    return _defaultInstance;
  }

  static DebuggedSourceFile _defaultInstance;
  static void $checkItem(DebuggedSourceFile v) {
    if (v is! DebuggedSourceFile) checkItemFailed(v, 'DebuggedSourceFile');
  }

  String get host => $_getS(0, '');
  set host(String v) {
    $_setString(0, v);
  }

  bool hasHost() => $_has(0);
  void clearHost() => clearField(1);

  String get filePath => $_getS(1, '');
  set filePath(String v) {
    $_setString(1, v);
  }

  bool hasFilePath() => $_has(1);
  void clearFilePath() => clearField(2);

  Int64 get lastModified => $_getI64(2);
  set lastModified(Int64 v) {
    $_setInt64(2, v);
  }

  bool hasLastModified() => $_has(2);
  void clearLastModified() => clearField(3);

  Int64 get bytes => $_getI64(3);
  set bytes(Int64 v) {
    $_setInt64(3, v);
  }

  bool hasBytes() => $_has(3);
  void clearBytes() => clearField(4);

  List<String> get lines => $_getList(4);
}

class _ReadonlyDebuggedSourceFile extends DebuggedSourceFile
    with ReadonlyMessageMixin {}

class DebuggedSourceFiles extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('DebuggedSourceFiles')
    ..pp<DebuggedSourceFile>(1, 'sourceFiles', PbFieldType.PM,
        DebuggedSourceFile.$checkItem, DebuggedSourceFile.create)
    ..hasRequiredFields = false;

  DebuggedSourceFiles() : super();
  DebuggedSourceFiles.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  DebuggedSourceFiles.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  DebuggedSourceFiles clone() =>
      new DebuggedSourceFiles()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static DebuggedSourceFiles create() => new DebuggedSourceFiles();
  static PbList<DebuggedSourceFiles> createRepeated() =>
      new PbList<DebuggedSourceFiles>();
  static DebuggedSourceFiles getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyDebuggedSourceFiles();
    return _defaultInstance;
  }

  static DebuggedSourceFiles _defaultInstance;
  static void $checkItem(DebuggedSourceFiles v) {
    if (v is! DebuggedSourceFiles) checkItemFailed(v, 'DebuggedSourceFiles');
  }

  List<DebuggedSourceFile> get sourceFiles => $_getList(0);
}

class _ReadonlyDebuggedSourceFiles extends DebuggedSourceFiles
    with ReadonlyMessageMixin {}
