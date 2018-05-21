///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_node_def;

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

import 'attr_value.pb.dart';

class NodeDef_AttrEntry extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('NodeDef_AttrEntry')
    ..aOS(1, 'key')
    ..a<AttrValue>(
        2, 'value', PbFieldType.OM, AttrValue.getDefault, AttrValue.create)
    ..hasRequiredFields = false;

  NodeDef_AttrEntry() : super();
  NodeDef_AttrEntry.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  NodeDef_AttrEntry.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  NodeDef_AttrEntry clone() => new NodeDef_AttrEntry()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static NodeDef_AttrEntry create() => new NodeDef_AttrEntry();
  static PbList<NodeDef_AttrEntry> createRepeated() =>
      new PbList<NodeDef_AttrEntry>();
  static NodeDef_AttrEntry getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyNodeDef_AttrEntry();
    return _defaultInstance;
  }

  static NodeDef_AttrEntry _defaultInstance;
  static void $checkItem(NodeDef_AttrEntry v) {
    if (v is! NodeDef_AttrEntry) checkItemFailed(v, 'NodeDef_AttrEntry');
  }

  String get key => $_getS(0, '');
  set key(String v) {
    $_setString(0, v);
  }

  bool hasKey() => $_has(0);
  void clearKey() => clearField(1);

  AttrValue get value => $_getN(1);
  set value(AttrValue v) {
    setField(2, v);
  }

  bool hasValue() => $_has(1);
  void clearValue() => clearField(2);
}

class _ReadonlyNodeDef_AttrEntry extends NodeDef_AttrEntry
    with ReadonlyMessageMixin {}

class NodeDef extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('NodeDef')
    ..aOS(1, 'name')
    ..aOS(2, 'op')
    ..pPS(3, 'input')
    ..aOS(4, 'device')
    ..pp<NodeDef_AttrEntry>(5, 'attr', PbFieldType.PM,
        NodeDef_AttrEntry.$checkItem, NodeDef_AttrEntry.create)
    ..hasRequiredFields = false;

  NodeDef() : super();
  NodeDef.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  NodeDef.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  NodeDef clone() => new NodeDef()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static NodeDef create() => new NodeDef();
  static PbList<NodeDef> createRepeated() => new PbList<NodeDef>();
  static NodeDef getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyNodeDef();
    return _defaultInstance;
  }

  static NodeDef _defaultInstance;
  static void $checkItem(NodeDef v) {
    if (v is! NodeDef) checkItemFailed(v, 'NodeDef');
  }

  String get name => $_getS(0, '');
  set name(String v) {
    $_setString(0, v);
  }

  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  String get op => $_getS(1, '');
  set op(String v) {
    $_setString(1, v);
  }

  bool hasOp() => $_has(1);
  void clearOp() => clearField(2);

  List<String> get input => $_getList(2);

  String get device => $_getS(3, '');
  set device(String v) {
    $_setString(3, v);
  }

  bool hasDevice() => $_has(3);
  void clearDevice() => clearField(4);

  List<NodeDef_AttrEntry> get attr => $_getList(4);
}

class _ReadonlyNodeDef extends NodeDef with ReadonlyMessageMixin {}
