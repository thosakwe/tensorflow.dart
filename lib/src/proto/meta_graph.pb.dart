///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_meta_graph;

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart';

import 'graph.pb.dart';
import 'saver.pb.dart';
import 'op_def.pb.dart';
import 'any.pb.dart' as $google$protobuf;
import 'tensor_shape.pb.dart';

import 'types.pbenum.dart';

class MetaGraphDef_MetaInfoDef extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('MetaGraphDef_MetaInfoDef')
    ..aOS(1, 'metaGraphVersion')
    ..a<OpList>(
        2, 'strippedOpList', PbFieldType.OM, OpList.getDefault, OpList.create)
    ..a<$google$protobuf.Any>(3, 'anyInfo', PbFieldType.OM,
        $google$protobuf.Any.getDefault, $google$protobuf.Any.create)
    ..pPS(4, 'tags')
    ..aOS(5, 'tensorflowVersion')
    ..aOS(6, 'tensorflowGitVersion')
    ..aOB(7, 'strippedDefaultAttrs')
    ..hasRequiredFields = false;

  MetaGraphDef_MetaInfoDef() : super();
  MetaGraphDef_MetaInfoDef.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  MetaGraphDef_MetaInfoDef.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  MetaGraphDef_MetaInfoDef clone() =>
      new MetaGraphDef_MetaInfoDef()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static MetaGraphDef_MetaInfoDef create() => new MetaGraphDef_MetaInfoDef();
  static PbList<MetaGraphDef_MetaInfoDef> createRepeated() =>
      new PbList<MetaGraphDef_MetaInfoDef>();
  static MetaGraphDef_MetaInfoDef getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyMetaGraphDef_MetaInfoDef();
    return _defaultInstance;
  }

  static MetaGraphDef_MetaInfoDef _defaultInstance;
  static void $checkItem(MetaGraphDef_MetaInfoDef v) {
    if (v is! MetaGraphDef_MetaInfoDef)
      checkItemFailed(v, 'MetaGraphDef_MetaInfoDef');
  }

  String get metaGraphVersion => $_getS(0, '');
  set metaGraphVersion(String v) {
    $_setString(0, v);
  }

  bool hasMetaGraphVersion() => $_has(0);
  void clearMetaGraphVersion() => clearField(1);

  OpList get strippedOpList => $_getN(1);
  set strippedOpList(OpList v) {
    setField(2, v);
  }

  bool hasStrippedOpList() => $_has(1);
  void clearStrippedOpList() => clearField(2);

  $google$protobuf.Any get anyInfo => $_getN(2);
  set anyInfo($google$protobuf.Any v) {
    setField(3, v);
  }

  bool hasAnyInfo() => $_has(2);
  void clearAnyInfo() => clearField(3);

  List<String> get tags => $_getList(3);

  String get tensorflowVersion => $_getS(4, '');
  set tensorflowVersion(String v) {
    $_setString(4, v);
  }

  bool hasTensorflowVersion() => $_has(4);
  void clearTensorflowVersion() => clearField(5);

  String get tensorflowGitVersion => $_getS(5, '');
  set tensorflowGitVersion(String v) {
    $_setString(5, v);
  }

  bool hasTensorflowGitVersion() => $_has(5);
  void clearTensorflowGitVersion() => clearField(6);

  bool get strippedDefaultAttrs => $_get(6, false);
  set strippedDefaultAttrs(bool v) {
    $_setBool(6, v);
  }

  bool hasStrippedDefaultAttrs() => $_has(6);
  void clearStrippedDefaultAttrs() => clearField(7);
}

class _ReadonlyMetaGraphDef_MetaInfoDef extends MetaGraphDef_MetaInfoDef
    with ReadonlyMessageMixin {}

class MetaGraphDef_CollectionDefEntry extends GeneratedMessage {
  static final BuilderInfo _i =
      new BuilderInfo('MetaGraphDef_CollectionDefEntry')
        ..aOS(1, 'key')
        ..a<CollectionDef>(2, 'value', PbFieldType.OM, CollectionDef.getDefault,
            CollectionDef.create)
        ..hasRequiredFields = false;

