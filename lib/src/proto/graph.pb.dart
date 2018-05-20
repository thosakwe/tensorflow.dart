///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_graph;

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

import 'node_def.pb.dart';
import 'function.pb.dart';
import 'versions.pb.dart';

class GraphDef extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('GraphDef')
    ..pp<NodeDef>(1, 'node', PbFieldType.PM, NodeDef.$checkItem, NodeDef.create)
    ..a<FunctionDefLibrary>(2, 'library', PbFieldType.OM, FunctionDefLibrary.getDefault, FunctionDefLibrary.create)
    ..a<int>(3, 'version', PbFieldType.O3)
    ..a<VersionDef>(4, 'versions', PbFieldType.OM, VersionDef.getDefault, VersionDef.create)
    ..hasRequiredFields = false
  ;

  GraphDef() : super();
  GraphDef.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GraphDef.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GraphDef clone() => new GraphDef()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static GraphDef create() => new GraphDef();
  static PbList<GraphDef> createRepeated() => new PbList<GraphDef>();
  static GraphDef getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyGraphDef();
    return _defaultInstance;
  }
  static GraphDef _defaultInstance;
  static void $checkItem(GraphDef v) {
    if (v is! GraphDef) checkItemFailed(v, 'GraphDef');
  }

  List<NodeDef> get node => $_getList(0);

  FunctionDefLibrary get library => $_getN(1);
  set library(FunctionDefLibrary v) { setField(2, v); }
  bool hasLibrary() => $_has(1);
  void clearLibrary() => clearField(2);

  int get version => $_get(2, 0);
  set version(int v) { $_setUnsignedInt32(2, v); }
  bool hasVersion() => $_has(2);
  void clearVersion() => clearField(3);

  VersionDef get versions => $_getN(3);
  set versions(VersionDef v) { setField(4, v); }
  bool hasVersions() => $_has(3);
  void clearVersions() => clearField(4);
}

class _ReadonlyGraphDef extends GraphDef with ReadonlyMessageMixin {}

