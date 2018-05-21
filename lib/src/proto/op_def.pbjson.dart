///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_op_def_pbjson;

const OpDef$json = const {
  '1': 'OpDef',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'input_arg',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.OpDef.ArgDef',
      '10': 'inputArg'
    },
    const {
      '1': 'output_arg',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.OpDef.ArgDef',
      '10': 'outputArg'
    },
    const {
      '1': 'attr',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.OpDef.AttrDef',
      '10': 'attr'
    },
    const {
      '1': 'deprecation',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.OpDeprecation',
      '10': 'deprecation'
    },
    const {'1': 'summary', '3': 5, '4': 1, '5': 9, '10': 'summary'},
    const {'1': 'description', '3': 6, '4': 1, '5': 9, '10': 'description'},
    const {
      '1': 'is_commutative',
      '3': 18,
      '4': 1,
      '5': 8,
      '10': 'isCommutative'
    },
    const {'1': 'is_aggregate', '3': 16, '4': 1, '5': 8, '10': 'isAggregate'},
    const {'1': 'is_stateful', '3': 17, '4': 1, '5': 8, '10': 'isStateful'},
    const {
      '1': 'allows_uninitialized_input',
      '3': 19,
      '4': 1,
      '5': 8,
      '10': 'allowsUninitializedInput'
    },
  ],
  '3': const [OpDef_ArgDef$json, OpDef_AttrDef$json],
};

const OpDef_ArgDef$json = const {
  '1': 'ArgDef',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {
      '1': 'type',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.DataType',
      '10': 'type'
    },
    const {'1': 'type_attr', '3': 4, '4': 1, '5': 9, '10': 'typeAttr'},
    const {'1': 'number_attr', '3': 5, '4': 1, '5': 9, '10': 'numberAttr'},
    const {'1': 'type_list_attr', '3': 6, '4': 1, '5': 9, '10': 'typeListAttr'},
    const {'1': 'is_ref', '3': 16, '4': 1, '5': 8, '10': 'isRef'},
  ],
};

const OpDef_AttrDef$json = const {
  '1': 'AttrDef',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    const {
      '1': 'default_value',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.AttrValue',
      '10': 'defaultValue'
    },
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'has_minimum', '3': 5, '4': 1, '5': 8, '10': 'hasMinimum'},
    const {'1': 'minimum', '3': 6, '4': 1, '5': 3, '10': 'minimum'},
    const {
      '1': 'allowed_values',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.AttrValue',
      '10': 'allowedValues'
    },
  ],
};

const OpDeprecation$json = const {
  '1': 'OpDeprecation',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 5, '10': 'version'},
    const {'1': 'explanation', '3': 2, '4': 1, '5': 9, '10': 'explanation'},
  ],
};

const OpList$json = const {
  '1': 'OpList',
  '2': const [
    const {
      '1': 'op',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.OpDef',
      '10': 'op'
    },
  ],
};
