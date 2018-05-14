///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_tensor_shape;

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart';

class TensorShapeProto_Dim extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('TensorShapeProto_Dim')
    ..aInt64(1, 'size')
    ..aOS(2, 'name')
    ..hasRequiredFields = false
  ;

  TensorShapeProto_Dim() : super();
  TensorShapeProto_Dim.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  TensorShapeProto_Dim.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  TensorShapeProto_Dim clone() => new TensorShapeProto_Dim()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static TensorShapeProto_Dim create() => new TensorShapeProto_Dim();
  static PbList<TensorShapeProto_Dim> createRepeated() => new PbList<TensorShapeProto_Dim>();
  static TensorShapeProto_Dim getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyTensorShapeProto_Dim();
    return _defaultInstance;
  }
  static TensorShapeProto_Dim _defaultInstance;
  static void $checkItem(TensorShapeProto_Dim v) {
    if (v is! TensorShapeProto_Dim) checkItemFailed(v, 'TensorShapeProto_Dim');
  }

  Int64 get size => $_getI64(0);
  set size(Int64 v) { $_setInt64(0, v); }
  bool hasSize() => $_has(0);
  void clearSize() => clearField(1);

  String get name => $_getS(1, '');
  set name(String v) { $_setString(1, v); }
  bool hasName() => $_has(1);
  void clearName() => clearField(2);
}

class _ReadonlyTensorShapeProto_Dim extends TensorShapeProto_Dim with ReadonlyMessageMixin {}

class TensorShapeProto extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('TensorShapeProto')
    ..pp<TensorShapeProto_Dim>(2, 'dim', PbFieldType.PM, TensorShapeProto_Dim.$checkItem, TensorShapeProto_Dim.create)
    ..aOB(3, 'unknownRank')
    ..hasRequiredFields = false
  ;

  TensorShapeProto() : super();
  TensorShapeProto.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  TensorShapeProto.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  TensorShapeProto clone() => new TensorShapeProto()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static TensorShapeProto create() => new TensorShapeProto();
  static PbList<TensorShapeProto> createRepeated() => new PbList<TensorShapeProto>();
  static TensorShapeProto getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyTensorShapeProto();
    return _defaultInstance;
  }
  static TensorShapeProto _defaultInstance;
  static void $checkItem(TensorShapeProto v) {
    if (v is! TensorShapeProto) checkItemFailed(v, 'TensorShapeProto');
  }

  List<TensorShapeProto_Dim> get dim => $_getList(0);

  bool get unknownRank => $_get(1, false);
  set unknownRank(bool v) { $_setBool(1, v); }
  bool hasUnknownRank() => $_has(1);
  void clearUnknownRank() => clearField(3);
}

class _ReadonlyTensorShapeProto extends TensorShapeProto with ReadonlyMessageMixin {}

