///
//  Generated code. Do not modify.
//  source: step_stats.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'tensor_description.pb.dart' as $0;
import 'allocation_description.pb.dart' as $1;

class AllocationRecord extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AllocationRecord',
      package: const $pb.PackageName('tensorflow'))
    ..aInt64(1, 'allocMicros')
    ..aInt64(2, 'allocBytes')
    ..hasRequiredFields = false;

  AllocationRecord._() : super();
  factory AllocationRecord() => create();
  factory AllocationRecord.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AllocationRecord.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  AllocationRecord clone() => AllocationRecord()..mergeFromMessage(this);
  AllocationRecord copyWith(void Function(AllocationRecord) updates) =>
      super.copyWith((message) => updates(message as AllocationRecord));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AllocationRecord create() => AllocationRecord._();
  AllocationRecord createEmptyInstance() => create();
  static $pb.PbList<AllocationRecord> createRepeated() =>
      $pb.PbList<AllocationRecord>();
  static AllocationRecord getDefault() =>
      _defaultInstance ??= create()..freeze();
  static AllocationRecord _defaultInstance;

  Int64 get allocMicros => $_getI64(0);
  set allocMicros(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasAllocMicros() => $_has(0);
  void clearAllocMicros() => clearField(1);

  Int64 get allocBytes => $_getI64(1);
  set allocBytes(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasAllocBytes() => $_has(1);
  void clearAllocBytes() => clearField(2);
}

class AllocatorMemoryUsed extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AllocatorMemoryUsed',
      package: const $pb.PackageName('tensorflow'))
    ..aOS(1, 'allocatorName')
    ..aInt64(2, 'totalBytes')
    ..aInt64(3, 'peakBytes')
    ..aInt64(4, 'liveBytes')
    ..aInt64(5, 'allocatorBytesInUse')
    ..pc<AllocationRecord>(
        6, 'allocationRecords', $pb.PbFieldType.PM, AllocationRecord.create)
    ..hasRequiredFields = false;

  AllocatorMemoryUsed._() : super();
  factory AllocatorMemoryUsed() => create();
  factory AllocatorMemoryUsed.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AllocatorMemoryUsed.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  AllocatorMemoryUsed clone() => AllocatorMemoryUsed()..mergeFromMessage(this);
  AllocatorMemoryUsed copyWith(void Function(AllocatorMemoryUsed) updates) =>
      super.copyWith((message) => updates(message as AllocatorMemoryUsed));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AllocatorMemoryUsed create() => AllocatorMemoryUsed._();
  AllocatorMemoryUsed createEmptyInstance() => create();
  static $pb.PbList<AllocatorMemoryUsed> createRepeated() =>
      $pb.PbList<AllocatorMemoryUsed>();
  static AllocatorMemoryUsed getDefault() =>
      _defaultInstance ??= create()..freeze();
  static AllocatorMemoryUsed _defaultInstance;

  $core.String get allocatorName => $_getS(0, '');
  set allocatorName($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasAllocatorName() => $_has(0);
  void clearAllocatorName() => clearField(1);

  Int64 get totalBytes => $_getI64(1);
  set totalBytes(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasTotalBytes() => $_has(1);
  void clearTotalBytes() => clearField(2);

  Int64 get peakBytes => $_getI64(2);
  set peakBytes(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasPeakBytes() => $_has(2);
  void clearPeakBytes() => clearField(3);

  Int64 get liveBytes => $_getI64(3);
  set liveBytes(Int64 v) {
    $_setInt64(3, v);
  }

  $core.bool hasLiveBytes() => $_has(3);
  void clearLiveBytes() => clearField(4);

  Int64 get allocatorBytesInUse => $_getI64(4);
  set allocatorBytesInUse(Int64 v) {
    $_setInt64(4, v);
  }

  $core.bool hasAllocatorBytesInUse() => $_has(4);
  void clearAllocatorBytesInUse() => clearField(5);

  $core.List<AllocationRecord> get allocationRecords => $_getList(5);
}

class NodeOutput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NodeOutput',
      package: const $pb.PackageName('tensorflow'))
    ..a<$core.int>(1, 'slot', $pb.PbFieldType.O3)
    ..a<$0.TensorDescription>(3, 'tensorDescription', $pb.PbFieldType.OM,
        $0.TensorDescription.getDefault, $0.TensorDescription.create)
    ..hasRequiredFields = false;

  NodeOutput._() : super();
  factory NodeOutput() => create();
  factory NodeOutput.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NodeOutput.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NodeOutput clone() => NodeOutput()..mergeFromMessage(this);
  NodeOutput copyWith(void Function(NodeOutput) updates) =>
      super.copyWith((message) => updates(message as NodeOutput));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NodeOutput create() => NodeOutput._();
  NodeOutput createEmptyInstance() => create();
  static $pb.PbList<NodeOutput> createRepeated() => $pb.PbList<NodeOutput>();
  static NodeOutput getDefault() => _defaultInstance ??= create()..freeze();
  static NodeOutput _defaultInstance;

  $core.int get slot => $_get(0, 0);
  set slot($core.int v) {
    $_setSignedInt32(0, v);
  }

  $core.bool hasSlot() => $_has(0);
  void clearSlot() => clearField(1);

  $0.TensorDescription get tensorDescription => $_getN(1);
  set tensorDescription($0.TensorDescription v) {
    setField(3, v);
  }

  $core.bool hasTensorDescription() => $_has(1);
  void clearTensorDescription() => clearField(3);
}

