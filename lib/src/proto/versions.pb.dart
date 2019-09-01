///
//  Generated code. Do not modify.
//  source: versions.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

class VersionDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VersionDef',
      package: const $pb.PackageName('tensorflow'))
    ..a<$core.int>(1, 'producer', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'minConsumer', $pb.PbFieldType.O3)
    ..p<$core.int>(3, 'badConsumers', $pb.PbFieldType.P3)
    ..hasRequiredFields = false;

  VersionDef._() : super();
  factory VersionDef() => create();
  factory VersionDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VersionDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  VersionDef clone() => VersionDef()..mergeFromMessage(this);
  VersionDef copyWith(void Function(VersionDef) updates) =>
      super.copyWith((message) => updates(message as VersionDef));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VersionDef create() => VersionDef._();
  VersionDef createEmptyInstance() => create();
  static $pb.PbList<VersionDef> createRepeated() => $pb.PbList<VersionDef>();
  static VersionDef getDefault() => _defaultInstance ??= create()..freeze();
  static VersionDef _defaultInstance;

  $core.int get producer => $_get(0, 0);
  set producer($core.int v) {
    $_setSignedInt32(0, v);
  }

  $core.bool hasProducer() => $_has(0);
  void clearProducer() => clearField(1);

  $core.int get minConsumer => $_get(1, 0);
  set minConsumer($core.int v) {
    $_setSignedInt32(1, v);
  }

  $core.bool hasMinConsumer() => $_has(1);
  void clearMinConsumer() => clearField(2);

  $core.List<$core.int> get badConsumers => $_getList(2);
}
