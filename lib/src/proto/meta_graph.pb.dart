///
//  Generated code. Do not modify.
//  source: meta_graph.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'graph.pb.dart' as $0;
import 'saver.pb.dart' as $1;
import 'op_def.pb.dart' as $2;
import 'any.pb.dart' as $3;
import 'tensor_shape.pb.dart' as $4;

import 'types.pbenum.dart' as $5;

class MetaGraphDef_MetaInfoDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MetaGraphDef.MetaInfoDef',
      package: const $pb.PackageName('tensorflow'))
    ..aOS(1, 'metaGraphVersion')
    ..a<$2.OpList>(2, 'strippedOpList', $pb.PbFieldType.OM,
        $2.OpList.getDefault, $2.OpList.create)
    ..a<$3.Any>(
        3, 'anyInfo', $pb.PbFieldType.OM, $3.Any.getDefault, $3.Any.create)
    ..pPS(4, 'tags')
    ..aOS(5, 'tensorflowVersion')
    ..aOS(6, 'tensorflowGitVersion')
    ..aOB(7, 'strippedDefaultAttrs')
    ..hasRequiredFields = false;

  MetaGraphDef_MetaInfoDef._() : super();
  factory MetaGraphDef_MetaInfoDef() => create();
  factory MetaGraphDef_MetaInfoDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MetaGraphDef_MetaInfoDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  MetaGraphDef_MetaInfoDef clone() =>
      MetaGraphDef_MetaInfoDef()..mergeFromMessage(this);
  MetaGraphDef_MetaInfoDef copyWith(
          void Function(MetaGraphDef_MetaInfoDef) updates) =>
      super.copyWith((message) => updates(message as MetaGraphDef_MetaInfoDef));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MetaGraphDef_MetaInfoDef create() => MetaGraphDef_MetaInfoDef._();
  MetaGraphDef_MetaInfoDef createEmptyInstance() => create();
  static $pb.PbList<MetaGraphDef_MetaInfoDef> createRepeated() =>
      $pb.PbList<MetaGraphDef_MetaInfoDef>();
  static MetaGraphDef_MetaInfoDef getDefault() =>
      _defaultInstance ??= create()..freeze();
  static MetaGraphDef_MetaInfoDef _defaultInstance;

  $core.String get metaGraphVersion => $_getS(0, '');
  set metaGraphVersion($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasMetaGraphVersion() => $_has(0);
  void clearMetaGraphVersion() => clearField(1);

  $2.OpList get strippedOpList => $_getN(1);
  set strippedOpList($2.OpList v) {
    setField(2, v);
  }

  $core.bool hasStrippedOpList() => $_has(1);
  void clearStrippedOpList() => clearField(2);

  $3.Any get anyInfo => $_getN(2);
  set anyInfo($3.Any v) {
    setField(3, v);
  }

  $core.bool hasAnyInfo() => $_has(2);
  void clearAnyInfo() => clearField(3);

  $core.List<$core.String> get tags => $_getList(3);

  $core.String get tensorflowVersion => $_getS(4, '');
  set tensorflowVersion($core.String v) {
    $_setString(4, v);
  }

  $core.bool hasTensorflowVersion() => $_has(4);
  void clearTensorflowVersion() => clearField(5);

  $core.String get tensorflowGitVersion => $_getS(5, '');
  set tensorflowGitVersion($core.String v) {
    $_setString(5, v);
  }

  $core.bool hasTensorflowGitVersion() => $_has(5);
  void clearTensorflowGitVersion() => clearField(6);

  $core.bool get strippedDefaultAttrs => $_get(6, false);
  set strippedDefaultAttrs($core.bool v) {
    $_setBool(6, v);
  }

  $core.bool hasStrippedDefaultAttrs() => $_has(6);
  void clearStrippedDefaultAttrs() => clearField(7);
}

class MetaGraphDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MetaGraphDef',
      package: const $pb.PackageName('tensorflow'))
    ..a<MetaGraphDef_MetaInfoDef>(1, 'metaInfoDef', $pb.PbFieldType.OM,
        MetaGraphDef_MetaInfoDef.getDefault, MetaGraphDef_MetaInfoDef.create)
    ..a<$0.GraphDef>(2, 'graphDef', $pb.PbFieldType.OM, $0.GraphDef.getDefault,
        $0.GraphDef.create)
    ..a<$1.SaverDef>(3, 'saverDef', $pb.PbFieldType.OM, $1.SaverDef.getDefault,
        $1.SaverDef.create)
    ..m<$core.String, CollectionDef>(
        4,
        'collectionDef',
        'MetaGraphDef.CollectionDefEntry',
        $pb.PbFieldType.OS,
        $pb.PbFieldType.OM,
        CollectionDef.create,
        null,
        null,
        const $pb.PackageName('tensorflow'))
    ..m<$core.String, SignatureDef>(
        5,
        'signatureDef',
        'MetaGraphDef.SignatureDefEntry',
        $pb.PbFieldType.OS,
        $pb.PbFieldType.OM,
        SignatureDef.create,
        null,
        null,
        const $pb.PackageName('tensorflow'))
    ..pc<AssetFileDef>(
        6, 'assetFileDef', $pb.PbFieldType.PM, AssetFileDef.create)
    ..hasRequiredFields = false;

  MetaGraphDef._() : super();
  factory MetaGraphDef() => create();
  factory MetaGraphDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MetaGraphDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  MetaGraphDef clone() => MetaGraphDef()..mergeFromMessage(this);
  MetaGraphDef copyWith(void Function(MetaGraphDef) updates) =>
      super.copyWith((message) => updates(message as MetaGraphDef));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MetaGraphDef create() => MetaGraphDef._();
  MetaGraphDef createEmptyInstance() => create();
  static $pb.PbList<MetaGraphDef> createRepeated() =>
      $pb.PbList<MetaGraphDef>();
  static MetaGraphDef getDefault() => _defaultInstance ??= create()..freeze();
  static MetaGraphDef _defaultInstance;

  MetaGraphDef_MetaInfoDef get metaInfoDef => $_getN(0);
  set metaInfoDef(MetaGraphDef_MetaInfoDef v) {
    setField(1, v);
  }

  $core.bool hasMetaInfoDef() => $_has(0);
  void clearMetaInfoDef() => clearField(1);

  $0.GraphDef get graphDef => $_getN(1);
  set graphDef($0.GraphDef v) {
    setField(2, v);
  }

  $core.bool hasGraphDef() => $_has(1);
  void clearGraphDef() => clearField(2);

  $1.SaverDef get saverDef => $_getN(2);
  set saverDef($1.SaverDef v) {
    setField(3, v);
  }

  $core.bool hasSaverDef() => $_has(2);
  void clearSaverDef() => clearField(3);

  $core.Map<$core.String, CollectionDef> get collectionDef => $_getMap(3);

  $core.Map<$core.String, SignatureDef> get signatureDef => $_getMap(4);

  $core.List<AssetFileDef> get assetFileDef => $_getList(5);
}

