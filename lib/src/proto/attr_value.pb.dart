///
//  Generated code. Do not modify.
//  source: attr_value.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'tensor_shape.pb.dart' as $0;
import 'tensor.pb.dart' as $1;

import 'types.pbenum.dart' as $2;

class AttrValue_ListValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AttrValue.ListValue',
      package: const $pb.PackageName('tensorflow'))
    ..p<$core.List<$core.int>>(2, 's', $pb.PbFieldType.PY)
    ..p<Int64>(3, 'i', $pb.PbFieldType.K6)
    ..p<$core.double>(4, 'f', $pb.PbFieldType.KF)
    ..p<$core.bool>(5, 'b', $pb.PbFieldType.KB)
    ..pc<$2.DataType>(6, 'type', $pb.PbFieldType.KE, null, $2.DataType.valueOf,
        $2.DataType.values)
    ..pc<$0.TensorShapeProto>(
        7, 'shape', $pb.PbFieldType.PM, $0.TensorShapeProto.create)
    ..pc<$1.TensorProto>(8, 'tensor', $pb.PbFieldType.PM, $1.TensorProto.create)
    ..pc<NameAttrList>(9, 'func', $pb.PbFieldType.PM, NameAttrList.create)
    ..hasRequiredFields = false;

  AttrValue_ListValue._() : super();
  factory AttrValue_ListValue() => create();
  factory AttrValue_ListValue.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AttrValue_ListValue.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  AttrValue_ListValue clone() => AttrValue_ListValue()..mergeFromMessage(this);
  AttrValue_ListValue copyWith(void Function(AttrValue_ListValue) updates) =>
      super.copyWith((message) => updates(message as AttrValue_ListValue));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AttrValue_ListValue create() => AttrValue_ListValue._();
  AttrValue_ListValue createEmptyInstance() => create();
  static $pb.PbList<AttrValue_ListValue> createRepeated() =>
      $pb.PbList<AttrValue_ListValue>();
  static AttrValue_ListValue getDefault() =>
      _defaultInstance ??= create()..freeze();
  static AttrValue_ListValue _defaultInstance;

  $core.List<$core.List<$core.int>> get s => $_getList(0);

  $core.List<Int64> get i => $_getList(1);

  $core.List<$core.double> get f => $_getList(2);

  $core.List<$core.bool> get b => $_getList(3);

  $core.List<$2.DataType> get type => $_getList(4);

  $core.List<$0.TensorShapeProto> get shape => $_getList(5);

  $core.List<$1.TensorProto> get tensor => $_getList(6);

  $core.List<NameAttrList> get func => $_getList(7);
}

enum AttrValue_Value {
  list,
  s,
  i,
  f,
  b,
  type,
  shape,
  tensor,
  placeholder,
  func,
  notSet
}

