///
//  Generated code. Do not modify.
//  source: rewriter_config.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'attr_value.pb.dart' as $0;

import 'rewriter_config.pbenum.dart';

export 'rewriter_config.pbenum.dart';

class AutoParallelOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AutoParallelOptions',
      package: const $pb.PackageName('tensorflow'))
    ..aOB(1, 'enable')
    ..a<$core.int>(2, 'numReplicas', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  AutoParallelOptions._() : super();
  factory AutoParallelOptions() => create();
  factory AutoParallelOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AutoParallelOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  AutoParallelOptions clone() => AutoParallelOptions()..mergeFromMessage(this);
  AutoParallelOptions copyWith(void Function(AutoParallelOptions) updates) =>
      super.copyWith((message) => updates(message as AutoParallelOptions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AutoParallelOptions create() => AutoParallelOptions._();
  AutoParallelOptions createEmptyInstance() => create();
  static $pb.PbList<AutoParallelOptions> createRepeated() =>
      $pb.PbList<AutoParallelOptions>();
  static AutoParallelOptions getDefault() =>
      _defaultInstance ??= create()..freeze();
  static AutoParallelOptions _defaultInstance;

  $core.bool get enable => $_get(0, false);
  set enable($core.bool v) {
    $_setBool(0, v);
  }

  $core.bool hasEnable() => $_has(0);
  void clearEnable() => clearField(1);

  $core.int get numReplicas => $_get(1, 0);
  set numReplicas($core.int v) {
    $_setSignedInt32(1, v);
  }

  $core.bool hasNumReplicas() => $_has(1);
  void clearNumReplicas() => clearField(2);
}

class RewriterConfig_CustomGraphOptimizer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'RewriterConfig.CustomGraphOptimizer',
      package: const $pb.PackageName('tensorflow'))
    ..aOS(1, 'name')
    ..m<$core.String, $0.AttrValue>(
        2,
        'parameterMap',
        'RewriterConfig.CustomGraphOptimizer.ParameterMapEntry',
        $pb.PbFieldType.OS,
        $pb.PbFieldType.OM,
        $0.AttrValue.create,
        null,
        null,
        const $pb.PackageName('tensorflow'))
    ..hasRequiredFields = false;

  RewriterConfig_CustomGraphOptimizer._() : super();
  factory RewriterConfig_CustomGraphOptimizer() => create();
  factory RewriterConfig_CustomGraphOptimizer.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RewriterConfig_CustomGraphOptimizer.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  RewriterConfig_CustomGraphOptimizer clone() =>
      RewriterConfig_CustomGraphOptimizer()..mergeFromMessage(this);
  RewriterConfig_CustomGraphOptimizer copyWith(
          void Function(RewriterConfig_CustomGraphOptimizer) updates) =>
      super.copyWith(
          (message) => updates(message as RewriterConfig_CustomGraphOptimizer));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RewriterConfig_CustomGraphOptimizer create() =>
      RewriterConfig_CustomGraphOptimizer._();
  RewriterConfig_CustomGraphOptimizer createEmptyInstance() => create();
  static $pb.PbList<RewriterConfig_CustomGraphOptimizer> createRepeated() =>
      $pb.PbList<RewriterConfig_CustomGraphOptimizer>();
  static RewriterConfig_CustomGraphOptimizer getDefault() =>
      _defaultInstance ??= create()..freeze();
  static RewriterConfig_CustomGraphOptimizer _defaultInstance;

  $core.String get name => $_getS(0, '');
  set name($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasName() => $_has(0);
  void clearName() => clearField(1);

  $core.Map<$core.String, $0.AttrValue> get parameterMap => $_getMap(1);
}

class RewriterConfig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RewriterConfig',
      package: const $pb.PackageName('tensorflow'))
    ..e<RewriterConfig_Toggle>(
        1,
        'layoutOptimizer',
        $pb.PbFieldType.OE,
        RewriterConfig_Toggle.DEFAULT,
        RewriterConfig_Toggle.valueOf,
        RewriterConfig_Toggle.values)
    ..aOB(2, 'disableModelPruning')
    ..e<RewriterConfig_Toggle>(
        3,
        'constantFolding',
        $pb.PbFieldType.OE,
        RewriterConfig_Toggle.DEFAULT,
        RewriterConfig_Toggle.valueOf,
        RewriterConfig_Toggle.values)
    ..e<RewriterConfig_MemOptType>(
        4,
        'memoryOptimization',
        $pb.PbFieldType.OE,
        RewriterConfig_MemOptType.DEFAULT_MEM_OPT,
        RewriterConfig_MemOptType.valueOf,
        RewriterConfig_MemOptType.values)
    ..a<AutoParallelOptions>(5, 'autoParallel', $pb.PbFieldType.OM,
        AutoParallelOptions.getDefault, AutoParallelOptions.create)
    ..aOS(6, 'memoryOptimizerTargetNodeNameScope')
    ..e<RewriterConfig_Toggle>(
        7,
        'arithmeticOptimization',
        $pb.PbFieldType.OE,
        RewriterConfig_Toggle.DEFAULT,
        RewriterConfig_Toggle.valueOf,
        RewriterConfig_Toggle.values)
    ..e<RewriterConfig_Toggle>(
        8,
        'dependencyOptimization',
        $pb.PbFieldType.OE,
        RewriterConfig_Toggle.DEFAULT,
        RewriterConfig_Toggle.valueOf,
        RewriterConfig_Toggle.values)
    ..e<RewriterConfig_Toggle>(
        9,
        'loopOptimization',
        $pb.PbFieldType.OE,
        RewriterConfig_Toggle.DEFAULT,
        RewriterConfig_Toggle.valueOf,
        RewriterConfig_Toggle.values)
    ..e<RewriterConfig_Toggle>(
        10,
        'functionOptimization',
        $pb.PbFieldType.OE,
        RewriterConfig_Toggle.DEFAULT,
        RewriterConfig_Toggle.valueOf,
        RewriterConfig_Toggle.values)
    ..e<RewriterConfig_Toggle>(
        11,
        'debugStripper',
        $pb.PbFieldType.OE,
        RewriterConfig_Toggle.DEFAULT,
        RewriterConfig_Toggle.valueOf,
        RewriterConfig_Toggle.values)
    ..e<RewriterConfig_NumIterationsType>(
        12,
        'metaOptimizerIterations',
        $pb.PbFieldType.OE,
        RewriterConfig_NumIterationsType.DEFAULT_NUM_ITERS,
        RewriterConfig_NumIterationsType.valueOf,
        RewriterConfig_NumIterationsType.values)
    ..e<RewriterConfig_Toggle>(
        13,
        'shapeOptimization',
        $pb.PbFieldType.OE,
        RewriterConfig_Toggle.DEFAULT,
        RewriterConfig_Toggle.valueOf,
        RewriterConfig_Toggle.values)
    ..e<RewriterConfig_Toggle>(
        14,
        'remapping',
        $pb.PbFieldType.OE,
        RewriterConfig_Toggle.DEFAULT,
        RewriterConfig_Toggle.valueOf,
        RewriterConfig_Toggle.values)
    ..pPS(100, 'optimizers')
    ..pc<RewriterConfig_CustomGraphOptimizer>(200, 'customOptimizers',
        $pb.PbFieldType.PM, RewriterConfig_CustomGraphOptimizer.create)
    ..hasRequiredFields = false;

  RewriterConfig._() : super();
  factory RewriterConfig() => create();
  factory RewriterConfig.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RewriterConfig.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  RewriterConfig clone() => RewriterConfig()..mergeFromMessage(this);
  RewriterConfig copyWith(void Function(RewriterConfig) updates) =>
      super.copyWith((message) => updates(message as RewriterConfig));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RewriterConfig create() => RewriterConfig._();
  RewriterConfig createEmptyInstance() => create();
  static $pb.PbList<RewriterConfig> createRepeated() =>
      $pb.PbList<RewriterConfig>();
  static RewriterConfig getDefault() => _defaultInstance ??= create()..freeze();
  static RewriterConfig _defaultInstance;

  RewriterConfig_Toggle get layoutOptimizer => $_getN(0);
  set layoutOptimizer(RewriterConfig_Toggle v) {
    setField(1, v);
  }

  $core.bool hasLayoutOptimizer() => $_has(0);
  void clearLayoutOptimizer() => clearField(1);

  $core.bool get disableModelPruning => $_get(1, false);
  set disableModelPruning($core.bool v) {
    $_setBool(1, v);
  }

  $core.bool hasDisableModelPruning() => $_has(1);
  void clearDisableModelPruning() => clearField(2);

  RewriterConfig_Toggle get constantFolding => $_getN(2);
  set constantFolding(RewriterConfig_Toggle v) {
    setField(3, v);
  }

  $core.bool hasConstantFolding() => $_has(2);
  void clearConstantFolding() => clearField(3);

  RewriterConfig_MemOptType get memoryOptimization => $_getN(3);
  set memoryOptimization(RewriterConfig_MemOptType v) {
    setField(4, v);
  }

  $core.bool hasMemoryOptimization() => $_has(3);
  void clearMemoryOptimization() => clearField(4);

  AutoParallelOptions get autoParallel => $_getN(4);
  set autoParallel(AutoParallelOptions v) {
    setField(5, v);
  }

  $core.bool hasAutoParallel() => $_has(4);
  void clearAutoParallel() => clearField(5);

  $core.String get memoryOptimizerTargetNodeNameScope => $_getS(5, '');
  set memoryOptimizerTargetNodeNameScope($core.String v) {
    $_setString(5, v);
  }

  $core.bool hasMemoryOptimizerTargetNodeNameScope() => $_has(5);
  void clearMemoryOptimizerTargetNodeNameScope() => clearField(6);

  RewriterConfig_Toggle get arithmeticOptimization => $_getN(6);
  set arithmeticOptimization(RewriterConfig_Toggle v) {
    setField(7, v);
  }

  $core.bool hasArithmeticOptimization() => $_has(6);
  void clearArithmeticOptimization() => clearField(7);

  RewriterConfig_Toggle get dependencyOptimization => $_getN(7);
  set dependencyOptimization(RewriterConfig_Toggle v) {
    setField(8, v);
  }

  $core.bool hasDependencyOptimization() => $_has(7);
  void clearDependencyOptimization() => clearField(8);

  RewriterConfig_Toggle get loopOptimization => $_getN(8);
  set loopOptimization(RewriterConfig_Toggle v) {
    setField(9, v);
  }

  $core.bool hasLoopOptimization() => $_has(8);
  void clearLoopOptimization() => clearField(9);

  RewriterConfig_Toggle get functionOptimization => $_getN(9);
  set functionOptimization(RewriterConfig_Toggle v) {
    setField(10, v);
  }

  $core.bool hasFunctionOptimization() => $_has(9);
  void clearFunctionOptimization() => clearField(10);

  RewriterConfig_Toggle get debugStripper => $_getN(10);
  set debugStripper(RewriterConfig_Toggle v) {
    setField(11, v);
  }

  $core.bool hasDebugStripper() => $_has(10);
  void clearDebugStripper() => clearField(11);

  RewriterConfig_NumIterationsType get metaOptimizerIterations => $_getN(11);
  set metaOptimizerIterations(RewriterConfig_NumIterationsType v) {
    setField(12, v);
  }

  $core.bool hasMetaOptimizerIterations() => $_has(11);
  void clearMetaOptimizerIterations() => clearField(12);

  RewriterConfig_Toggle get shapeOptimization => $_getN(12);
  set shapeOptimization(RewriterConfig_Toggle v) {
    setField(13, v);
  }

  $core.bool hasShapeOptimization() => $_has(12);
  void clearShapeOptimization() => clearField(13);

  RewriterConfig_Toggle get remapping => $_getN(13);
  set remapping(RewriterConfig_Toggle v) {
    setField(14, v);
  }

  $core.bool hasRemapping() => $_has(13);
  void clearRemapping() => clearField(14);

  $core.List<$core.String> get optimizers => $_getList(14);

  $core.List<RewriterConfig_CustomGraphOptimizer> get customOptimizers =>
      $_getList(15);
}
