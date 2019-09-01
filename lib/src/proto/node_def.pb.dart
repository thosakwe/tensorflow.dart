///
//  Generated code. Do not modify.
//  source: node_def.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'attr_value.pb.dart' as $0;

class NodeDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo('NodeDef', package: const $pb.PackageName('tensorflow'))
        ..aOS(1, 'name')
        ..aOS(2, 'op')
        ..pPS(3, 'input')
        ..aOS(4, 'device')
        ..m<$core.String, $0.AttrValue>(
            5,
            'attr',
            'NodeDef.AttrEntry',
            $pb.PbFieldType.OS,
            $pb.PbFieldType.OM,
            $0.AttrValue.create,
            null,
            null,
            const $pb.PackageName('tensorflow'))
        ..hasRequiredFields = false;

  NodeDef._() : super();
  factory NodeDef() => create();
  factory NodeDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NodeDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NodeDef clone() => NodeDef()..mergeFromMessage(this);
  NodeDef copyWith(void Function(NodeDef) updates) =>
      super.copyWith((message) => updates(message as NodeDef));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NodeDef create() => NodeDef._();
  NodeDef createEmptyInstance() => create();
  static $pb.PbList<NodeDef> createRepeated() => $pb.PbList<NodeDef>();
  static NodeDef getDefault() => _defaultInstance ??= create()..freeze();
  static NodeDef _defaultInstance;

  $core.String get name => $_getS(0, '');
  set name($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasName() => $_has(0);
  void clearName() => clearField(1);

  $core.String get op => $_getS(1, '');
  set op($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasOp() => $_has(1);
  void clearOp() => clearField(2);

  $core.List<$core.String> get input => $_getList(2);

  $core.String get device => $_getS(3, '');
  set device($core.String v) {
    $_setString(3, v);
  }

  $core.bool hasDevice() => $_has(3);
  void clearDevice() => clearField(4);

  $core.Map<$core.String, $0.AttrValue> get attr => $_getMap(4);
}
