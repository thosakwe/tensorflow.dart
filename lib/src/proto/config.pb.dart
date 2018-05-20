///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_config;

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart';

import 'rewriter_config.pb.dart';
import 'cluster.pb.dart';
import 'debug.pb.dart';
import 'step_stats.pb.dart';
import 'cost_graph.pb.dart';
import 'graph.pb.dart';

import 'config.pbenum.dart';

export 'config.pbenum.dart';

class GPUOptions_Experimental_VirtualDevices extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('GPUOptions_Experimental_VirtualDevices')
    ..p<double>(1, 'memoryLimitMb', PbFieldType.PF)
    ..hasRequiredFields = false
  ;

  GPUOptions_Experimental_VirtualDevices() : super();
  GPUOptions_Experimental_VirtualDevices.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GPUOptions_Experimental_VirtualDevices.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GPUOptions_Experimental_VirtualDevices clone() => new GPUOptions_Experimental_VirtualDevices()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static GPUOptions_Experimental_VirtualDevices create() => new GPUOptions_Experimental_VirtualDevices();
  static PbList<GPUOptions_Experimental_VirtualDevices> createRepeated() => new PbList<GPUOptions_Experimental_VirtualDevices>();
  static GPUOptions_Experimental_VirtualDevices getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyGPUOptions_Experimental_VirtualDevices();
    return _defaultInstance;
  }
  static GPUOptions_Experimental_VirtualDevices _defaultInstance;
  static void $checkItem(GPUOptions_Experimental_VirtualDevices v) {
    if (v is! GPUOptions_Experimental_VirtualDevices) checkItemFailed(v, 'GPUOptions_Experimental_VirtualDevices');
  }

  List<double> get memoryLimitMb => $_getList(0);
}

class _ReadonlyGPUOptions_Experimental_VirtualDevices extends GPUOptions_Experimental_VirtualDevices with ReadonlyMessageMixin {}

class GPUOptions_Experimental extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('GPUOptions_Experimental')
    ..pp<GPUOptions_Experimental_VirtualDevices>(1, 'virtualDevices', PbFieldType.PM, GPUOptions_Experimental_VirtualDevices.$checkItem, GPUOptions_Experimental_VirtualDevices.create)
    ..hasRequiredFields = false
  ;

  GPUOptions_Experimental() : super();
  GPUOptions_Experimental.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GPUOptions_Experimental.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GPUOptions_Experimental clone() => new GPUOptions_Experimental()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static GPUOptions_Experimental create() => new GPUOptions_Experimental();
  static PbList<GPUOptions_Experimental> createRepeated() => new PbList<GPUOptions_Experimental>();
  static GPUOptions_Experimental getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyGPUOptions_Experimental();
    return _defaultInstance;
  }
  static GPUOptions_Experimental _defaultInstance;
  static void $checkItem(GPUOptions_Experimental v) {
    if (v is! GPUOptions_Experimental) checkItemFailed(v, 'GPUOptions_Experimental');
  }

  List<GPUOptions_Experimental_VirtualDevices> get virtualDevices => $_getList(0);
}

class _ReadonlyGPUOptions_Experimental extends GPUOptions_Experimental with ReadonlyMessageMixin {}

