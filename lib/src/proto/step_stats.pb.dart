///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_step_stats;

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart';

import 'tensor_description.pb.dart';
import 'allocation_description.pb.dart';

class AllocationRecord extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('AllocationRecord')
    ..aInt64(1, 'allocMicros')
    ..aInt64(2, 'allocBytes')
    ..hasRequiredFields = false
  ;

  AllocationRecord() : super();
  AllocationRecord.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  AllocationRecord.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  AllocationRecord clone() => new AllocationRecord()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static AllocationRecord create() => new AllocationRecord();
  static PbList<AllocationRecord> createRepeated() => new PbList<AllocationRecord>();
  static AllocationRecord getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyAllocationRecord();
    return _defaultInstance;
  }
  static AllocationRecord _defaultInstance;
  static void $checkItem(AllocationRecord v) {
    if (v is! AllocationRecord) checkItemFailed(v, 'AllocationRecord');
  }

  Int64 get allocMicros => $_getI64(0);
  set allocMicros(Int64 v) { $_setInt64(0, v); }
  bool hasAllocMicros() => $_has(0);
  void clearAllocMicros() => clearField(1);

  Int64 get allocBytes => $_getI64(1);
  set allocBytes(Int64 v) { $_setInt64(1, v); }
  bool hasAllocBytes() => $_has(1);
  void clearAllocBytes() => clearField(2);
}

class _ReadonlyAllocationRecord extends AllocationRecord with ReadonlyMessageMixin {}

class AllocatorMemoryUsed extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('AllocatorMemoryUsed')
    ..aOS(1, 'allocatorName')
    ..aInt64(2, 'totalBytes')
    ..aInt64(3, 'peakBytes')
    ..aInt64(4, 'liveBytes')
    ..aInt64(5, 'allocatorBytesInUse')
    ..pp<AllocationRecord>(6, 'allocationRecords', PbFieldType.PM, AllocationRecord.$checkItem, AllocationRecord.create)
    ..hasRequiredFields = false
  ;

  AllocatorMemoryUsed() : super();
  AllocatorMemoryUsed.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  AllocatorMemoryUsed.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  AllocatorMemoryUsed clone() => new AllocatorMemoryUsed()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static AllocatorMemoryUsed create() => new AllocatorMemoryUsed();
  static PbList<AllocatorMemoryUsed> createRepeated() => new PbList<AllocatorMemoryUsed>();
  static AllocatorMemoryUsed getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyAllocatorMemoryUsed();
    return _defaultInstance;
  }
  static AllocatorMemoryUsed _defaultInstance;
  static void $checkItem(AllocatorMemoryUsed v) {
    if (v is! AllocatorMemoryUsed) checkItemFailed(v, 'AllocatorMemoryUsed');
  }

  String get allocatorName => $_getS(0, '');
  set allocatorName(String v) { $_setString(0, v); }
  bool hasAllocatorName() => $_has(0);
  void clearAllocatorName() => clearField(1);

  Int64 get totalBytes => $_getI64(1);
  set totalBytes(Int64 v) { $_setInt64(1, v); }
  bool hasTotalBytes() => $_has(1);
  void clearTotalBytes() => clearField(2);

  Int64 get peakBytes => $_getI64(2);
  set peakBytes(Int64 v) { $_setInt64(2, v); }
  bool hasPeakBytes() => $_has(2);
  void clearPeakBytes() => clearField(3);

  Int64 get liveBytes => $_getI64(3);
  set liveBytes(Int64 v) { $_setInt64(3, v); }
  bool hasLiveBytes() => $_has(3);
  void clearLiveBytes() => clearField(4);

  Int64 get allocatorBytesInUse => $_getI64(4);
  set allocatorBytesInUse(Int64 v) { $_setInt64(4, v); }
  bool hasAllocatorBytesInUse() => $_has(4);
  void clearAllocatorBytesInUse() => clearField(5);

  List<AllocationRecord> get allocationRecords => $_getList(5);
}

class _ReadonlyAllocatorMemoryUsed extends AllocatorMemoryUsed with ReadonlyMessageMixin {}