  MetaGraphDef_CollectionDefEntry() : super();
  MetaGraphDef_CollectionDefEntry.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  MetaGraphDef_CollectionDefEntry.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  MetaGraphDef_CollectionDefEntry clone() =>
      new MetaGraphDef_CollectionDefEntry()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static MetaGraphDef_CollectionDefEntry create() =>
      new MetaGraphDef_CollectionDefEntry();
  static PbList<MetaGraphDef_CollectionDefEntry> createRepeated() =>
      new PbList<MetaGraphDef_CollectionDefEntry>();
  static MetaGraphDef_CollectionDefEntry getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyMetaGraphDef_CollectionDefEntry();
    return _defaultInstance;
  }

  static MetaGraphDef_CollectionDefEntry _defaultInstance;
  static void $checkItem(MetaGraphDef_CollectionDefEntry v) {
    if (v is! MetaGraphDef_CollectionDefEntry)
      checkItemFailed(v, 'MetaGraphDef_CollectionDefEntry');
  }

  String get key => $_getS(0, '');
  set key(String v) {
    $_setString(0, v);
  }

  bool hasKey() => $_has(0);
  void clearKey() => clearField(1);

  CollectionDef get value => $_getN(1);
  set value(CollectionDef v) {
    setField(2, v);
  }

  bool hasValue() => $_has(1);
  void clearValue() => clearField(2);
}

class _ReadonlyMetaGraphDef_CollectionDefEntry
    extends MetaGraphDef_CollectionDefEntry with ReadonlyMessageMixin {}

class MetaGraphDef_SignatureDefEntry extends GeneratedMessage {
  static final BuilderInfo _i =
      new BuilderInfo('MetaGraphDef_SignatureDefEntry')
        ..aOS(1, 'key')
        ..a<SignatureDef>(2, 'value', PbFieldType.OM, SignatureDef.getDefault,
            SignatureDef.create)
        ..hasRequiredFields = false;

  MetaGraphDef_SignatureDefEntry() : super();
  MetaGraphDef_SignatureDefEntry.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  MetaGraphDef_SignatureDefEntry.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  MetaGraphDef_SignatureDefEntry clone() =>
      new MetaGraphDef_SignatureDefEntry()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static MetaGraphDef_SignatureDefEntry create() =>
      new MetaGraphDef_SignatureDefEntry();
  static PbList<MetaGraphDef_SignatureDefEntry> createRepeated() =>
      new PbList<MetaGraphDef_SignatureDefEntry>();
  static MetaGraphDef_SignatureDefEntry getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyMetaGraphDef_SignatureDefEntry();
    return _defaultInstance;
  }

  static MetaGraphDef_SignatureDefEntry _defaultInstance;
  static void $checkItem(MetaGraphDef_SignatureDefEntry v) {
    if (v is! MetaGraphDef_SignatureDefEntry)
      checkItemFailed(v, 'MetaGraphDef_SignatureDefEntry');
  }

  String get key => $_getS(0, '');
  set key(String v) {
    $_setString(0, v);
  }

  bool hasKey() => $_has(0);
  void clearKey() => clearField(1);

  SignatureDef get value => $_getN(1);
  set value(SignatureDef v) {
    setField(2, v);
  }

  bool hasValue() => $_has(1);
  void clearValue() => clearField(2);
}

class _ReadonlyMetaGraphDef_SignatureDefEntry
    extends MetaGraphDef_SignatureDefEntry with ReadonlyMessageMixin {}