class CollectionDef_NodeList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CollectionDef.NodeList',
      package: const $pb.PackageName('tensorflow'))
    ..pPS(1, 'value')
    ..hasRequiredFields = false;

  CollectionDef_NodeList._() : super();
  factory CollectionDef_NodeList() => create();
  factory CollectionDef_NodeList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CollectionDef_NodeList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CollectionDef_NodeList clone() =>
      CollectionDef_NodeList()..mergeFromMessage(this);
  CollectionDef_NodeList copyWith(
          void Function(CollectionDef_NodeList) updates) =>
      super.copyWith((message) => updates(message as CollectionDef_NodeList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CollectionDef_NodeList create() => CollectionDef_NodeList._();
  CollectionDef_NodeList createEmptyInstance() => create();
  static $pb.PbList<CollectionDef_NodeList> createRepeated() =>
      $pb.PbList<CollectionDef_NodeList>();
  static CollectionDef_NodeList getDefault() =>
      _defaultInstance ??= create()..freeze();
  static CollectionDef_NodeList _defaultInstance;

  $core.List<$core.String> get value => $_getList(0);
}

class CollectionDef_BytesList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CollectionDef.BytesList',
      package: const $pb.PackageName('tensorflow'))
    ..p<$core.List<$core.int>>(1, 'value', $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  CollectionDef_BytesList._() : super();
  factory CollectionDef_BytesList() => create();
  factory CollectionDef_BytesList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CollectionDef_BytesList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CollectionDef_BytesList clone() =>
      CollectionDef_BytesList()..mergeFromMessage(this);
  CollectionDef_BytesList copyWith(
          void Function(CollectionDef_BytesList) updates) =>
      super.copyWith((message) => updates(message as CollectionDef_BytesList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CollectionDef_BytesList create() => CollectionDef_BytesList._();
  CollectionDef_BytesList createEmptyInstance() => create();
  static $pb.PbList<CollectionDef_BytesList> createRepeated() =>
      $pb.PbList<CollectionDef_BytesList>();
  static CollectionDef_BytesList getDefault() =>
      _defaultInstance ??= create()..freeze();
  static CollectionDef_BytesList _defaultInstance;

  $core.List<$core.List<$core.int>> get value => $_getList(0);
}

class CollectionDef_Int64List extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CollectionDef.Int64List',
      package: const $pb.PackageName('tensorflow'))
    ..p<Int64>(1, 'value', $pb.PbFieldType.K6)
    ..hasRequiredFields = false;

  CollectionDef_Int64List._() : super();
  factory CollectionDef_Int64List() => create();
  factory CollectionDef_Int64List.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CollectionDef_Int64List.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CollectionDef_Int64List clone() =>
      CollectionDef_Int64List()..mergeFromMessage(this);
  CollectionDef_Int64List copyWith(
          void Function(CollectionDef_Int64List) updates) =>
      super.copyWith((message) => updates(message as CollectionDef_Int64List));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CollectionDef_Int64List create() => CollectionDef_Int64List._();
  CollectionDef_Int64List createEmptyInstance() => create();
  static $pb.PbList<CollectionDef_Int64List> createRepeated() =>
      $pb.PbList<CollectionDef_Int64List>();
  static CollectionDef_Int64List getDefault() =>
      _defaultInstance ??= create()..freeze();
  static CollectionDef_Int64List _defaultInstance;

  $core.List<Int64> get value => $_getList(0);
}

