///
//  Generated code. Do not modify.
//  source: tensor_description.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'tensor_shape.pb.dart' as $0;
import 'allocation_description.pb.dart' as $1;

import 'types.pbenum.dart' as $2;

class TensorDescription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TensorDescription',
      package: const $pb.PackageName('tensorflow'))
    ..e<$2.DataType>(1, 'dtype', $pb.PbFieldType.OE, $2.DataType.DT_INVALID,
        $2.DataType.valueOf, $2.DataType.values)
    ..a<$0.TensorShapeProto>(2, 'shape', $pb.PbFieldType.OM,
        $0.TensorShapeProto.getDefault, $0.TensorShapeProto.create)
    ..a<$1.AllocationDescription>(
        4,
        'allocationDescription',
        $pb.PbFieldType.OM,
        $1.AllocationDescription.getDefault,
        $1.AllocationDescription.create)
    ..hasRequiredFields = false;

  TensorDescription._() : super();
  factory TensorDescription() => create();
  factory TensorDescription.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TensorDescription.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  TensorDescription clone() => TensorDescription()..mergeFromMessage(this);
  TensorDescription copyWith(void Function(TensorDescription) updates) =>
      super.copyWith((message) => updates(message as TensorDescription));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TensorDescription create() => TensorDescription._();
  TensorDescription createEmptyInstance() => create();
  static $pb.PbList<TensorDescription> createRepeated() =>
      $pb.PbList<TensorDescription>();
  static TensorDescription getDefault() =>
      _defaultInstance ??= create()..freeze();
  static TensorDescription _defaultInstance;

  $2.DataType get dtype => $_getN(0);
  set dtype($2.DataType v) {
    setField(1, v);
  }

  $core.bool hasDtype() => $_has(0);
  void clearDtype() => clearField(1);

  $0.TensorShapeProto get shape => $_getN(1);
  set shape($0.TensorShapeProto v) {
    setField(2, v);
  }

  $core.bool hasShape() => $_has(1);
  void clearShape() => clearField(2);

  $1.AllocationDescription get allocationDescription => $_getN(2);
  set allocationDescription($1.AllocationDescription v) {
    setField(4, v);
  }

  $core.bool hasAllocationDescription() => $_has(2);
  void clearAllocationDescription() => clearField(4);
}