class GPUOptions extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('GPUOptions')
    ..a<double>(1, 'perProcessGpuMemoryFraction', PbFieldType.OD)
    ..aOS(2, 'allocatorType')
    ..aInt64(3, 'deferredDeletionBytes')
    ..aOB(4, 'allowGrowth')
    ..aOS(5, 'visibleDeviceList')
    ..a<int>(6, 'pollingActiveDelayUsecs', PbFieldType.O3)
    ..a<int>(7, 'pollingInactiveDelayMsecs', PbFieldType.O3)
    ..aOB(8, 'forceGpuCompatible')
    ..a<GPUOptions_Experimental>(9, 'experimental', PbFieldType.OM, GPUOptions_Experimental.getDefault, GPUOptions_Experimental.create)
    ..hasRequiredFields = false
  ;

  GPUOptions() : super();
  GPUOptions.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GPUOptions.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GPUOptions clone() => new GPUOptions()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static GPUOptions create() => new GPUOptions();
  static PbList<GPUOptions> createRepeated() => new PbList<GPUOptions>();
  static GPUOptions getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyGPUOptions();
    return _defaultInstance;
  }
  static GPUOptions _defaultInstance;
  static void $checkItem(GPUOptions v) {
    if (v is! GPUOptions) checkItemFailed(v, 'GPUOptions');
  }

  double get perProcessGpuMemoryFraction => $_getN(0);
  set perProcessGpuMemoryFraction(double v) { $_setDouble(0, v); }
  bool hasPerProcessGpuMemoryFraction() => $_has(0);
  void clearPerProcessGpuMemoryFraction() => clearField(1);

  String get allocatorType => $_getS(1, '');
  set allocatorType(String v) { $_setString(1, v); }
  bool hasAllocatorType() => $_has(1);
  void clearAllocatorType() => clearField(2);

  Int64 get deferredDeletionBytes => $_getI64(2);
  set deferredDeletionBytes(Int64 v) { $_setInt64(2, v); }
  bool hasDeferredDeletionBytes() => $_has(2);
  void clearDeferredDeletionBytes() => clearField(3);

  bool get allowGrowth => $_get(3, false);
  set allowGrowth(bool v) { $_setBool(3, v); }
  bool hasAllowGrowth() => $_has(3);
  void clearAllowGrowth() => clearField(4);

  String get visibleDeviceList => $_getS(4, '');
  set visibleDeviceList(String v) { $_setString(4, v); }
  bool hasVisibleDeviceList() => $_has(4);
  void clearVisibleDeviceList() => clearField(5);

  int get pollingActiveDelayUsecs => $_get(5, 0);
  set pollingActiveDelayUsecs(int v) { $_setUnsignedInt32(5, v); }
  bool hasPollingActiveDelayUsecs() => $_has(5);
  void clearPollingActiveDelayUsecs() => clearField(6);

  int get pollingInactiveDelayMsecs => $_get(6, 0);
  set pollingInactiveDelayMsecs(int v) { $_setUnsignedInt32(6, v); }
  bool hasPollingInactiveDelayMsecs() => $_has(6);
  void clearPollingInactiveDelayMsecs() => clearField(7);

  bool get forceGpuCompatible => $_get(7, false);
  set forceGpuCompatible(bool v) { $_setBool(7, v); }
  bool hasForceGpuCompatible() => $_has(7);
  void clearForceGpuCompatible() => clearField(8);

  GPUOptions_Experimental get experimental => $_getN(8);
  set experimental(GPUOptions_Experimental v) { setField(9, v); }
  bool hasExperimental() => $_has(8);
  void clearExperimental() => clearField(9);
}

class _ReadonlyGPUOptions extends GPUOptions with ReadonlyMessageMixin {}

class OptimizerOptions extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('OptimizerOptions')
    ..aOB(1, 'doCommonSubexpressionElimination')
    ..aOB(2, 'doConstantFolding')
    ..e<OptimizerOptions_Level>(3, 'optLevel', PbFieldType.OE, OptimizerOptions_Level.L1, OptimizerOptions_Level.valueOf, OptimizerOptions_Level.values)
    ..aOB(4, 'doFunctionInlining')
    ..e<OptimizerOptions_GlobalJitLevel>(5, 'globalJitLevel', PbFieldType.OE, OptimizerOptions_GlobalJitLevel.DEFAULT, OptimizerOptions_GlobalJitLevel.valueOf, OptimizerOptions_GlobalJitLevel.values)
    ..aInt64(6, 'maxFoldedConstantInBytes')
    ..hasRequiredFields = false
  ;

  OptimizerOptions() : super();
  OptimizerOptions.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  OptimizerOptions.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  OptimizerOptions clone() => new OptimizerOptions()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static OptimizerOptions create() => new OptimizerOptions();
  static PbList<OptimizerOptions> createRepeated() => new PbList<OptimizerOptions>();
  static OptimizerOptions getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyOptimizerOptions();
    return _defaultInstance;
  }
  static OptimizerOptions _defaultInstance;
  static void $checkItem(OptimizerOptions v) {
    if (v is! OptimizerOptions) checkItemFailed(v, 'OptimizerOptions');
  }

  bool get doCommonSubexpressionElimination => $_get(0, false);
  set doCommonSubexpressionElimination(bool v) { $_setBool(0, v); }
  bool hasDoCommonSubexpressionElimination() => $_has(0);
  void clearDoCommonSubexpressionElimination() => clearField(1);

  bool get doConstantFolding => $_get(1, false);
  set doConstantFolding(bool v) { $_setBool(1, v); }
  bool hasDoConstantFolding() => $_has(1);
  void clearDoConstantFolding() => clearField(2);

  OptimizerOptions_Level get optLevel => $_getN(2);
  set optLevel(OptimizerOptions_Level v) { setField(3, v); }
  bool hasOptLevel() => $_has(2);
  void clearOptLevel() => clearField(3);

  bool get doFunctionInlining => $_get(3, false);
  set doFunctionInlining(bool v) { $_setBool(3, v); }
  bool hasDoFunctionInlining() => $_has(3);
  void clearDoFunctionInlining() => clearField(4);

  OptimizerOptions_GlobalJitLevel get globalJitLevel => $_getN(4);
  set globalJitLevel(OptimizerOptions_GlobalJitLevel v) { setField(5, v); }
  bool hasGlobalJitLevel() => $_has(4);
  void clearGlobalJitLevel() => clearField(5);

  Int64 get maxFoldedConstantInBytes => $_getI64(5);
  set maxFoldedConstantInBytes(Int64 v) { $_setInt64(5, v); }
  bool hasMaxFoldedConstantInBytes() => $_has(5);
  void clearMaxFoldedConstantInBytes() => clearField(6);
}