class CollectionDef_FloatList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CollectionDef.FloatList',
      package: const $pb.PackageName('tensorflow'))
    ..p<$core.double>(1, 'value', $pb.PbFieldType.KF)
    ..hasRequiredFields = false;

  CollectionDef_FloatList._() : super();
  factory CollectionDef_FloatList() => create();
  factory CollectionDef_FloatList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CollectionDef_FloatList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CollectionDef_FloatList clone() =>
      CollectionDef_FloatList()..mergeFromMessage(this);
  CollectionDef_FloatList copyWith(
          void Function(CollectionDef_FloatList) updates) =>
      super.copyWith((message) => updates(message as CollectionDef_FloatList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CollectionDef_FloatList create() => CollectionDef_FloatList._();
  CollectionDef_FloatList createEmptyInstance() => create();
  static $pb.PbList<CollectionDef_FloatList> createRepeated() =>
      $pb.PbList<CollectionDef_FloatList>();
  static CollectionDef_FloatList getDefault() =>
      _defaultInstance ??= create()..freeze();
  static CollectionDef_FloatList _defaultInstance;

  $core.List<$core.double> get value => $_getList(0);
}

class CollectionDef_AnyList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CollectionDef.AnyList',
      package: const $pb.PackageName('tensorflow'))
    ..pc<$3.Any>(1, 'value', $pb.PbFieldType.PM, $3.Any.create)
    ..hasRequiredFields = false;

  CollectionDef_AnyList._() : super();
  factory CollectionDef_AnyList() => create();
  factory CollectionDef_AnyList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CollectionDef_AnyList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CollectionDef_AnyList clone() =>
      CollectionDef_AnyList()..mergeFromMessage(this);
  CollectionDef_AnyList copyWith(
          void Function(CollectionDef_AnyList) updates) =>
      super.copyWith((message) => updates(message as CollectionDef_AnyList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CollectionDef_AnyList create() => CollectionDef_AnyList._();
  CollectionDef_AnyList createEmptyInstance() => create();
  static $pb.PbList<CollectionDef_AnyList> createRepeated() =>
      $pb.PbList<CollectionDef_AnyList>();
  static CollectionDef_AnyList getDefault() =>
      _defaultInstance ??= create()..freeze();
  static CollectionDef_AnyList _defaultInstance;

  $core.List<$3.Any> get value => $_getList(0);
}

enum CollectionDef_Kind {
  nodeList,
  bytesList,
  int64List,
  floatList,
  anyList,
  notSet
}

class CollectionDef extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, CollectionDef_Kind>
      _CollectionDef_KindByTag = {
    1: CollectionDef_Kind.nodeList,
    2: CollectionDef_Kind.bytesList,
    3: CollectionDef_Kind.int64List,
    4: CollectionDef_Kind.floatList,
    5: CollectionDef_Kind.anyList,
    0: CollectionDef_Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CollectionDef',
      package: const $pb.PackageName('tensorflow'))
    ..oo(0, [1, 2, 3, 4, 5])
    ..a<CollectionDef_NodeList>(1, 'nodeList', $pb.PbFieldType.OM,
        CollectionDef_NodeList.getDefault, CollectionDef_NodeList.create)
    ..a<CollectionDef_BytesList>(2, 'bytesList', $pb.PbFieldType.OM,
        CollectionDef_BytesList.getDefault, CollectionDef_BytesList.create)
    ..a<CollectionDef_Int64List>(3, 'int64List', $pb.PbFieldType.OM,
        CollectionDef_Int64List.getDefault, CollectionDef_Int64List.create)
    ..a<CollectionDef_FloatList>(4, 'floatList', $pb.PbFieldType.OM,
        CollectionDef_FloatList.getDefault, CollectionDef_FloatList.create)
    ..a<CollectionDef_AnyList>(5, 'anyList', $pb.PbFieldType.OM,
        CollectionDef_AnyList.getDefault, CollectionDef_AnyList.create)
    ..hasRequiredFields = false;

  CollectionDef._() : super();
  factory CollectionDef() => create();
  factory CollectionDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CollectionDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CollectionDef clone() => CollectionDef()..mergeFromMessage(this);
  CollectionDef copyWith(void Function(CollectionDef) updates) =>
      super.copyWith((message) => updates(message as CollectionDef));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CollectionDef create() => CollectionDef._();
  CollectionDef createEmptyInstance() => create();
  static $pb.PbList<CollectionDef> createRepeated() =>
      $pb.PbList<CollectionDef>();
  static CollectionDef getDefault() => _defaultInstance ??= create()..freeze();
  static CollectionDef _defaultInstance;

  CollectionDef_Kind whichKind() => _CollectionDef_KindByTag[$_whichOneof(0)];
  void clearKind() => clearField($_whichOneof(0));

  CollectionDef_NodeList get nodeList => $_getN(0);
  set nodeList(CollectionDef_NodeList v) {
    setField(1, v);
  }

  $core.bool hasNodeList() => $_has(0);
  void clearNodeList() => clearField(1);

  CollectionDef_BytesList get bytesList => $_getN(1);
  set bytesList(CollectionDef_BytesList v) {
    setField(2, v);
  }

  $core.bool hasBytesList() => $_has(1);
  void clearBytesList() => clearField(2);

  CollectionDef_Int64List get int64List => $_getN(2);
  set int64List(CollectionDef_Int64List v) {
    setField(3, v);
  }

  $core.bool hasInt64List() => $_has(2);
  void clearInt64List() => clearField(3);

  CollectionDef_FloatList get floatList => $_getN(3);
  set floatList(CollectionDef_FloatList v) {
    setField(4, v);
  }

  $core.bool hasFloatList() => $_has(3);
  void clearFloatList() => clearField(4);

  CollectionDef_AnyList get anyList => $_getN(4);
  set anyList(CollectionDef_AnyList v) {
    setField(5, v);
  }

  $core.bool hasAnyList() => $_has(4);
  void clearAnyList() => clearField(5);
}

