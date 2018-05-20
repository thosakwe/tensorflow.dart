///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_rewriter_config;

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

import 'attr_value.pb.dart';

import 'rewriter_config.pbenum.dart';

export 'rewriter_config.pbenum.dart';

class AutoParallelOptions extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('AutoParallelOptions')
    ..aOB(1, 'enable')
    ..a<int>(2, 'numReplicas', PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  AutoParallelOptions() : super();
  AutoParallelOptions.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  AutoParallelOptions.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  AutoParallelOptions clone() => new AutoParallelOptions()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static AutoParallelOptions create() => new AutoParallelOptions();
  static PbList<AutoParallelOptions> createRepeated() => new PbList<AutoParallelOptions>();
  static AutoParallelOptions getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyAutoParallelOptions();
    return _defaultInstance;
  }
  static AutoParallelOptions _defaultInstance;
  static void $checkItem(AutoParallelOptions v) {
    if (v is! AutoParallelOptions) checkItemFailed(v, 'AutoParallelOptions');
  }

  bool get enable => $_get(0, false);
  set enable(bool v) { $_setBool(0, v); }
  bool hasEnable() => $_has(0);
  void clearEnable() => clearField(1);

  int get numReplicas => $_get(1, 0);
  set numReplicas(int v) { $_setUnsignedInt32(1, v); }
  bool hasNumReplicas() => $_has(1);
  void clearNumReplicas() => clearField(2);
}

class _ReadonlyAutoParallelOptions extends AutoParallelOptions with ReadonlyMessageMixin {}

class RewriterConfig_CustomGraphOptimizer_ParameterMapEntry extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RewriterConfig_CustomGraphOptimizer_ParameterMapEntry')
    ..aOS(1, 'key')
    ..a<AttrValue>(2, 'value', PbFieldType.OM, AttrValue.getDefault, AttrValue.create)
    ..hasRequiredFields = false
  ;

  RewriterConfig_CustomGraphOptimizer_ParameterMapEntry() : super();
  RewriterConfig_CustomGraphOptimizer_ParameterMapEntry.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RewriterConfig_CustomGraphOptimizer_ParameterMapEntry.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RewriterConfig_CustomGraphOptimizer_ParameterMapEntry clone() => new RewriterConfig_CustomGraphOptimizer_ParameterMapEntry()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RewriterConfig_CustomGraphOptimizer_ParameterMapEntry create() => new RewriterConfig_CustomGraphOptimizer_ParameterMapEntry();
  static PbList<RewriterConfig_CustomGraphOptimizer_ParameterMapEntry> createRepeated() => new PbList<RewriterConfig_CustomGraphOptimizer_ParameterMapEntry>();
  static RewriterConfig_CustomGraphOptimizer_ParameterMapEntry getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRewriterConfig_CustomGraphOptimizer_ParameterMapEntry();
    return _defaultInstance;
  }
  static RewriterConfig_CustomGraphOptimizer_ParameterMapEntry _defaultInstance;
  static void $checkItem(RewriterConfig_CustomGraphOptimizer_ParameterMapEntry v) {
    if (v is! RewriterConfig_CustomGraphOptimizer_ParameterMapEntry) checkItemFailed(v, 'RewriterConfig_CustomGraphOptimizer_ParameterMapEntry');
  }

  String get key => $_getS(0, '');
  set key(String v) { $_setString(0, v); }
  bool hasKey() => $_has(0);
  void clearKey() => clearField(1);

  AttrValue get value => $_getN(1);
  set value(AttrValue v) { setField(2, v); }
  bool hasValue() => $_has(1);
  void clearValue() => clearField(2);
}

class _ReadonlyRewriterConfig_CustomGraphOptimizer_ParameterMapEntry extends RewriterConfig_CustomGraphOptimizer_ParameterMapEntry with ReadonlyMessageMixin {}