class NodeOutput extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('NodeOutput')
    ..a<int>(1, 'slot', PbFieldType.O3)
    ..a<TensorDescription>(3, 'tensorDescription', PbFieldType.OM, TensorDescription.getDefault, TensorDescription.create)
    ..hasRequiredFields = false
  ;

  NodeOutput() : super();
  NodeOutput.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NodeOutput.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NodeOutput clone() => new NodeOutput()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static NodeOutput create() => new NodeOutput();
  static PbList<NodeOutput> createRepeated() => new PbList<NodeOutput>();
  static NodeOutput getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyNodeOutput();
    return _defaultInstance;
  }
  static NodeOutput _defaultInstance;
  static void $checkItem(NodeOutput v) {
    if (v is! NodeOutput) checkItemFailed(v, 'NodeOutput');
  }

  int get slot => $_get(0, 0);
  set slot(int v) { $_setUnsignedInt32(0, v); }
  bool hasSlot() => $_has(0);
  void clearSlot() => clearField(1);

  TensorDescription get tensorDescription => $_getN(1);
  set tensorDescription(TensorDescription v) { setField(3, v); }
  bool hasTensorDescription() => $_has(1);
  void clearTensorDescription() => clearField(3);
}

class _ReadonlyNodeOutput extends NodeOutput with ReadonlyMessageMixin {}

class MemoryStats extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('MemoryStats')
    ..aInt64(1, 'tempMemorySize')
    ..aInt64(2, 'deviceTempMemorySize')
    ..aInt64(3, 'persistentMemorySize')
    ..aInt64(4, 'devicePersistentMemorySize')
    ..p<Int64>(5, 'persistentTensorAllocIds', PbFieldType.P6)
    ..p<Int64>(6, 'devicePersistentTensorAllocIds', PbFieldType.P6)
    ..hasRequiredFields = false
  ;

  MemoryStats() : super();
  MemoryStats.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MemoryStats.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MemoryStats clone() => new MemoryStats()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static MemoryStats create() => new MemoryStats();
  static PbList<MemoryStats> createRepeated() => new PbList<MemoryStats>();
  static MemoryStats getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyMemoryStats();
    return _defaultInstance;
  }
  static MemoryStats _defaultInstance;
  static void $checkItem(MemoryStats v) {
    if (v is! MemoryStats) checkItemFailed(v, 'MemoryStats');
  }

  Int64 get tempMemorySize => $_getI64(0);
  set tempMemorySize(Int64 v) { $_setInt64(0, v); }
  bool hasTempMemorySize() => $_has(0);
  void clearTempMemorySize() => clearField(1);

  Int64 get deviceTempMemorySize => $_getI64(1);
  set deviceTempMemorySize(Int64 v) { $_setInt64(1, v); }
  bool hasDeviceTempMemorySize() => $_has(1);
  void clearDeviceTempMemorySize() => clearField(2);

  Int64 get persistentMemorySize => $_getI64(2);
  set persistentMemorySize(Int64 v) { $_setInt64(2, v); }
  bool hasPersistentMemorySize() => $_has(2);
  void clearPersistentMemorySize() => clearField(3);

  Int64 get devicePersistentMemorySize => $_getI64(3);
  set devicePersistentMemorySize(Int64 v) { $_setInt64(3, v); }
  bool hasDevicePersistentMemorySize() => $_has(3);
  void clearDevicePersistentMemorySize() => clearField(4);

  List<Int64> get persistentTensorAllocIds => $_getList(4);

  List<Int64> get devicePersistentTensorAllocIds => $_getList(5);
}

class _ReadonlyMemoryStats extends MemoryStats with ReadonlyMessageMixin {}