class TensorInfo_CooSparse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TensorInfo.CooSparse',
      package: const $pb.PackageName('tensorflow'))
    ..aOS(1, 'valuesTensorName')
    ..aOS(2, 'indicesTensorName')
    ..aOS(3, 'denseShapeTensorName')
    ..hasRequiredFields = false;

  TensorInfo_CooSparse._() : super();
  factory TensorInfo_CooSparse() => create();
  factory TensorInfo_CooSparse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TensorInfo_CooSparse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  TensorInfo_CooSparse clone() =>
      TensorInfo_CooSparse()..mergeFromMessage(this);
  TensorInfo_CooSparse copyWith(void Function(TensorInfo_CooSparse) updates) =>
      super.copyWith((message) => updates(message as TensorInfo_CooSparse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TensorInfo_CooSparse create() => TensorInfo_CooSparse._();
  TensorInfo_CooSparse createEmptyInstance() => create();
  static $pb.PbList<TensorInfo_CooSparse> createRepeated() =>
      $pb.PbList<TensorInfo_CooSparse>();
  static TensorInfo_CooSparse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static TensorInfo_CooSparse _defaultInstance;

  $core.String get valuesTensorName => $_getS(0, '');
  set valuesTensorName($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasValuesTensorName() => $_has(0);
  void clearValuesTensorName() => clearField(1);

  $core.String get indicesTensorName => $_getS(1, '');
  set indicesTensorName($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasIndicesTensorName() => $_has(1);
  void clearIndicesTensorName() => clearField(2);

  $core.String get denseShapeTensorName => $_getS(2, '');
  set denseShapeTensorName($core.String v) {
    $_setString(2, v);
  }

  $core.bool hasDenseShapeTensorName() => $_has(2);
  void clearDenseShapeTensorName() => clearField(3);
}

enum TensorInfo_Encoding { name, cooSparse, notSet }

class TensorInfo extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, TensorInfo_Encoding>
      _TensorInfo_EncodingByTag = {
    1: TensorInfo_Encoding.name,
    4: TensorInfo_Encoding.cooSparse,
    0: TensorInfo_Encoding.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TensorInfo',
      package: const $pb.PackageName('tensorflow'))
    ..oo(0, [1, 4])
    ..aOS(1, 'name')
    ..e<$5.DataType>(2, 'dtype', $pb.PbFieldType.OE, $5.DataType.DT_INVALID,
        $5.DataType.valueOf, $5.DataType.values)
    ..a<$4.TensorShapeProto>(3, 'tensorShape', $pb.PbFieldType.OM,
        $4.TensorShapeProto.getDefault, $4.TensorShapeProto.create)
    ..a<TensorInfo_CooSparse>(4, 'cooSparse', $pb.PbFieldType.OM,
        TensorInfo_CooSparse.getDefault, TensorInfo_CooSparse.create)
    ..hasRequiredFields = false;

  TensorInfo._() : super();
  factory TensorInfo() => create();
  factory TensorInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TensorInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  TensorInfo clone() => TensorInfo()..mergeFromMessage(this);
  TensorInfo copyWith(void Function(TensorInfo) updates) =>
      super.copyWith((message) => updates(message as TensorInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TensorInfo create() => TensorInfo._();
  TensorInfo createEmptyInstance() => create();
  static $pb.PbList<TensorInfo> createRepeated() => $pb.PbList<TensorInfo>();
  static TensorInfo getDefault() => _defaultInstance ??= create()..freeze();
  static TensorInfo _defaultInstance;

  TensorInfo_Encoding whichEncoding() =>
      _TensorInfo_EncodingByTag[$_whichOneof(0)];
  void clearEncoding() => clearField($_whichOneof(0));

  $core.String get name => $_getS(0, '');
  set name($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasName() => $_has(0);
  void clearName() => clearField(1);

  $5.DataType get dtype => $_getN(1);
  set dtype($5.DataType v) {
    setField(2, v);
  }

  $core.bool hasDtype() => $_has(1);
  void clearDtype() => clearField(2);

  $4.TensorShapeProto get tensorShape => $_getN(2);
  set tensorShape($4.TensorShapeProto v) {
    setField(3, v);
  }

  $core.bool hasTensorShape() => $_has(2);
  void clearTensorShape() => clearField(3);

  TensorInfo_CooSparse get cooSparse => $_getN(3);
  set cooSparse(TensorInfo_CooSparse v) {
    setField(4, v);
  }

  $core.bool hasCooSparse() => $_has(3);
  void clearCooSparse() => clearField(4);
}

class SignatureDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SignatureDef',
      package: const $pb.PackageName('tensorflow'))
    ..m<$core.String, TensorInfo>(
        1,
        'inputs',
        'SignatureDef.InputsEntry',
        $pb.PbFieldType.OS,
        $pb.PbFieldType.OM,
        TensorInfo.create,
        null,
        null,
        const $pb.PackageName('tensorflow'))
    ..m<$core.String, TensorInfo>(
        2,
        'outputs',
        'SignatureDef.OutputsEntry',
        $pb.PbFieldType.OS,
        $pb.PbFieldType.OM,
        TensorInfo.create,
        null,
        null,
        const $pb.PackageName('tensorflow'))
    ..aOS(3, 'methodName')
    ..hasRequiredFields = false;

  SignatureDef._() : super();
  factory SignatureDef() => create();
  factory SignatureDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SignatureDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SignatureDef clone() => SignatureDef()..mergeFromMessage(this);
  SignatureDef copyWith(void Function(SignatureDef) updates) =>
      super.copyWith((message) => updates(message as SignatureDef));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignatureDef create() => SignatureDef._();
  SignatureDef createEmptyInstance() => create();
  static $pb.PbList<SignatureDef> createRepeated() =>
      $pb.PbList<SignatureDef>();
  static SignatureDef getDefault() => _defaultInstance ??= create()..freeze();
  static SignatureDef _defaultInstance;

  $core.Map<$core.String, TensorInfo> get inputs => $_getMap(0);

  $core.Map<$core.String, TensorInfo> get outputs => $_getMap(1);

  $core.String get methodName => $_getS(2, '');
  set methodName($core.String v) {
    $_setString(2, v);
  }

  $core.bool hasMethodName() => $_has(2);
  void clearMethodName() => clearField(3);
}

class AssetFileDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AssetFileDef',
      package: const $pb.PackageName('tensorflow'))
    ..a<TensorInfo>(1, 'tensorInfo', $pb.PbFieldType.OM, TensorInfo.getDefault,
        TensorInfo.create)
    ..aOS(2, 'filename')
    ..hasRequiredFields = false;

  AssetFileDef._() : super();
  factory AssetFileDef() => create();
  factory AssetFileDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AssetFileDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  AssetFileDef clone() => AssetFileDef()..mergeFromMessage(this);
  AssetFileDef copyWith(void Function(AssetFileDef) updates) =>
      super.copyWith((message) => updates(message as AssetFileDef));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssetFileDef create() => AssetFileDef._();
  AssetFileDef createEmptyInstance() => create();
  static $pb.PbList<AssetFileDef> createRepeated() =>
      $pb.PbList<AssetFileDef>();
  static AssetFileDef getDefault() => _defaultInstance ??= create()..freeze();
  static AssetFileDef _defaultInstance;

  TensorInfo get tensorInfo => $_getN(0);
  set tensorInfo(TensorInfo v) {
    setField(1, v);
  }

  $core.bool hasTensorInfo() => $_has(0);
  void clearTensorInfo() => clearField(1);

  $core.String get filename => $_getS(1, '');
  set filename($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasFilename() => $_has(1);
  void clearFilename() => clearField(2);
}