class MetaGraphDef extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('MetaGraphDef')
    ..a<MetaGraphDef_MetaInfoDef>(1, 'metaInfoDef', PbFieldType.OM,
        MetaGraphDef_MetaInfoDef.getDefault, MetaGraphDef_MetaInfoDef.create)
    ..a<GraphDef>(
        2, 'graphDef', PbFieldType.OM, GraphDef.getDefault, GraphDef.create)
    ..a<SaverDef>(
        3, 'saverDef', PbFieldType.OM, SaverDef.getDefault, SaverDef.create)
    ..pp<MetaGraphDef_CollectionDefEntry>(
        4,
        'collectionDef',
        PbFieldType.PM,
        MetaGraphDef_CollectionDefEntry.$checkItem,
        MetaGraphDef_CollectionDefEntry.create)
    ..pp<MetaGraphDef_SignatureDefEntry>(
        5,
        'signatureDef',
        PbFieldType.PM,
        MetaGraphDef_SignatureDefEntry.$checkItem,
        MetaGraphDef_SignatureDefEntry.create)
    ..pp<AssetFileDef>(6, 'assetFileDef', PbFieldType.PM,
        AssetFileDef.$checkItem, AssetFileDef.create)
    ..hasRequiredFields = false;

  MetaGraphDef() : super();
  MetaGraphDef.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  MetaGraphDef.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  MetaGraphDef clone() => new MetaGraphDef()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static MetaGraphDef create() => new MetaGraphDef();
  static PbList<MetaGraphDef> createRepeated() => new PbList<MetaGraphDef>();
  static MetaGraphDef getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyMetaGraphDef();
    return _defaultInstance;
  }

  static MetaGraphDef _defaultInstance;
  static void $checkItem(MetaGraphDef v) {
    if (v is! MetaGraphDef) checkItemFailed(v, 'MetaGraphDef');
  }

  MetaGraphDef_MetaInfoDef get metaInfoDef => $_getN(0);
  set metaInfoDef(MetaGraphDef_MetaInfoDef v) {
    setField(1, v);
  }

  bool hasMetaInfoDef() => $_has(0);
  void clearMetaInfoDef() => clearField(1);

  GraphDef get graphDef => $_getN(1);
  set graphDef(GraphDef v) {
    setField(2, v);
  }

  bool hasGraphDef() => $_has(1);
  void clearGraphDef() => clearField(2);

  SaverDef get saverDef => $_getN(2);
  set saverDef(SaverDef v) {
    setField(3, v);
  }

  bool hasSaverDef() => $_has(2);
  void clearSaverDef() => clearField(3);

  List<MetaGraphDef_CollectionDefEntry> get collectionDef => $_getList(3);

  List<MetaGraphDef_SignatureDefEntry> get signatureDef => $_getList(4);

  List<AssetFileDef> get assetFileDef => $_getList(5);
}

class _ReadonlyMetaGraphDef extends MetaGraphDef with ReadonlyMessageMixin {}

class CollectionDef_NodeList extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CollectionDef_NodeList')
    ..pPS(1, 'value')
    ..hasRequiredFields = false;

  CollectionDef_NodeList() : super();
  CollectionDef_NodeList.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  CollectionDef_NodeList.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  CollectionDef_NodeList clone() =>
      new CollectionDef_NodeList()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CollectionDef_NodeList create() => new CollectionDef_NodeList();
  static PbList<CollectionDef_NodeList> createRepeated() =>
      new PbList<CollectionDef_NodeList>();
  static CollectionDef_NodeList getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyCollectionDef_NodeList();
    return _defaultInstance;
  }

  static CollectionDef_NodeList _defaultInstance;
  static void $checkItem(CollectionDef_NodeList v) {
    if (v is! CollectionDef_NodeList)
      checkItemFailed(v, 'CollectionDef_NodeList');
  }

  List<String> get value => $_getList(0);
}

class _ReadonlyCollectionDef_NodeList extends CollectionDef_NodeList
    with ReadonlyMessageMixin {}

class CollectionDef_BytesList extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CollectionDef_BytesList')
    ..p<List<int>>(1, 'value', PbFieldType.PY)
    ..hasRequiredFields = false;

  CollectionDef_BytesList() : super();
  CollectionDef_BytesList.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  CollectionDef_BytesList.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  CollectionDef_BytesList clone() =>
      new CollectionDef_BytesList()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CollectionDef_BytesList create() => new CollectionDef_BytesList();
  static PbList<CollectionDef_BytesList> createRepeated() =>
      new PbList<CollectionDef_BytesList>();
  static CollectionDef_BytesList getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyCollectionDef_BytesList();
    return _defaultInstance;
  }

  static CollectionDef_BytesList _defaultInstance;
  static void $checkItem(CollectionDef_BytesList v) {
    if (v is! CollectionDef_BytesList)
      checkItemFailed(v, 'CollectionDef_BytesList');
  }

  List<List<int>> get value => $_getList(0);
}

