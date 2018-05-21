///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_attr_value;

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart';

import 'tensor_shape.pb.dart';
import 'tensor.pb.dart';

import 'types.pbenum.dart';

class AttrValue_ListValue extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('AttrValue_ListValue')
    ..p<List<int>>(2, 's', PbFieldType.PY)
    ..p<Int64>(3, 'i', PbFieldType.K6)
    ..p<double>(4, 'f', PbFieldType.KF)
    ..p<bool>(5, 'b', PbFieldType.KB)
    ..pp<DataType>(6, 'type', PbFieldType.KE, DataType.$checkItem, null,
        DataType.valueOf, DataType.values)
    ..pp<TensorShapeProto>(7, 'shape', PbFieldType.PM,
        TensorShapeProto.$checkItem, TensorShapeProto.create)
    ..pp<TensorProto>(
        8, 'tensor', PbFieldType.PM, TensorProto.$checkItem, TensorProto.create)
    ..pp<NameAttrList>(
        9, 'func', PbFieldType.PM, NameAttrList.$checkItem, NameAttrList.create)
    ..hasRequiredFields = false;

  AttrValue_ListValue() : super();
  AttrValue_ListValue.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  AttrValue_ListValue.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  AttrValue_ListValue clone() =>
      new AttrValue_ListValue()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static AttrValue_ListValue create() => new AttrValue_ListValue();
  static PbList<AttrValue_ListValue> createRepeated() =>
      new PbList<AttrValue_ListValue>();
  static AttrValue_ListValue getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyAttrValue_ListValue();
    return _defaultInstance;
  }

  static AttrValue_ListValue _defaultInstance;
  static void $checkItem(AttrValue_ListValue v) {
    if (v is! AttrValue_ListValue) checkItemFailed(v, 'AttrValue_ListValue');
  }

  List<List<int>> get s => $_getList(0);

  List<Int64> get i => $_getList(1);

  List<double> get f => $_getList(2);

  List<bool> get b => $_getList(3);

  List<DataType> get type => $_getList(4);

  List<TensorShapeProto> get shape => $_getList(5);

  List<TensorProto> get tensor => $_getList(6);

  List<NameAttrList> get func => $_getList(7);
}

class _ReadonlyAttrValue_ListValue extends AttrValue_ListValue
    with ReadonlyMessageMixin {}

class AttrValue extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('AttrValue')
    ..a<AttrValue_ListValue>(1, 'list', PbFieldType.OM,
        AttrValue_ListValue.getDefault, AttrValue_ListValue.create)
    ..a<List<int>>(2, 's', PbFieldType.OY)
    ..aInt64(3, 'i')
    ..a<double>(4, 'f', PbFieldType.OF)
    ..aOB(5, 'b')
    ..e<DataType>(6, 'type', PbFieldType.OE, DataType.DT_INVALID,
        DataType.valueOf, DataType.values)
    ..a<TensorShapeProto>(7, 'shape', PbFieldType.OM,
        TensorShapeProto.getDefault, TensorShapeProto.create)
    ..a<TensorProto>(
        8, 'tensor', PbFieldType.OM, TensorProto.getDefault, TensorProto.create)
    ..aOS(9, 'placeholder')
    ..a<NameAttrList>(10, 'func', PbFieldType.OM, NameAttrList.getDefault,
        NameAttrList.create)
    ..hasRequiredFields = false;

  AttrValue() : super();
  AttrValue.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  AttrValue.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  AttrValue clone() => new AttrValue()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static AttrValue create() => new AttrValue();
  static PbList<AttrValue> createRepeated() => new PbList<AttrValue>();
  static AttrValue getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyAttrValue();
    return _defaultInstance;
  }

  static AttrValue _defaultInstance;
  static void $checkItem(AttrValue v) {
    if (v is! AttrValue) checkItemFailed(v, 'AttrValue');
  }

  AttrValue_ListValue get list => $_getN(0);
  set list(AttrValue_ListValue v) {
    setField(1, v);
  }

  bool hasList() => $_has(0);
  void clearList() => clearField(1);

  List<int> get s => $_getN(1);
  set s(List<int> v) {
    $_setBytes(1, v);
  }

  bool hasS() => $_has(1);
  void clearS() => clearField(2);

  Int64 get i => $_getI64(2);
  set i(Int64 v) {
    $_setInt64(2, v);
  }

  bool hasI() => $_has(2);
  void clearI() => clearField(3);

  double get f => $_getN(3);
  set f(double v) {
    $_setFloat(3, v);
  }

  bool hasF() => $_has(3);
  void clearF() => clearField(4);

  bool get b => $_get(4, false);
  set b(bool v) {
    $_setBool(4, v);
  }

  bool hasB() => $_has(4);
  void clearB() => clearField(5);

  DataType get type => $_getN(5);
  set type(DataType v) {
    setField(6, v);
  }

  bool hasType() => $_has(5);
  void clearType() => clearField(6);

  TensorShapeProto get shape => $_getN(6);
  set shape(TensorShapeProto v) {
    setField(7, v);
  }

  bool hasShape() => $_has(6);
  void clearShape() => clearField(7);

  TensorProto get tensor => $_getN(7);
  set tensor(TensorProto v) {
    setField(8, v);
  }

  bool hasTensor() => $_has(7);
  void clearTensor() => clearField(8);

  String get placeholder => $_getS(8, '');
  set placeholder(String v) {
    $_setString(8, v);
  }

  bool hasPlaceholder() => $_has(8);
  void clearPlaceholder() => clearField(9);

  NameAttrList get func => $_getN(9);
  set func(NameAttrList v) {
    setField(10, v);
  }

  bool hasFunc() => $_has(9);
  void clearFunc() => clearField(10);
}

