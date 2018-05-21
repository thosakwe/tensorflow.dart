///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_allocation_description;

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart';

class AllocationDescription extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('AllocationDescription')
    ..aInt64(1, 'requestedBytes')
    ..aInt64(2, 'allocatedBytes')
    ..aOS(3, 'allocatorName')
    ..aInt64(4, 'allocationId')
    ..aOB(5, 'hasSingleReference')
    ..a<Int64>(6, 'ptr', PbFieldType.OU6, Int64.ZERO)
    ..hasRequiredFields = false;

  AllocationDescription() : super();
  AllocationDescription.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  AllocationDescription.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  AllocationDescription clone() =>
      new AllocationDescription()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static AllocationDescription create() => new AllocationDescription();
  static PbList<AllocationDescription> createRepeated() =>
      new PbList<AllocationDescription>();
  static AllocationDescription getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyAllocationDescription();
    return _defaultInstance;
  }

  static AllocationDescription _defaultInstance;
  static void $checkItem(AllocationDescription v) {
    if (v is! AllocationDescription)
      checkItemFailed(v, 'AllocationDescription');
  }

  Int64 get requestedBytes => $_getI64(0);
  set requestedBytes(Int64 v) {
    $_setInt64(0, v);
  }

  bool hasRequestedBytes() => $_has(0);
  void clearRequestedBytes() => clearField(1);

  Int64 get allocatedBytes => $_getI64(1);
  set allocatedBytes(Int64 v) {
    $_setInt64(1, v);
  }

  bool hasAllocatedBytes() => $_has(1);
  void clearAllocatedBytes() => clearField(2);

  String get allocatorName => $_getS(2, '');
  set allocatorName(String v) {
    $_setString(2, v);
  }

  bool hasAllocatorName() => $_has(2);
  void clearAllocatorName() => clearField(3);

  Int64 get allocationId => $_getI64(3);
  set allocationId(Int64 v) {
    $_setInt64(3, v);
  }

  bool hasAllocationId() => $_has(3);
  void clearAllocationId() => clearField(4);

  bool get hasSingleReference => $_get(4, false);
  set hasSingleReference(bool v) {
    $_setBool(4, v);
  }

  bool hasHasSingleReference() => $_has(4);
  void clearHasSingleReference() => clearField(5);

  Int64 get ptr => $_getI64(5);
  set ptr(Int64 v) {
    $_setInt64(5, v);
  }

  bool hasPtr() => $_has(5);
  void clearPtr() => clearField(6);
}

class _ReadonlyAllocationDescription extends AllocationDescription
    with ReadonlyMessageMixin {}