class _ReadonlyCollectionDef_BytesList extends CollectionDef_BytesList
    with ReadonlyMessageMixin {}

class CollectionDef_Int64List extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CollectionDef_Int64List')
    ..p<Int64>(1, 'value', PbFieldType.K6)
    ..hasRequiredFields = false;

  CollectionDef_Int64List() : super();
  CollectionDef_Int64List.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  CollectionDef_Int64List.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  CollectionDef_Int64List clone() =>
      new CollectionDef_Int64List()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CollectionDef_Int64List create() => new CollectionDef_Int64List();
  static PbList<CollectionDef_Int64List> createRepeated() =>
      new PbList<CollectionDef_Int64List>();
  static CollectionDef_Int64List getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyCollectionDef_Int64List();
    return _defaultInstance;
  }

  static CollectionDef_Int64List _defaultInstance;
  static void $checkItem(CollectionDef_Int64List v) {
    if (v is! CollectionDef_Int64List)
      checkItemFailed(v, 'CollectionDef_Int64List');
  }

  List<Int64> get value => $_getList(0);
}

class _ReadonlyCollectionDef_Int64List extends CollectionDef_Int64List
    with ReadonlyMessageMixin {}

class CollectionDef_FloatList extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CollectionDef_FloatList')
    ..p<double>(1, 'value', PbFieldType.KF)
    ..hasRequiredFields = false;

  CollectionDef_FloatList() : super();
  CollectionDef_FloatList.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  CollectionDef_FloatList.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  CollectionDef_FloatList clone() =>
      new CollectionDef_FloatList()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CollectionDef_FloatList create() => new CollectionDef_FloatList();
  static PbList<CollectionDef_FloatList> createRepeated() =>
      new PbList<CollectionDef_FloatList>();
  static CollectionDef_FloatList getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyCollectionDef_FloatList();
    return _defaultInstance;
  }

  static CollectionDef_FloatList _defaultInstance;
  static void $checkItem(CollectionDef_FloatList v) {
    if (v is! CollectionDef_FloatList)
      checkItemFailed(v, 'CollectionDef_FloatList');
  }

  List<double> get value => $_getList(0);
}

class _ReadonlyCollectionDef_FloatList extends CollectionDef_FloatList
    with ReadonlyMessageMixin {}

class CollectionDef_AnyList extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CollectionDef_AnyList')
    ..pp<$google$protobuf.Any>(1, 'value', PbFieldType.PM,
        $google$protobuf.Any.$checkItem, $google$protobuf.Any.create)
    ..hasRequiredFields = false;

  CollectionDef_AnyList() : super();
  CollectionDef_AnyList.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  CollectionDef_AnyList.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  CollectionDef_AnyList clone() =>
      new CollectionDef_AnyList()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CollectionDef_AnyList create() => new CollectionDef_AnyList();
  static PbList<CollectionDef_AnyList> createRepeated() =>
      new PbList<CollectionDef_AnyList>();
  static CollectionDef_AnyList getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyCollectionDef_AnyList();
    return _defaultInstance;
  }

  static CollectionDef_AnyList _defaultInstance;
  static void $checkItem(CollectionDef_AnyList v) {
    if (v is! CollectionDef_AnyList)
      checkItemFailed(v, 'CollectionDef_AnyList');
  }

  List<$google$protobuf.Any> get value => $_getList(0);
}

class _ReadonlyCollectionDef_AnyList extends CollectionDef_AnyList
    with ReadonlyMessageMixin {}

