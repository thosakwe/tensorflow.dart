///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_cluster;

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

class JobDef_TasksEntry extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('JobDef_TasksEntry')
    ..a<int>(1, 'key', PbFieldType.O3)
    ..aOS(2, 'value')
    ..hasRequiredFields = false;

  JobDef_TasksEntry() : super();
  JobDef_TasksEntry.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  JobDef_TasksEntry.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  JobDef_TasksEntry clone() => new JobDef_TasksEntry()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static JobDef_TasksEntry create() => new JobDef_TasksEntry();
  static PbList<JobDef_TasksEntry> createRepeated() =>
      new PbList<JobDef_TasksEntry>();
  static JobDef_TasksEntry getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyJobDef_TasksEntry();
    return _defaultInstance;
  }

  static JobDef_TasksEntry _defaultInstance;
  static void $checkItem(JobDef_TasksEntry v) {
    if (v is! JobDef_TasksEntry) checkItemFailed(v, 'JobDef_TasksEntry');
  }

  int get key => $_get(0, 0);
  set key(int v) {
    $_setUnsignedInt32(0, v);
  }

  bool hasKey() => $_has(0);
  void clearKey() => clearField(1);

  String get value => $_getS(1, '');
  set value(String v) {
    $_setString(1, v);
  }

  bool hasValue() => $_has(1);
  void clearValue() => clearField(2);
}

class _ReadonlyJobDef_TasksEntry extends JobDef_TasksEntry
    with ReadonlyMessageMixin {}

class JobDef extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('JobDef')
    ..aOS(1, 'name')
    ..pp<JobDef_TasksEntry>(2, 'tasks', PbFieldType.PM,
        JobDef_TasksEntry.$checkItem, JobDef_TasksEntry.create)
    ..hasRequiredFields = false;

  JobDef() : super();
  JobDef.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  JobDef.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  JobDef clone() => new JobDef()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static JobDef create() => new JobDef();
  static PbList<JobDef> createRepeated() => new PbList<JobDef>();
  static JobDef getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyJobDef();
    return _defaultInstance;
  }

  static JobDef _defaultInstance;
  static void $checkItem(JobDef v) {
    if (v is! JobDef) checkItemFailed(v, 'JobDef');
  }

  String get name => $_getS(0, '');
  set name(String v) {
    $_setString(0, v);
  }

  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  List<JobDef_TasksEntry> get tasks => $_getList(1);
}

class _ReadonlyJobDef extends JobDef with ReadonlyMessageMixin {}

class ClusterDef extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ClusterDef')
    ..pp<JobDef>(1, 'job', PbFieldType.PM, JobDef.$checkItem, JobDef.create)
    ..hasRequiredFields = false;

  ClusterDef() : super();
  ClusterDef.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  ClusterDef.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  ClusterDef clone() => new ClusterDef()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ClusterDef create() => new ClusterDef();
  static PbList<ClusterDef> createRepeated() => new PbList<ClusterDef>();
  static ClusterDef getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyClusterDef();
    return _defaultInstance;
  }

  static ClusterDef _defaultInstance;
  static void $checkItem(ClusterDef v) {
    if (v is! ClusterDef) checkItemFailed(v, 'ClusterDef');
  }

  List<JobDef> get job => $_getList(0);
}

class _ReadonlyClusterDef extends ClusterDef with ReadonlyMessageMixin {}
