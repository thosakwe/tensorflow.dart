///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_function;

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

import 'op_def.pb.dart';
import 'node_def.pb.dart';
import 'attr_value.pb.dart';

class FunctionDefLibrary extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('FunctionDefLibrary')
    ..pp<FunctionDef>(1, 'function', PbFieldType.PM, FunctionDef.$checkItem,
        FunctionDef.create)
    ..pp<GradientDef>(2, 'gradient', PbFieldType.PM, GradientDef.$checkItem,
        GradientDef.create)
    ..hasRequiredFields = false;

  FunctionDefLibrary() : super();
  FunctionDefLibrary.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  FunctionDefLibrary.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  FunctionDefLibrary clone() =>
      new FunctionDefLibrary()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static FunctionDefLibrary create() => new FunctionDefLibrary();
  static PbList<FunctionDefLibrary> createRepeated() =>
      new PbList<FunctionDefLibrary>();
  static FunctionDefLibrary getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyFunctionDefLibrary();
    return _defaultInstance;
  }

  static FunctionDefLibrary _defaultInstance;
  static void $checkItem(FunctionDefLibrary v) {
    if (v is! FunctionDefLibrary) checkItemFailed(v, 'FunctionDefLibrary');
  }

  List<FunctionDef> get function => $_getList(0);

  List<GradientDef> get gradient => $_getList(1);
}

class _ReadonlyFunctionDefLibrary extends FunctionDefLibrary
    with ReadonlyMessageMixin {}

class FunctionDef_AttrEntry extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('FunctionDef_AttrEntry')
    ..aOS(1, 'key')
    ..a<AttrValue>(
        2, 'value', PbFieldType.OM, AttrValue.getDefault, AttrValue.create)
    ..hasRequiredFields = false;

  FunctionDef_AttrEntry() : super();
  FunctionDef_AttrEntry.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  FunctionDef_AttrEntry.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  FunctionDef_AttrEntry clone() =>
      new FunctionDef_AttrEntry()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static FunctionDef_AttrEntry create() => new FunctionDef_AttrEntry();
  static PbList<FunctionDef_AttrEntry> createRepeated() =>
      new PbList<FunctionDef_AttrEntry>();
  static FunctionDef_AttrEntry getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyFunctionDef_AttrEntry();
    return _defaultInstance;
  }

  static FunctionDef_AttrEntry _defaultInstance;
  static void $checkItem(FunctionDef_AttrEntry v) {
    if (v is! FunctionDef_AttrEntry)
      checkItemFailed(v, 'FunctionDef_AttrEntry');
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

class _ReadonlyFunctionDef_AttrEntry extends FunctionDef_AttrEntry
    with ReadonlyMessageMixin {}

class FunctionDef_RetEntry extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('FunctionDef_RetEntry')
    ..aOS(1, 'key')
    ..aOS(2, 'value')
    ..hasRequiredFields = false;

  FunctionDef_RetEntry() : super();
  FunctionDef_RetEntry.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  FunctionDef_RetEntry.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  FunctionDef_RetEntry clone() =>
      new FunctionDef_RetEntry()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static FunctionDef_RetEntry create() => new FunctionDef_RetEntry();
  static PbList<FunctionDef_RetEntry> createRepeated() =>
      new PbList<FunctionDef_RetEntry>();
  static FunctionDef_RetEntry getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyFunctionDef_RetEntry();
    return _defaultInstance;
  }

  static FunctionDef_RetEntry _defaultInstance;
  static void $checkItem(FunctionDef_RetEntry v) {
    if (v is! FunctionDef_RetEntry) checkItemFailed(v, 'FunctionDef_RetEntry');
  }

  String get key => $_getS(0, '');
  set key(String v) {
    $_setString(0, v);
  }

  bool hasKey() => $_has(0);
  void clearKey() => clearField(1);

  String get value => $_getS(1, '');
  set value(String v) {
    $_setString(1, v);
  }

  bool hasValue() => $_has(1);
  void clearValue() => clearField(2);
}

class _ReadonlyFunctionDef_RetEntry extends FunctionDef_RetEntry
    with ReadonlyMessageMixin {}

class FunctionDef extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('FunctionDef')
    ..a<OpDef>(1, 'signature', PbFieldType.OM, OpDef.getDefault, OpDef.create)
    ..pp<NodeDef>(
        3, 'nodeDef', PbFieldType.PM, NodeDef.$checkItem, NodeDef.create)
    ..pp<FunctionDef_RetEntry>(4, 'ret', PbFieldType.PM,
        FunctionDef_RetEntry.$checkItem, FunctionDef_RetEntry.create)
    ..pp<FunctionDef_AttrEntry>(5, 'attr', PbFieldType.PM,
        FunctionDef_AttrEntry.$checkItem, FunctionDef_AttrEntry.create)
    ..hasRequiredFields = false;

  FunctionDef() : super();
  FunctionDef.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  FunctionDef.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  FunctionDef clone() => new FunctionDef()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static FunctionDef create() => new FunctionDef();
  static PbList<FunctionDef> createRepeated() => new PbList<FunctionDef>();
  static FunctionDef getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyFunctionDef();
    return _defaultInstance;
  }

  static FunctionDef _defaultInstance;
  static void $checkItem(FunctionDef v) {
    if (v is! FunctionDef) checkItemFailed(v, 'FunctionDef');
  }

  OpDef get signature => $_getN(0);
  set signature(OpDef v) {
    setField(1, v);
  }

  bool hasSignature() => $_has(0);
  void clearSignature() => clearField(1);

  List<NodeDef> get nodeDef => $_getList(1);

  List<FunctionDef_RetEntry> get ret => $_getList(2);

  List<FunctionDef_AttrEntry> get attr => $_getList(3);
}

class _ReadonlyFunctionDef extends FunctionDef with ReadonlyMessageMixin {}

class GradientDef extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('GradientDef')
    ..aOS(1, 'functionName')
    ..aOS(2, 'gradientFunc')
    ..hasRequiredFields = false;

  GradientDef() : super();
  GradientDef.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  GradientDef.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  GradientDef clone() => new GradientDef()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static GradientDef create() => new GradientDef();
  static PbList<GradientDef> createRepeated() => new PbList<GradientDef>();
  static GradientDef getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyGradientDef();
    return _defaultInstance;
  }

  static GradientDef _defaultInstance;
  static void $checkItem(GradientDef v) {
    if (v is! GradientDef) checkItemFailed(v, 'GradientDef');
  }

  String get functionName => $_getS(0, '');
  set functionName(String v) {
    $_setString(0, v);
  }

  bool hasFunctionName() => $_has(0);
  void clearFunctionName() => clearField(1);

  String get gradientFunc => $_getS(1, '');
  set gradientFunc(String v) {
    $_setString(1, v);
  }

  bool hasGradientFunc() => $_has(1);
  void clearGradientFunc() => clearField(2);
}

class _ReadonlyGradientDef extends GradientDef with ReadonlyMessageMixin {}