class CollectionDef extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CollectionDef')
    ..a<CollectionDef_NodeList>(1, 'nodeList', PbFieldType.OM,
        CollectionDef_NodeList.getDefault, CollectionDef_NodeList.create)
    ..a<CollectionDef_BytesList>(2, 'bytesList', PbFieldType.OM,
        CollectionDef_BytesList.getDefault, CollectionDef_BytesList.create)
    ..a<CollectionDef_Int64List>(3, 'int64List', PbFieldType.OM,
        CollectionDef_Int64List.getDefault, CollectionDef_Int64List.create)
    ..a<CollectionDef_FloatList>(4, 'floatList', PbFieldType.OM,
        CollectionDef_FloatList.getDefault, CollectionDef_FloatList.create)
    ..a<CollectionDef_AnyList>(5, 'anyList', PbFieldType.OM,
        CollectionDef_AnyList.getDefault, CollectionDef_AnyList.create)
    ..hasRequiredFields = false;

  CollectionDef() : super();
  CollectionDef.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  CollectionDef.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  CollectionDef clone() => new CollectionDef()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CollectionDef create() => new CollectionDef();
  static PbList<CollectionDef> createRepeated() => new PbList<CollectionDef>();
  static CollectionDef getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyCollectionDef();
    return _defaultInstance;
  }

  static CollectionDef _defaultInstance;
  static void $checkItem(CollectionDef v) {
    if (v is! CollectionDef) checkItemFailed(v, 'CollectionDef');
  }

  CollectionDef_NodeList get nodeList => $_getN(0);
  set nodeList(CollectionDef_NodeList v) {
    setField(1, v);
  }

  bool hasNodeList() => $_has(0);
  void clearNodeList() => clearField(1);

  CollectionDef_BytesList get bytesList => $_getN(1);
  set bytesList(CollectionDef_BytesList v) {
    setField(2, v);
  }

  bool hasBytesList() => $_has(1);
  void clearBytesList() => clearField(2);

  CollectionDef_Int64List get int64List => $_getN(2);
  set int64List(CollectionDef_Int64List v) {
    setField(3, v);
  }

  bool hasInt64List() => $_has(2);
  void clearInt64List() => clearField(3);

  CollectionDef_FloatList get floatList => $_getN(3);
  set floatList(CollectionDef_FloatList v) {
    setField(4, v);
  }

  bool hasFloatList() => $_has(3);
  void clearFloatList() => clearField(4);

  CollectionDef_AnyList get anyList => $_getN(4);
  set anyList(CollectionDef_AnyList v) {
    setField(5, v);
  }

  bool hasAnyList() => $_has(4);
  void clearAnyList() => clearField(5);
}

class _ReadonlyCollectionDef extends CollectionDef with ReadonlyMessageMixin {}

class TensorInfo_CooSparse extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('TensorInfo_CooSparse')
    ..aOS(1, 'valuesTensorName')
    ..aOS(2, 'indicesTensorName')
    ..aOS(3, 'denseShapeTensorName')
    ..hasRequiredFields = false;

  TensorInfo_CooSparse() : super();
  TensorInfo_CooSparse.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  TensorInfo_CooSparse.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  TensorInfo_CooSparse clone() =>
      new TensorInfo_CooSparse()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static TensorInfo_CooSparse create() => new TensorInfo_CooSparse();
  static PbList<TensorInfo_CooSparse> createRepeated() =>
      new PbList<TensorInfo_CooSparse>();
  static TensorInfo_CooSparse getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyTensorInfo_CooSparse();
    return _defaultInstance;
  }

  static TensorInfo_CooSparse _defaultInstance;
  static void $checkItem(TensorInfo_CooSparse v) {
    if (v is! TensorInfo_CooSparse) checkItemFailed(v, 'TensorInfo_CooSparse');
  }

  String get valuesTensorName => $_getS(0, '');
  set valuesTensorName(String v) {
    $_setString(0, v);
  }

  bool hasValuesTensorName() => $_has(0);
  void clearValuesTensorName() => clearField(1);

  String get indicesTensorName => $_getS(1, '');
  set indicesTensorName(String v) {
    $_setString(1, v);
  }

  bool hasIndicesTensorName() => $_has(1);
  void clearIndicesTensorName() => clearField(2);

  String get denseShapeTensorName => $_getS(2, '');
  set denseShapeTensorName(String v) {
    $_setString(2, v);
  }

  bool hasDenseShapeTensorName() => $_has(2);
  void clearDenseShapeTensorName() => clearField(3);
}