class _ReadonlyOptimizerOptions extends OptimizerOptions with ReadonlyMessageMixin {}

class GraphOptions extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('GraphOptions')
    ..aOB(2, 'enableRecvScheduling')
    ..a<OptimizerOptions>(3, 'optimizerOptions', PbFieldType.OM, OptimizerOptions.getDefault, OptimizerOptions.create)
    ..aInt64(4, 'buildCostModel')
    ..aOB(5, 'inferShapes')
    ..aOB(6, 'placePrunedGraph')
    ..aOB(7, 'enableBfloat16Sendrecv')
    ..a<int>(8, 'timelineStep', PbFieldType.O3)
    ..aInt64(9, 'buildCostModelAfter')
    ..a<RewriterConfig>(10, 'rewriteOptions', PbFieldType.OM, RewriterConfig.getDefault, RewriterConfig.create)
    ..hasRequiredFields = false
  ;

  GraphOptions() : super();
  GraphOptions.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GraphOptions.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GraphOptions clone() => new GraphOptions()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static GraphOptions create() => new GraphOptions();
  static PbList<GraphOptions> createRepeated() => new PbList<GraphOptions>();
  static GraphOptions getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyGraphOptions();
    return _defaultInstance;
  }
  static GraphOptions _defaultInstance;
  static void $checkItem(GraphOptions v) {
    if (v is! GraphOptions) checkItemFailed(v, 'GraphOptions');
  }

  bool get enableRecvScheduling => $_get(0, false);
  set enableRecvScheduling(bool v) { $_setBool(0, v); }
  bool hasEnableRecvScheduling() => $_has(0);
  void clearEnableRecvScheduling() => clearField(2);

  OptimizerOptions get optimizerOptions => $_getN(1);
  set optimizerOptions(OptimizerOptions v) { setField(3, v); }
  bool hasOptimizerOptions() => $_has(1);
  void clearOptimizerOptions() => clearField(3);

  Int64 get buildCostModel => $_getI64(2);
  set buildCostModel(Int64 v) { $_setInt64(2, v); }
  bool hasBuildCostModel() => $_has(2);
  void clearBuildCostModel() => clearField(4);

  bool get inferShapes => $_get(3, false);
  set inferShapes(bool v) { $_setBool(3, v); }
  bool hasInferShapes() => $_has(3);
  void clearInferShapes() => clearField(5);

  bool get placePrunedGraph => $_get(4, false);
  set placePrunedGraph(bool v) { $_setBool(4, v); }
  bool hasPlacePrunedGraph() => $_has(4);
  void clearPlacePrunedGraph() => clearField(6);

  bool get enableBfloat16Sendrecv => $_get(5, false);
  set enableBfloat16Sendrecv(bool v) { $_setBool(5, v); }
  bool hasEnableBfloat16Sendrecv() => $_has(5);
  void clearEnableBfloat16Sendrecv() => clearField(7);

  int get timelineStep => $_get(6, 0);
  set timelineStep(int v) { $_setUnsignedInt32(6, v); }
  bool hasTimelineStep() => $_has(6);
  void clearTimelineStep() => clearField(8);

  Int64 get buildCostModelAfter => $_getI64(7);
  set buildCostModelAfter(Int64 v) { $_setInt64(7, v); }
  bool hasBuildCostModelAfter() => $_has(7);
  void clearBuildCostModelAfter() => clearField(9);

  RewriterConfig get rewriteOptions => $_getN(8);
  set rewriteOptions(RewriterConfig v) { setField(10, v); }
  bool hasRewriteOptions() => $_has(8);
  void clearRewriteOptions() => clearField(10);
}

