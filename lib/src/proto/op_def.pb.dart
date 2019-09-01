///
//  Generated code. Do not modify.
//  source: op_def.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'attr_value.pb.dart' as $0;

import 'types.pbenum.dart' as $1;

class OpDef_ArgDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OpDef.ArgDef',
      package: const $pb.PackageName('tensorflow'))
    ..aOS(1, 'name')
    ..aOS(2, 'description')
    ..e<$1.DataType>(3, 'type', $pb.PbFieldType.OE, $1.DataType.DT_INVALID,
        $1.DataType.valueOf, $1.DataType.values)
    ..aOS(4, 'typeAttr')
    ..aOS(5, 'numberAttr')
    ..aOS(6, 'typeListAttr')
    ..aOB(16, 'isRef')
    ..hasRequiredFields = false;

  OpDef_ArgDef._() : super();
  factory OpDef_ArgDef() => create();
  factory OpDef_ArgDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OpDef_ArgDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  OpDef_ArgDef clone() => OpDef_ArgDef()..mergeFromMessage(this);
  OpDef_ArgDef copyWith(void Function(OpDef_ArgDef) updates) =>
      super.copyWith((message) => updates(message as OpDef_ArgDef));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpDef_ArgDef create() => OpDef_ArgDef._();
  OpDef_ArgDef createEmptyInstance() => create();
  static $pb.PbList<OpDef_ArgDef> createRepeated() =>
      $pb.PbList<OpDef_ArgDef>();
  static OpDef_ArgDef getDefault() => _defaultInstance ??= create()..freeze();
  static OpDef_ArgDef _defaultInstance;

  $core.String get name => $_getS(0, '');
  set name($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasName() => $_has(0);
  void clearName() => clearField(1);

  $core.String get description => $_getS(1, '');
  set description($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasDescription() => $_has(1);
  void clearDescription() => clearField(2);

  $1.DataType get type => $_getN(2);
  set type($1.DataType v) {
    setField(3, v);
  }

  $core.bool hasType() => $_has(2);
  void clearType() => clearField(3);

  $core.String get typeAttr => $_getS(3, '');
  set typeAttr($core.String v) {
    $_setString(3, v);
  }

  $core.bool hasTypeAttr() => $_has(3);
  void clearTypeAttr() => clearField(4);

  $core.String get numberAttr => $_getS(4, '');
  set numberAttr($core.String v) {
    $_setString(4, v);
  }

  $core.bool hasNumberAttr() => $_has(4);
  void clearNumberAttr() => clearField(5);

  $core.String get typeListAttr => $_getS(5, '');
  set typeListAttr($core.String v) {
    $_setString(5, v);
  }

  $core.bool hasTypeListAttr() => $_has(5);
  void clearTypeListAttr() => clearField(6);

  $core.bool get isRef => $_get(6, false);
  set isRef($core.bool v) {
    $_setBool(6, v);
  }

  $core.bool hasIsRef() => $_has(6);
  void clearIsRef() => clearField(16);
}

class OpDef_AttrDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OpDef.AttrDef',
      package: const $pb.PackageName('tensorflow'))
    ..aOS(1, 'name')
    ..aOS(2, 'type')
    ..a<$0.AttrValue>(3, 'defaultValue', $pb.PbFieldType.OM,
        $0.AttrValue.getDefault, $0.AttrValue.create)
    ..aOS(4, 'description')
    ..aOB(5, 'hasMinimum')
    ..aInt64(6, 'minimum_6')
    ..a<$0.AttrValue>(7, 'allowedValues', $pb.PbFieldType.OM,
        $0.AttrValue.getDefault, $0.AttrValue.create)
    ..hasRequiredFields = false;

  OpDef_AttrDef._() : super();
  factory OpDef_AttrDef() => create();
  factory OpDef_AttrDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OpDef_AttrDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  OpDef_AttrDef clone() => OpDef_AttrDef()..mergeFromMessage(this);
  OpDef_AttrDef copyWith(void Function(OpDef_AttrDef) updates) =>
      super.copyWith((message) => updates(message as OpDef_AttrDef));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpDef_AttrDef create() => OpDef_AttrDef._();
  OpDef_AttrDef createEmptyInstance() => create();
  static $pb.PbList<OpDef_AttrDef> createRepeated() =>
      $pb.PbList<OpDef_AttrDef>();
  static OpDef_AttrDef getDefault() => _defaultInstance ??= create()..freeze();
  static OpDef_AttrDef _defaultInstance;

  $core.String get name => $_getS(0, '');
  set name($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasName() => $_has(0);
  void clearName() => clearField(1);

  $core.String get type => $_getS(1, '');
  set type($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasType() => $_has(1);
  void clearType() => clearField(2);

  $0.AttrValue get defaultValue => $_getN(2);
  set defaultValue($0.AttrValue v) {
    setField(3, v);
  }

  $core.bool hasDefaultValue() => $_has(2);
  void clearDefaultValue() => clearField(3);

  $core.String get description => $_getS(3, '');
  set description($core.String v) {
    $_setString(3, v);
  }

  $core.bool hasDescription() => $_has(3);
  void clearDescription() => clearField(4);

  $core.bool get hasMinimum => $_get(4, false);
  set hasMinimum($core.bool v) {
    $_setBool(4, v);
  }

  $core.bool hasHasMinimum() => $_has(4);
  void clearHasMinimum() => clearField(5);

  Int64 get minimum_6 => $_getI64(5);
  set minimum_6(Int64 v) {
    $_setInt64(5, v);
  }

  $core.bool hasMinimum_6() => $_has(5);
  void clearMinimum_6() => clearField(6);

  $0.AttrValue get allowedValues => $_getN(6);
  set allowedValues($0.AttrValue v) {
    setField(7, v);
  }

  $core.bool hasAllowedValues() => $_has(6);
  void clearAllowedValues() => clearField(7);
}

class OpDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OpDef',
      package: const $pb.PackageName('tensorflow'))
    ..aOS(1, 'name')
    ..pc<OpDef_ArgDef>(2, 'inputArg', $pb.PbFieldType.PM, OpDef_ArgDef.create)
    ..pc<OpDef_ArgDef>(3, 'outputArg', $pb.PbFieldType.PM, OpDef_ArgDef.create)
    ..pc<OpDef_AttrDef>(4, 'attr', $pb.PbFieldType.PM, OpDef_AttrDef.create)
    ..aOS(5, 'summary')
    ..aOS(6, 'description')
    ..a<OpDeprecation>(8, 'deprecation', $pb.PbFieldType.OM,
        OpDeprecation.getDefault, OpDeprecation.create)
    ..aOB(16, 'isAggregate')
    ..aOB(17, 'isStateful')
    ..aOB(18, 'isCommutative')
    ..aOB(19, 'allowsUninitializedInput')
    ..hasRequiredFields = false;

  OpDef._() : super();
  factory OpDef() => create();
  factory OpDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OpDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  OpDef clone() => OpDef()..mergeFromMessage(this);
  OpDef copyWith(void Function(OpDef) updates) =>
      super.copyWith((message) => updates(message as OpDef));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpDef create() => OpDef._();
  OpDef createEmptyInstance() => create();
  static $pb.PbList<OpDef> createRepeated() => $pb.PbList<OpDef>();
  static OpDef getDefault() => _defaultInstance ??= create()..freeze();
  static OpDef _defaultInstance;

  $core.String get name => $_getS(0, '');
  set name($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasName() => $_has(0);
  void clearName() => clearField(1);

  $core.List<OpDef_ArgDef> get inputArg => $_getList(1);

  $core.List<OpDef_ArgDef> get outputArg => $_getList(2);

  $core.List<OpDef_AttrDef> get attr => $_getList(3);

  $core.String get summary => $_getS(4, '');
  set summary($core.String v) {
    $_setString(4, v);
  }

  $core.bool hasSummary() => $_has(4);
  void clearSummary() => clearField(5);

  $core.String get description => $_getS(5, '');
  set description($core.String v) {
    $_setString(5, v);
  }

  $core.bool hasDescription() => $_has(5);
  void clearDescription() => clearField(6);

  OpDeprecation get deprecation => $_getN(6);
  set deprecation(OpDeprecation v) {
    setField(8, v);
  }

  $core.bool hasDeprecation() => $_has(6);
  void clearDeprecation() => clearField(8);

  $core.bool get isAggregate => $_get(7, false);
  set isAggregate($core.bool v) {
    $_setBool(7, v);
  }

  $core.bool hasIsAggregate() => $_has(7);
  void clearIsAggregate() => clearField(16);

  $core.bool get isStateful => $_get(8, false);
  set isStateful($core.bool v) {
    $_setBool(8, v);
  }

  $core.bool hasIsStateful() => $_has(8);
  void clearIsStateful() => clearField(17);

  $core.bool get isCommutative => $_get(9, false);
  set isCommutative($core.bool v) {
    $_setBool(9, v);
  }

  $core.bool hasIsCommutative() => $_has(9);
  void clearIsCommutative() => clearField(18);

  $core.bool get allowsUninitializedInput => $_get(10, false);
  set allowsUninitializedInput($core.bool v) {
    $_setBool(10, v);
  }

  $core.bool hasAllowsUninitializedInput() => $_has(10);
  void clearAllowsUninitializedInput() => clearField(19);
}

