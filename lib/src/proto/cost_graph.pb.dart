///
//  Generated code. Do not modify.
//  source: cost_graph.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'tensor_shape.pb.dart' as $0;

import 'types.pbenum.dart' as $1;

class CostGraphDef_Node_InputInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'CostGraphDef.Node.InputInfo',
      package: const $pb.PackageName('tensorflow'))
    ..a<$core.int>(1, 'precedingNode', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'precedingPort', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  CostGraphDef_Node_InputInfo._() : super();
  factory CostGraphDef_Node_InputInfo() => create();
  factory CostGraphDef_Node_InputInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CostGraphDef_Node_InputInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CostGraphDef_Node_InputInfo clone() =>
      CostGraphDef_Node_InputInfo()..mergeFromMessage(this);
  CostGraphDef_Node_InputInfo copyWith(
          void Function(CostGraphDef_Node_InputInfo) updates) =>
      super.copyWith(
          (message) => updates(message as CostGraphDef_Node_InputInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CostGraphDef_Node_InputInfo create() =>
      CostGraphDef_Node_InputInfo._();
  CostGraphDef_Node_InputInfo createEmptyInstance() => create();
  static $pb.PbList<CostGraphDef_Node_InputInfo> createRepeated() =>
      $pb.PbList<CostGraphDef_Node_InputInfo>();
  static CostGraphDef_Node_InputInfo getDefault() =>
      _defaultInstance ??= create()..freeze();
  static CostGraphDef_Node_InputInfo _defaultInstance;

  $core.int get precedingNode => $_get(0, 0);
  set precedingNode($core.int v) {
    $_setSignedInt32(0, v);
  }

  $core.bool hasPrecedingNode() => $_has(0);
  void clearPrecedingNode() => clearField(1);

  $core.int get precedingPort => $_get(1, 0);
  set precedingPort($core.int v) {
    $_setSignedInt32(1, v);
  }

  $core.bool hasPrecedingPort() => $_has(1);
  void clearPrecedingPort() => clearField(2);
}

class CostGraphDef_Node_OutputInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'CostGraphDef.Node.OutputInfo',
      package: const $pb.PackageName('tensorflow'))
    ..aInt64(1, 'size')
    ..aInt64(2, 'aliasInputPort')
    ..a<$0.TensorShapeProto>(3, 'shape', $pb.PbFieldType.OM,
        $0.TensorShapeProto.getDefault, $0.TensorShapeProto.create)
    ..e<$1.DataType>(4, 'dtype', $pb.PbFieldType.OE, $1.DataType.DT_INVALID,
        $1.DataType.valueOf, $1.DataType.values)
    ..hasRequiredFields = false;

  CostGraphDef_Node_OutputInfo._() : super();
  factory CostGraphDef_Node_OutputInfo() => create();
  factory CostGraphDef_Node_OutputInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CostGraphDef_Node_OutputInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CostGraphDef_Node_OutputInfo clone() =>
      CostGraphDef_Node_OutputInfo()..mergeFromMessage(this);
  CostGraphDef_Node_OutputInfo copyWith(
          void Function(CostGraphDef_Node_OutputInfo) updates) =>
      super.copyWith(
          (message) => updates(message as CostGraphDef_Node_OutputInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CostGraphDef_Node_OutputInfo create() =>
      CostGraphDef_Node_OutputInfo._();
  CostGraphDef_Node_OutputInfo createEmptyInstance() => create();
  static $pb.PbList<CostGraphDef_Node_OutputInfo> createRepeated() =>
      $pb.PbList<CostGraphDef_Node_OutputInfo>();
  static CostGraphDef_Node_OutputInfo getDefault() =>
      _defaultInstance ??= create()..freeze();
  static CostGraphDef_Node_OutputInfo _defaultInstance;

  Int64 get size => $_getI64(0);
  set size(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasSize() => $_has(0);
  void clearSize() => clearField(1);

  Int64 get aliasInputPort => $_getI64(1);
  set aliasInputPort(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasAliasInputPort() => $_has(1);
  void clearAliasInputPort() => clearField(2);

  $0.TensorShapeProto get shape => $_getN(2);
  set shape($0.TensorShapeProto v) {
    setField(3, v);
  }

  $core.bool hasShape() => $_has(2);
  void clearShape() => clearField(3);

  $1.DataType get dtype => $_getN(3);
  set dtype($1.DataType v) {
    setField(4, v);
  }

  $core.bool hasDtype() => $_has(3);
  void clearDtype() => clearField(4);
}

class CostGraphDef_Node extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CostGraphDef.Node',
      package: const $pb.PackageName('tensorflow'))
    ..aOS(1, 'name')
    ..aOS(2, 'device')
    ..a<$core.int>(3, 'id', $pb.PbFieldType.O3)
    ..pc<CostGraphDef_Node_InputInfo>(
        4, 'inputInfo', $pb.PbFieldType.PM, CostGraphDef_Node_InputInfo.create)
    ..pc<CostGraphDef_Node_OutputInfo>(5, 'outputInfo', $pb.PbFieldType.PM,
        CostGraphDef_Node_OutputInfo.create)
    ..aInt64(6, 'temporaryMemorySize')
    ..aOB(7, 'isFinal')
    ..p<$core.int>(8, 'controlInput', $pb.PbFieldType.P3)
    ..aInt64(9, 'computeCost')
    ..aInt64(10, 'hostTempMemorySize')
    ..aInt64(11, 'deviceTempMemorySize')
    ..aInt64(12, 'persistentMemorySize')
    ..aInt64(14, 'computeTime')
    ..aInt64(15, 'memoryTime')
    ..aInt64(16, 'devicePersistentMemorySize')
    ..hasRequiredFields = false;

  CostGraphDef_Node._() : super();
  factory CostGraphDef_Node() => create();
  factory CostGraphDef_Node.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CostGraphDef_Node.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CostGraphDef_Node clone() => CostGraphDef_Node()..mergeFromMessage(this);
  CostGraphDef_Node copyWith(void Function(CostGraphDef_Node) updates) =>
      super.copyWith((message) => updates(message as CostGraphDef_Node));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CostGraphDef_Node create() => CostGraphDef_Node._();
  CostGraphDef_Node createEmptyInstance() => create();
  static $pb.PbList<CostGraphDef_Node> createRepeated() =>
      $pb.PbList<CostGraphDef_Node>();
  static CostGraphDef_Node getDefault() =>
      _defaultInstance ??= create()..freeze();
  static CostGraphDef_Node _defaultInstance;

  $core.String get name => $_getS(0, '');
  set name($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasName() => $_has(0);
  void clearName() => clearField(1);

  $core.String get device => $_getS(1, '');
  set device($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasDevice() => $_has(1);
  void clearDevice() => clearField(2);

  $core.int get id => $_get(2, 0);
  set id($core.int v) {
    $_setSignedInt32(2, v);
  }

  $core.bool hasId() => $_has(2);
  void clearId() => clearField(3);

  $core.List<CostGraphDef_Node_InputInfo> get inputInfo => $_getList(3);

  $core.List<CostGraphDef_Node_OutputInfo> get outputInfo => $_getList(4);

  Int64 get temporaryMemorySize => $_getI64(5);
  set temporaryMemorySize(Int64 v) {
    $_setInt64(5, v);
  }

  $core.bool hasTemporaryMemorySize() => $_has(5);
  void clearTemporaryMemorySize() => clearField(6);

  $core.bool get isFinal => $_get(6, false);
  set isFinal($core.bool v) {
    $_setBool(6, v);
  }

  $core.bool hasIsFinal() => $_has(6);
  void clearIsFinal() => clearField(7);

  $core.List<$core.int> get controlInput => $_getList(7);

  Int64 get computeCost => $_getI64(8);
  set computeCost(Int64 v) {
    $_setInt64(8, v);
  }

  $core.bool hasComputeCost() => $_has(8);
  void clearComputeCost() => clearField(9);

  @$core.Deprecated('This field is deprecated.')
  Int64 get hostTempMemorySize => $_getI64(9);
  @$core.Deprecated('This field is deprecated.')
  set hostTempMemorySize(Int64 v) {
    $_setInt64(9, v);
  }

  @$core.Deprecated('This field is deprecated.')
  $core.bool hasHostTempMemorySize() => $_has(9);
  @$core.Deprecated('This field is deprecated.')
  void clearHostTempMemorySize() => clearField(10);

  @$core.Deprecated('This field is deprecated.')
  Int64 get deviceTempMemorySize => $_getI64(10);
  @$core.Deprecated('This field is deprecated.')
  set deviceTempMemorySize(Int64 v) {
    $_setInt64(10, v);
  }

  @$core.Deprecated('This field is deprecated.')
  $core.bool hasDeviceTempMemorySize() => $_has(10);
  @$core.Deprecated('This field is deprecated.')
  void clearDeviceTempMemorySize() => clearField(11);

  Int64 get persistentMemorySize => $_getI64(11);
  set persistentMemorySize(Int64 v) {
    $_setInt64(11, v);
  }

  $core.bool hasPersistentMemorySize() => $_has(11);
  void clearPersistentMemorySize() => clearField(12);

  Int64 get computeTime => $_getI64(12);
  set computeTime(Int64 v) {
    $_setInt64(12, v);
  }

  $core.bool hasComputeTime() => $_has(12);
  void clearComputeTime() => clearField(14);

  Int64 get memoryTime => $_getI64(13);
  set memoryTime(Int64 v) {
    $_setInt64(13, v);
  }

  $core.bool hasMemoryTime() => $_has(13);
  void clearMemoryTime() => clearField(15);

  @$core.Deprecated('This field is deprecated.')
  Int64 get devicePersistentMemorySize => $_getI64(14);
  @$core.Deprecated('This field is deprecated.')
  set devicePersistentMemorySize(Int64 v) {
    $_setInt64(14, v);
  }

  @$core.Deprecated('This field is deprecated.')
  $core.bool hasDevicePersistentMemorySize() => $_has(14);
  @$core.Deprecated('This field is deprecated.')
  void clearDevicePersistentMemorySize() => clearField(16);
}

class CostGraphDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CostGraphDef',
      package: const $pb.PackageName('tensorflow'))
    ..pc<CostGraphDef_Node>(
        1, 'node', $pb.PbFieldType.PM, CostGraphDef_Node.create)
    ..hasRequiredFields = false;

  CostGraphDef._() : super();
  factory CostGraphDef() => create();
  factory CostGraphDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CostGraphDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CostGraphDef clone() => CostGraphDef()..mergeFromMessage(this);
  CostGraphDef copyWith(void Function(CostGraphDef) updates) =>
      super.copyWith((message) => updates(message as CostGraphDef));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CostGraphDef create() => CostGraphDef._();
  CostGraphDef createEmptyInstance() => create();
  static $pb.PbList<CostGraphDef> createRepeated() =>
      $pb.PbList<CostGraphDef>();
  static CostGraphDef getDefault() => _defaultInstance ??= create()..freeze();
  static CostGraphDef _defaultInstance;

  $core.List<CostGraphDef_Node> get node => $_getList(0);
}