class _ReadonlyGraphOptions extends GraphOptions with ReadonlyMessageMixin {}

class ThreadPoolOptionProto extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ThreadPoolOptionProto')
    ..a<int>(1, 'numThreads', PbFieldType.O3)
    ..aOS(2, 'globalName')
    ..hasRequiredFields = false
  ;

  ThreadPoolOptionProto() : super();
  ThreadPoolOptionProto.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ThreadPoolOptionProto.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ThreadPoolOptionProto clone() => new ThreadPoolOptionProto()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ThreadPoolOptionProto create() => new ThreadPoolOptionProto();
  static PbList<ThreadPoolOptionProto> createRepeated() => new PbList<ThreadPoolOptionProto>();
  static ThreadPoolOptionProto getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyThreadPoolOptionProto();
    return _defaultInstance;
  }
  static ThreadPoolOptionProto _defaultInstance;
  static void $checkItem(ThreadPoolOptionProto v) {
    if (v is! ThreadPoolOptionProto) checkItemFailed(v, 'ThreadPoolOptionProto');
  }

  int get numThreads => $_get(0, 0);
  set numThreads(int v) { $_setUnsignedInt32(0, v); }
  bool hasNumThreads() => $_has(0);
  void clearNumThreads() => clearField(1);

  String get globalName => $_getS(1, '');
  set globalName(String v) { $_setString(1, v); }
  bool hasGlobalName() => $_has(1);
  void clearGlobalName() => clearField(2);
}

class _ReadonlyThreadPoolOptionProto extends ThreadPoolOptionProto with ReadonlyMessageMixin {}

class RPCOptions extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RPCOptions')
    ..aOB(1, 'useRpcForInprocessMaster')
    ..hasRequiredFields = false
  ;

  RPCOptions() : super();
  RPCOptions.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RPCOptions.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RPCOptions clone() => new RPCOptions()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RPCOptions create() => new RPCOptions();
  static PbList<RPCOptions> createRepeated() => new PbList<RPCOptions>();
  static RPCOptions getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRPCOptions();
    return _defaultInstance;
  }
  static RPCOptions _defaultInstance;
  static void $checkItem(RPCOptions v) {
    if (v is! RPCOptions) checkItemFailed(v, 'RPCOptions');
  }

  bool get useRpcForInprocessMaster => $_get(0, false);
  set useRpcForInprocessMaster(bool v) { $_setBool(0, v); }
  bool hasUseRpcForInprocessMaster() => $_has(0);
  void clearUseRpcForInprocessMaster() => clearField(1);
}

class _ReadonlyRPCOptions extends RPCOptions with ReadonlyMessageMixin {}

class ConfigProto_DeviceCountEntry extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ConfigProto_DeviceCountEntry')
    ..aOS(1, 'key')
    ..a<int>(2, 'value', PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ConfigProto_DeviceCountEntry() : super();
  ConfigProto_DeviceCountEntry.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ConfigProto_DeviceCountEntry.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ConfigProto_DeviceCountEntry clone() => new ConfigProto_DeviceCountEntry()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ConfigProto_DeviceCountEntry create() => new ConfigProto_DeviceCountEntry();
  static PbList<ConfigProto_DeviceCountEntry> createRepeated() => new PbList<ConfigProto_DeviceCountEntry>();
  static ConfigProto_DeviceCountEntry getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyConfigProto_DeviceCountEntry();
    return _defaultInstance;
  }
  static ConfigProto_DeviceCountEntry _defaultInstance;
  static void $checkItem(ConfigProto_DeviceCountEntry v) {
    if (v is! ConfigProto_DeviceCountEntry) checkItemFailed(v, 'ConfigProto_DeviceCountEntry');
  }

  String get key => $_getS(0, '');
  set key(String v) { $_setString(0, v); }
  bool hasKey() => $_has(0);
  void clearKey() => clearField(1);

  int get value => $_get(1, 0);
  set value(int v) { $_setUnsignedInt32(1, v); }
  bool hasValue() => $_has(1);
  void clearValue() => clearField(2);
}

