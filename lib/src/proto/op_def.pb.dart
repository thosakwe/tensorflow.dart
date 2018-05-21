///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_op_def;

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart';

import 'attr_value.pb.dart';

import 'types.pbenum.dart';

class OpDef_ArgDef extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('OpDef_ArgDef')
    ..aOS(1, 'name')
    ..aOS(2, 'description')
    ..e<DataType>(3, 'type', PbFieldType.OE, DataType.DT_INVALID,
        DataType.valueOf, DataType.values)
    ..aOS(4, 'typeAttr')
    ..aOS(5, 'numberAttr')
    ..aOS(6, 'typeListAttr')
    ..aOB(16, 'isRef')
    ..hasRequiredFields = false;

  OpDef_ArgDef() : super();
  OpDef_ArgDef.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  OpDef_ArgDef.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  OpDef_ArgDef clone() => new OpDef_ArgDef()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static OpDef_ArgDef create() => new OpDef_ArgDef();
  static PbList<OpDef_ArgDef> createRepeated() => new PbList<OpDef_ArgDef>();
  static OpDef_ArgDef getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyOpDef_ArgDef();
    return _defaultInstance;
  }

  static OpDef_ArgDef _defaultInstance;
  static void $checkItem(OpDef_ArgDef v) {
    if (v is! OpDef_ArgDef) checkItemFailed(v, 'OpDef_ArgDef');
  }

  String get name => $_getS(0, '');
  set name(String v) {
    $_setString(0, v);
  }

  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  String get description => $_getS(1, '');
  set description(String v) {
    $_setString(1, v);
  }

  bool hasDescription() => $_has(1);
  void clearDescription() => clearField(2);

  DataType get type => $_getN(2);
  set type(DataType v) {
    setField(3, v);
  }

  bool hasType() => $_has(2);
  void clearType() => clearField(3);

  String get typeAttr => $_getS(3, '');
  set typeAttr(String v) {
    $_setString(3, v);
  }

  bool hasTypeAttr() => $_has(3);
  void clearTypeAttr() => clearField(4);

  String get numberAttr => $_getS(4, '');
  set numberAttr(String v) {
    $_setString(4, v);
  }

  bool hasNumberAttr() => $_has(4);
  void clearNumberAttr() => clearField(5);

  String get typeListAttr => $_getS(5, '');
  set typeListAttr(String v) {
    $_setString(5, v);
  }

  bool hasTypeListAttr() => $_has(5);
  void clearTypeListAttr() => clearField(6);

  bool get isRef => $_get(6, false);
  set isRef(bool v) {
    $_setBool(6, v);
  }

  bool hasIsRef() => $_has(6);
  void clearIsRef() => clearField(16);
}

class _ReadonlyOpDef_ArgDef extends OpDef_ArgDef with ReadonlyMessageMixin {}

class OpDef_AttrDef extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('OpDef_AttrDef')
    ..aOS(1, 'name')
    ..aOS(2, 'type')
    ..a<AttrValue>(3, 'defaultValue', PbFieldType.OM, AttrValue.getDefault,
        AttrValue.create)
    ..aOS(4, 'description')
    ..aOB(5, 'hasMinimum')
    ..aInt64(6, 'minimum_6')
    ..a<AttrValue>(7, 'allowedValues', PbFieldType.OM, AttrValue.getDefault,
        AttrValue.create)
    ..hasRequiredFields = false;

  OpDef_AttrDef() : super();
  OpDef_AttrDef.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  OpDef_AttrDef.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  OpDef_AttrDef clone() => new OpDef_AttrDef()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static OpDef_AttrDef create() => new OpDef_AttrDef();
  static PbList<OpDef_AttrDef> createRepeated() => new PbList<OpDef_AttrDef>();
  static OpDef_AttrDef getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyOpDef_AttrDef();
    return _defaultInstance;
  }

  static OpDef_AttrDef _defaultInstance;
  static void $checkItem(OpDef_AttrDef v) {
    if (v is! OpDef_AttrDef) checkItemFailed(v, 'OpDef_AttrDef');
  }

  String get name => $_getS(0, '');
  set name(String v) {
    $_setString(0, v);
  }

  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  String get type => $_getS(1, '');
  set type(String v) {
    $_setString(1, v);
  }

  bool hasType() => $_has(1);
  void clearType() => clearField(2);

  AttrValue get defaultValue => $_getN(2);
  set defaultValue(AttrValue v) {
    setField(3, v);
  }

  bool hasDefaultValue() => $_has(2);
  void clearDefaultValue() => clearField(3);

  String get description => $_getS(3, '');
  set description(String v) {
    $_setString(3, v);
  }

  bool hasDescription() => $_has(3);
  void clearDescription() => clearField(4);

  bool get hasMinimum => $_get(4, false);
  set hasMinimum(bool v) {
    $_setBool(4, v);
  }

  bool hasHasMinimum() => $_has(4);
  void clearHasMinimum() => clearField(5);

  Int64 get minimum_6 => $_getI64(5);
  set minimum_6(Int64 v) {
    $_setInt64(5, v);
  }

  bool hasMinimum_6() => $_has(5);
  void clearMinimum_6() => clearField(6);

  AttrValue get allowedValues => $_getN(6);
  set allowedValues(AttrValue v) {
    setField(7, v);
  }

  bool hasAllowedValues() => $_has(6);
  void clearAllowedValues() => clearField(7);
}