class AttrValue extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, AttrValue_Value> _AttrValue_ValueByTag = {
    1: AttrValue_Value.list,
    2: AttrValue_Value.s,
    3: AttrValue_Value.i,
    4: AttrValue_Value.f,
    5: AttrValue_Value.b,
    6: AttrValue_Value.type,
    7: AttrValue_Value.shape,
    8: AttrValue_Value.tensor,
    9: AttrValue_Value.placeholder,
    10: AttrValue_Value.func,
    0: AttrValue_Value.notSet
  };
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo('AttrValue', package: const $pb.PackageName('tensorflow'))
        ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
        ..a<AttrValue_ListValue>(1, 'list', $pb.PbFieldType.OM,
            AttrValue_ListValue.getDefault, AttrValue_ListValue.create)
        ..a<$core.List<$core.int>>(2, 's', $pb.PbFieldType.OY)
        ..aInt64(3, 'i')
        ..a<$core.double>(4, 'f', $pb.PbFieldType.OF)
        ..aOB(5, 'b')
        ..e<$2.DataType>(6, 'type', $pb.PbFieldType.OE, $2.DataType.DT_INVALID,
            $2.DataType.valueOf, $2.DataType.values)
        ..a<$0.TensorShapeProto>(7, 'shape', $pb.PbFieldType.OM,
            $0.TensorShapeProto.getDefault, $0.TensorShapeProto.create)
        ..a<$1.TensorProto>(8, 'tensor', $pb.PbFieldType.OM,
            $1.TensorProto.getDefault, $1.TensorProto.create)
        ..aOS(9, 'placeholder')
        ..a<NameAttrList>(10, 'func', $pb.PbFieldType.OM,
            NameAttrList.getDefault, NameAttrList.create)
        ..hasRequiredFields = false;

  AttrValue._() : super();
  factory AttrValue() => create();
  factory AttrValue.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AttrValue.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  AttrValue clone() => AttrValue()..mergeFromMessage(this);
  AttrValue copyWith(void Function(AttrValue) updates) =>
      super.copyWith((message) => updates(message as AttrValue));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AttrValue create() => AttrValue._();
  AttrValue createEmptyInstance() => create();
  static $pb.PbList<AttrValue> createRepeated() => $pb.PbList<AttrValue>();
  static AttrValue getDefault() => _defaultInstance ??= create()..freeze();
  static AttrValue _defaultInstance;

  AttrValue_Value whichValue() => _AttrValue_ValueByTag[$_whichOneof(0)];
  void clearValue() => clearField($_whichOneof(0));

  AttrValue_ListValue get list => $_getN(0);
  set list(AttrValue_ListValue v) {
    setField(1, v);
  }

  $core.bool hasList() => $_has(0);
  void clearList() => clearField(1);

  $core.List<$core.int> get s => $_getN(1);
  set s($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  $core.bool hasS() => $_has(1);
  void clearS() => clearField(2);

  Int64 get i => $_getI64(2);
  set i(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasI() => $_has(2);
  void clearI() => clearField(3);

  $core.double get f => $_getN(3);
  set f($core.double v) {
    $_setFloat(3, v);
  }

  $core.bool hasF() => $_has(3);
  void clearF() => clearField(4);

  $core.bool get b => $_get(4, false);
  set b($core.bool v) {
    $_setBool(4, v);
  }

  $core.bool hasB() => $_has(4);
  void clearB() => clearField(5);

  $2.DataType get type => $_getN(5);
  set type($2.DataType v) {
    setField(6, v);
  }

  $core.bool hasType() => $_has(5);
  void clearType() => clearField(6);

  $0.TensorShapeProto get shape => $_getN(6);
  set shape($0.TensorShapeProto v) {
    setField(7, v);
  }

  $core.bool hasShape() => $_has(6);
  void clearShape() => clearField(7);

  $1.TensorProto get tensor => $_getN(7);
  set tensor($1.TensorProto v) {
    setField(8, v);
  }

  $core.bool hasTensor() => $_has(7);
  void clearTensor() => clearField(8);

  $core.String get placeholder => $_getS(8, '');
  set placeholder($core.String v) {
    $_setString(8, v);
  }

  $core.bool hasPlaceholder() => $_has(8);
  void clearPlaceholder() => clearField(9);

  NameAttrList get func => $_getN(9);
  set func(NameAttrList v) {
    setField(10, v);
  }

  $core.bool hasFunc() => $_has(9);
  void clearFunc() => clearField(10);
}

class NameAttrList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NameAttrList',
      package: const $pb.PackageName('tensorflow'))
    ..aOS(1, 'name')
    ..m<$core.String, AttrValue>(
        2,
        'attr',
        'NameAttrList.AttrEntry',
        $pb.PbFieldType.OS,
        $pb.PbFieldType.OM,
        AttrValue.create,
        null,
        null,
        const $pb.PackageName('tensorflow'))
    ..hasRequiredFields = false;

  NameAttrList._() : super();
  factory NameAttrList() => create();
  factory NameAttrList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NameAttrList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NameAttrList clone() => NameAttrList()..mergeFromMessage(this);
  NameAttrList copyWith(void Function(NameAttrList) updates) =>
      super.copyWith((message) => updates(message as NameAttrList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NameAttrList create() => NameAttrList._();
  NameAttrList createEmptyInstance() => create();
  static $pb.PbList<NameAttrList> createRepeated() =>
      $pb.PbList<NameAttrList>();
  static NameAttrList getDefault() => _defaultInstance ??= create()..freeze();
  static NameAttrList _defaultInstance;

  $core.String get name => $_getS(0, '');
  set name($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasName() => $_has(0);
  void clearName() => clearField(1);

  $core.Map<$core.String, AttrValue> get attr => $_getMap(1);
}
