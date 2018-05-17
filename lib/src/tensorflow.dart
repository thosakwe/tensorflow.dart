library tensorflow;

import 'dart:core';
import 'dart:core' as core;
import 'dart:mirrors';
import 'dart:typed_data';
import 'dart-ext:tensorflow_dart';
import 'package:meta/meta.dart';
import 'package:symbol_table/symbol_table.dart';
import 'package:tuple/tuple.dart';
import 'proto/proto.dart';
export 'proto/proto.dart';
part 'dart/enums.dart';
part 'dart/error.dart';
part 'dart/graph.dart';
part 'dart/op_def.dart';
part 'dart/operation.dart';
part 'dart/session.dart';
part 'dart/tensor.dart';

String get version native "Version";

Uint8List getAllOpsInternal() native "Operation_list";