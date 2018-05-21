///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_tensor;

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart';

import 'tensor_shape.pb.dart';
import 'resource_handle.pb.dart';

import 'types.pbenum.dart';

class TensorProto extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('TensorProto')
    ..e<DataType>(1, 'dtype', PbFieldType.OE, DataType.DT_INVALID,
        DataType.valueOf, DataType.values)
    ..a<TensorShapeProto>(2, 'tensorShape', PbFieldType.OM,
        TensorShapeProto.getDefault, TensorShapeProto.create)
    ..a<int>(3, 'versionNumber', PbFieldType.O3)
    ..a<List<int>>(4, 'tensorContent', PbFieldType.OY)
    ..p<double>(5, 'floatVal', PbFieldType.KF)
    ..p<double>(6, 'doubleVal', PbFieldType.KD)
    ..p<int>(7, 'intVal', PbFieldType.K3)
    ..p<List<int>>(8, 'stringVal', PbFieldType.PY)
    ..p<double>(9, 'scomplexVal', PbFieldType.KF)
    ..p<Int64>(10, 'int64Val', PbFieldType.K6)
    ..p<bool>(11, 'boolVal', PbFieldType.KB)
    ..p<double>(12, 'dcomplexVal', PbFieldType.KD)
    ..p<int>(13, 'halfVal', PbFieldType.K3)
    ..pp<ResourceHandleProto>(14, 'resourceHandleVal', PbFieldType.PM,
        ResourceHandleProto.$checkItem, ResourceHandleProto.create)
    ..pp<VariantTensorDataProto>(15, 'variantVal', PbFieldType.PM,
        VariantTensorDataProto.$checkItem, VariantTensorDataProto.create)
    ..p<int>(16, 'uint32Val', PbFieldType.KU3)
    ..p<Int64>(17, 'uint64Val', PbFieldType.KU6)
    ..hasRequiredFields = false;

  TensorProto() : super();
  TensorProto.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  TensorProto.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  TensorProto clone() => new TensorProto()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static TensorProto create() => new TensorProto();
  static PbList<TensorProto> createRepeated() => new PbList<TensorProto>();
  static TensorProto getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyTensorProto();
    return _defaultInstance;
  }

  static TensorProto _defaultInstance;
  static void $checkItem(TensorProto v) {
    if (v is! TensorProto) checkItemFailed(v, 'TensorProto');
  }

  DataType get dtype => $_getN(0);
  set dtype(DataType v) {
    setField(1, v);
  }

  bool hasDtype() => $_has(0);
  void clearDtype() => clearField(1);

  TensorShapeProto get tensorShape => $_getN(1);
  set tensorShape(TensorShapeProto v) {
    setField(2, v);
  }

  bool hasTensorShape() => $_has(1);
  void clearTensorShape() => clearField(2);

  int get versionNumber => $_get(2, 0);
  set versionNumber(int v) {
    $_setUnsignedInt32(2, v);
  }

  bool hasVersionNumber() => $_has(2);
  void clearVersionNumber() => clearField(3);

  List<int> get tensorContent => $_getN(3);
  set tensorContent(List<int> v) {
    $_setBytes(3, v);
  }

  bool hasTensorContent() => $_has(3);
  void clearTensorContent() => clearField(4);

  List<double> get floatVal => $_getList(4);

  List<double> get doubleVal => $_getList(5);

  List<int> get intVal => $_getList(6);

  List<List<int>> get stringVal => $_getList(7);

  List<double> get scomplexVal => $_getList(8);

  List<Int64> get int64Val => $_getList(9);

  List<bool> get boolVal => $_getList(10);

  List<double> get dcomplexVal => $_getList(11);

  List<int> get halfVal => $_getList(12);

  List<ResourceHandleProto> get resourceHandleVal => $_getList(13);

  List<VariantTensorDataProto> get variantVal => $_getList(14);

  List<int> get uint32Val => $_getList(15);

  List<Int64> get uint64Val => $_getList(16);
}

class _ReadonlyTensorProto extends TensorProto with ReadonlyMessageMixin {}

class VariantTensorDataProto extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('VariantTensorDataProto')
    ..aOS(1, 'typeName')
    ..a<List<int>>(2, 'metadata', PbFieldType.OY)
    ..pp<TensorProto>(3, 'tensors', PbFieldType.PM, TensorProto.$checkItem,
        TensorProto.create)
    ..hasRequiredFields = false;

  VariantTensorDataProto() : super();
  VariantTensorDataProto.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  VariantTensorDataProto.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  VariantTensorDataProto clone() =>
      new VariantTensorDataProto()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static VariantTensorDataProto create() => new VariantTensorDataProto();
  static PbList<VariantTensorDataProto> createRepeated() =>
      new PbList<VariantTensorDataProto>();
  static VariantTensorDataProto getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyVariantTensorDataProto();
    return _defaultInstance;
  }

  static VariantTensorDataProto _defaultInstance;
  static void $checkItem(VariantTensorDataProto v) {
    if (v is! VariantTensorDataProto)
      checkItemFailed(v, 'VariantTensorDataProto');
  }

  String get typeName => $_getS(0, '');
  set typeName(String v) {
    $_setString(0, v);
  }

  bool hasTypeName() => $_has(0);
  void clearTypeName() => clearField(1);

  List<int> get metadata => $_getN(1);
  set metadata(List<int> v) {
    $_setBytes(1, v);
  }

  bool hasMetadata() => $_has(1);
  void clearMetadata() => clearField(2);

  List<TensorProto> get tensors => $_getList(2);
}

class _ReadonlyVariantTensorDataProto extends VariantTensorDataProto
    with ReadonlyMessageMixin {}