class NodeExecStats extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('NodeExecStats')
    ..aOS(1, 'nodeName')
    ..aInt64(2, 'allStartMicros')
    ..aInt64(3, 'opStartRelMicros')
    ..aInt64(4, 'opEndRelMicros')
    ..aInt64(5, 'allEndRelMicros')
    ..pp<AllocatorMemoryUsed>(6, 'memory', PbFieldType.PM, AllocatorMemoryUsed.$checkItem, AllocatorMemoryUsed.create)
    ..pp<NodeOutput>(7, 'output', PbFieldType.PM, NodeOutput.$checkItem, NodeOutput.create)
    ..aOS(8, 'timelineLabel')
    ..aInt64(9, 'scheduledMicros')
    ..a<int>(10, 'threadId', PbFieldType.OU3)
    ..pp<AllocationDescription>(11, 'referencedTensor', PbFieldType.PM, AllocationDescription.$checkItem, AllocationDescription.create)
    ..a<MemoryStats>(12, 'memoryStats', PbFieldType.OM, MemoryStats.getDefault, MemoryStats.create)
    ..hasRequiredFields = false
  ;

  NodeExecStats() : super();
  NodeExecStats.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NodeExecStats.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NodeExecStats clone() => new NodeExecStats()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static NodeExecStats create() => new NodeExecStats();
  static PbList<NodeExecStats> createRepeated() => new PbList<NodeExecStats>();
  static NodeExecStats getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyNodeExecStats();
    return _defaultInstance;
  }
  static NodeExecStats _defaultInstance;
  static void $checkItem(NodeExecStats v) {
    if (v is! NodeExecStats) checkItemFailed(v, 'NodeExecStats');
  }

  String get nodeName => $_getS(0, '');
  set nodeName(String v) { $_setString(0, v); }
  bool hasNodeName() => $_has(0);
  void clearNodeName() => clearField(1);

  Int64 get allStartMicros => $_getI64(1);
  set allStartMicros(Int64 v) { $_setInt64(1, v); }
  bool hasAllStartMicros() => $_has(1);
  void clearAllStartMicros() => clearField(2);

  Int64 get opStartRelMicros => $_getI64(2);
  set opStartRelMicros(Int64 v) { $_setInt64(2, v); }
  bool hasOpStartRelMicros() => $_has(2);
  void clearOpStartRelMicros() => clearField(3);

  Int64 get opEndRelMicros => $_getI64(3);
  set opEndRelMicros(Int64 v) { $_setInt64(3, v); }
  bool hasOpEndRelMicros() => $_has(3);
  void clearOpEndRelMicros() => clearField(4);

  Int64 get allEndRelMicros => $_getI64(4);
  set allEndRelMicros(Int64 v) { $_setInt64(4, v); }
  bool hasAllEndRelMicros() => $_has(4);
  void clearAllEndRelMicros() => clearField(5);

  List<AllocatorMemoryUsed> get memory => $_getList(5);

  List<NodeOutput> get output => $_getList(6);

  String get timelineLabel => $_getS(7, '');
  set timelineLabel(String v) { $_setString(7, v); }
  bool hasTimelineLabel() => $_has(7);
  void clearTimelineLabel() => clearField(8);

  Int64 get scheduledMicros => $_getI64(8);
  set scheduledMicros(Int64 v) { $_setInt64(8, v); }
  bool hasScheduledMicros() => $_has(8);
  void clearScheduledMicros() => clearField(9);

  int get threadId => $_get(9, 0);
  set threadId(int v) { $_setUnsignedInt32(9, v); }
  bool hasThreadId() => $_has(9);
  void clearThreadId() => clearField(10);

  List<AllocationDescription> get referencedTensor => $_getList(10);

  MemoryStats get memoryStats => $_getN(11);
  set memoryStats(MemoryStats v) { setField(12, v); }
  bool hasMemoryStats() => $_has(11);
  void clearMemoryStats() => clearField(12);
}

class _ReadonlyNodeExecStats extends NodeExecStats with ReadonlyMessageMixin {}

class DeviceStepStats extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('DeviceStepStats')
    ..aOS(1, 'device')
    ..pp<NodeExecStats>(2, 'nodeStats', PbFieldType.PM, NodeExecStats.$checkItem, NodeExecStats.create)
    ..hasRequiredFields = false
  ;

  DeviceStepStats() : super();
  DeviceStepStats.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeviceStepStats.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeviceStepStats clone() => new DeviceStepStats()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static DeviceStepStats create() => new DeviceStepStats();
  static PbList<DeviceStepStats> createRepeated() => new PbList<DeviceStepStats>();
  static DeviceStepStats getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyDeviceStepStats();
    return _defaultInstance;
  }
  static DeviceStepStats _defaultInstance;
  static void $checkItem(DeviceStepStats v) {
    if (v is! DeviceStepStats) checkItemFailed(v, 'DeviceStepStats');
  }

  String get device => $_getS(0, '');
  set device(String v) { $_setString(0, v); }
  bool hasDevice() => $_has(0);
  void clearDevice() => clearField(1);

  List<NodeExecStats> get nodeStats => $_getList(1);
}

class _ReadonlyDeviceStepStats extends DeviceStepStats with ReadonlyMessageMixin {}

class StepStats extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('StepStats')
    ..pp<DeviceStepStats>(1, 'devStats', PbFieldType.PM, DeviceStepStats.$checkItem, DeviceStepStats.create)
    ..hasRequiredFields = false
  ;

  StepStats() : super();
  StepStats.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  StepStats.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  StepStats clone() => new StepStats()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static StepStats create() => new StepStats();
  static PbList<StepStats> createRepeated() => new PbList<StepStats>();
  static StepStats getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyStepStats();
    return _defaultInstance;
  }
  static StepStats _defaultInstance;
  static void $checkItem(StepStats v) {
    if (v is! StepStats) checkItemFailed(v, 'StepStats');
  }

  List<DeviceStepStats> get devStats => $_getList(0);
}

class _ReadonlyStepStats extends StepStats with ReadonlyMessageMixin {}