class _ReadonlyAttrValue extends AttrValue with ReadonlyMessageMixin {}

class NameAttrList_AttrEntry extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('NameAttrList_AttrEntry')
    ..aOS(1, 'key')
    ..a<AttrValue>(
        2, 'value', PbFieldType.OM, AttrValue.getDefault, AttrValue.create)
    ..hasRequiredFields = false;

  NameAttrList_AttrEntry() : super();
  NameAttrList_AttrEntry.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  NameAttrList_AttrEntry.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  NameAttrList_AttrEntry clone() =>
      new NameAttrList_AttrEntry()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static NameAttrList_AttrEntry create() => new NameAttrList_AttrEntry();
  static PbList<NameAttrList_AttrEntry> createRepeated() =>
      new PbList<NameAttrList_AttrEntry>();
  static NameAttrList_AttrEntry getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyNameAttrList_AttrEntry();
    return _defaultInstance;
  }

  static NameAttrList_AttrEntry _defaultInstance;
  static void $checkItem(NameAttrList_AttrEntry v) {
    if (v is! NameAttrList_AttrEntry)
      checkItemFailed(v, 'NameAttrList_AttrEntry');
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

class _ReadonlyNameAttrList_AttrEntry extends NameAttrList_AttrEntry
    with ReadonlyMessageMixin {}

class NameAttrList extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('NameAttrList')
    ..aOS(1, 'name')
    ..pp<NameAttrList_AttrEntry>(2, 'attr', PbFieldType.PM,
        NameAttrList_AttrEntry.$checkItem, NameAttrList_AttrEntry.create)
    ..hasRequiredFields = false;

  NameAttrList() : super();
  NameAttrList.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  NameAttrList.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  NameAttrList clone() => new NameAttrList()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static NameAttrList create() => new NameAttrList();
  static PbList<NameAttrList> createRepeated() => new PbList<NameAttrList>();
  static NameAttrList getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyNameAttrList();
    return _defaultInstance;
  }

  static NameAttrList _defaultInstance;
  static void $checkItem(NameAttrList v) {
    if (v is! NameAttrList) checkItemFailed(v, 'NameAttrList');
  }

  String get name => $_getS(0, '');
  set name(String v) {
    $_setString(0, v);
  }

  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  List<NameAttrList_AttrEntry> get attr => $_getList(1);
}

class _ReadonlyNameAttrList extends NameAttrList with ReadonlyMessageMixin {}
