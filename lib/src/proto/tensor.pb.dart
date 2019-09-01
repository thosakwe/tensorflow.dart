///
//  Generated code. Do not modify.
//  source: tensor.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'tensor_shape.pb.dart' as $0;
import 'resource_handle.pb.dart' as $1;

import 'types.pbenum.dart' as $2;

class TensorProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TensorProto',
      package: const $pb.PackageName('tensorflow'))
    ..e<$2.DataType>(1, 'dtype', $pb.PbFieldType.OE, $2.DataType.DT_INVALID,
        $2.DataType.valueOf, $2.DataType.values)
    ..a<$0.TensorShapeProto>(2, 'tensorShape', $pb.PbFieldType.OM,
        $0.TensorShapeProto.getDefault, $0.TensorShapeProto.create)
    ..a<$core.int>(3, 'versionNumber', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(4, 'tensorContent', $pb.PbFieldType.OY)
    ..p<$core.double>(5, 'floatVal', $pb.PbFieldType.KF)
    ..p<$core.double>(6, 'doubleVal', $pb.PbFieldType.KD)
    ..p<$core.int>(7, 'intVal', $pb.PbFieldType.K3)
    ..p<$core.List<$core.int>>(8, 'stringVal', $pb.PbFieldType.PY)
    ..p<$core.double>(9, 'scomplexVal', $pb.PbFieldType.KF)
    ..p<Int64>(10, 'int64Val', $pb.PbFieldType.K6)
    ..p<$core.bool>(11, 'boolVal', $pb.PbFieldType.KB)
    ..p<$core.double>(12, 'dcomplexVal', $pb.PbFieldType.KD)
    ..p<$core.int>(13, 'halfVal', $pb.PbFieldType.K3)
    ..pc<$1.ResourceHandleProto>(14, 'resourceHandleVal', $pb.PbFieldType.PM,
        $1.ResourceHandleProto.create)
    ..pc<VariantTensorDataProto>(
        15, 'variantVal', $pb.PbFieldType.PM, VariantTensorDataProto.create)
    ..p<$core.int>(16, 'uint32Val', $pb.PbFieldType.KU3)
    ..p<Int64>(17, 'uint64Val', $pb.PbFieldType.KU6)
    ..hasRequiredFields = false;

  TensorProto._() : super();
  factory TensorProto() => create();
  factory TensorProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TensorProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  TensorProto clone() => TensorProto()..mergeFromMessage(this);
  TensorProto copyWith(void Function(TensorProto) updates) =>
      super.copyWith((message) => updates(message as TensorProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TensorProto create() => TensorProto._();
  TensorProto createEmptyInstance() => create();
  static $pb.PbList<TensorProto> createRepeated() => $pb.PbList<TensorProto>();
  static TensorProto getDefault() => _defaultInstance ??= create()..freeze();
  static TensorProto _defaultInstance;

  $2.DataType get dtype => $_getN(0);
  set dtype($2.DataType v) {
    setField(1, v);
  }

  $core.bool hasDtype() => $_has(0);
  void clearDtype() => clearField(1);

  $0.TensorShapeProto get tensorShape => $_getN(1);
  set tensorShape($0.TensorShapeProto v) {
    setField(2, v);
  }

  $core.bool hasTensorShape() => $_has(1);
  void clearTensorShape() => clearField(2);

  $core.int get versionNumber => $_get(2, 0);
  set versionNumber($core.int v) {
    $_setSignedInt32(2, v);
  }

  $core.bool hasVersionNumber() => $_has(2);
  void clearVersionNumber() => clearField(3);

  $core.List<$core.int> get tensorContent => $_getN(3);
  set tensorContent($core.List<$core.int> v) {
    $_setBytes(3, v);
  }

  $core.bool hasTensorContent() => $_has(3);
  void clearTensorContent() => clearField(4);

  $core.List<$core.double> get floatVal => $_getList(4);

  $core.List<$core.double> get doubleVal => $_getList(5);

  $core.List<$core.int> get intVal => $_getList(6);

  $core.List<$core.List<$core.int>> get stringVal => $_getList(7);

  $core.List<$core.double> get scomplexVal => $_getList(8);

  $core.List<Int64> get int64Val => $_getList(9);

  $core.List<$core.bool> get boolVal => $_getList(10);

  $core.List<$core.double> get dcomplexVal => $_getList(11);

  $core.List<$core.int> get halfVal => $_getList(12);

  $core.List<$1.ResourceHandleProto> get resourceHandleVal => $_getList(13);

  $core.List<VariantTensorDataProto> get variantVal => $_getList(14);

  $core.List<$core.int> get uint32Val => $_getList(15);

  $core.List<Int64> get uint64Val => $_getList(16);
}

class VariantTensorDataProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VariantTensorDataProto',
      package: const $pb.PackageName('tensorflow'))
    ..aOS(1, 'typeName')
    ..a<$core.List<$core.int>>(2, 'metadata', $pb.PbFieldType.OY)
    ..pc<TensorProto>(3, 'tensors', $pb.PbFieldType.PM, TensorProto.create)
    ..hasRequiredFields = false;

  VariantTensorDataProto._() : super();
  factory VariantTensorDataProto() => create();
  factory VariantTensorDataProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VariantTensorDataProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  VariantTensorDataProto clone() =>
      VariantTensorDataProto()..mergeFromMessage(this);
  VariantTensorDataProto copyWith(
          void Function(VariantTensorDataProto) updates) =>
      super.copyWith((message) => updates(message as VariantTensorDataProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VariantTensorDataProto create() => VariantTensorDataProto._();
  VariantTensorDataProto createEmptyInstance() => create();
  static $pb.PbList<VariantTensorDataProto> createRepeated() =>
      $pb.PbList<VariantTensorDataProto>();
  static VariantTensorDataProto getDefault() =>
      _defaultInstance ??= create()..freeze();
  static VariantTensorDataProto _defaultInstance;

  $core.String get typeName => $_getS(0, '');
  set typeName($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasTypeName() => $_has(0);
  void clearTypeName() => clearField(1);

  $core.List<$core.int> get metadata => $_getN(1);
  set metadata($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  $core.bool hasMetadata() => $_has(1);
  void clearMetadata() => clearField(2);

  $core.List<TensorProto> get tensors => $_getList(2);
}
