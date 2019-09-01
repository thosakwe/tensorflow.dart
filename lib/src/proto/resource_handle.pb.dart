///
//  Generated code. Do not modify.
//  source: resource_handle.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class ResourceHandleProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ResourceHandleProto',
      package: const $pb.PackageName('tensorflow'))
    ..aOS(1, 'device')
    ..aOS(2, 'container')
    ..aOS(3, 'name')
    ..a<Int64>(4, 'hashCode_4', $pb.PbFieldType.OU6, Int64.ZERO)
    ..aOS(5, 'maybeTypeName')
    ..hasRequiredFields = false;

  ResourceHandleProto._() : super();
  factory ResourceHandleProto() => create();
  factory ResourceHandleProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResourceHandleProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ResourceHandleProto clone() => ResourceHandleProto()..mergeFromMessage(this);
  ResourceHandleProto copyWith(void Function(ResourceHandleProto) updates) =>
      super.copyWith((message) => updates(message as ResourceHandleProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResourceHandleProto create() => ResourceHandleProto._();
  ResourceHandleProto createEmptyInstance() => create();
  static $pb.PbList<ResourceHandleProto> createRepeated() =>
      $pb.PbList<ResourceHandleProto>();
  static ResourceHandleProto getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ResourceHandleProto _defaultInstance;

  $core.String get device => $_getS(0, '');
  set device($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasDevice() => $_has(0);
  void clearDevice() => clearField(1);

  $core.String get container => $_getS(1, '');
  set container($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasContainer() => $_has(1);
  void clearContainer() => clearField(2);

  $core.String get name => $_getS(2, '');
  set name($core.String v) {
    $_setString(2, v);
  }

  $core.bool hasName() => $_has(2);
  void clearName() => clearField(3);

  Int64 get hashCode_4 => $_getI64(3);
  set hashCode_4(Int64 v) {
    $_setInt64(3, v);
  }

  $core.bool hasHashCode_4() => $_has(3);
  void clearHashCode_4() => clearField(4);

  $core.String get maybeTypeName => $_getS(4, '');
  set maybeTypeName($core.String v) {
    $_setString(4, v);
  }

  $core.bool hasMaybeTypeName() => $_has(4);
  void clearMaybeTypeName() => clearField(5);
}