class _ReadonlyConfigProto_DeviceCountEntry extends ConfigProto_DeviceCountEntry with ReadonlyMessageMixin {}

class ConfigProto extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ConfigProto')
    ..pp<ConfigProto_DeviceCountEntry>(1, 'deviceCount', PbFieldType.PM, ConfigProto_DeviceCountEntry.$checkItem, ConfigProto_DeviceCountEntry.create)
    ..a<int>(2, 'intraOpParallelismThreads', PbFieldType.O3)
    ..a<int>(3, 'placementPeriod', PbFieldType.O3)
    ..pPS(4, 'deviceFilters')
    ..a<int>(5, 'interOpParallelismThreads', PbFieldType.O3)
    ..a<GPUOptions>(6, 'gpuOptions', PbFieldType.OM, GPUOptions.getDefault, GPUOptions.create)
    ..aOB(7, 'allowSoftPlacement')
    ..aOB(8, 'logDevicePlacement')
    ..aOB(9, 'usePerSessionThreads')
    ..a<GraphOptions>(10, 'graphOptions', PbFieldType.OM, GraphOptions.getDefault, GraphOptions.create)
    ..aInt64(11, 'operationTimeoutInMs')
    ..pp<ThreadPoolOptionProto>(12, 'sessionInterOpThreadPool', PbFieldType.PM, ThreadPoolOptionProto.$checkItem, ThreadPoolOptionProto.create)
    ..a<RPCOptions>(13, 'rpcOptions', PbFieldType.OM, RPCOptions.getDefault, RPCOptions.create)
    ..a<ClusterDef>(14, 'clusterDef', PbFieldType.OM, ClusterDef.getDefault, ClusterDef.create)
    ..aOB(15, 'isolateSessionState')
    ..hasRequiredFields = false
  ;

  ConfigProto() : super();
  ConfigProto.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ConfigProto.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ConfigProto clone() => new ConfigProto()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ConfigProto create() => new ConfigProto();
  static PbList<ConfigProto> createRepeated() => new PbList<ConfigProto>();
  static ConfigProto getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyConfigProto();
    return _defaultInstance;
  }
  static ConfigProto _defaultInstance;
  static void $checkItem(ConfigProto v) {
    if (v is! ConfigProto) checkItemFailed(v, 'ConfigProto');
  }

  List<ConfigProto_DeviceCountEntry> get deviceCount => $_getList(0);

  int get intraOpParallelismThreads => $_get(1, 0);
  set intraOpParallelismThreads(int v) { $_setUnsignedInt32(1, v); }
  bool hasIntraOpParallelismThreads() => $_has(1);
  void clearIntraOpParallelismThreads() => clearField(2);

  int get placementPeriod => $_get(2, 0);
  set placementPeriod(int v) { $_setUnsignedInt32(2, v); }
  bool hasPlacementPeriod() => $_has(2);
  void clearPlacementPeriod() => clearField(3);

  List<String> get deviceFilters => $_getList(3);

  int get interOpParallelismThreads => $_get(4, 0);
  set interOpParallelismThreads(int v) { $_setUnsignedInt32(4, v); }
  bool hasInterOpParallelismThreads() => $_has(4);
  void clearInterOpParallelismThreads() => clearField(5);

  GPUOptions get gpuOptions => $_getN(5);
  set gpuOptions(GPUOptions v) { setField(6, v); }
  bool hasGpuOptions() => $_has(5);
  void clearGpuOptions() => clearField(6);

  bool get allowSoftPlacement => $_get(6, false);
  set allowSoftPlacement(bool v) { $_setBool(6, v); }
  bool hasAllowSoftPlacement() => $_has(6);
  void clearAllowSoftPlacement() => clearField(7);

  bool get logDevicePlacement => $_get(7, false);
  set logDevicePlacement(bool v) { $_setBool(7, v); }
  bool hasLogDevicePlacement() => $_has(7);
  void clearLogDevicePlacement() => clearField(8);

  bool get usePerSessionThreads => $_get(8, false);
  set usePerSessionThreads(bool v) { $_setBool(8, v); }
  bool hasUsePerSessionThreads() => $_has(8);
  void clearUsePerSessionThreads() => clearField(9);

  GraphOptions get graphOptions => $_getN(9);
  set graphOptions(GraphOptions v) { setField(10, v); }
  bool hasGraphOptions() => $_has(9);
  void clearGraphOptions() => clearField(10);

  Int64 get operationTimeoutInMs => $_getI64(10);
  set operationTimeoutInMs(Int64 v) { $_setInt64(10, v); }
  bool hasOperationTimeoutInMs() => $_has(10);
  void clearOperationTimeoutInMs() => clearField(11);

  List<ThreadPoolOptionProto> get sessionInterOpThreadPool => $_getList(11);

  RPCOptions get rpcOptions => $_getN(12);
  set rpcOptions(RPCOptions v) { setField(13, v); }
  bool hasRpcOptions() => $_has(12);
  void clearRpcOptions() => clearField(13);

  ClusterDef get clusterDef => $_getN(13);
  set clusterDef(ClusterDef v) { setField(14, v); }
  bool hasClusterDef() => $_has(13);
  void clearClusterDef() => clearField(14);

  bool get isolateSessionState => $_get(14, false);
  set isolateSessionState(bool v) { $_setBool(14, v); }
  bool hasIsolateSessionState() => $_has(14);
  void clearIsolateSessionState() => clearField(15);
}

