///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_function_pbjson;

const FunctionDefLibrary$json = const {
  '1': 'FunctionDefLibrary',
  '2': const [
    const {'1': 'function', '3': 1, '4': 3, '5': 11, '6': '.tensorflow.FunctionDef', '10': 'function'},
    const {'1': 'gradient', '3': 2, '4': 3, '5': 11, '6': '.tensorflow.GradientDef', '10': 'gradient'},
  ],
};

const FunctionDef$json = const {
  '1': 'FunctionDef',
  '2': const [
    const {'1': 'signature', '3': 1, '4': 1, '5': 11, '6': '.tensorflow.OpDef', '10': 'signature'},
    const {'1': 'attr', '3': 5, '4': 3, '5': 11, '6': '.tensorflow.FunctionDef.AttrEntry', '10': 'attr'},
    const {'1': 'node_def', '3': 3, '4': 3, '5': 11, '6': '.tensorflow.NodeDef', '10': 'nodeDef'},
    const {'1': 'ret', '3': 4, '4': 3, '5': 11, '6': '.tensorflow.FunctionDef.RetEntry', '10': 'ret'},
  ],
  '3': const [FunctionDef_AttrEntry$json, FunctionDef_RetEntry$json],
  '9': const [
    const {'1': 2, '2': 3},
  ],
};

const FunctionDef_AttrEntry$json = const {
  '1': 'AttrEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.AttrValue', '10': 'value'},
  ],
  '7': const {'7': true},
};

const FunctionDef_RetEntry$json = const {
  '1': 'RetEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const GradientDef$json = const {
  '1': 'GradientDef',
  '2': const [
    const {'1': 'function_name', '3': 1, '4': 1, '5': 9, '10': 'functionName'},
    const {'1': 'gradient_func', '3': 2, '4': 1, '5': 9, '10': 'gradientFunc'},
  ],
};