class _ReadonlyTensorInfo_CooSparse extends TensorInfo_CooSparse
    with ReadonlyMessageMixin {}

class TensorInfo extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('TensorInfo')
    ..aOS(1, 'name')
    ..e<DataType>(2, 'dtype', PbFieldType.OE, DataType.DT_INVALID,
        DataType.valueOf, DataType.values)
    ..a<TensorShapeProto>(3, 'tensorShape', PbFieldType.OM,
        TensorShapeProto.getDefault, TensorShapeProto.create)
    ..a<TensorInfo_CooSparse>(4, 'cooSparse', PbFieldType.OM,
        TensorInfo_CooSparse.getDefault, TensorInfo_CooSparse.create)
    ..hasRequiredFields = false;

  TensorInfo() : super();
  TensorInfo.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  TensorInfo.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  TensorInfo clone() => new TensorInfo()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static TensorInfo create() => new TensorInfo();
  static PbList<TensorInfo> createRepeated() => new PbList<TensorInfo>();
  static TensorInfo getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyTensorInfo();
    return _defaultInstance;
  }

  static TensorInfo _defaultInstance;
  static void $checkItem(TensorInfo v) {
    if (v is! TensorInfo) checkItemFailed(v, 'TensorInfo');
  }

  String get name => $_getS(0, '');
  set name(String v) {
    $_setString(0, v);
  }

  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  DataType get dtype => $_getN(1);
  set dtype(DataType v) {
    setField(2, v);
  }

  bool hasDtype() => $_has(1);
  void clearDtype() => clearField(2);

  TensorShapeProto get tensorShape => $_getN(2);
  set tensorShape(TensorShapeProto v) {
    setField(3, v);
  }

  bool hasTensorShape() => $_has(2);
  void clearTensorShape() => clearField(3);

  TensorInfo_CooSparse get cooSparse => $_getN(3);
  set cooSparse(TensorInfo_CooSparse v) {
    setField(4, v);
  }

  bool hasCooSparse() => $_has(3);
  void clearCooSparse() => clearField(4);
}

class _ReadonlyTensorInfo extends TensorInfo with ReadonlyMessageMixin {}

class SignatureDef_InputsEntry extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('SignatureDef_InputsEntry')
    ..aOS(1, 'key')
    ..a<TensorInfo>(
        2, 'value', PbFieldType.OM, TensorInfo.getDefault, TensorInfo.create)
    ..hasRequiredFields = false;

  SignatureDef_InputsEntry() : super();
  SignatureDef_InputsEntry.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  SignatureDef_InputsEntry.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  SignatureDef_InputsEntry clone() =>
      new SignatureDef_InputsEntry()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static SignatureDef_InputsEntry create() => new SignatureDef_InputsEntry();
  static PbList<SignatureDef_InputsEntry> createRepeated() =>
      new PbList<SignatureDef_InputsEntry>();
  static SignatureDef_InputsEntry getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlySignatureDef_InputsEntry();
    return _defaultInstance;
  }

  static SignatureDef_InputsEntry _defaultInstance;
  static void $checkItem(SignatureDef_InputsEntry v) {
    if (v is! SignatureDef_InputsEntry)
      checkItemFailed(v, 'SignatureDef_InputsEntry');
  }

  String get key => $_getS(0, '');
  set key(String v) {
    $_setString(0, v);
  }

  bool hasKey() => $_has(0);
  void clearKey() => clearField(1);

  TensorInfo get value => $_getN(1);
  set value(TensorInfo v) {
    setField(2, v);
  }

  bool hasValue() => $_has(1);
  void clearValue() => clearField(2);
}

class _ReadonlySignatureDef_InputsEntry extends SignatureDef_InputsEntry
    with ReadonlyMessageMixin {}

