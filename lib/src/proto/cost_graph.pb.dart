///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_cost_graph;

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart';

import 'tensor_shape.pb.dart';

import 'types.pbenum.dart';

class CostGraphDef_Node_InputInfo extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CostGraphDef_Node_InputInfo')
    ..a<int>(1, 'precedingNode', PbFieldType.O3)
    ..a<int>(2, 'precedingPort', PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  CostGraphDef_Node_InputInfo() : super();
  CostGraphDef_Node_InputInfo.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CostGraphDef_Node_InputInfo.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CostGraphDef_Node_InputInfo clone() => new CostGraphDef_Node_InputInfo()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CostGraphDef_Node_InputInfo create() => new CostGraphDef_Node_InputInfo();
  static PbList<CostGraphDef_Node_InputInfo> createRepeated() => new PbList<CostGraphDef_Node_InputInfo>();
  static CostGraphDef_Node_InputInfo getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyCostGraphDef_Node_InputInfo();
    return _defaultInstance;
  }
  static CostGraphDef_Node_InputInfo _defaultInstance;
  static void $checkItem(CostGraphDef_Node_InputInfo v) {
    if (v is! CostGraphDef_Node_InputInfo) checkItemFailed(v, 'CostGraphDef_Node_InputInfo');
  }

  int get precedingNode => $_get(0, 0);
  set precedingNode(int v) { $_setUnsignedInt32(0, v); }
  bool hasPrecedingNode() => $_has(0);
  void clearPrecedingNode() => clearField(1);

  int get precedingPort => $_get(1, 0);
  set precedingPort(int v) { $_setUnsignedInt32(1, v); }
  bool hasPrecedingPort() => $_has(1);
  void clearPrecedingPort() => clearField(2);
}

class _ReadonlyCostGraphDef_Node_InputInfo extends CostGraphDef_Node_InputInfo with ReadonlyMessageMixin {}

class CostGraphDef_Node_OutputInfo extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CostGraphDef_Node_OutputInfo')
    ..aInt64(1, 'size')
    ..aInt64(2, 'aliasInputPort')
    ..a<TensorShapeProto>(3, 'shape', PbFieldType.OM, TensorShapeProto.getDefault, TensorShapeProto.create)
    ..e<DataType>(4, 'dtype', PbFieldType.OE, DataType.DT_INVALID, DataType.valueOf, DataType.values)
    ..hasRequiredFields = false
  ;

  CostGraphDef_Node_OutputInfo() : super();
  CostGraphDef_Node_OutputInfo.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CostGraphDef_Node_OutputInfo.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CostGraphDef_Node_OutputInfo clone() => new CostGraphDef_Node_OutputInfo()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CostGraphDef_Node_OutputInfo create() => new CostGraphDef_Node_OutputInfo();
  static PbList<CostGraphDef_Node_OutputInfo> createRepeated() => new PbList<CostGraphDef_Node_OutputInfo>();
  static CostGraphDef_Node_OutputInfo getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyCostGraphDef_Node_OutputInfo();
    return _defaultInstance;
  }
  static CostGraphDef_Node_OutputInfo _defaultInstance;
  static void $checkItem(CostGraphDef_Node_OutputInfo v) {
    if (v is! CostGraphDef_Node_OutputInfo) checkItemFailed(v, 'CostGraphDef_Node_OutputInfo');
  }

  Int64 get size => $_getI64(0);
  set size(Int64 v) { $_setInt64(0, v); }
  bool hasSize() => $_has(0);
  void clearSize() => clearField(1);

  Int64 get aliasInputPort => $_getI64(1);
  set aliasInputPort(Int64 v) { $_setInt64(1, v); }
  bool hasAliasInputPort() => $_has(1);
  void clearAliasInputPort() => clearField(2);

  TensorShapeProto get shape => $_getN(2);
  set shape(TensorShapeProto v) { setField(3, v); }
  bool hasShape() => $_has(2);
  void clearShape() => clearField(3);

  DataType get dtype => $_getN(3);
  set dtype(DataType v) { setField(4, v); }
  bool hasDtype() => $_has(3);
  void clearDtype() => clearField(4);
}

class _ReadonlyCostGraphDef_Node_OutputInfo extends CostGraphDef_Node_OutputInfo with ReadonlyMessageMixin {}

