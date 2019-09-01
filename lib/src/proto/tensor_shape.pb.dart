///
//  Generated code. Do not modify.
//  source: tensor_shape.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class TensorShapeProto_Dim extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TensorShapeProto.Dim',
      package: const $pb.PackageName('tensorflow'))
    ..aInt64(1, 'size')
    ..aOS(2, 'name')
    ..hasRequiredFields = false;

  TensorShapeProto_Dim._() : super();
  factory TensorShapeProto_Dim() => create();
  factory TensorShapeProto_Dim.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TensorShapeProto_Dim.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  TensorShapeProto_Dim clone() =>
      TensorShapeProto_Dim()..mergeFromMessage(this);
  TensorShapeProto_Dim copyWith(void Function(TensorShapeProto_Dim) updates) =>
      super.copyWith((message) => updates(message as TensorShapeProto_Dim));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TensorShapeProto_Dim create() => TensorShapeProto_Dim._();
  TensorShapeProto_Dim createEmptyInstance() => create();
  static $pb.PbList<TensorShapeProto_Dim> createRepeated() =>
      $pb.PbList<TensorShapeProto_Dim>();
  static TensorShapeProto_Dim getDefault() =>
      _defaultInstance ??= create()..freeze();
  static TensorShapeProto_Dim _defaultInstance;

  Int64 get size => $_getI64(0);
  set size(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasSize() => $_has(0);
  void clearSize() => clearField(1);

  $core.String get name => $_getS(1, '');
  set name($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasName() => $_has(1);
  void clearName() => clearField(2);
}

class TensorShapeProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TensorShapeProto',
      package: const $pb.PackageName('tensorflow'))
    ..pc<TensorShapeProto_Dim>(
        2, 'dim', $pb.PbFieldType.PM, TensorShapeProto_Dim.create)
    ..aOB(3, 'unknownRank')
    ..hasRequiredFields = false;

  TensorShapeProto._() : super();
  factory TensorShapeProto() => create();
  factory TensorShapeProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TensorShapeProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  TensorShapeProto clone() => TensorShapeProto()..mergeFromMessage(this);
  TensorShapeProto copyWith(void Function(TensorShapeProto) updates) =>
      super.copyWith((message) => updates(message as TensorShapeProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TensorShapeProto create() => TensorShapeProto._();
  TensorShapeProto createEmptyInstance() => create();
  static $pb.PbList<TensorShapeProto> createRepeated() =>
      $pb.PbList<TensorShapeProto>();
  static TensorShapeProto getDefault() =>
      _defaultInstance ??= create()..freeze();
  static TensorShapeProto _defaultInstance;

  $core.List<TensorShapeProto_Dim> get dim => $_getList(0);

  $core.bool get unknownRank => $_get(1, false);
  set unknownRank($core.bool v) {
    $_setBool(1, v);
  }

  $core.bool hasUnknownRank() => $_has(1);
  void clearUnknownRank() => clearField(3);
}