class RewriterConfig_CustomGraphOptimizer extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RewriterConfig_CustomGraphOptimizer')
    ..aOS(1, 'name')
    ..pp<RewriterConfig_CustomGraphOptimizer_ParameterMapEntry>(2, 'parameterMap', PbFieldType.PM, RewriterConfig_CustomGraphOptimizer_ParameterMapEntry.$checkItem, RewriterConfig_CustomGraphOptimizer_ParameterMapEntry.create)
    ..hasRequiredFields = false
  ;

  RewriterConfig_CustomGraphOptimizer() : super();
  RewriterConfig_CustomGraphOptimizer.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RewriterConfig_CustomGraphOptimizer.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RewriterConfig_CustomGraphOptimizer clone() => new RewriterConfig_CustomGraphOptimizer()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RewriterConfig_CustomGraphOptimizer create() => new RewriterConfig_CustomGraphOptimizer();
  static PbList<RewriterConfig_CustomGraphOptimizer> createRepeated() => new PbList<RewriterConfig_CustomGraphOptimizer>();
  static RewriterConfig_CustomGraphOptimizer getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRewriterConfig_CustomGraphOptimizer();
    return _defaultInstance;
  }
  static RewriterConfig_CustomGraphOptimizer _defaultInstance;
  static void $checkItem(RewriterConfig_CustomGraphOptimizer v) {
    if (v is! RewriterConfig_CustomGraphOptimizer) checkItemFailed(v, 'RewriterConfig_CustomGraphOptimizer');
  }

  String get name => $_getS(0, '');
  set name(String v) { $_setString(0, v); }
  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  List<RewriterConfig_CustomGraphOptimizer_ParameterMapEntry> get parameterMap => $_getList(1);
}

class _ReadonlyRewriterConfig_CustomGraphOptimizer extends RewriterConfig_CustomGraphOptimizer with ReadonlyMessageMixin {}