class CostGraphDef_Node extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CostGraphDef_Node')
    ..aOS(1, 'name')
    ..aOS(2, 'device')
    ..a<int>(3, 'id', PbFieldType.O3)
    ..pp<CostGraphDef_Node_InputInfo>(4, 'inputInfo', PbFieldType.PM, CostGraphDef_Node_InputInfo.$checkItem, CostGraphDef_Node_InputInfo.create)
    ..pp<CostGraphDef_Node_OutputInfo>(5, 'outputInfo', PbFieldType.PM, CostGraphDef_Node_OutputInfo.$checkItem, CostGraphDef_Node_OutputInfo.create)
    ..aInt64(6, 'temporaryMemorySize')
    ..aOB(7, 'isFinal')
    ..p<int>(8, 'controlInput', PbFieldType.P3)
    ..aInt64(9, 'computeCost')
    ..aInt64(10, 'hostTempMemorySize')
    ..aInt64(11, 'deviceTempMemorySize')
    ..aInt64(12, 'persistentMemorySize')
    ..aInt64(14, 'computeTime')
    ..aInt64(15, 'memoryTime')
    ..aInt64(16, 'devicePersistentMemorySize')
    ..hasRequiredFields = false
  ;

  CostGraphDef_Node() : super();
  CostGraphDef_Node.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CostGraphDef_Node.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CostGraphDef_Node clone() => new CostGraphDef_Node()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CostGraphDef_Node create() => new CostGraphDef_Node();
  static PbList<CostGraphDef_Node> createRepeated() => new PbList<CostGraphDef_Node>();
  static CostGraphDef_Node getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyCostGraphDef_Node();
    return _defaultInstance;
  }
  static CostGraphDef_Node _defaultInstance;
  static void $checkItem(CostGraphDef_Node v) {
    if (v is! CostGraphDef_Node) checkItemFailed(v, 'CostGraphDef_Node');
  }

  String get name => $_getS(0, '');
  set name(String v) { $_setString(0, v); }
  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  String get device => $_getS(1, '');
  set device(String v) { $_setString(1, v); }
  bool hasDevice() => $_has(1);
  void clearDevice() => clearField(2);

  int get id => $_get(2, 0);
  set id(int v) { $_setUnsignedInt32(2, v); }
  bool hasId() => $_has(2);
  void clearId() => clearField(3);

  List<CostGraphDef_Node_InputInfo> get inputInfo => $_getList(3);

  List<CostGraphDef_Node_OutputInfo> get outputInfo => $_getList(4);

  Int64 get temporaryMemorySize => $_getI64(5);
  set temporaryMemorySize(Int64 v) { $_setInt64(5, v); }
  bool hasTemporaryMemorySize() => $_has(5);
  void clearTemporaryMemorySize() => clearField(6);

  bool get isFinal => $_get(6, false);
  set isFinal(bool v) { $_setBool(6, v); }
  bool hasIsFinal() => $_has(6);
  void clearIsFinal() => clearField(7);

  List<int> get controlInput => $_getList(7);

  Int64 get computeCost => $_getI64(8);
  set computeCost(Int64 v) { $_setInt64(8, v); }
  bool hasComputeCost() => $_has(8);
  void clearComputeCost() => clearField(9);

  Int64 get hostTempMemorySize => $_getI64(9);
  set hostTempMemorySize(Int64 v) { $_setInt64(9, v); }
  bool hasHostTempMemorySize() => $_has(9);
  void clearHostTempMemorySize() => clearField(10);

  Int64 get deviceTempMemorySize => $_getI64(10);
  set deviceTempMemorySize(Int64 v) { $_setInt64(10, v); }
  bool hasDeviceTempMemorySize() => $_has(10);
  void clearDeviceTempMemorySize() => clearField(11);

  Int64 get persistentMemorySize => $_getI64(11);
  set persistentMemorySize(Int64 v) { $_setInt64(11, v); }
  bool hasPersistentMemorySize() => $_has(11);
  void clearPersistentMemorySize() => clearField(12);

  Int64 get computeTime => $_getI64(12);
  set computeTime(Int64 v) { $_setInt64(12, v); }
  bool hasComputeTime() => $_has(12);
  void clearComputeTime() => clearField(14);

  Int64 get memoryTime => $_getI64(13);
  set memoryTime(Int64 v) { $_setInt64(13, v); }
  bool hasMemoryTime() => $_has(13);
  void clearMemoryTime() => clearField(15);

  Int64 get devicePersistentMemorySize => $_getI64(14);
  set devicePersistentMemorySize(Int64 v) { $_setInt64(14, v); }
  bool hasDevicePersistentMemorySize() => $_has(14);
  void clearDevicePersistentMemorySize() => clearField(16);
}

class _ReadonlyCostGraphDef_Node extends CostGraphDef_Node with ReadonlyMessageMixin {}

class CostGraphDef extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CostGraphDef')
    ..pp<CostGraphDef_Node>(1, 'node', PbFieldType.PM, CostGraphDef_Node.$checkItem, CostGraphDef_Node.create)
    ..hasRequiredFields = false
  ;

  CostGraphDef() : super();
  CostGraphDef.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CostGraphDef.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CostGraphDef clone() => new CostGraphDef()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CostGraphDef create() => new CostGraphDef();
  static PbList<CostGraphDef> createRepeated() => new PbList<CostGraphDef>();
  static CostGraphDef getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyCostGraphDef();
    return _defaultInstance;
  }
  static CostGraphDef _defaultInstance;
  static void $checkItem(CostGraphDef v) {
    if (v is! CostGraphDef) checkItemFailed(v, 'CostGraphDef');
  }

  List<CostGraphDef_Node> get node => $_getList(0);
}

class _ReadonlyCostGraphDef extends CostGraphDef with ReadonlyMessageMixin {}