class _ReadonlyConfigProto extends ConfigProto with ReadonlyMessageMixin {}

class RunOptions extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RunOptions')
    ..e<RunOptions_TraceLevel>(1, 'traceLevel', PbFieldType.OE, RunOptions_TraceLevel.NO_TRACE, RunOptions_TraceLevel.valueOf, RunOptions_TraceLevel.values)
    ..aInt64(2, 'timeoutInMs')
    ..a<int>(3, 'interOpThreadPool', PbFieldType.O3)
    ..aOB(5, 'outputPartitionGraphs')
    ..a<DebugOptions>(6, 'debugOptions', PbFieldType.OM, DebugOptions.getDefault, DebugOptions.create)
    ..aOB(7, 'reportTensorAllocationsUponOom')
    ..hasRequiredFields = false
  ;

  RunOptions() : super();
  RunOptions.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RunOptions.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RunOptions clone() => new RunOptions()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RunOptions create() => new RunOptions();
  static PbList<RunOptions> createRepeated() => new PbList<RunOptions>();
  static RunOptions getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRunOptions();
    return _defaultInstance;
  }
  static RunOptions _defaultInstance;
  static void $checkItem(RunOptions v) {
    if (v is! RunOptions) checkItemFailed(v, 'RunOptions');
  }

  RunOptions_TraceLevel get traceLevel => $_getN(0);
  set traceLevel(RunOptions_TraceLevel v) { setField(1, v); }
  bool hasTraceLevel() => $_has(0);
  void clearTraceLevel() => clearField(1);

  Int64 get timeoutInMs => $_getI64(1);
  set timeoutInMs(Int64 v) { $_setInt64(1, v); }
  bool hasTimeoutInMs() => $_has(1);
  void clearTimeoutInMs() => clearField(2);

  int get interOpThreadPool => $_get(2, 0);
  set interOpThreadPool(int v) { $_setUnsignedInt32(2, v); }
  bool hasInterOpThreadPool() => $_has(2);
  void clearInterOpThreadPool() => clearField(3);

  bool get outputPartitionGraphs => $_get(3, false);
  set outputPartitionGraphs(bool v) { $_setBool(3, v); }
  bool hasOutputPartitionGraphs() => $_has(3);
  void clearOutputPartitionGraphs() => clearField(5);

  DebugOptions get debugOptions => $_getN(4);
  set debugOptions(DebugOptions v) { setField(6, v); }
  bool hasDebugOptions() => $_has(4);
  void clearDebugOptions() => clearField(6);

  bool get reportTensorAllocationsUponOom => $_get(5, false);
  set reportTensorAllocationsUponOom(bool v) { $_setBool(5, v); }
  bool hasReportTensorAllocationsUponOom() => $_has(5);
  void clearReportTensorAllocationsUponOom() => clearField(7);
}

