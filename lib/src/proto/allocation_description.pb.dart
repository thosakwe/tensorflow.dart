///
//  Generated code. Do not modify.
//  source: allocation_description.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class AllocationDescription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AllocationDescription',
      package: const $pb.PackageName('tensorflow'))
    ..aInt64(1, 'requestedBytes')
    ..aInt64(2, 'allocatedBytes')
    ..aOS(3, 'allocatorName')
    ..aInt64(4, 'allocationId')
    ..aOB(5, 'hasSingleReference')
    ..a<Int64>(6, 'ptr', $pb.PbFieldType.OU6, Int64.ZERO)
    ..hasRequiredFields = false;

  AllocationDescription._() : super();
  factory AllocationDescription() => create();
  factory AllocationDescription.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AllocationDescription.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  AllocationDescription clone() =>
      AllocationDescription()..mergeFromMessage(this);
  AllocationDescription copyWith(
          void Function(AllocationDescription) updates) =>
      super.copyWith((message) => updates(message as AllocationDescription));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AllocationDescription create() => AllocationDescription._();
  AllocationDescription createEmptyInstance() => create();
  static $pb.PbList<AllocationDescription> createRepeated() =>
      $pb.PbList<AllocationDescription>();
  static AllocationDescription getDefault() =>
      _defaultInstance ??= create()..freeze();
  static AllocationDescription _defaultInstance;

  Int64 get requestedBytes => $_getI64(0);
  set requestedBytes(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasRequestedBytes() => $_has(0);
  void clearRequestedBytes() => clearField(1);

  Int64 get allocatedBytes => $_getI64(1);
  set allocatedBytes(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasAllocatedBytes() => $_has(1);
  void clearAllocatedBytes() => clearField(2);

  $core.String get allocatorName => $_getS(2, '');
  set allocatorName($core.String v) {
    $_setString(2, v);
  }

  $core.bool hasAllocatorName() => $_has(2);
  void clearAllocatorName() => clearField(3);

  Int64 get allocationId => $_getI64(3);
  set allocationId(Int64 v) {
    $_setInt64(3, v);
  }

  $core.bool hasAllocationId() => $_has(3);
  void clearAllocationId() => clearField(4);

  $core.bool get hasSingleReference => $_get(4, false);
  set hasSingleReference($core.bool v) {
    $_setBool(4, v);
  }

  $core.bool hasHasSingleReference() => $_has(4);
  void clearHasSingleReference() => clearField(5);

  Int64 get ptr => $_getI64(5);
  set ptr(Int64 v) {
    $_setInt64(5, v);
  }

  $core.bool hasPtr() => $_has(5);
  void clearPtr() => clearField(6);
}