class RewriterConfig extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RewriterConfig')
    ..e<RewriterConfig_Toggle>(1, 'layoutOptimizer', PbFieldType.OE, RewriterConfig_Toggle.DEFAULT, RewriterConfig_Toggle.valueOf, RewriterConfig_Toggle.values)
    ..aOB(2, 'disableModelPruning')
    ..e<RewriterConfig_Toggle>(3, 'constantFolding', PbFieldType.OE, RewriterConfig_Toggle.DEFAULT, RewriterConfig_Toggle.valueOf, RewriterConfig_Toggle.values)
    ..e<RewriterConfig_MemOptType>(4, 'memoryOptimization', PbFieldType.OE, RewriterConfig_MemOptType.DEFAULT_MEM_OPT, RewriterConfig_MemOptType.valueOf, RewriterConfig_MemOptType.values)
    ..a<AutoParallelOptions>(5, 'autoParallel', PbFieldType.OM, AutoParallelOptions.getDefault, AutoParallelOptions.create)
    ..aOS(6, 'memoryOptimizerTargetNodeNameScope')
    ..e<RewriterConfig_Toggle>(7, 'arithmeticOptimization', PbFieldType.OE, RewriterConfig_Toggle.DEFAULT, RewriterConfig_Toggle.valueOf, RewriterConfig_Toggle.values)
    ..e<RewriterConfig_Toggle>(8, 'dependencyOptimization', PbFieldType.OE, RewriterConfig_Toggle.DEFAULT, RewriterConfig_Toggle.valueOf, RewriterConfig_Toggle.values)
    ..e<RewriterConfig_Toggle>(9, 'loopOptimization', PbFieldType.OE, RewriterConfig_Toggle.DEFAULT, RewriterConfig_Toggle.valueOf, RewriterConfig_Toggle.values)
    ..e<RewriterConfig_Toggle>(10, 'functionOptimization', PbFieldType.OE, RewriterConfig_Toggle.DEFAULT, RewriterConfig_Toggle.valueOf, RewriterConfig_Toggle.values)
    ..e<RewriterConfig_Toggle>(11, 'debugStripper', PbFieldType.OE, RewriterConfig_Toggle.DEFAULT, RewriterConfig_Toggle.valueOf, RewriterConfig_Toggle.values)
    ..e<RewriterConfig_NumIterationsType>(12, 'metaOptimizerIterations', PbFieldType.OE, RewriterConfig_NumIterationsType.DEFAULT_NUM_ITERS, RewriterConfig_NumIterationsType.valueOf, RewriterConfig_NumIterationsType.values)
    ..e<RewriterConfig_Toggle>(13, 'shapeOptimization', PbFieldType.OE, RewriterConfig_Toggle.DEFAULT, RewriterConfig_Toggle.valueOf, RewriterConfig_Toggle.values)
    ..e<RewriterConfig_Toggle>(14, 'remapping', PbFieldType.OE, RewriterConfig_Toggle.DEFAULT, RewriterConfig_Toggle.valueOf, RewriterConfig_Toggle.values)
    ..pPS(100, 'optimizers')
    ..pp<RewriterConfig_CustomGraphOptimizer>(200, 'customOptimizers', PbFieldType.PM, RewriterConfig_CustomGraphOptimizer.$checkItem, RewriterConfig_CustomGraphOptimizer.create)
    ..hasRequiredFields = false
  ;

  RewriterConfig() : super();
  RewriterConfig.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RewriterConfig.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RewriterConfig clone() => new RewriterConfig()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RewriterConfig create() => new RewriterConfig();
  static PbList<RewriterConfig> createRepeated() => new PbList<RewriterConfig>();
  static RewriterConfig getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRewriterConfig();
    return _defaultInstance;
  }
  static RewriterConfig _defaultInstance;
  static void $checkItem(RewriterConfig v) {
    if (v is! RewriterConfig) checkItemFailed(v, 'RewriterConfig');
  }

  RewriterConfig_Toggle get layoutOptimizer => $_getN(0);
  set layoutOptimizer(RewriterConfig_Toggle v) { setField(1, v); }
  bool hasLayoutOptimizer() => $_has(0);
  void clearLayoutOptimizer() => clearField(1);

  bool get disableModelPruning => $_get(1, false);
  set disableModelPruning(bool v) { $_setBool(1, v); }
  bool hasDisableModelPruning() => $_has(1);
  void clearDisableModelPruning() => clearField(2);

  RewriterConfig_Toggle get constantFolding => $_getN(2);
  set constantFolding(RewriterConfig_Toggle v) { setField(3, v); }
  bool hasConstantFolding() => $_has(2);
  void clearConstantFolding() => clearField(3);

  RewriterConfig_MemOptType get memoryOptimization => $_getN(3);
  set memoryOptimization(RewriterConfig_MemOptType v) { setField(4, v); }
  bool hasMemoryOptimization() => $_has(3);
  void clearMemoryOptimization() => clearField(4);

  AutoParallelOptions get autoParallel => $_getN(4);
  set autoParallel(AutoParallelOptions v) { setField(5, v); }
  bool hasAutoParallel() => $_has(4);
  void clearAutoParallel() => clearField(5);

  String get memoryOptimizerTargetNodeNameScope => $_getS(5, '');
  set memoryOptimizerTargetNodeNameScope(String v) { $_setString(5, v); }
  bool hasMemoryOptimizerTargetNodeNameScope() => $_has(5);
  void clearMemoryOptimizerTargetNodeNameScope() => clearField(6);

  RewriterConfig_Toggle get arithmeticOptimization => $_getN(6);
  set arithmeticOptimization(RewriterConfig_Toggle v) { setField(7, v); }
  bool hasArithmeticOptimization() => $_has(6);
  void clearArithmeticOptimization() => clearField(7);

  RewriterConfig_Toggle get dependencyOptimization => $_getN(7);
  set dependencyOptimization(RewriterConfig_Toggle v) { setField(8, v); }
  bool hasDependencyOptimization() => $_has(7);
  void clearDependencyOptimization() => clearField(8);

  RewriterConfig_Toggle get loopOptimization => $_getN(8);
  set loopOptimization(RewriterConfig_Toggle v) { setField(9, v); }
  bool hasLoopOptimization() => $_has(8);
  void clearLoopOptimization() => clearField(9);

  RewriterConfig_Toggle get functionOptimization => $_getN(9);
  set functionOptimization(RewriterConfig_Toggle v) { setField(10, v); }
  bool hasFunctionOptimization() => $_has(9);
  void clearFunctionOptimization() => clearField(10);

  RewriterConfig_Toggle get debugStripper => $_getN(10);
  set debugStripper(RewriterConfig_Toggle v) { setField(11, v); }
  bool hasDebugStripper() => $_has(10);
  void clearDebugStripper() => clearField(11);

  RewriterConfig_NumIterationsType get metaOptimizerIterations => $_getN(11);
  set metaOptimizerIterations(RewriterConfig_NumIterationsType v) { setField(12, v); }
  bool hasMetaOptimizerIterations() => $_has(11);
  void clearMetaOptimizerIterations() => clearField(12);

  RewriterConfig_Toggle get shapeOptimization => $_getN(12);
  set shapeOptimization(RewriterConfig_Toggle v) { setField(13, v); }
  bool hasShapeOptimization() => $_has(12);
  void clearShapeOptimization() => clearField(13);

  RewriterConfig_Toggle get remapping => $_getN(13);
  set remapping(RewriterConfig_Toggle v) { setField(14, v); }
  bool hasRemapping() => $_has(13);
  void clearRemapping() => clearField(14);

  List<String> get optimizers => $_getList(14);

  List<RewriterConfig_CustomGraphOptimizer> get customOptimizers => $_getList(15);
}

class _ReadonlyRewriterConfig extends RewriterConfig with ReadonlyMessageMixin {}

