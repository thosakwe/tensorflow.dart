///
//  Generated code. Do not modify.
//  source: config.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'rewriter_config.pb.dart' as $0;
import 'cluster.pb.dart' as $1;
import 'debug.pb.dart' as $2;
import 'step_stats.pb.dart' as $3;
import 'cost_graph.pb.dart' as $4;
import 'graph.pb.dart' as $5;

import 'config.pbenum.dart';

export 'config.pbenum.dart';

class GPUOptions_Experimental_VirtualDevices extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'GPUOptions.Experimental.VirtualDevices',
      package: const $pb.PackageName('tensorflow'))
    ..p<$core.double>(1, 'memoryLimitMb', $pb.PbFieldType.PF)
    ..hasRequiredFields = false;

  GPUOptions_Experimental_VirtualDevices._() : super();
  factory GPUOptions_Experimental_VirtualDevices() => create();
  factory GPUOptions_Experimental_VirtualDevices.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GPUOptions_Experimental_VirtualDevices.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GPUOptions_Experimental_VirtualDevices clone() =>
      GPUOptions_Experimental_VirtualDevices()..mergeFromMessage(this);
  GPUOptions_Experimental_VirtualDevices copyWith(
          void Function(GPUOptions_Experimental_VirtualDevices) updates) =>
      super.copyWith((message) =>
          updates(message as GPUOptions_Experimental_VirtualDevices));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GPUOptions_Experimental_VirtualDevices create() =>
      GPUOptions_Experimental_VirtualDevices._();
  GPUOptions_Experimental_VirtualDevices createEmptyInstance() => create();
  static $pb.PbList<GPUOptions_Experimental_VirtualDevices> createRepeated() =>
      $pb.PbList<GPUOptions_Experimental_VirtualDevices>();
  static GPUOptions_Experimental_VirtualDevices getDefault() =>
      _defaultInstance ??= create()..freeze();
  static GPUOptions_Experimental_VirtualDevices _defaultInstance;

  $core.List<$core.double> get memoryLimitMb => $_getList(0);
}

class GPUOptions_Experimental extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GPUOptions.Experimental',
      package: const $pb.PackageName('tensorflow'))
    ..pc<GPUOptions_Experimental_VirtualDevices>(1, 'virtualDevices',
        $pb.PbFieldType.PM, GPUOptions_Experimental_VirtualDevices.create)
    ..hasRequiredFields = false;

  GPUOptions_Experimental._() : super();
  factory GPUOptions_Experimental() => create();
  factory GPUOptions_Experimental.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GPUOptions_Experimental.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GPUOptions_Experimental clone() =>
      GPUOptions_Experimental()..mergeFromMessage(this);
  GPUOptions_Experimental copyWith(
          void Function(GPUOptions_Experimental) updates) =>
      super.copyWith((message) => updates(message as GPUOptions_Experimental));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GPUOptions_Experimental create() => GPUOptions_Experimental._();
  GPUOptions_Experimental createEmptyInstance() => create();
  static $pb.PbList<GPUOptions_Experimental> createRepeated() =>
      $pb.PbList<GPUOptions_Experimental>();
  static GPUOptions_Experimental getDefault() =>
      _defaultInstance ??= create()..freeze();
  static GPUOptions_Experimental _defaultInstance;

  $core.List<GPUOptions_Experimental_VirtualDevices> get virtualDevices =>
      $_getList(0);
}

class GPUOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GPUOptions',
      package: const $pb.PackageName('tensorflow'))
    ..a<$core.double>(1, 'perProcessGpuMemoryFraction', $pb.PbFieldType.OD)
    ..aOS(2, 'allocatorType')
    ..aInt64(3, 'deferredDeletionBytes')
    ..aOB(4, 'allowGrowth')
    ..aOS(5, 'visibleDeviceList')
    ..a<$core.int>(6, 'pollingActiveDelayUsecs', $pb.PbFieldType.O3)
    ..a<$core.int>(7, 'pollingInactiveDelayMsecs', $pb.PbFieldType.O3)
    ..aOB(8, 'forceGpuCompatible')
    ..a<GPUOptions_Experimental>(9, 'experimental', $pb.PbFieldType.OM,
        GPUOptions_Experimental.getDefault, GPUOptions_Experimental.create)
    ..hasRequiredFields = false;

  GPUOptions._() : super();
  factory GPUOptions() => create();
  factory GPUOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GPUOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GPUOptions clone() => GPUOptions()..mergeFromMessage(this);
  GPUOptions copyWith(void Function(GPUOptions) updates) =>
      super.copyWith((message) => updates(message as GPUOptions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GPUOptions create() => GPUOptions._();
  GPUOptions createEmptyInstance() => create();
  static $pb.PbList<GPUOptions> createRepeated() => $pb.PbList<GPUOptions>();
  static GPUOptions getDefault() => _defaultInstance ??= create()..freeze();
  static GPUOptions _defaultInstance;

  $core.double get perProcessGpuMemoryFraction => $_getN(0);
  set perProcessGpuMemoryFraction($core.double v) {
    $_setDouble(0, v);
  }

  $core.bool hasPerProcessGpuMemoryFraction() => $_has(0);
  void clearPerProcessGpuMemoryFraction() => clearField(1);

  $core.String get allocatorType => $_getS(1, '');
  set allocatorType($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasAllocatorType() => $_has(1);
  void clearAllocatorType() => clearField(2);

  Int64 get deferredDeletionBytes => $_getI64(2);
  set deferredDeletionBytes(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasDeferredDeletionBytes() => $_has(2);
  void clearDeferredDeletionBytes() => clearField(3);

  $core.bool get allowGrowth => $_get(3, false);
  set allowGrowth($core.bool v) {
    $_setBool(3, v);
  }

  $core.bool hasAllowGrowth() => $_has(3);
  void clearAllowGrowth() => clearField(4);

  $core.String get visibleDeviceList => $_getS(4, '');
  set visibleDeviceList($core.String v) {
    $_setString(4, v);
  }

  $core.bool hasVisibleDeviceList() => $_has(4);
  void clearVisibleDeviceList() => clearField(5);

  $core.int get pollingActiveDelayUsecs => $_get(5, 0);
  set pollingActiveDelayUsecs($core.int v) {
    $_setSignedInt32(5, v);
  }

  $core.bool hasPollingActiveDelayUsecs() => $_has(5);
  void clearPollingActiveDelayUsecs() => clearField(6);

  $core.int get pollingInactiveDelayMsecs => $_get(6, 0);
  set pollingInactiveDelayMsecs($core.int v) {
    $_setSignedInt32(6, v);
  }

  $core.bool hasPollingInactiveDelayMsecs() => $_has(6);
  void clearPollingInactiveDelayMsecs() => clearField(7);

  $core.bool get forceGpuCompatible => $_get(7, false);
  set forceGpuCompatible($core.bool v) {
    $_setBool(7, v);
  }

  $core.bool hasForceGpuCompatible() => $_has(7);
  void clearForceGpuCompatible() => clearField(8);

  GPUOptions_Experimental get experimental => $_getN(8);
  set experimental(GPUOptions_Experimental v) {
    setField(9, v);
  }

  $core.bool hasExperimental() => $_has(8);
  void clearExperimental() => clearField(9);
}

class OptimizerOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OptimizerOptions',
      package: const $pb.PackageName('tensorflow'))
    ..aOB(1, 'doCommonSubexpressionElimination')
    ..aOB(2, 'doConstantFolding')
    ..e<OptimizerOptions_Level>(
        3,
        'optLevel',
        $pb.PbFieldType.OE,
        OptimizerOptions_Level.L1,
        OptimizerOptions_Level.valueOf,
        OptimizerOptions_Level.values)
    ..aOB(4, 'doFunctionInlining')
    ..e<OptimizerOptions_GlobalJitLevel>(
        5,
        'globalJitLevel',
        $pb.PbFieldType.OE,
        OptimizerOptions_GlobalJitLevel.DEFAULT,
        OptimizerOptions_GlobalJitLevel.valueOf,
        OptimizerOptions_GlobalJitLevel.values)
    ..aInt64(6, 'maxFoldedConstantInBytes')
    ..hasRequiredFields = false;

  OptimizerOptions._() : super();
  factory OptimizerOptions() => create();
  factory OptimizerOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OptimizerOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  OptimizerOptions clone() => OptimizerOptions()..mergeFromMessage(this);
  OptimizerOptions copyWith(void Function(OptimizerOptions) updates) =>
      super.copyWith((message) => updates(message as OptimizerOptions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OptimizerOptions create() => OptimizerOptions._();
  OptimizerOptions createEmptyInstance() => create();
  static $pb.PbList<OptimizerOptions> createRepeated() =>
      $pb.PbList<OptimizerOptions>();
  static OptimizerOptions getDefault() =>
      _defaultInstance ??= create()..freeze();
  static OptimizerOptions _defaultInstance;

  $core.bool get doCommonSubexpressionElimination => $_get(0, false);
  set doCommonSubexpressionElimination($core.bool v) {
    $_setBool(0, v);
  }

  $core.bool hasDoCommonSubexpressionElimination() => $_has(0);
  void clearDoCommonSubexpressionElimination() => clearField(1);

  $core.bool get doConstantFolding => $_get(1, false);
  set doConstantFolding($core.bool v) {
    $_setBool(1, v);
  }

  $core.bool hasDoConstantFolding() => $_has(1);
  void clearDoConstantFolding() => clearField(2);

  OptimizerOptions_Level get optLevel => $_getN(2);
  set optLevel(OptimizerOptions_Level v) {
    setField(3, v);
  }

  $core.bool hasOptLevel() => $_has(2);
  void clearOptLevel() => clearField(3);

  $core.bool get doFunctionInlining => $_get(3, false);
  set doFunctionInlining($core.bool v) {
    $_setBool(3, v);
  }

  $core.bool hasDoFunctionInlining() => $_has(3);
  void clearDoFunctionInlining() => clearField(4);

  OptimizerOptions_GlobalJitLevel get globalJitLevel => $_getN(4);
  set globalJitLevel(OptimizerOptions_GlobalJitLevel v) {
    setField(5, v);
  }

  $core.bool hasGlobalJitLevel() => $_has(4);
  void clearGlobalJitLevel() => clearField(5);

  Int64 get maxFoldedConstantInBytes => $_getI64(5);
  set maxFoldedConstantInBytes(Int64 v) {
    $_setInt64(5, v);
  }

  $core.bool hasMaxFoldedConstantInBytes() => $_has(5);
  void clearMaxFoldedConstantInBytes() => clearField(6);
}

class GraphOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GraphOptions',
      package: const $pb.PackageName('tensorflow'))
    ..aOB(2, 'enableRecvScheduling')
    ..a<OptimizerOptions>(3, 'optimizerOptions', $pb.PbFieldType.OM,
        OptimizerOptions.getDefault, OptimizerOptions.create)
    ..aInt64(4, 'buildCostModel')
    ..aOB(5, 'inferShapes')
    ..aOB(6, 'placePrunedGraph')
    ..aOB(7, 'enableBfloat16Sendrecv')
    ..a<$core.int>(8, 'timelineStep', $pb.PbFieldType.O3)
    ..aInt64(9, 'buildCostModelAfter')
    ..a<$0.RewriterConfig>(10, 'rewriteOptions', $pb.PbFieldType.OM,
        $0.RewriterConfig.getDefault, $0.RewriterConfig.create)
    ..hasRequiredFields = false;

  GraphOptions._() : super();
  factory GraphOptions() => create();
  factory GraphOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GraphOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GraphOptions clone() => GraphOptions()..mergeFromMessage(this);
  GraphOptions copyWith(void Function(GraphOptions) updates) =>
      super.copyWith((message) => updates(message as GraphOptions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GraphOptions create() => GraphOptions._();
  GraphOptions createEmptyInstance() => create();
  static $pb.PbList<GraphOptions> createRepeated() =>
      $pb.PbList<GraphOptions>();
  static GraphOptions getDefault() => _defaultInstance ??= create()..freeze();
  static GraphOptions _defaultInstance;

  $core.bool get enableRecvScheduling => $_get(0, false);
  set enableRecvScheduling($core.bool v) {
    $_setBool(0, v);
  }

  $core.bool hasEnableRecvScheduling() => $_has(0);
  void clearEnableRecvScheduling() => clearField(2);

  OptimizerOptions get optimizerOptions => $_getN(1);
  set optimizerOptions(OptimizerOptions v) {
    setField(3, v);
  }

  $core.bool hasOptimizerOptions() => $_has(1);
  void clearOptimizerOptions() => clearField(3);

  Int64 get buildCostModel => $_getI64(2);
  set buildCostModel(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasBuildCostModel() => $_has(2);
  void clearBuildCostModel() => clearField(4);

  $core.bool get inferShapes => $_get(3, false);
  set inferShapes($core.bool v) {
    $_setBool(3, v);
  }

  $core.bool hasInferShapes() => $_has(3);
  void clearInferShapes() => clearField(5);

  $core.bool get placePrunedGraph => $_get(4, false);
  set placePrunedGraph($core.bool v) {
    $_setBool(4, v);
  }

  $core.bool hasPlacePrunedGraph() => $_has(4);
  void clearPlacePrunedGraph() => clearField(6);

  $core.bool get enableBfloat16Sendrecv => $_get(5, false);
  set enableBfloat16Sendrecv($core.bool v) {
    $_setBool(5, v);
  }

  $core.bool hasEnableBfloat16Sendrecv() => $_has(5);
  void clearEnableBfloat16Sendrecv() => clearField(7);

  $core.int get timelineStep => $_get(6, 0);
  set timelineStep($core.int v) {
    $_setSignedInt32(6, v);
  }

  $core.bool hasTimelineStep() => $_has(6);
  void clearTimelineStep() => clearField(8);

  Int64 get buildCostModelAfter => $_getI64(7);
  set buildCostModelAfter(Int64 v) {
    $_setInt64(7, v);
  }

  $core.bool hasBuildCostModelAfter() => $_has(7);
  void clearBuildCostModelAfter() => clearField(9);

  $0.RewriterConfig get rewriteOptions => $_getN(8);
  set rewriteOptions($0.RewriterConfig v) {
    setField(10, v);
  }

  $core.bool hasRewriteOptions() => $_has(8);
  void clearRewriteOptions() => clearField(10);
}

class ThreadPoolOptionProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ThreadPoolOptionProto',
      package: const $pb.PackageName('tensorflow'))
    ..a<$core.int>(1, 'numThreads', $pb.PbFieldType.O3)
    ..aOS(2, 'globalName')
    ..hasRequiredFields = false;

  ThreadPoolOptionProto._() : super();
  factory ThreadPoolOptionProto() => create();
  factory ThreadPoolOptionProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ThreadPoolOptionProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ThreadPoolOptionProto clone() =>
      ThreadPoolOptionProto()..mergeFromMessage(this);
  ThreadPoolOptionProto copyWith(
          void Function(ThreadPoolOptionProto) updates) =>
      super.copyWith((message) => updates(message as ThreadPoolOptionProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThreadPoolOptionProto create() => ThreadPoolOptionProto._();
  ThreadPoolOptionProto createEmptyInstance() => create();
  static $pb.PbList<ThreadPoolOptionProto> createRepeated() =>
      $pb.PbList<ThreadPoolOptionProto>();
  static ThreadPoolOptionProto getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ThreadPoolOptionProto _defaultInstance;

  $core.int get numThreads => $_get(0, 0);
  set numThreads($core.int v) {
    $_setSignedInt32(0, v);
  }

  $core.bool hasNumThreads() => $_has(0);
  void clearNumThreads() => clearField(1);

  $core.String get globalName => $_getS(1, '');
  set globalName($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasGlobalName() => $_has(1);
  void clearGlobalName() => clearField(2);
}

class RPCOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RPCOptions',
      package: const $pb.PackageName('tensorflow'))
    ..aOB(1, 'useRpcForInprocessMaster')
    ..hasRequiredFields = false;

  RPCOptions._() : super();
  factory RPCOptions() => create();
  factory RPCOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RPCOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  RPCOptions clone() => RPCOptions()..mergeFromMessage(this);
  RPCOptions copyWith(void Function(RPCOptions) updates) =>
      super.copyWith((message) => updates(message as RPCOptions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RPCOptions create() => RPCOptions._();
  RPCOptions createEmptyInstance() => create();
  static $pb.PbList<RPCOptions> createRepeated() => $pb.PbList<RPCOptions>();
  static RPCOptions getDefault() => _defaultInstance ??= create()..freeze();
  static RPCOptions _defaultInstance;

  $core.bool get useRpcForInprocessMaster => $_get(0, false);
  set useRpcForInprocessMaster($core.bool v) {
    $_setBool(0, v);
  }

  $core.bool hasUseRpcForInprocessMaster() => $_has(0);
  void clearUseRpcForInprocessMaster() => clearField(1);
}

class ConfigProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ConfigProto',
      package: const $pb.PackageName('tensorflow'))
    ..m<$core.String, $core.int>(
        1,
        'deviceCount',
        'ConfigProto.DeviceCountEntry',
        $pb.PbFieldType.OS,
        $pb.PbFieldType.O3,
        null,
        null,
        null,
        const $pb.PackageName('tensorflow'))
    ..a<$core.int>(2, 'intraOpParallelismThreads', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'placementPeriod', $pb.PbFieldType.O3)
    ..pPS(4, 'deviceFilters')
    ..a<$core.int>(5, 'interOpParallelismThreads', $pb.PbFieldType.O3)
    ..a<GPUOptions>(6, 'gpuOptions', $pb.PbFieldType.OM, GPUOptions.getDefault,
        GPUOptions.create)
    ..aOB(7, 'allowSoftPlacement')
    ..aOB(8, 'logDevicePlacement')
    ..aOB(9, 'usePerSessionThreads')
    ..a<GraphOptions>(10, 'graphOptions', $pb.PbFieldType.OM,
        GraphOptions.getDefault, GraphOptions.create)
    ..aInt64(11, 'operationTimeoutInMs')
    ..pc<ThreadPoolOptionProto>(12, 'sessionInterOpThreadPool',
        $pb.PbFieldType.PM, ThreadPoolOptionProto.create)
    ..a<RPCOptions>(13, 'rpcOptions', $pb.PbFieldType.OM, RPCOptions.getDefault,
        RPCOptions.create)
    ..a<$1.ClusterDef>(14, 'clusterDef', $pb.PbFieldType.OM,
        $1.ClusterDef.getDefault, $1.ClusterDef.create)
    ..aOB(15, 'isolateSessionState')
    ..hasRequiredFields = false;

  ConfigProto._() : super();
  factory ConfigProto() => create();
  factory ConfigProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ConfigProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ConfigProto clone() => ConfigProto()..mergeFromMessage(this);
  ConfigProto copyWith(void Function(ConfigProto) updates) =>
      super.copyWith((message) => updates(message as ConfigProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConfigProto create() => ConfigProto._();
  ConfigProto createEmptyInstance() => create();
  static $pb.PbList<ConfigProto> createRepeated() => $pb.PbList<ConfigProto>();
  static ConfigProto getDefault() => _defaultInstance ??= create()..freeze();
  static ConfigProto _defaultInstance;

  $core.Map<$core.String, $core.int> get deviceCount => $_getMap(0);

  $core.int get intraOpParallelismThreads => $_get(1, 0);
  set intraOpParallelismThreads($core.int v) {
    $_setSignedInt32(1, v);
  }

  $core.bool hasIntraOpParallelismThreads() => $_has(1);
  void clearIntraOpParallelismThreads() => clearField(2);

  $core.int get placementPeriod => $_get(2, 0);
  set placementPeriod($core.int v) {
    $_setSignedInt32(2, v);
  }

  $core.bool hasPlacementPeriod() => $_has(2);
  void clearPlacementPeriod() => clearField(3);

  $core.List<$core.String> get deviceFilters => $_getList(3);

  $core.int get interOpParallelismThreads => $_get(4, 0);
  set interOpParallelismThreads($core.int v) {
    $_setSignedInt32(4, v);
  }

  $core.bool hasInterOpParallelismThreads() => $_has(4);
  void clearInterOpParallelismThreads() => clearField(5);

  GPUOptions get gpuOptions => $_getN(5);
  set gpuOptions(GPUOptions v) {
    setField(6, v);
  }

  $core.bool hasGpuOptions() => $_has(5);
  void clearGpuOptions() => clearField(6);

  $core.bool get allowSoftPlacement => $_get(6, false);
  set allowSoftPlacement($core.bool v) {
    $_setBool(6, v);
  }

  $core.bool hasAllowSoftPlacement() => $_has(6);
  void clearAllowSoftPlacement() => clearField(7);

  $core.bool get logDevicePlacement => $_get(7, false);
  set logDevicePlacement($core.bool v) {
    $_setBool(7, v);
  }

  $core.bool hasLogDevicePlacement() => $_has(7);
  void clearLogDevicePlacement() => clearField(8);

  $core.bool get usePerSessionThreads => $_get(8, false);
  set usePerSessionThreads($core.bool v) {
    $_setBool(8, v);
  }

  $core.bool hasUsePerSessionThreads() => $_has(8);
  void clearUsePerSessionThreads() => clearField(9);

  GraphOptions get graphOptions => $_getN(9);
  set graphOptions(GraphOptions v) {
    setField(10, v);
  }

  $core.bool hasGraphOptions() => $_has(9);
  void clearGraphOptions() => clearField(10);

  Int64 get operationTimeoutInMs => $_getI64(10);
  set operationTimeoutInMs(Int64 v) {
    $_setInt64(10, v);
  }

  $core.bool hasOperationTimeoutInMs() => $_has(10);
  void clearOperationTimeoutInMs() => clearField(11);

  $core.List<ThreadPoolOptionProto> get sessionInterOpThreadPool =>
      $_getList(11);

  RPCOptions get rpcOptions => $_getN(12);
  set rpcOptions(RPCOptions v) {
    setField(13, v);
  }

  $core.bool hasRpcOptions() => $_has(12);
  void clearRpcOptions() => clearField(13);

  $1.ClusterDef get clusterDef => $_getN(13);
  set clusterDef($1.ClusterDef v) {
    setField(14, v);
  }

  $core.bool hasClusterDef() => $_has(13);
  void clearClusterDef() => clearField(14);

  $core.bool get isolateSessionState => $_get(14, false);
  set isolateSessionState($core.bool v) {
    $_setBool(14, v);
  }

  $core.bool hasIsolateSessionState() => $_has(14);
  void clearIsolateSessionState() => clearField(15);
}

class RunOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RunOptions',
      package: const $pb.PackageName('tensorflow'))
    ..e<RunOptions_TraceLevel>(
        1,
        'traceLevel',
        $pb.PbFieldType.OE,
        RunOptions_TraceLevel.NO_TRACE,
        RunOptions_TraceLevel.valueOf,
        RunOptions_TraceLevel.values)
    ..aInt64(2, 'timeoutInMs')
    ..a<$core.int>(3, 'interOpThreadPool', $pb.PbFieldType.O3)
    ..aOB(5, 'outputPartitionGraphs')
    ..a<$2.DebugOptions>(6, 'debugOptions', $pb.PbFieldType.OM,
        $2.DebugOptions.getDefault, $2.DebugOptions.create)
    ..aOB(7, 'reportTensorAllocationsUponOom')
    ..hasRequiredFields = false;

  RunOptions._() : super();
  factory RunOptions() => create();
  factory RunOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RunOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  RunOptions clone() => RunOptions()..mergeFromMessage(this);
  RunOptions copyWith(void Function(RunOptions) updates) =>
      super.copyWith((message) => updates(message as RunOptions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RunOptions create() => RunOptions._();
  RunOptions createEmptyInstance() => create();
  static $pb.PbList<RunOptions> createRepeated() => $pb.PbList<RunOptions>();
  static RunOptions getDefault() => _defaultInstance ??= create()..freeze();
  static RunOptions _defaultInstance;

  RunOptions_TraceLevel get traceLevel => $_getN(0);
  set traceLevel(RunOptions_TraceLevel v) {
    setField(1, v);
  }

  $core.bool hasTraceLevel() => $_has(0);
  void clearTraceLevel() => clearField(1);

  Int64 get timeoutInMs => $_getI64(1);
  set timeoutInMs(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasTimeoutInMs() => $_has(1);
  void clearTimeoutInMs() => clearField(2);

  $core.int get interOpThreadPool => $_get(2, 0);
  set interOpThreadPool($core.int v) {
    $_setSignedInt32(2, v);
  }

  $core.bool hasInterOpThreadPool() => $_has(2);
  void clearInterOpThreadPool() => clearField(3);

  $core.bool get outputPartitionGraphs => $_get(3, false);
  set outputPartitionGraphs($core.bool v) {
    $_setBool(3, v);
  }

  $core.bool hasOutputPartitionGraphs() => $_has(3);
  void clearOutputPartitionGraphs() => clearField(5);

  $2.DebugOptions get debugOptions => $_getN(4);
  set debugOptions($2.DebugOptions v) {
    setField(6, v);
  }

  $core.bool hasDebugOptions() => $_has(4);
  void clearDebugOptions() => clearField(6);

  $core.bool get reportTensorAllocationsUponOom => $_get(5, false);
  set reportTensorAllocationsUponOom($core.bool v) {
    $_setBool(5, v);
  }

  $core.bool hasReportTensorAllocationsUponOom() => $_has(5);
  void clearReportTensorAllocationsUponOom() => clearField(7);
}

class RunMetadata extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RunMetadata',
      package: const $pb.PackageName('tensorflow'))
    ..a<$3.StepStats>(1, 'stepStats', $pb.PbFieldType.OM,
        $3.StepStats.getDefault, $3.StepStats.create)
    ..a<$4.CostGraphDef>(2, 'costGraph', $pb.PbFieldType.OM,
        $4.CostGraphDef.getDefault, $4.CostGraphDef.create)
    ..pc<$5.GraphDef>(
        3, 'partitionGraphs', $pb.PbFieldType.PM, $5.GraphDef.create)
    ..hasRequiredFields = false;

  RunMetadata._() : super();
  factory RunMetadata() => create();
  factory RunMetadata.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RunMetadata.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  RunMetadata clone() => RunMetadata()..mergeFromMessage(this);
  RunMetadata copyWith(void Function(RunMetadata) updates) =>
      super.copyWith((message) => updates(message as RunMetadata));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RunMetadata create() => RunMetadata._();
  RunMetadata createEmptyInstance() => create();
  static $pb.PbList<RunMetadata> createRepeated() => $pb.PbList<RunMetadata>();
  static RunMetadata getDefault() => _defaultInstance ??= create()..freeze();
  static RunMetadata _defaultInstance;

  $3.StepStats get stepStats => $_getN(0);
  set stepStats($3.StepStats v) {
    setField(1, v);
  }

  $core.bool hasStepStats() => $_has(0);
  void clearStepStats() => clearField(1);

  $4.CostGraphDef get costGraph => $_getN(1);
  set costGraph($4.CostGraphDef v) {
    setField(2, v);
  }

  $core.bool hasCostGraph() => $_has(1);
  void clearCostGraph() => clearField(2);

  $core.List<$5.GraphDef> get partitionGraphs => $_getList(2);
}

class TensorConnection extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TensorConnection',
      package: const $pb.PackageName('tensorflow'))
    ..aOS(1, 'fromTensor')
    ..aOS(2, 'toTensor')
    ..hasRequiredFields = false;

  TensorConnection._() : super();
  factory TensorConnection() => create();
  factory TensorConnection.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TensorConnection.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  TensorConnection clone() => TensorConnection()..mergeFromMessage(this);
  TensorConnection copyWith(void Function(TensorConnection) updates) =>
      super.copyWith((message) => updates(message as TensorConnection));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TensorConnection create() => TensorConnection._();
  TensorConnection createEmptyInstance() => create();
  static $pb.PbList<TensorConnection> createRepeated() =>
      $pb.PbList<TensorConnection>();
  static TensorConnection getDefault() =>
      _defaultInstance ??= create()..freeze();
  static TensorConnection _defaultInstance;

  $core.String get fromTensor => $_getS(0, '');
  set fromTensor($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasFromTensor() => $_has(0);
  void clearFromTensor() => clearField(1);

  $core.String get toTensor => $_getS(1, '');
  set toTensor($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasToTensor() => $_has(1);
  void clearToTensor() => clearField(2);
}

class CallableOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CallableOptions',
      package: const $pb.PackageName('tensorflow'))
    ..pPS(1, 'feed')
    ..pPS(2, 'fetch')
    ..pPS(3, 'target')
    ..a<RunOptions>(4, 'runOptions', $pb.PbFieldType.OM, RunOptions.getDefault,
        RunOptions.create)
    ..pc<TensorConnection>(
        5, 'tensorConnection', $pb.PbFieldType.PM, TensorConnection.create)
    ..hasRequiredFields = false;

  CallableOptions._() : super();
  factory CallableOptions() => create();
  factory CallableOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CallableOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CallableOptions clone() => CallableOptions()..mergeFromMessage(this);
  CallableOptions copyWith(void Function(CallableOptions) updates) =>
      super.copyWith((message) => updates(message as CallableOptions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CallableOptions create() => CallableOptions._();
  CallableOptions createEmptyInstance() => create();
  static $pb.PbList<CallableOptions> createRepeated() =>
      $pb.PbList<CallableOptions>();
  static CallableOptions getDefault() =>
      _defaultInstance ??= create()..freeze();
  static CallableOptions _defaultInstance;

  $core.List<$core.String> get feed => $_getList(0);

  $core.List<$core.String> get fetch => $_getList(1);

  $core.List<$core.String> get target => $_getList(2);

  RunOptions get runOptions => $_getN(3);
  set runOptions(RunOptions v) {
    setField(4, v);
  }

  $core.bool hasRunOptions() => $_has(3);
  void clearRunOptions() => clearField(4);

  $core.List<TensorConnection> get tensorConnection => $_getList(4);
}
