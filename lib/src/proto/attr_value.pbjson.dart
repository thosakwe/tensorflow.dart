///
//  Generated code. Do not modify.
//  source: attr_value.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const AttrValue$json = const {
  '1': 'AttrValue',
  '2': const [
    const {'1': 's', '3': 2, '4': 1, '5': 12, '9': 0, '10': 's'},
    const {'1': 'i', '3': 3, '4': 1, '5': 3, '9': 0, '10': 'i'},
    const {'1': 'f', '3': 4, '4': 1, '5': 2, '9': 0, '10': 'f'},
    const {'1': 'b', '3': 5, '4': 1, '5': 8, '9': 0, '10': 'b'},
    const {
      '1': 'type',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.DataType',
      '9': 0,
      '10': 'type'
    },
    const {
      '1': 'shape',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorShapeProto',
      '9': 0,
      '10': 'shape'
    },
    const {
      '1': 'tensor',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorProto',
      '9': 0,
      '10': 'tensor'
    },
    const {
      '1': 'list',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.AttrValue.ListValue',
      '9': 0,
      '10': 'list'
    },
    const {
      '1': 'func',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.NameAttrList',
      '9': 0,
      '10': 'func'
    },
    const {
      '1': 'placeholder',
      '3': 9,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'placeholder'
    },
  ],
  '3': const [AttrValue_ListValue$json],
  '8': const [
    const {'1': 'value'},
  ],
};

const AttrValue_ListValue$json = const {
  '1': 'ListValue',
  '2': const [
    const {'1': 's', '3': 2, '4': 3, '5': 12, '10': 's'},
    const {
      '1': 'i',
      '3': 3,
      '4': 3,
      '5': 3,
      '8': const {'2': true},
      '10': 'i',
    },
    const {
      '1': 'f',
      '3': 4,
      '4': 3,
      '5': 2,
      '8': const {'2': true},
      '10': 'f',
    },
    const {
      '1': 'b',
      '3': 5,
      '4': 3,
      '5': 8,
      '8': const {'2': true},
      '10': 'b',
    },
    const {
      '1': 'type',
      '3': 6,
      '4': 3,
      '5': 14,
      '6': '.tensorflow.DataType',
      '8': const {'2': true},
      '10': 'type',
    },
    const {
      '1': 'shape',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.TensorShapeProto',
      '10': 'shape'
    },
    const {
      '1': 'tensor',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.TensorProto',
      '10': 'tensor'
    },
    const {
      '1': 'func',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.NameAttrList',
      '10': 'func'
    },
  ],
};

const NameAttrList$json = const {
  '1': 'NameAttrList',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'attr',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.NameAttrList.AttrEntry',
      '10': 'attr'
    },
  ],
  '3': const [NameAttrList_AttrEntry$json],
};

const NameAttrList_AttrEntry$json = const {
  '1': 'AttrEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.AttrValue',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};
