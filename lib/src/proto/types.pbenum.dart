///
//  Generated code. Do not modify.
//  source: types.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class DataType extends $pb.ProtobufEnum {
  static const DataType DT_INVALID = DataType._(0, 'DT_INVALID');
  static const DataType DT_FLOAT = DataType._(1, 'DT_FLOAT');
  static const DataType DT_DOUBLE = DataType._(2, 'DT_DOUBLE');
  static const DataType DT_INT32 = DataType._(3, 'DT_INT32');
  static const DataType DT_UINT8 = DataType._(4, 'DT_UINT8');
  static const DataType DT_INT16 = DataType._(5, 'DT_INT16');
  static const DataType DT_INT8 = DataType._(6, 'DT_INT8');
  static const DataType DT_STRING = DataType._(7, 'DT_STRING');
  static const DataType DT_COMPLEX64 = DataType._(8, 'DT_COMPLEX64');
  static const DataType DT_INT64 = DataType._(9, 'DT_INT64');
  static const DataType DT_BOOL = DataType._(10, 'DT_BOOL');
  static const DataType DT_QINT8 = DataType._(11, 'DT_QINT8');
  static const DataType DT_QUINT8 = DataType._(12, 'DT_QUINT8');
  static const DataType DT_QINT32 = DataType._(13, 'DT_QINT32');
  static const DataType DT_BFLOAT16 = DataType._(14, 'DT_BFLOAT16');
  static const DataType DT_QINT16 = DataType._(15, 'DT_QINT16');
  static const DataType DT_QUINT16 = DataType._(16, 'DT_QUINT16');
  static const DataType DT_UINT16 = DataType._(17, 'DT_UINT16');
  static const DataType DT_COMPLEX128 = DataType._(18, 'DT_COMPLEX128');
  static const DataType DT_HALF = DataType._(19, 'DT_HALF');
  static const DataType DT_RESOURCE = DataType._(20, 'DT_RESOURCE');
  static const DataType DT_VARIANT = DataType._(21, 'DT_VARIANT');
  static const DataType DT_UINT32 = DataType._(22, 'DT_UINT32');
  static const DataType DT_UINT64 = DataType._(23, 'DT_UINT64');
  static const DataType DT_FLOAT_REF = DataType._(101, 'DT_FLOAT_REF');
  static const DataType DT_DOUBLE_REF = DataType._(102, 'DT_DOUBLE_REF');
  static const DataType DT_INT32_REF = DataType._(103, 'DT_INT32_REF');
  static const DataType DT_UINT8_REF = DataType._(104, 'DT_UINT8_REF');
  static const DataType DT_INT16_REF = DataType._(105, 'DT_INT16_REF');
  static const DataType DT_INT8_REF = DataType._(106, 'DT_INT8_REF');
  static const DataType DT_STRING_REF = DataType._(107, 'DT_STRING_REF');
  static const DataType DT_COMPLEX64_REF = DataType._(108, 'DT_COMPLEX64_REF');
  static const DataType DT_INT64_REF = DataType._(109, 'DT_INT64_REF');
  static const DataType DT_BOOL_REF = DataType._(110, 'DT_BOOL_REF');
  static const DataType DT_QINT8_REF = DataType._(111, 'DT_QINT8_REF');
  static const DataType DT_QUINT8_REF = DataType._(112, 'DT_QUINT8_REF');
  static const DataType DT_QINT32_REF = DataType._(113, 'DT_QINT32_REF');
  static const DataType DT_BFLOAT16_REF = DataType._(114, 'DT_BFLOAT16_REF');
  static const DataType DT_QINT16_REF = DataType._(115, 'DT_QINT16_REF');
  static const DataType DT_QUINT16_REF = DataType._(116, 'DT_QUINT16_REF');
  static const DataType DT_UINT16_REF = DataType._(117, 'DT_UINT16_REF');
  static const DataType DT_COMPLEX128_REF =
      DataType._(118, 'DT_COMPLEX128_REF');
  static const DataType DT_HALF_REF = DataType._(119, 'DT_HALF_REF');
  static const DataType DT_RESOURCE_REF = DataType._(120, 'DT_RESOURCE_REF');
  static const DataType DT_VARIANT_REF = DataType._(121, 'DT_VARIANT_REF');
  static const DataType DT_UINT32_REF = DataType._(122, 'DT_UINT32_REF');
  static const DataType DT_UINT64_REF = DataType._(123, 'DT_UINT64_REF');

  static const $core.List<DataType> values = <DataType>[
    DT_INVALID,
    DT_FLOAT,
    DT_DOUBLE,
    DT_INT32,
    DT_UINT8,
    DT_INT16,
    DT_INT8,
    DT_STRING,
    DT_COMPLEX64,
    DT_INT64,
    DT_BOOL,
    DT_QINT8,
    DT_QUINT8,
    DT_QINT32,
    DT_BFLOAT16,
    DT_QINT16,
    DT_QUINT16,
    DT_UINT16,
    DT_COMPLEX128,
    DT_HALF,
    DT_RESOURCE,
    DT_VARIANT,
    DT_UINT32,
    DT_UINT64,
    DT_FLOAT_REF,
    DT_DOUBLE_REF,
    DT_INT32_REF,
    DT_UINT8_REF,
    DT_INT16_REF,
    DT_INT8_REF,
    DT_STRING_REF,
    DT_COMPLEX64_REF,
    DT_INT64_REF,
    DT_BOOL_REF,
    DT_QINT8_REF,
    DT_QUINT8_REF,
    DT_QINT32_REF,
    DT_BFLOAT16_REF,
    DT_QINT16_REF,
    DT_QUINT16_REF,
    DT_UINT16_REF,
    DT_COMPLEX128_REF,
    DT_HALF_REF,
    DT_RESOURCE_REF,
    DT_VARIANT_REF,
    DT_UINT32_REF,
    DT_UINT64_REF,
  ];

  static final $core.Map<$core.int, DataType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static DataType valueOf($core.int value) => _byValue[value];

  const DataType._($core.int v, $core.String n) : super(v, n);
}
