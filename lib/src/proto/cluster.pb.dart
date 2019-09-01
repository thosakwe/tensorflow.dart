///
//  Generated code. Do not modify.
//  source: cluster.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

class JobDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo('JobDef', package: const $pb.PackageName('tensorflow'))
        ..aOS(1, 'name')
        ..m<$core.int, $core.String>(
            2,
            'tasks',
            'JobDef.TasksEntry',
            $pb.PbFieldType.O3,
            $pb.PbFieldType.OS,
            null,
            null,
            null,
            const $pb.PackageName('tensorflow'))
        ..hasRequiredFields = false;

  JobDef._() : super();
  factory JobDef() => create();
  factory JobDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory JobDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  JobDef clone() => JobDef()..mergeFromMessage(this);
  JobDef copyWith(void Function(JobDef) updates) =>
      super.copyWith((message) => updates(message as JobDef));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JobDef create() => JobDef._();
  JobDef createEmptyInstance() => create();
  static $pb.PbList<JobDef> createRepeated() => $pb.PbList<JobDef>();
  static JobDef getDefault() => _defaultInstance ??= create()..freeze();
  static JobDef _defaultInstance;

  $core.String get name => $_getS(0, '');
  set name($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasName() => $_has(0);
  void clearName() => clearField(1);

  $core.Map<$core.int, $core.String> get tasks => $_getMap(1);
}

class ClusterDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ClusterDef',
      package: const $pb.PackageName('tensorflow'))
    ..pc<JobDef>(1, 'job', $pb.PbFieldType.PM, JobDef.create)
    ..hasRequiredFields = false;

  ClusterDef._() : super();
  factory ClusterDef() => create();
  factory ClusterDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ClusterDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ClusterDef clone() => ClusterDef()..mergeFromMessage(this);
  ClusterDef copyWith(void Function(ClusterDef) updates) =>
      super.copyWith((message) => updates(message as ClusterDef));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClusterDef create() => ClusterDef._();
  ClusterDef createEmptyInstance() => create();
  static $pb.PbList<ClusterDef> createRepeated() => $pb.PbList<ClusterDef>();
  static ClusterDef getDefault() => _defaultInstance ??= create()..freeze();
  static ClusterDef _defaultInstance;

  $core.List<JobDef> get job => $_getList(0);
}
