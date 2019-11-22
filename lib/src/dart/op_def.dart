part of tensorflow;

Output<T> const$<T>(
    {Graph graph,
    String operationName,
    Tensor value,
    @required DataType dtype}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Const', operationName ??= graph._scope.uniqueName('Const/'));
  op$.setAttrTensor('value', value);
  op$.setAttrType('dtype', dtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> identity<T>(Output<T> input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Identity', operationName ??= graph._scope.uniqueName('Identity/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output summaryWriter(
    {Graph graph, String operationName, String sharedName, String container}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SummaryWriter',
      operationName ??= graph._scope.uniqueName('SummaryWriter/'));
  op$.setAttrString('shared_name', sharedName);
  op$.setAttrString('container', container);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

/// This operation has no outputs.
Operation closeSummaryWriter(Output writer,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CloseSummaryWriter',
      operationName ??= graph._scope.uniqueName('CloseSummaryWriter/'));
  op$.addInput(writer);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// This operation has no outputs.
Operation createSummaryFileWriter(
    Output writer,
    Output<String> logdir,
    Output<int> maxQueue,
    Output<int> flushMillis,
    Output<String> filenameSuffix,
    {Graph graph,
    String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CreateSummaryFileWriter',
      operationName ??= graph._scope.uniqueName('CreateSummaryFileWriter/'));
  op$.addInput(writer);
  op$.addInput(logdir);
  op$.addInput(maxQueue);
  op$.addInput(flushMillis);
  op$.addInput(filenameSuffix);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// This operation has no outputs.
Operation flushSummaryWriter(Output writer,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('FlushSummaryWriter',
      operationName ??= graph._scope.uniqueName('FlushSummaryWriter/'));
  op$.addInput(writer);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<String> histogramSummary<T>(Output<String> tag, Output<T> values,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('HistogramSummary',
      operationName ??= graph._scope.uniqueName('HistogramSummary/'));
  op$.addInput(tag);
  op$.addInput(values);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

/// This operation has no outputs.
Operation writeHistogramSummary<T>(
    Output writer, Output<int> step, Output<String> tag, Output<T> values,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('WriteHistogramSummary',
      operationName ??= graph._scope.uniqueName('WriteHistogramSummary/'));
  op$.addInput(writer);
  op$.addInput(step);
  op$.addInput(tag);
  op$.addInput(values);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// This operation has no outputs.
Operation writeSummary<T>(Output writer, Output<int> step, Output<T> tensor,
    Output<String> tag, Output<String> summaryMetadata,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('WriteSummary',
      operationName ??= graph._scope.uniqueName('WriteSummary/'));
  op$.addInput(writer);
  op$.addInput(step);
  op$.addInput(tensor);
  op$.addInput(tag);
  op$.addInput(summaryMetadata);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// This operation has no outputs.
Operation createSummaryDbWriter(
    Output writer,
    Output<String> dbUri,
    Output<String> experimentName,
    Output<String> runName,
    Output<String> userName,
    {Graph graph,
    String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CreateSummaryDbWriter',
      operationName ??= graph._scope.uniqueName('CreateSummaryDbWriter/'));
  op$.addInput(writer);
  op$.addInput(dbUri);
  op$.addInput(experimentName);
  op$.addInput(runName);
  op$.addInput(userName);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> restore<T>(Output<String> filePattern, Output<String> tensorName,
    {Graph graph, String operationName, DataType dt, int preferredShard: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Restore', operationName ??= graph._scope.uniqueName('Restore/'));
  op$.addInput(filePattern);
  op$.addInput(tensorName);
  op$.setAttrType('dt', dt);
  op$.setAttrInt('preferred_shard', preferredShard);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}
