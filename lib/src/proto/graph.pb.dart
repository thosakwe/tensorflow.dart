///
//  Generated code. Do not modify.
//  source: graph.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'node_def.pb.dart' as $0;
import 'function.pb.dart' as $1;
import 'versions.pb.dart' as $2;

class GraphDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo('GraphDef', package: const $pb.PackageName('tensorflow'))
        ..pc<$0.NodeDef>(1, 'node', $pb.PbFieldType.PM, $0.NodeDef.create)
        ..a<$1.FunctionDefLibrary>(2, 'library', $pb.PbFieldType.OM,
            $1.FunctionDefLibrary.getDefault, $1.FunctionDefLibrary.create)
        ..a<$core.int>(3, 'version', $pb.PbFieldType.O3)
        ..a<$2.VersionDef>(4, 'versions', $pb.PbFieldType.OM,
            $2.VersionDef.getDefault, $2.VersionDef.create)
        ..hasRequiredFields = false;

  GraphDef._() : super();
  factory GraphDef() => create();
  factory GraphDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GraphDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GraphDef clone() => GraphDef()..mergeFromMessage(this);
  GraphDef copyWith(void Function(GraphDef) updates) =>
      super.copyWith((message) => updates(message as GraphDef));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GraphDef create() => GraphDef._();
  GraphDef createEmptyInstance() => create();
  static $pb.PbList<GraphDef> createRepeated() => $pb.PbList<GraphDef>();
  static GraphDef getDefault() => _defaultInstance ??= create()..freeze();
  static GraphDef _defaultInstance;

  $core.List<$0.NodeDef> get node => $_getList(0);

  $1.FunctionDefLibrary get library => $_getN(1);
  set library($1.FunctionDefLibrary v) {
    setField(2, v);
  }

  $core.bool hasLibrary() => $_has(1);
  void clearLibrary() => clearField(2);

  @$core.Deprecated('This field is deprecated.')
  $core.int get version => $_get(2, 0);
  @$core.Deprecated('This field is deprecated.')
  set version($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$core.Deprecated('This field is deprecated.')
  $core.bool hasVersion() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  void clearVersion() => clearField(3);

  $2.VersionDef get versions => $_getN(3);
  set versions($2.VersionDef v) {
    setField(4, v);
  }

  $core.bool hasVersions() => $_has(3);
  void clearVersions() => clearField(4);
}
