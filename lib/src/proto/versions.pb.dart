///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_versions;

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

class VersionDef extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('VersionDef')
    ..a<int>(1, 'producer', PbFieldType.O3)
    ..a<int>(2, 'minConsumer', PbFieldType.O3)
    ..p<int>(3, 'badConsumers', PbFieldType.P3)
    ..hasRequiredFields = false;

  VersionDef() : super();
  VersionDef.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  VersionDef.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  VersionDef clone() => new VersionDef()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static VersionDef create() => new VersionDef();
  static PbList<VersionDef> createRepeated() => new PbList<VersionDef>();
  static VersionDef getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyVersionDef();
    return _defaultInstance;
  }

  static VersionDef _defaultInstance;
  static void $checkItem(VersionDef v) {
    if (v is! VersionDef) checkItemFailed(v, 'VersionDef');
  }

  int get producer => $_get(0, 0);
  set producer(int v) {
    $_setUnsignedInt32(0, v);
  }

  bool hasProducer() => $_has(0);
  void clearProducer() => clearField(1);

  int get minConsumer => $_get(1, 0);
  set minConsumer(int v) {
    $_setUnsignedInt32(1, v);
  }

  bool hasMinConsumer() => $_has(1);
  void clearMinConsumer() => clearField(2);

  List<int> get badConsumers => $_getList(2);
}

class _ReadonlyVersionDef extends VersionDef with ReadonlyMessageMixin {}
