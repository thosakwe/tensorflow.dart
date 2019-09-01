part of tensorflow;

abstract class Tags {
  static const String gpu = 'gpu',
      serving = 'serve',
      tpu = 'tpu',
      train = 'train';
}

class SavedModelBundle {
  final Graph graph;
  final MetaGraphDef metaGraphDef;
  final p.Context path;

  //final Session session;

  factory SavedModelBundle(String exportDirectory,
      {List<String> tags: const [Tags.serving], RunOptions runOptions}) {
    var result = Tuple4<int, String, int, Uint8List>.fromList(
        _SavedModelBundle_new(
            exportDirectory, tags ?? [], runOptions?.writeToBuffer()));
    var code = _codeFrom(result.item1);
    if (code != Code.ok) throw TensorFlowException(code, result.item2);
    var path = p.absolute(exportDirectory);
    return SavedModelBundle._(
        result.item3, result.item4, p.Context(current: path));
  }

  SavedModelBundle._(int graph, Uint8List metaGraphDef, this.path)
      : this.graph = Graph._fromPointer(graph),
        this.metaGraphDef = MetaGraphDef.fromBuffer(metaGraphDef);

  static List _SavedModelBundle_new(String exportDirectory, List<String> tags,
      Uint8List runOptions) native "SavedModelBundle_new";

  /*
  static void restoreSession(String p, MetaGraphDef metaGraphDef, Graph graph) {
    // Feed in the name of the checkpoint file.
    //
    var checkPointFile = p;
    graph.session.runner
      ..feed(metaGraphDef.saverDef.filenameTensorName.replaceAll(':0', ''),
          Tensor.from(checkPointFile))
      ..addTarget(metaGraphDef.saverDef.restoreOpName)
      //..fetch(metaGraphDef.saverDef.restoreOpName)
      ..run();
  }*/

  void restoreCheckPoint(String p, {DataType dtype}) {
    // Feed in the name of the checkpoint file.
    //
    var checkPointFile = path.absolute(p);

    var o = restore(
      constant(checkPointFile),
      constant(metaGraphDef.saverDef.filenameTensorName.replaceAll(':0', '')),
      dt: dtype,
    );
    throw o.run();

    /*
    graph.session.runner
      ..feed(metaGraphDef.saverDef.filenameTensorName.replaceAll(':0', ''),
          Tensor.from(checkPointFile))
      ..addTarget(metaGraphDef.saverDef.restoreOpName)
      //..fetch(metaGraphDef.saverDef.restoreOpName)
      ..run();
      */
  }
}
