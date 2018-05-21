///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_saver_pbjson;

const SaverDef$json = const {
  '1': 'SaverDef',
  '2': const [
    const {
      '1': 'filename_tensor_name',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'filenameTensorName'
    },
    const {
      '1': 'save_tensor_name',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'saveTensorName'
    },
    const {
      '1': 'restore_op_name',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'restoreOpName'
    },
    const {'1': 'max_to_keep', '3': 4, '4': 1, '5': 5, '10': 'maxToKeep'},
    const {'1': 'sharded', '3': 5, '4': 1, '5': 8, '10': 'sharded'},
    const {
      '1': 'keep_checkpoint_every_n_hours',
      '3': 6,
      '4': 1,
      '5': 2,
      '10': 'keepCheckpointEveryNHours'
    },
    const {
      '1': 'version',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.SaverDef.CheckpointFormatVersion',
      '10': 'version'
    },
  ],
  '4': const [SaverDef_CheckpointFormatVersion$json],
};

const SaverDef_CheckpointFormatVersion$json = const {
  '1': 'CheckpointFormatVersion',
  '2': const [
    const {'1': 'LEGACY', '2': 0},
    const {'1': 'V1', '2': 1},
    const {'1': 'V2', '2': 2},
  ],
};