class _ReadonlyOpDef_AttrDef extends OpDef_AttrDef with ReadonlyMessageMixin {}

class OpDef extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('OpDef')
    ..aOS(1, 'name')
    ..pp<OpDef_ArgDef>(2, 'inputArg', PbFieldType.PM, OpDef_ArgDef.$checkItem,
        OpDef_ArgDef.create)
    ..pp<OpDef_ArgDef>(3, 'outputArg', PbFieldType.PM, OpDef_ArgDef.$checkItem,
        OpDef_ArgDef.create)
    ..pp<OpDef_AttrDef>(4, 'attr', PbFieldType.PM, OpDef_AttrDef.$checkItem,
        OpDef_AttrDef.create)
    ..aOS(5, 'summary')
    ..aOS(6, 'description')
    ..a<OpDeprecation>(8, 'deprecation', PbFieldType.OM,
        OpDeprecation.getDefault, OpDeprecation.create)
    ..aOB(16, 'isAggregate')
    ..aOB(17, 'isStateful')
    ..aOB(18, 'isCommutative')
    ..aOB(19, 'allowsUninitializedInput')
    ..hasRequiredFields = false;

  OpDef() : super();
  OpDef.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  OpDef.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  OpDef clone() => new OpDef()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static OpDef create() => new OpDef();
  static PbList<OpDef> createRepeated() => new PbList<OpDef>();
  static OpDef getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyOpDef();
    return _defaultInstance;
  }

  static OpDef _defaultInstance;
  static void $checkItem(OpDef v) {
    if (v is! OpDef) checkItemFailed(v, 'OpDef');
  }

  String get name => $_getS(0, '');
  set name(String v) {
    $_setString(0, v);
  }

  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  List<OpDef_ArgDef> get inputArg => $_getList(1);

  List<OpDef_ArgDef> get outputArg => $_getList(2);

  List<OpDef_AttrDef> get attr => $_getList(3);

  String get summary => $_getS(4, '');
  set summary(String v) {
    $_setString(4, v);
  }

  bool hasSummary() => $_has(4);
  void clearSummary() => clearField(5);

  String get description => $_getS(5, '');
  set description(String v) {
    $_setString(5, v);
  }

  bool hasDescription() => $_has(5);
  void clearDescription() => clearField(6);

  OpDeprecation get deprecation => $_getN(6);
  set deprecation(OpDeprecation v) {
    setField(8, v);
  }

  bool hasDeprecation() => $_has(6);
  void clearDeprecation() => clearField(8);

  bool get isAggregate => $_get(7, false);
  set isAggregate(bool v) {
    $_setBool(7, v);
  }

  bool hasIsAggregate() => $_has(7);
  void clearIsAggregate() => clearField(16);

  bool get isStateful => $_get(8, false);
  set isStateful(bool v) {
    $_setBool(8, v);
  }

  bool hasIsStateful() => $_has(8);
  void clearIsStateful() => clearField(17);

  bool get isCommutative => $_get(9, false);
  set isCommutative(bool v) {
    $_setBool(9, v);
  }

  bool hasIsCommutative() => $_has(9);
  void clearIsCommutative() => clearField(18);

  bool get allowsUninitializedInput => $_get(10, false);
  set allowsUninitializedInput(bool v) {
    $_setBool(10, v);
  }

  bool hasAllowsUninitializedInput() => $_has(10);
  void clearAllowsUninitializedInput() => clearField(19);
}

class _ReadonlyOpDef extends OpDef with ReadonlyMessageMixin {}

class OpDeprecation extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('OpDeprecation')
    ..a<int>(1, 'version', PbFieldType.O3)
    ..aOS(2, 'explanation')
    ..hasRequiredFields = false;

  OpDeprecation() : super();
  OpDeprecation.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  OpDeprecation.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  OpDeprecation clone() => new OpDeprecation()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static OpDeprecation create() => new OpDeprecation();
  static PbList<OpDeprecation> createRepeated() => new PbList<OpDeprecation>();
  static OpDeprecation getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyOpDeprecation();
    return _defaultInstance;
  }

  static OpDeprecation _defaultInstance;
  static void $checkItem(OpDeprecation v) {
    if (v is! OpDeprecation) checkItemFailed(v, 'OpDeprecation');
  }

  int get version => $_get(0, 0);
  set version(int v) {
    $_setUnsignedInt32(0, v);
  }

  bool hasVersion() => $_has(0);
  void clearVersion() => clearField(1);

  String get explanation => $_getS(1, '');
  set explanation(String v) {
    $_setString(1, v);
  }

  bool hasExplanation() => $_has(1);
  void clearExplanation() => clearField(2);
}

class _ReadonlyOpDeprecation extends OpDeprecation with ReadonlyMessageMixin {}

class OpList extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('OpList')
    ..pp<OpDef>(1, 'op', PbFieldType.PM, OpDef.$checkItem, OpDef.create)
    ..hasRequiredFields = false;

  OpList() : super();
  OpList.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  OpList.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  OpList clone() => new OpList()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static OpList create() => new OpList();
  static PbList<OpList> createRepeated() => new PbList<OpList>();
  static OpList getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyOpList();
    return _defaultInstance;
  }

  static OpList _defaultInstance;
  static void $checkItem(OpList v) {
    if (v is! OpList) checkItemFailed(v, 'OpList');
  }

  List<OpDef> get op => $_getList(0);
}

class _ReadonlyOpList extends OpList with ReadonlyMessageMixin {}