class SignatureDef_OutputsEntry extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('SignatureDef_OutputsEntry')
    ..aOS(1, 'key')
    ..a<TensorInfo>(
        2, 'value', PbFieldType.OM, TensorInfo.getDefault, TensorInfo.create)
    ..hasRequiredFields = false;

  SignatureDef_OutputsEntry() : super();
  SignatureDef_OutputsEntry.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  SignatureDef_OutputsEntry.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  SignatureDef_OutputsEntry clone() =>
      new SignatureDef_OutputsEntry()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static SignatureDef_OutputsEntry create() => new SignatureDef_OutputsEntry();
  static PbList<SignatureDef_OutputsEntry> createRepeated() =>
      new PbList<SignatureDef_OutputsEntry>();
  static SignatureDef_OutputsEntry getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlySignatureDef_OutputsEntry();
    return _defaultInstance;
  }

  static SignatureDef_OutputsEntry _defaultInstance;
  static void $checkItem(SignatureDef_OutputsEntry v) {
    if (v is! SignatureDef_OutputsEntry)
      checkItemFailed(v, 'SignatureDef_OutputsEntry');
  }

  String get key => $_getS(0, '');
  set key(String v) {
    $_setString(0, v);
  }

  bool hasKey() => $_has(0);
  void clearKey() => clearField(1);

  TensorInfo get value => $_getN(1);
  set value(TensorInfo v) {
    setField(2, v);
  }

  bool hasValue() => $_has(1);
  void clearValue() => clearField(2);
}

class _ReadonlySignatureDef_OutputsEntry extends SignatureDef_OutputsEntry
    with ReadonlyMessageMixin {}

class SignatureDef extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('SignatureDef')
    ..pp<SignatureDef_InputsEntry>(1, 'inputs', PbFieldType.PM,
        SignatureDef_InputsEntry.$checkItem, SignatureDef_InputsEntry.create)
    ..pp<SignatureDef_OutputsEntry>(2, 'outputs', PbFieldType.PM,
        SignatureDef_OutputsEntry.$checkItem, SignatureDef_OutputsEntry.create)
    ..aOS(3, 'methodName')
    ..hasRequiredFields = false;

  SignatureDef() : super();
  SignatureDef.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  SignatureDef.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  SignatureDef clone() => new SignatureDef()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static SignatureDef create() => new SignatureDef();
  static PbList<SignatureDef> createRepeated() => new PbList<SignatureDef>();
  static SignatureDef getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlySignatureDef();
    return _defaultInstance;
  }

  static SignatureDef _defaultInstance;
  static void $checkItem(SignatureDef v) {
    if (v is! SignatureDef) checkItemFailed(v, 'SignatureDef');
  }

  List<SignatureDef_InputsEntry> get inputs => $_getList(0);

  List<SignatureDef_OutputsEntry> get outputs => $_getList(1);

  String get methodName => $_getS(2, '');
  set methodName(String v) {
    $_setString(2, v);
  }

  bool hasMethodName() => $_has(2);
  void clearMethodName() => clearField(3);
}

class _ReadonlySignatureDef extends SignatureDef with ReadonlyMessageMixin {}

class AssetFileDef extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('AssetFileDef')
    ..a<TensorInfo>(1, 'tensorInfo', PbFieldType.OM, TensorInfo.getDefault,
        TensorInfo.create)
    ..aOS(2, 'filename')
    ..hasRequiredFields = false;

  AssetFileDef() : super();
  AssetFileDef.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  AssetFileDef.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  AssetFileDef clone() => new AssetFileDef()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static AssetFileDef create() => new AssetFileDef();
  static PbList<AssetFileDef> createRepeated() => new PbList<AssetFileDef>();
  static AssetFileDef getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyAssetFileDef();
    return _defaultInstance;
  }

  static AssetFileDef _defaultInstance;
  static void $checkItem(AssetFileDef v) {
    if (v is! AssetFileDef) checkItemFailed(v, 'AssetFileDef');
  }

  TensorInfo get tensorInfo => $_getN(0);
  set tensorInfo(TensorInfo v) {
    setField(1, v);
  }

  bool hasTensorInfo() => $_has(0);
  void clearTensorInfo() => clearField(1);

  String get filename => $_getS(1, '');
  set filename(String v) {
    $_setString(1, v);
  }

  bool hasFilename() => $_has(1);
  void clearFilename() => clearField(2);
}

class _ReadonlyAssetFileDef extends AssetFileDef with ReadonlyMessageMixin {}