class OpDeprecation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OpDeprecation',
      package: const $pb.PackageName('tensorflow'))
    ..a<$core.int>(1, 'version', $pb.PbFieldType.O3)
    ..aOS(2, 'explanation')
    ..hasRequiredFields = false;

  OpDeprecation._() : super();
  factory OpDeprecation() => create();
  factory OpDeprecation.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OpDeprecation.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  OpDeprecation clone() => OpDeprecation()..mergeFromMessage(this);
  OpDeprecation copyWith(void Function(OpDeprecation) updates) =>
      super.copyWith((message) => updates(message as OpDeprecation));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpDeprecation create() => OpDeprecation._();
  OpDeprecation createEmptyInstance() => create();
  static $pb.PbList<OpDeprecation> createRepeated() =>
      $pb.PbList<OpDeprecation>();
  static OpDeprecation getDefault() => _defaultInstance ??= create()..freeze();
  static OpDeprecation _defaultInstance;

  $core.int get version => $_get(0, 0);
  set version($core.int v) {
    $_setSignedInt32(0, v);
  }

  $core.bool hasVersion() => $_has(0);
  void clearVersion() => clearField(1);

  $core.String get explanation => $_getS(1, '');
  set explanation($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasExplanation() => $_has(1);
  void clearExplanation() => clearField(2);
}

class OpList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo('OpList', package: const $pb.PackageName('tensorflow'))
        ..pc<OpDef>(1, 'op', $pb.PbFieldType.PM, OpDef.create)
        ..hasRequiredFields = false;

  OpList._() : super();
  factory OpList() => create();
  factory OpList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OpList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  OpList clone() => OpList()..mergeFromMessage(this);
  OpList copyWith(void Function(OpList) updates) =>
      super.copyWith((message) => updates(message as OpList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpList create() => OpList._();
  OpList createEmptyInstance() => create();
  static $pb.PbList<OpList> createRepeated() => $pb.PbList<OpList>();
  static OpList getDefault() => _defaultInstance ??= create()..freeze();
  static OpList _defaultInstance;

  $core.List<OpDef> get op => $_getList(0);
}
