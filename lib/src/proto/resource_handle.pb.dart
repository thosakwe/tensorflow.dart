///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_resource_handle;

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart';

class ResourceHandleProto extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ResourceHandleProto')
    ..aOS(1, 'device')
    ..aOS(2, 'container')
    ..aOS(3, 'name')
    ..a<Int64>(4, 'hashCode_4', PbFieldType.OU6, Int64.ZERO)
    ..aOS(5, 'maybeTypeName')
    ..hasRequiredFields = false
  ;

  ResourceHandleProto() : super();
  ResourceHandleProto.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ResourceHandleProto.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ResourceHandleProto clone() => new ResourceHandleProto()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ResourceHandleProto create() => new ResourceHandleProto();
  static PbList<ResourceHandleProto> createRepeated() => new PbList<ResourceHandleProto>();
  static ResourceHandleProto getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyResourceHandleProto();
    return _defaultInstance;
  }
  static ResourceHandleProto _defaultInstance;
  static void $checkItem(ResourceHandleProto v) {
    if (v is! ResourceHandleProto) checkItemFailed(v, 'ResourceHandleProto');
  }

  String get device => $_getS(0, '');
  set device(String v) { $_setString(0, v); }
  bool hasDevice() => $_has(0);
  void clearDevice() => clearField(1);

  String get container => $_getS(1, '');
  set container(String v) { $_setString(1, v); }
  bool hasContainer() => $_has(1);
  void clearContainer() => clearField(2);

  String get name => $_getS(2, '');
  set name(String v) { $_setString(2, v); }
  bool hasName() => $_has(2);
  void clearName() => clearField(3);

  Int64 get hashCode_4 => $_getI64(3);
  set hashCode_4(Int64 v) { $_setInt64(3, v); }
  bool hasHashCode_4() => $_has(3);
  void clearHashCode_4() => clearField(4);

  String get maybeTypeName => $_getS(4, '');
  set maybeTypeName(String v) { $_setString(4, v); }
  bool hasMaybeTypeName() => $_has(4);
  void clearMaybeTypeName() => clearField(5);
}

class _ReadonlyResourceHandleProto extends ResourceHandleProto with ReadonlyMessageMixin {}

