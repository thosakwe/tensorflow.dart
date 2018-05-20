///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_tensor_description;

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

import 'tensor_shape.pb.dart';
import 'allocation_description.pb.dart';

import 'types.pbenum.dart';

class TensorDescription extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('TensorDescription')
    ..e<DataType>(1, 'dtype', PbFieldType.OE, DataType.DT_INVALID, DataType.valueOf, DataType.values)
    ..a<TensorShapeProto>(2, 'shape', PbFieldType.OM, TensorShapeProto.getDefault, TensorShapeProto.create)
    ..a<AllocationDescription>(4, 'allocationDescription', PbFieldType.OM, AllocationDescription.getDefault, AllocationDescription.create)
    ..hasRequiredFields = false
  ;

  TensorDescription() : super();
  TensorDescription.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  TensorDescription.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  TensorDescription clone() => new TensorDescription()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static TensorDescription create() => new TensorDescription();
  static PbList<TensorDescription> createRepeated() => new PbList<TensorDescription>();
  static TensorDescription getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyTensorDescription();
    return _defaultInstance;
  }
  static TensorDescription _defaultInstance;
  static void $checkItem(TensorDescription v) {
    if (v is! TensorDescription) checkItemFailed(v, 'TensorDescription');
  }

  DataType get dtype => $_getN(0);
  set dtype(DataType v) { setField(1, v); }
  bool hasDtype() => $_has(0);
  void clearDtype() => clearField(1);

  TensorShapeProto get shape => $_getN(1);
  set shape(TensorShapeProto v) { setField(2, v); }
  bool hasShape() => $_has(1);
  void clearShape() => clearField(2);

  AllocationDescription get allocationDescription => $_getN(2);
  set allocationDescription(AllocationDescription v) { setField(4, v); }
  bool hasAllocationDescription() => $_has(2);
  void clearAllocationDescription() => clearField(4);
}

class _ReadonlyTensorDescription extends TensorDescription with ReadonlyMessageMixin {}