class _ReadonlyRunOptions extends RunOptions with ReadonlyMessageMixin {}

class RunMetadata extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RunMetadata')
    ..a<StepStats>(1, 'stepStats', PbFieldType.OM, StepStats.getDefault, StepStats.create)
    ..a<CostGraphDef>(2, 'costGraph', PbFieldType.OM, CostGraphDef.getDefault, CostGraphDef.create)
    ..pp<GraphDef>(3, 'partitionGraphs', PbFieldType.PM, GraphDef.$checkItem, GraphDef.create)
    ..hasRequiredFields = false
  ;

  RunMetadata() : super();
  RunMetadata.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RunMetadata.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RunMetadata clone() => new RunMetadata()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RunMetadata create() => new RunMetadata();
  static PbList<RunMetadata> createRepeated() => new PbList<RunMetadata>();
  static RunMetadata getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRunMetadata();
    return _defaultInstance;
  }
  static RunMetadata _defaultInstance;
  static void $checkItem(RunMetadata v) {
    if (v is! RunMetadata) checkItemFailed(v, 'RunMetadata');
  }

  StepStats get stepStats => $_getN(0);
  set stepStats(StepStats v) { setField(1, v); }
  bool hasStepStats() => $_has(0);
  void clearStepStats() => clearField(1);

  CostGraphDef get costGraph => $_getN(1);
  set costGraph(CostGraphDef v) { setField(2, v); }
  bool hasCostGraph() => $_has(1);
  void clearCostGraph() => clearField(2);

  List<GraphDef> get partitionGraphs => $_getList(2);
}

class _ReadonlyRunMetadata extends RunMetadata with ReadonlyMessageMixin {}

class TensorConnection extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('TensorConnection')
    ..aOS(1, 'fromTensor')
    ..aOS(2, 'toTensor')
    ..hasRequiredFields = false
  ;

  TensorConnection() : super();
  TensorConnection.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  TensorConnection.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  TensorConnection clone() => new TensorConnection()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static TensorConnection create() => new TensorConnection();
  static PbList<TensorConnection> createRepeated() => new PbList<TensorConnection>();
  static TensorConnection getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyTensorConnection();
    return _defaultInstance;
  }
  static TensorConnection _defaultInstance;
  static void $checkItem(TensorConnection v) {
    if (v is! TensorConnection) checkItemFailed(v, 'TensorConnection');
  }

  String get fromTensor => $_getS(0, '');
  set fromTensor(String v) { $_setString(0, v); }
  bool hasFromTensor() => $_has(0);
  void clearFromTensor() => clearField(1);

  String get toTensor => $_getS(1, '');
  set toTensor(String v) { $_setString(1, v); }
  bool hasToTensor() => $_has(1);
  void clearToTensor() => clearField(2);
}

class _ReadonlyTensorConnection extends TensorConnection with ReadonlyMessageMixin {}

class CallableOptions extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CallableOptions')
    ..pPS(1, 'feed')
    ..pPS(2, 'fetch')
    ..pPS(3, 'target')
    ..a<RunOptions>(4, 'runOptions', PbFieldType.OM, RunOptions.getDefault, RunOptions.create)
    ..pp<TensorConnection>(5, 'tensorConnection', PbFieldType.PM, TensorConnection.$checkItem, TensorConnection.create)
    ..hasRequiredFields = false
  ;

  CallableOptions() : super();
  CallableOptions.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CallableOptions.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CallableOptions clone() => new CallableOptions()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CallableOptions create() => new CallableOptions();
  static PbList<CallableOptions> createRepeated() => new PbList<CallableOptions>();
  static CallableOptions getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyCallableOptions();
    return _defaultInstance;
  }
  static CallableOptions _defaultInstance;
  static void $checkItem(CallableOptions v) {
    if (v is! CallableOptions) checkItemFailed(v, 'CallableOptions');
  }

  List<String> get feed => $_getList(0);

  List<String> get fetch => $_getList(1);

  List<String> get target => $_getList(2);

  RunOptions get runOptions => $_getN(3);
  set runOptions(RunOptions v) { setField(4, v); }
  bool hasRunOptions() => $_has(3);
  void clearRunOptions() => clearField(4);

  List<TensorConnection> get tensorConnection => $_getList(4);
}

class _ReadonlyCallableOptions extends CallableOptions with ReadonlyMessageMixin {}