class MemoryStats extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MemoryStats',
      package: const $pb.PackageName('tensorflow'))
    ..aInt64(1, 'tempMemorySize')
    ..aInt64(2, 'deviceTempMemorySize')
    ..aInt64(3, 'persistentMemorySize')
    ..aInt64(4, 'devicePersistentMemorySize')
    ..p<Int64>(5, 'persistentTensorAllocIds', $pb.PbFieldType.P6)
    ..p<Int64>(6, 'devicePersistentTensorAllocIds', $pb.PbFieldType.P6)
    ..hasRequiredFields = false;

  MemoryStats._() : super();
  factory MemoryStats() => create();
  factory MemoryStats.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MemoryStats.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  MemoryStats clone() => MemoryStats()..mergeFromMessage(this);
  MemoryStats copyWith(void Function(MemoryStats) updates) =>
      super.copyWith((message) => updates(message as MemoryStats));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MemoryStats create() => MemoryStats._();
  MemoryStats createEmptyInstance() => create();
  static $pb.PbList<MemoryStats> createRepeated() => $pb.PbList<MemoryStats>();
  static MemoryStats getDefault() => _defaultInstance ??= create()..freeze();
  static MemoryStats _defaultInstance;

  Int64 get tempMemorySize => $_getI64(0);
  set tempMemorySize(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasTempMemorySize() => $_has(0);
  void clearTempMemorySize() => clearField(1);

  @$core.Deprecated('This field is deprecated.')
  Int64 get deviceTempMemorySize => $_getI64(1);
  @$core.Deprecated('This field is deprecated.')
  set deviceTempMemorySize(Int64 v) {
    $_setInt64(1, v);
  }

  @$core.Deprecated('This field is deprecated.')
  $core.bool hasDeviceTempMemorySize() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  void clearDeviceTempMemorySize() => clearField(2);

  Int64 get persistentMemorySize => $_getI64(2);
  set persistentMemorySize(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasPersistentMemorySize() => $_has(2);
  void clearPersistentMemorySize() => clearField(3);

  @$core.Deprecated('This field is deprecated.')
  Int64 get devicePersistentMemorySize => $_getI64(3);
  @$core.Deprecated('This field is deprecated.')
  set devicePersistentMemorySize(Int64 v) {
    $_setInt64(3, v);
  }

  @$core.Deprecated('This field is deprecated.')
  $core.bool hasDevicePersistentMemorySize() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  void clearDevicePersistentMemorySize() => clearField(4);

  $core.List<Int64> get persistentTensorAllocIds => $_getList(4);

  @$core.Deprecated('This field is deprecated.')
  $core.List<Int64> get devicePersistentTensorAllocIds => $_getList(5);
}

class NodeExecStats extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NodeExecStats',
      package: const $pb.PackageName('tensorflow'))
    ..aOS(1, 'nodeName')
    ..aInt64(2, 'allStartMicros')
    ..aInt64(3, 'opStartRelMicros')
    ..aInt64(4, 'opEndRelMicros')
    ..aInt64(5, 'allEndRelMicros')
    ..pc<AllocatorMemoryUsed>(
        6, 'memory', $pb.PbFieldType.PM, AllocatorMemoryUsed.create)
    ..pc<NodeOutput>(7, 'output', $pb.PbFieldType.PM, NodeOutput.create)
    ..aOS(8, 'timelineLabel')
    ..aInt64(9, 'scheduledMicros')
    ..a<$core.int>(10, 'threadId', $pb.PbFieldType.OU3)
    ..pc<$1.AllocationDescription>(11, 'referencedTensor', $pb.PbFieldType.PM,
        $1.AllocationDescription.create)
    ..a<MemoryStats>(12, 'memoryStats', $pb.PbFieldType.OM,
        MemoryStats.getDefault, MemoryStats.create)
    ..hasRequiredFields = false;

  NodeExecStats._() : super();
  factory NodeExecStats() => create();
  factory NodeExecStats.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NodeExecStats.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NodeExecStats clone() => NodeExecStats()..mergeFromMessage(this);
  NodeExecStats copyWith(void Function(NodeExecStats) updates) =>
      super.copyWith((message) => updates(message as NodeExecStats));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NodeExecStats create() => NodeExecStats._();
  NodeExecStats createEmptyInstance() => create();
  static $pb.PbList<NodeExecStats> createRepeated() =>
      $pb.PbList<NodeExecStats>();
  static NodeExecStats getDefault() => _defaultInstance ??= create()..freeze();
  static NodeExecStats _defaultInstance;

  $core.String get nodeName => $_getS(0, '');
  set nodeName($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasNodeName() => $_has(0);
  void clearNodeName() => clearField(1);

  Int64 get allStartMicros => $_getI64(1);
  set allStartMicros(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasAllStartMicros() => $_has(1);
  void clearAllStartMicros() => clearField(2);

  Int64 get opStartRelMicros => $_getI64(2);
  set opStartRelMicros(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasOpStartRelMicros() => $_has(2);
  void clearOpStartRelMicros() => clearField(3);

  Int64 get opEndRelMicros => $_getI64(3);
  set opEndRelMicros(Int64 v) {
    $_setInt64(3, v);
  }

  $core.bool hasOpEndRelMicros() => $_has(3);
  void clearOpEndRelMicros() => clearField(4);

  Int64 get allEndRelMicros => $_getI64(4);
  set allEndRelMicros(Int64 v) {
    $_setInt64(4, v);
  }

  $core.bool hasAllEndRelMicros() => $_has(4);
  void clearAllEndRelMicros() => clearField(5);

  $core.List<AllocatorMemoryUsed> get memory => $_getList(5);

  $core.List<NodeOutput> get output => $_getList(6);

  $core.String get timelineLabel => $_getS(7, '');
  set timelineLabel($core.String v) {
    $_setString(7, v);
  }

  $core.bool hasTimelineLabel() => $_has(7);
  void clearTimelineLabel() => clearField(8);

  Int64 get scheduledMicros => $_getI64(8);
  set scheduledMicros(Int64 v) {
    $_setInt64(8, v);
  }

  $core.bool hasScheduledMicros() => $_has(8);
  void clearScheduledMicros() => clearField(9);

  $core.int get threadId => $_get(9, 0);
  set threadId($core.int v) {
    $_setUnsignedInt32(9, v);
  }

  $core.bool hasThreadId() => $_has(9);
  void clearThreadId() => clearField(10);

  $core.List<$1.AllocationDescription> get referencedTensor => $_getList(10);

  MemoryStats get memoryStats => $_getN(11);
  set memoryStats(MemoryStats v) {
    setField(12, v);
  }

  $core.bool hasMemoryStats() => $_has(11);
  void clearMemoryStats() => clearField(12);
}

class DeviceStepStats extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeviceStepStats',
      package: const $pb.PackageName('tensorflow'))
    ..aOS(1, 'device')
    ..pc<NodeExecStats>(
        2, 'nodeStats', $pb.PbFieldType.PM, NodeExecStats.create)
    ..hasRequiredFields = false;

  DeviceStepStats._() : super();
  factory DeviceStepStats() => create();
  factory DeviceStepStats.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeviceStepStats.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DeviceStepStats clone() => DeviceStepStats()..mergeFromMessage(this);
  DeviceStepStats copyWith(void Function(DeviceStepStats) updates) =>
      super.copyWith((message) => updates(message as DeviceStepStats));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeviceStepStats create() => DeviceStepStats._();
  DeviceStepStats createEmptyInstance() => create();
  static $pb.PbList<DeviceStepStats> createRepeated() =>
      $pb.PbList<DeviceStepStats>();
  static DeviceStepStats getDefault() =>
      _defaultInstance ??= create()..freeze();
  static DeviceStepStats _defaultInstance;

  $core.String get device => $_getS(0, '');
  set device($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasDevice() => $_has(0);
  void clearDevice() => clearField(1);

  $core.List<NodeExecStats> get nodeStats => $_getList(1);
}

class StepStats extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo('StepStats', package: const $pb.PackageName('tensorflow'))
        ..pc<DeviceStepStats>(
            1, 'devStats', $pb.PbFieldType.PM, DeviceStepStats.create)
        ..hasRequiredFields = false;

  StepStats._() : super();
  factory StepStats() => create();
  factory StepStats.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StepStats.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  StepStats clone() => StepStats()..mergeFromMessage(this);
  StepStats copyWith(void Function(StepStats) updates) =>
      super.copyWith((message) => updates(message as StepStats));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StepStats create() => StepStats._();
  StepStats createEmptyInstance() => create();
  static $pb.PbList<StepStats> createRepeated() => $pb.PbList<StepStats>();
  static StepStats getDefault() => _defaultInstance ??= create()..freeze();
  static StepStats _defaultInstance;

  $core.List<DeviceStepStats> get devStats => $_getList(0);
}
