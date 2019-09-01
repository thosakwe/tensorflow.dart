///
//  Generated code. Do not modify.
//  source: function.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'op_def.pb.dart' as $0;
import 'node_def.pb.dart' as $1;
import 'attr_value.pb.dart' as $2;

class FunctionDefLibrary extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FunctionDefLibrary',
      package: const $pb.PackageName('tensorflow'))
    ..pc<FunctionDef>(1, 'function', $pb.PbFieldType.PM, FunctionDef.create)
    ..pc<GradientDef>(2, 'gradient', $pb.PbFieldType.PM, GradientDef.create)
    ..hasRequiredFields = false;

  FunctionDefLibrary._() : super();
  factory FunctionDefLibrary() => create();
  factory FunctionDefLibrary.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FunctionDefLibrary.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  FunctionDefLibrary clone() => FunctionDefLibrary()..mergeFromMessage(this);
  FunctionDefLibrary copyWith(void Function(FunctionDefLibrary) updates) =>
      super.copyWith((message) => updates(message as FunctionDefLibrary));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FunctionDefLibrary create() => FunctionDefLibrary._();
  FunctionDefLibrary createEmptyInstance() => create();
  static $pb.PbList<FunctionDefLibrary> createRepeated() =>
      $pb.PbList<FunctionDefLibrary>();
  static FunctionDefLibrary getDefault() =>
      _defaultInstance ??= create()..freeze();
  static FunctionDefLibrary _defaultInstance;

  $core.List<FunctionDef> get function => $_getList(0);

  $core.List<GradientDef> get gradient => $_getList(1);
}

class FunctionDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FunctionDef',
      package: const $pb.PackageName('tensorflow'))
    ..a<$0.OpDef>(1, 'signature', $pb.PbFieldType.OM, $0.OpDef.getDefault,
        $0.OpDef.create)
    ..pc<$1.NodeDef>(3, 'nodeDef', $pb.PbFieldType.PM, $1.NodeDef.create)
    ..m<$core.String, $core.String>(
        4,
        'ret',
        'FunctionDef.RetEntry',
        $pb.PbFieldType.OS,
        $pb.PbFieldType.OS,
        null,
        null,
        null,
        const $pb.PackageName('tensorflow'))
    ..m<$core.String, $2.AttrValue>(
        5,
        'attr',
        'FunctionDef.AttrEntry',
        $pb.PbFieldType.OS,
        $pb.PbFieldType.OM,
        $2.AttrValue.create,
        null,
        null,
        const $pb.PackageName('tensorflow'))
    ..hasRequiredFields = false;

  FunctionDef._() : super();
  factory FunctionDef() => create();
  factory FunctionDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FunctionDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  FunctionDef clone() => FunctionDef()..mergeFromMessage(this);
  FunctionDef copyWith(void Function(FunctionDef) updates) =>
      super.copyWith((message) => updates(message as FunctionDef));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FunctionDef create() => FunctionDef._();
  FunctionDef createEmptyInstance() => create();
  static $pb.PbList<FunctionDef> createRepeated() => $pb.PbList<FunctionDef>();
  static FunctionDef getDefault() => _defaultInstance ??= create()..freeze();
  static FunctionDef _defaultInstance;

  $0.OpDef get signature => $_getN(0);
  set signature($0.OpDef v) {
    setField(1, v);
  }

  $core.bool hasSignature() => $_has(0);
  void clearSignature() => clearField(1);

  $core.List<$1.NodeDef> get nodeDef => $_getList(1);

  $core.Map<$core.String, $core.String> get ret => $_getMap(2);

  $core.Map<$core.String, $2.AttrValue> get attr => $_getMap(3);
}

class GradientDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GradientDef',
      package: const $pb.PackageName('tensorflow'))
    ..aOS(1, 'functionName')
    ..aOS(2, 'gradientFunc')
    ..hasRequiredFields = false;

  GradientDef._() : super();
  factory GradientDef() => create();
  factory GradientDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GradientDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GradientDef clone() => GradientDef()..mergeFromMessage(this);
  GradientDef copyWith(void Function(GradientDef) updates) =>
      super.copyWith((message) => updates(message as GradientDef));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GradientDef create() => GradientDef._();
  GradientDef createEmptyInstance() => create();
  static $pb.PbList<GradientDef> createRepeated() => $pb.PbList<GradientDef>();
  static GradientDef getDefault() => _defaultInstance ??= create()..freeze();
  static GradientDef _defaultInstance;

  $core.String get functionName => $_getS(0, '');
  set functionName($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasFunctionName() => $_has(0);
  void clearFunctionName() => clearField(1);

  $core.String get gradientFunc => $_getS(1, '');
  set gradientFunc($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasGradientFunc() => $_has(1);
  void clearGradientFunc() => clearField(2);
}
