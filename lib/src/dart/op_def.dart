// GENERATED CODE. DO NOT MODIFY BY HAND.

part of tensorflow;

Output<List<T>> statefulPartitionedCall<T>(List<Output<List<T>>> args,
    {Graph graph,
    String operationName,
    List<DataType> tin,
    List<DataType> tout,
    Func f}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StatefulPartitionedCall',
      operationName ??= graph._scope.uniqueName('StatefulPartitionedCall/'));
  op$.addInputList(args);
  op$.setAttrTypeList('Tin', tin);
  op$.setAttrTypeList('Tout', tout);
  op$.setAttrFunc('f', f);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

Output<List<T>> statelessWhile<T>(List<Output<List<T>>> input,
    {Graph graph,
    String operationName,
    List<DataType> t,
    Func cond,
    Func body}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StatelessWhile',
      operationName ??= graph._scope.uniqueName('StatelessWhile/'));
  op$.addInputList(input);
  op$.setAttrTypeList('T', t);
  op$.setAttrFunc('cond', cond);
  op$.setAttrFunc('body', body);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

Output<List<T>> while$<T>(List<Output<List<T>>> input,
    {Graph graph,
    String operationName,
    List<DataType> t,
    Func cond,
    Func body}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'While', operationName ??= graph._scope.uniqueName('While/'));
  op$.addInputList(input);
  op$.setAttrTypeList('T', t);
  op$.setAttrFunc('cond', cond);
  op$.setAttrFunc('body', body);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

Output<List<T>> if$<T>(Output<T> cond, List<Output<List<T>>> input,
    {Graph graph,
    String operationName,
    DataType tcond,
    List<DataType> tin,
    List<DataType> tout,
    Func thenBranch,
    Func elseBranch}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'If', operationName ??= graph._scope.uniqueName('If/'));
  op$.addInput(cond);
  op$.addInputList(input);
  op$.setAttrType('Tcond', tcond);
  op$.setAttrTypeList('Tin', tin);
  op$.setAttrTypeList('Tout', tout);
  op$.setAttrFunc('then_branch', thenBranch);
  op$.setAttrFunc('else_branch', elseBranch);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

Output<List<T>> remoteCall<T>(Output<String> target, List<Output<List<T>>> args,
    {Graph graph,
    String operationName,
    List<DataType> tin,
    List<DataType> tout,
    Func f}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RemoteCall', operationName ??= graph._scope.uniqueName('RemoteCall/'));
  op$.addInput(target);
  op$.addInputList(args);
  op$.setAttrTypeList('Tin', tin);
  op$.setAttrTypeList('Tout', tout);
  op$.setAttrFunc('f', f);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

Output<List<T>> symbolicGradient<T>(List<Output<List<T>>> input,
    {Graph graph,
    String operationName,
    List<DataType> tin,
    List<DataType> tout,
    Func f}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SymbolicGradient',
      operationName ??= graph._scope.uniqueName('SymbolicGradient/'));
  op$.addInputList(input);
  op$.setAttrTypeList('Tin', tin);
  op$.setAttrTypeList('Tout', tout);
  op$.setAttrFunc('f', f);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

class QuantizedBatchNormWithGlobalNormalizationOutput<T> {
  QuantizedBatchNormWithGlobalNormalizationOutput(
      this._graph, this.op, this.result, this.resultMin, this.resultMax);

  final Graph _graph;

  Operation op;

  final Output<T> result;

  final Output<double> resultMin;

  final Output<double> resultMax;

  QuantizedBatchNormWithGlobalNormalization run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return QuantizedBatchNormWithGlobalNormalization<T>(
        (result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<double>),
        (result$[idx$2] as Output<double>));
  }
}

class QuantizedBatchNormWithGlobalNormalization<T> {
  QuantizedBatchNormWithGlobalNormalization(
      this.result, this.resultMin, this.resultMax);

  final Output<T> result;

  final Output<double> resultMin;

  final Output<double> resultMax;
}

QuantizedBatchNormWithGlobalNormalizationOutput
    quantizedBatchNormWithGlobalNormalization<T>(
        Output<T> t,
        Output<double> tMin,
        Output<double> tMax,
        Output<T> m,
        Output<double> mMin,
        Output<double> mMax,
        Output<T> v,
        Output<double> vMin,
        Output<double> vMax,
        Output<T> beta,
        Output<double> betaMin,
        Output<double> betaMax,
        Output<T> gamma,
        Output<double> gammaMin,
        Output<double> gammaMax,
        {Graph graph,
        String operationName,
        DataType tinput,
        DataType outType,
        double varianceEpsilon,
        bool scaleAfterNormalization}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'QuantizedBatchNormWithGlobalNormalization',
      operationName ??= graph._scope
          .uniqueName('QuantizedBatchNormWithGlobalNormalization/'));
  op$.addInput(t);
  op$.addInput(tMin);
  op$.addInput(tMax);
  op$.addInput(m);
  op$.addInput(mMin);
  op$.addInput(mMax);
  op$.addInput(v);
  op$.addInput(vMin);
  op$.addInput(vMax);
  op$.addInput(beta);
  op$.addInput(betaMin);
  op$.addInput(betaMax);
  op$.addInput(gamma);
  op$.addInput(gammaMin);
  op$.addInput(gammaMax);
  op$.setAttrType('Tinput', tinput);
  op$.setAttrType('out_type', outType);
  op$.setAttrFloat('variance_epsilon', varianceEpsilon);
  op$.setAttrBool('scale_after_normalization', scaleAfterNormalization);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return QuantizedBatchNormWithGlobalNormalizationOutput<T>(
      graph,
      result$,
      (result$[0] as Output<T>),
      (result$[1] as Output<double>),
      (result$[2] as Output<double>));
}

class QuantizedReluXOutput<T> {
  QuantizedReluXOutput(this._graph, this.op, this.activations,
      this.minActivations, this.maxActivations);

  final Graph _graph;

  Operation op;

  final Output<T> activations;

  final Output<double> minActivations;

  final Output<double> maxActivations;

  QuantizedReluX run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return QuantizedReluX<T>((result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<double>), (result$[idx$2] as Output<double>));
  }
}

class QuantizedReluX<T> {
  QuantizedReluX(this.activations, this.minActivations, this.maxActivations);

  final Output<T> activations;

  final Output<double> minActivations;

  final Output<double> maxActivations;
}

QuantizedReluXOutput quantizedReluX<T>(
    Output<T> features,
    Output<double> maxValue,
    Output<double> minFeatures,
    Output<double> maxFeatures,
    {Graph graph,
    String operationName,
    DataType tinput,
    DataType outType: DataType.DT_QUINT8}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QuantizedReluX',
      operationName ??= graph._scope.uniqueName('QuantizedReluX/'));
  op$.addInput(features);
  op$.addInput(maxValue);
  op$.addInput(minFeatures);
  op$.addInput(maxFeatures);
  op$.setAttrType('Tinput', tinput);
  op$.setAttrType('out_type', outType);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return QuantizedReluXOutput<T>(graph, result$, (result$[0] as Output<T>),
      (result$[1] as Output<double>), (result$[2] as Output<double>));
}

class QuantizedReluOutput<T> {
  QuantizedReluOutput(this._graph, this.op, this.activations,
      this.minActivations, this.maxActivations);

  final Graph _graph;

  Operation op;

  final Output<T> activations;

  final Output<double> minActivations;

  final Output<double> maxActivations;

  QuantizedRelu run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return QuantizedRelu<T>((result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<double>), (result$[idx$2] as Output<double>));
  }
}

class QuantizedRelu<T> {
  QuantizedRelu(this.activations, this.minActivations, this.maxActivations);

  final Output<T> activations;

  final Output<double> minActivations;

  final Output<double> maxActivations;
}

QuantizedReluOutput quantizedRelu<T>(
    Output<T> features, Output<double> minFeatures, Output<double> maxFeatures,
    {Graph graph,
    String operationName,
    DataType tinput,
    DataType outType: DataType.DT_QUINT8}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QuantizedRelu',
      operationName ??= graph._scope.uniqueName('QuantizedRelu/'));
  op$.addInput(features);
  op$.addInput(minFeatures);
  op$.addInput(maxFeatures);
  op$.setAttrType('Tinput', tinput);
  op$.setAttrType('out_type', outType);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return QuantizedReluOutput<T>(graph, result$, (result$[0] as Output<T>),
      (result$[1] as Output<double>), (result$[2] as Output<double>));
}

Output<T> fractionalAvgPoolGrad<T>(
    Output<int> origInputTensorShape,
    Output<T> outBackprop,
    Output<int> rowPoolingSequence,
    Output<int> colPoolingSequence,
    {Graph graph,
    String operationName,
    bool overlapping: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('FractionalAvgPoolGrad',
      operationName ??= graph._scope.uniqueName('FractionalAvgPoolGrad/'));
  op$.addInput(origInputTensorShape);
  op$.addInput(outBackprop);
  op$.addInput(rowPoolingSequence);
  op$.addInput(colPoolingSequence);
  op$.setAttrBool('overlapping', overlapping);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> fractionalMaxPoolGrad<T>(
    Output<T> origInput,
    Output<T> origOutput,
    Output<T> outBackprop,
    Output<int> rowPoolingSequence,
    Output<int> colPoolingSequence,
    {Graph graph,
    String operationName,
    bool overlapping: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('FractionalMaxPoolGrad',
      operationName ??= graph._scope.uniqueName('FractionalMaxPoolGrad/'));
  op$.addInput(origInput);
  op$.addInput(origOutput);
  op$.addInput(outBackprop);
  op$.addInput(rowPoolingSequence);
  op$.addInput(colPoolingSequence);
  op$.setAttrBool('overlapping', overlapping);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> nthElement<T>(Output<T> input, Output<int> n,
    {Graph graph, String operationName, bool reverse: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'NthElement', operationName ??= graph._scope.uniqueName('NthElement/'));
  op$.addInput(input);
  op$.addInput(n);
  op$.setAttrBool('reverse', reverse);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class TopKV2Output<T> {
  TopKV2Output(this._graph, this.op, this.values, this.indices);

  final Graph _graph;

  Operation op;

  final Output<T> values;

  final Output<int> indices;

  TopKV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return TopKV2<T>(
        (result$[idx$0] as Output<T>), (result$[idx$1] as Output<int>));
  }
}

class TopKV2<T> {
  TopKV2(this.values, this.indices);

  final Output<T> values;

  final Output<int> indices;
}

TopKV2Output topKV2<T>(Output<T> input, Output<int> k,
    {Graph graph, String operationName, bool sorted: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'TopKV2', operationName ??= graph._scope.uniqueName('TopKV2/'));
  op$.addInput(input);
  op$.addInput(k);
  op$.setAttrBool('sorted', sorted);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return TopKV2Output<T>(
      graph, result$, (result$[0] as Output<T>), (result$[1] as Output<int>));
}

class TopKOutput<T> {
  TopKOutput(this._graph, this.op, this.values, this.indices);

  final Graph _graph;

  Operation op;

  final Output<T> values;

  final Output<int> indices;

  TopK run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return TopK<T>(
        (result$[idx$0] as Output<T>), (result$[idx$1] as Output<int>));
  }
}

class TopK<T> {
  TopK(this.values, this.indices);

  final Output<T> values;

  final Output<int> indices;
}

@Deprecated('DEPRECATED at GraphDef version 7: Use TopKV2 instead')
TopKOutput topK<T>(Output<T> input,
    {Graph graph, String operationName, int k, bool sorted: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'TopK', operationName ??= graph._scope.uniqueName('TopK/'));
  op$.addInput(input);
  op$.setAttrInt('k', k);
  op$.setAttrBool('sorted', sorted);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return TopKOutput<T>(
      graph, result$, (result$[0] as Output<T>), (result$[1] as Output<int>));
}

Output<bool> inTopKV2<T>(
    Output<double> predictions, Output<T> targets, Output<T> k,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'InTopKV2', operationName ??= graph._scope.uniqueName('InTopKV2/'));
  op$.addInput(predictions);
  op$.addInput(targets);
  op$.addInput(k);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
}

class SparseSoftmaxCrossEntropyWithLogitsOutput<T> {
  SparseSoftmaxCrossEntropyWithLogitsOutput(
      this._graph, this.op, this.loss, this.backprop);

  final Graph _graph;

  Operation op;

  final Output<T> loss;

  final Output<T> backprop;

  SparseSoftmaxCrossEntropyWithLogits run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return SparseSoftmaxCrossEntropyWithLogits<T>(
        (result$[idx$0] as Output<T>), (result$[idx$1] as Output<T>));
  }
}

class SparseSoftmaxCrossEntropyWithLogits<T> {
  SparseSoftmaxCrossEntropyWithLogits(this.loss, this.backprop);

  final Output<T> loss;

  final Output<T> backprop;
}

SparseSoftmaxCrossEntropyWithLogitsOutput
    sparseSoftmaxCrossEntropyWithLogits<T>(Output<T> features, Output<T> labels,
        {Graph graph,
        String operationName,
        DataType tlabels: DataType.DT_INT64}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SparseSoftmaxCrossEntropyWithLogits',
      operationName ??=
          graph._scope.uniqueName('SparseSoftmaxCrossEntropyWithLogits/'));
  op$.addInput(features);
  op$.addInput(labels);
  op$.setAttrType('Tlabels', tlabels);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return SparseSoftmaxCrossEntropyWithLogitsOutput<T>(
      graph, result$, (result$[0] as Output<T>), (result$[1] as Output<T>));
}

Output<T> logSoftmax<T>(Output<T> logits, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'LogSoftmax', operationName ??= graph._scope.uniqueName('LogSoftmax/'));
  op$.addInput(logits);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> softmax<T>(Output<T> logits, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Softmax', operationName ??= graph._scope.uniqueName('Softmax/'));
  op$.addInput(logits);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> softsignGrad<T>(Output<T> gradients, Output<T> features,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SoftsignGrad',
      operationName ??= graph._scope.uniqueName('SoftsignGrad/'));
  op$.addInput(gradients);
  op$.addInput(features);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> softplusGrad<T>(Output<T> gradients, Output<T> features,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SoftplusGrad',
      operationName ??= graph._scope.uniqueName('SoftplusGrad/'));
  op$.addInput(gradients);
  op$.addInput(features);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> seluGrad<T>(Output<T> gradients, Output<T> outputs,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SeluGrad', operationName ??= graph._scope.uniqueName('SeluGrad/'));
  op$.addInput(gradients);
  op$.addInput(outputs);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> selu<T>(Output<T> features, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Selu', operationName ??= graph._scope.uniqueName('Selu/'));
  op$.addInput(features);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> eluGrad<T>(Output<T> gradients, Output<T> outputs,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'EluGrad', operationName ??= graph._scope.uniqueName('EluGrad/'));
  op$.addInput(gradients);
  op$.addInput(outputs);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> relu6Grad<T>(Output<T> gradients, Output<T> features,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Relu6Grad', operationName ??= graph._scope.uniqueName('Relu6Grad/'));
  op$.addInput(gradients);
  op$.addInput(features);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> reluGrad<T>(Output<T> gradients, Output<T> features,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ReluGrad', operationName ??= graph._scope.uniqueName('ReluGrad/'));
  op$.addInput(gradients);
  op$.addInput(features);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> dilation2DBackpropFilter<T>(
    Output<T> input, Output<T> filter, Output<T> outBackprop,
    {Graph graph,
    String operationName,
    List<int> strides,
    List<int> rates,
    String padding}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('Dilation2DBackpropFilter',
      operationName ??= graph._scope.uniqueName('Dilation2DBackpropFilter/'));
  op$.addInput(input);
  op$.addInput(filter);
  op$.addInput(outBackprop);
  op$.setAttrIntList('strides', strides);
  op$.setAttrIntList('rates', rates);
  op$.setAttrString('padding', padding);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> maxPoolGradGradWithArgmax<T>(
    Output<T> input, Output<T> grad, Output<T> argmax,
    {Graph graph,
    String operationName,
    List<int> ksize,
    List<int> strides,
    String padding,
    DataType targmax}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MaxPoolGradGradWithArgmax',
      operationName ??= graph._scope.uniqueName('MaxPoolGradGradWithArgmax/'));
  op$.addInput(input);
  op$.addInput(grad);
  op$.addInput(argmax);
  op$.setAttrIntList('ksize', ksize);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
  op$.setAttrType('Targmax', targmax);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> maxPoolGradWithArgmax<T>(
    Output<T> input, Output<T> grad, Output<T> argmax,
    {Graph graph,
    String operationName,
    List<int> ksize,
    List<int> strides,
    String padding,
    DataType targmax}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MaxPoolGradWithArgmax',
      operationName ??= graph._scope.uniqueName('MaxPoolGradWithArgmax/'));
  op$.addInput(input);
  op$.addInput(grad);
  op$.addInput(argmax);
  op$.setAttrIntList('ksize', ksize);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
  op$.setAttrType('Targmax', targmax);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class MaxPoolWithArgmaxOutput<T> {
  MaxPoolWithArgmaxOutput(this._graph, this.op, this.output, this.argmax);

  final Graph _graph;

  Operation op;

  final Output<T> output;

  final Output<T> argmax;

  MaxPoolWithArgmax run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return MaxPoolWithArgmax<T>(
        (result$[idx$0] as Output<T>), (result$[idx$1] as Output<T>));
  }
}

class MaxPoolWithArgmax<T> {
  MaxPoolWithArgmax(this.output, this.argmax);

  final Output<T> output;

  final Output<T> argmax;
}

MaxPoolWithArgmaxOutput maxPoolWithArgmax<T>(Output<T> input,
    {Graph graph,
    String operationName,
    List<int> ksize,
    List<int> strides,
    DataType targmax: DataType.DT_INT64,
    String padding}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MaxPoolWithArgmax',
      operationName ??= graph._scope.uniqueName('MaxPoolWithArgmax/'));
  op$.addInput(input);
  op$.setAttrIntList('ksize', ksize);
  op$.setAttrIntList('strides', strides);
  op$.setAttrType('Targmax', targmax);
  op$.setAttrString('padding', padding);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return MaxPoolWithArgmaxOutput<T>(
      graph, result$, (result$[0] as Output<T>), (result$[1] as Output<T>));
}

Output<T> maxPoolGradGradV2<T>(Output<T> origInput, Output<T> origOutput,
    Output<T> grad, Output<int> ksize, Output<int> strides,
    {Graph graph,
    String operationName,
    String padding,
    String dataFormat: 'NHWC'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MaxPoolGradGradV2',
      operationName ??= graph._scope.uniqueName('MaxPoolGradGradV2/'));
  op$.addInput(origInput);
  op$.addInput(origOutput);
  op$.addInput(grad);
  op$.addInput(ksize);
  op$.addInput(strides);
  op$.setAttrString('padding', padding);
  op$.setAttrString('data_format', dataFormat);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> maxPoolGradGrad<T>(
    Output<T> origInput, Output<T> origOutput, Output<T> grad,
    {Graph graph,
    String operationName,
    List<int> ksize,
    List<int> strides,
    String padding,
    String dataFormat: 'NHWC'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MaxPoolGradGrad',
      operationName ??= graph._scope.uniqueName('MaxPoolGradGrad/'));
  op$.addInput(origInput);
  op$.addInput(origOutput);
  op$.addInput(grad);
  op$.setAttrIntList('ksize', ksize);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
  op$.setAttrString('data_format', dataFormat);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> maxPoolGradV2<T>(Output<T> origInput, Output<T> origOutput,
    Output<T> grad, Output<int> ksize, Output<int> strides,
    {Graph graph,
    String operationName,
    String padding,
    String dataFormat: 'NHWC'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MaxPoolGradV2',
      operationName ??= graph._scope.uniqueName('MaxPoolGradV2/'));
  op$.addInput(origInput);
  op$.addInput(origOutput);
  op$.addInput(grad);
  op$.addInput(ksize);
  op$.addInput(strides);
  op$.setAttrString('padding', padding);
  op$.setAttrString('data_format', dataFormat);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> lRNGrad<T>(
    Output<T> inputGrads, Output<T> inputImage, Output<T> outputImage,
    {Graph graph,
    String operationName,
    int depthRadius: 5,
    double bias: 1.0,
    double alpha: 1.0,
    double beta: 0.5}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'LRNGrad', operationName ??= graph._scope.uniqueName('LRNGrad/'));
  op$.addInput(inputGrads);
  op$.addInput(inputImage);
  op$.addInput(outputImage);
  op$.setAttrInt('depth_radius', depthRadius);
  op$.setAttrFloat('bias', bias);
  op$.setAttrFloat('alpha', alpha);
  op$.setAttrFloat('beta', beta);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> l2Loss<T>(Output<T> t, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'L2Loss', operationName ??= graph._scope.uniqueName('L2Loss/'));
  op$.addInput(t);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> maxPool3DGradGrad<T>(
    Output<T> origInput, Output<T> origOutput, Output<T> grad,
    {Graph graph,
    String operationName,
    List<int> ksize,
    List<int> strides,
    String padding,
    String dataFormat: 'NDHWC'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MaxPool3DGradGrad',
      operationName ??= graph._scope.uniqueName('MaxPool3DGradGrad/'));
  op$.addInput(origInput);
  op$.addInput(origOutput);
  op$.addInput(grad);
  op$.setAttrIntList('ksize', ksize);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
  op$.setAttrString('data_format', dataFormat);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> maxPool3D<T>(Output<T> input,
    {Graph graph,
    String operationName,
    List<int> ksize,
    List<int> strides,
    String padding,
    String dataFormat: 'NDHWC'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'MaxPool3D', operationName ??= graph._scope.uniqueName('MaxPool3D/'));
  op$.addInput(input);
  op$.setAttrIntList('ksize', ksize);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
  op$.setAttrString('data_format', dataFormat);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> lRN<T>(Output<T> input,
    {Graph graph,
    String operationName,
    int depthRadius: 5,
    double bias: 1.0,
    double alpha: 1.0,
    double beta: 0.5}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'LRN', operationName ??= graph._scope.uniqueName('LRN/'));
  op$.addInput(input);
  op$.setAttrInt('depth_radius', depthRadius);
  op$.setAttrFloat('bias', bias);
  op$.setAttrFloat('alpha', alpha);
  op$.setAttrFloat('beta', beta);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> conv3DBackpropInputV2<T>(
    Output<T> inputSizes, Output<T> filter, Output<T> outBackprop,
    {Graph graph,
    String operationName,
    List<int> strides,
    String padding,
    String dataFormat: 'NDHWC',
    List<int> dilations,
    DataType tshape: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('Conv3DBackpropInputV2',
      operationName ??= graph._scope.uniqueName('Conv3DBackpropInputV2/'));
  op$.addInput(inputSizes);
  op$.addInput(filter);
  op$.addInput(outBackprop);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
  op$.setAttrString('data_format', dataFormat);
  op$.setAttrIntList('dilations', dilations);
  op$.setAttrType('Tshape', tshape);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

@Deprecated('DEPRECATED at GraphDef version 10: Use Conv3DBackpropFilterV2')
Output<T> conv3DBackpropFilter<T>(
    Output<T> input, Output<T> filter, Output<T> outBackprop,
    {Graph graph,
    String operationName,
    List<int> strides,
    String padding,
    List<int> dilations}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('Conv3DBackpropFilter',
      operationName ??= graph._scope.uniqueName('Conv3DBackpropFilter/'));
  op$.addInput(input);
  op$.addInput(filter);
  op$.addInput(outBackprop);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
  op$.setAttrIntList('dilations', dilations);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

@Deprecated('DEPRECATED at GraphDef version 10: Use Conv3DBackpropInputV2')
Output<T> conv3DBackpropInput<T>(
    Output<T> input, Output<T> filter, Output<T> outBackprop,
    {Graph graph,
    String operationName,
    List<int> strides,
    String padding,
    List<int> dilations}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('Conv3DBackpropInput',
      operationName ??= graph._scope.uniqueName('Conv3DBackpropInput/'));
  op$.addInput(input);
  op$.addInput(filter);
  op$.addInput(outBackprop);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
  op$.setAttrIntList('dilations', dilations);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> conv3D<T>(Output<T> input, Output<T> filter,
    {Graph graph,
    String operationName,
    List<int> strides,
    String padding,
    String dataFormat: 'NDHWC',
    List<int> dilations}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Conv3D', operationName ??= graph._scope.uniqueName('Conv3D/'));
  op$.addInput(input);
  op$.addInput(filter);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
  op$.setAttrString('data_format', dataFormat);
  op$.setAttrIntList('dilations', dilations);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> depthwiseConv2dNative<T>(Output<T> input, Output<T> filter,
    {Graph graph,
    String operationName,
    List<int> strides,
    String padding,
    String dataFormat: 'NHWC',
    List<int> dilations}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DepthwiseConv2dNative',
      operationName ??= graph._scope.uniqueName('DepthwiseConv2dNative/'));
  op$.addInput(input);
  op$.addInput(filter);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
  op$.setAttrString('data_format', dataFormat);
  op$.setAttrIntList('dilations', dilations);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> fusedResizeAndPadConv2D<T>(
    Output<T> input, Output<int> size, Output<int> paddings, Output<T> filter,
    {Graph graph,
    String operationName,
    bool resizeAlignCorners: false,
    String mode,
    List<int> strides,
    String padding}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('FusedResizeAndPadConv2D',
      operationName ??= graph._scope.uniqueName('FusedResizeAndPadConv2D/'));
  op$.addInput(input);
  op$.addInput(size);
  op$.addInput(paddings);
  op$.addInput(filter);
  op$.setAttrBool('resize_align_corners', resizeAlignCorners);
  op$.setAttrString('mode', mode);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class QuantizedBiasAddOutput<T> {
  QuantizedBiasAddOutput(
      this._graph, this.op, this.output, this.minOut, this.maxOut);

  final Graph _graph;

  Operation op;

  final Output<T> output;

  final Output<double> minOut;

  final Output<double> maxOut;

  QuantizedBiasAdd run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return QuantizedBiasAdd<T>((result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<double>), (result$[idx$2] as Output<double>));
  }
}

class QuantizedBiasAdd<T> {
  QuantizedBiasAdd(this.output, this.minOut, this.maxOut);

  final Output<T> output;

  final Output<double> minOut;

  final Output<double> maxOut;
}

QuantizedBiasAddOutput quantizedBiasAdd<T>(
    Output<T> input,
    Output<T> bias,
    Output<double> minInput,
    Output<double> maxInput,
    Output<double> minBias,
    Output<double> maxBias,
    {Graph graph,
    String operationName,
    DataType t1,
    DataType t2,
    DataType outType}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QuantizedBiasAdd',
      operationName ??= graph._scope.uniqueName('QuantizedBiasAdd/'));
  op$.addInput(input);
  op$.addInput(bias);
  op$.addInput(minInput);
  op$.addInput(maxInput);
  op$.addInput(minBias);
  op$.addInput(maxBias);
  op$.setAttrType('T1', t1);
  op$.setAttrType('T2', t2);
  op$.setAttrType('out_type', outType);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return QuantizedBiasAddOutput<T>(graph, result$, (result$[0] as Output<T>),
      (result$[1] as Output<double>), (result$[2] as Output<double>));
}

Output<T> dataFormatVecPermute<T>(Output<T> x,
    {Graph graph,
    String operationName,
    String srcFormat: 'NHWC',
    String dstFormat: 'NCHW'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DataFormatVecPermute',
      operationName ??= graph._scope.uniqueName('DataFormatVecPermute/'));
  op$.addInput(x);
  op$.setAttrString('src_format', srcFormat);
  op$.setAttrString('dst_format', dstFormat);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> dataFormatDimMap<T>(Output<T> x,
    {Graph graph,
    String operationName,
    String srcFormat: 'NHWC',
    String dstFormat: 'NCHW'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DataFormatDimMap',
      operationName ??= graph._scope.uniqueName('DataFormatDimMap/'));
  op$.addInput(x);
  op$.setAttrString('src_format', srcFormat);
  op$.setAttrString('dst_format', dstFormat);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> conv2DBackpropFilter<T>(
    Output<T> input, Output<int> filterSizes, Output<T> outBackprop,
    {Graph graph,
    String operationName,
    List<int> strides,
    bool useCudnnOnGpu: true,
    String padding,
    String dataFormat: 'NHWC',
    List<int> dilations}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('Conv2DBackpropFilter',
      operationName ??= graph._scope.uniqueName('Conv2DBackpropFilter/'));
  op$.addInput(input);
  op$.addInput(filterSizes);
  op$.addInput(outBackprop);
  op$.setAttrIntList('strides', strides);
  op$.setAttrBool('use_cudnn_on_gpu', useCudnnOnGpu);
  op$.setAttrString('padding', padding);
  op$.setAttrString('data_format', dataFormat);
  op$.setAttrIntList('dilations', dilations);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> conv2D<T>(Output<T> input, Output<T> filter,
    {Graph graph,
    String operationName,
    List<int> strides,
    bool useCudnnOnGpu: true,
    String padding,
    String dataFormat: 'NHWC',
    List<int> dilations}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Conv2D', operationName ??= graph._scope.uniqueName('Conv2D/'));
  op$.addInput(input);
  op$.addInput(filter);
  op$.setAttrIntList('strides', strides);
  op$.setAttrBool('use_cudnn_on_gpu', useCudnnOnGpu);
  op$.setAttrString('padding', padding);
  op$.setAttrString('data_format', dataFormat);
  op$.setAttrIntList('dilations', dilations);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> biasAddV1<T>(Output<T> value, Output<T> bias,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BiasAddV1', operationName ??= graph._scope.uniqueName('BiasAddV1/'));
  op$.addInput(value);
  op$.addInput(bias);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> biasAddGrad<T>(Output<T> outBackprop,
    {Graph graph, String operationName, String dataFormat: 'NHWC'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BiasAddGrad', operationName ??= graph._scope.uniqueName('BiasAddGrad/'));
  op$.addInput(outBackprop);
  op$.setAttrString('data_format', dataFormat);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> biasAdd<T>(Output<T> value, Output<T> bias,
    {Graph graph, String operationName, String dataFormat: 'NHWC'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BiasAdd', operationName ??= graph._scope.uniqueName('BiasAdd/'));
  op$.addInput(value);
  op$.addInput(bias);
  op$.setAttrString('data_format', dataFormat);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class BatchNormWithGlobalNormalizationGradOutput<T> {
  BatchNormWithGlobalNormalizationGradOutput(
      this._graph, this.op, this.dx, this.dm, this.dv, this.db, this.dg);

  final Graph _graph;

  Operation op;

  final Output<T> dx;

  final Output<T> dm;

  final Output<T> dv;

  final Output<T> db;

  final Output<T> dg;

  BatchNormWithGlobalNormalizationGrad run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var idx$3 = runner.fetch(op.name, index: 3);
    var idx$4 = runner.fetch(op.name, index: 4);
    var result$ = runner.run();
    return BatchNormWithGlobalNormalizationGrad<T>(
        (result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<T>),
        (result$[idx$2] as Output<T>),
        (result$[idx$3] as Output<T>),
        (result$[idx$4] as Output<T>));
  }
}

class BatchNormWithGlobalNormalizationGrad<T> {
  BatchNormWithGlobalNormalizationGrad(
      this.dx, this.dm, this.dv, this.db, this.dg);

  final Output<T> dx;

  final Output<T> dm;

  final Output<T> dv;

  final Output<T> db;

  final Output<T> dg;
}

@Deprecated('DEPRECATED at GraphDef version 9: Use tf.nn.batch_normalization()')
BatchNormWithGlobalNormalizationGradOutput
    batchNormWithGlobalNormalizationGrad<T>(Output<T> t, Output<T> m,
        Output<T> v, Output<T> gamma, Output<T> backprop,
        {Graph graph,
        String operationName,
        double varianceEpsilon,
        bool scaleAfterNormalization}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BatchNormWithGlobalNormalizationGrad',
      operationName ??=
          graph._scope.uniqueName('BatchNormWithGlobalNormalizationGrad/'));
  op$.addInput(t);
  op$.addInput(m);
  op$.addInput(v);
  op$.addInput(gamma);
  op$.addInput(backprop);
  op$.setAttrFloat('variance_epsilon', varianceEpsilon);
  op$.setAttrBool('scale_after_normalization', scaleAfterNormalization);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return BatchNormWithGlobalNormalizationGradOutput<T>(
      graph,
      result$,
      (result$[0] as Output<T>),
      (result$[1] as Output<T>),
      (result$[2] as Output<T>),
      (result$[3] as Output<T>),
      (result$[4] as Output<T>));
}

Output<int> bucketize<T>(Output<T> input,
    {Graph graph, String operationName, List<double> boundaries}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Bucketize', operationName ??= graph._scope.uniqueName('Bucketize/'));
  op$.addInput(input);
  op$.setAttrFloatList('boundaries', boundaries);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

Output compareAndBitpack<T>(Output<T> input, Output<T> threshold,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CompareAndBitpack',
      operationName ??= graph._scope.uniqueName('CompareAndBitpack/'));
  op$.addInput(input);
  op$.addInput(threshold);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

class QuantizeDownAndShrinkRangeOutput<T> {
  QuantizeDownAndShrinkRangeOutput(
      this._graph, this.op, this.output, this.outputMin, this.outputMax);

  final Graph _graph;

  Operation op;

  final Output<T> output;

  final Output<double> outputMin;

  final Output<double> outputMax;

  QuantizeDownAndShrinkRange run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return QuantizeDownAndShrinkRange<T>((result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<double>), (result$[idx$2] as Output<double>));
  }
}

class QuantizeDownAndShrinkRange<T> {
  QuantizeDownAndShrinkRange(this.output, this.outputMin, this.outputMax);

  final Output<T> output;

  final Output<double> outputMin;

  final Output<double> outputMax;
}

QuantizeDownAndShrinkRangeOutput quantizeDownAndShrinkRange<T>(
    Output<T> input, Output<double> inputMin, Output<double> inputMax,
    {Graph graph, String operationName, DataType tinput, DataType outType}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QuantizeDownAndShrinkRange',
      operationName ??= graph._scope.uniqueName('QuantizeDownAndShrinkRange/'));
  op$.addInput(input);
  op$.addInput(inputMin);
  op$.addInput(inputMax);
  op$.setAttrType('Tinput', tinput);
  op$.setAttrType('out_type', outType);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return QuantizeDownAndShrinkRangeOutput<T>(
      graph,
      result$,
      (result$[0] as Output<T>),
      (result$[1] as Output<double>),
      (result$[2] as Output<double>));
}

class QuantizedMatMulOutput<T> {
  QuantizedMatMulOutput(
      this._graph, this.op, this.out, this.minOut, this.maxOut);

  final Graph _graph;

  Operation op;

  final Output<T> out;

  final Output<double> minOut;

  final Output<double> maxOut;

  QuantizedMatMul run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return QuantizedMatMul<T>((result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<double>), (result$[idx$2] as Output<double>));
  }
}

class QuantizedMatMul<T> {
  QuantizedMatMul(this.out, this.minOut, this.maxOut);

  final Output<T> out;

  final Output<double> minOut;

  final Output<double> maxOut;
}

QuantizedMatMulOutput quantizedMatMul<T>(
    Output<T> a,
    Output<T> b,
    Output<double> minA,
    Output<double> maxA,
    Output<double> minB,
    Output<double> maxB,
    {Graph graph,
    String operationName,
    DataType t1,
    DataType t2,
    DataType toutput: DataType.DT_QINT32,
    bool transposeA: false,
    bool transposeB: false,
    DataType tactivation: DataType.DT_QUINT8}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QuantizedMatMul',
      operationName ??= graph._scope.uniqueName('QuantizedMatMul/'));
  op$.addInput(a);
  op$.addInput(b);
  op$.addInput(minA);
  op$.addInput(maxA);
  op$.addInput(minB);
  op$.addInput(maxB);
  op$.setAttrType('T1', t1);
  op$.setAttrType('T2', t2);
  op$.setAttrType('Toutput', toutput);
  op$.setAttrBool('transpose_a', transposeA);
  op$.setAttrBool('transpose_b', transposeB);
  op$.setAttrType('Tactivation', tactivation);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return QuantizedMatMulOutput<T>(graph, result$, (result$[0] as Output<T>),
      (result$[1] as Output<double>), (result$[2] as Output<double>));
}

Output<T> cumprod<T>(Output<T> x, Output<T> axis,
    {Graph graph,
    String operationName,
    bool exclusive: false,
    bool reverse: false,
    DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Cumprod', operationName ??= graph._scope.uniqueName('Cumprod/'));
  op$.addInput(x);
  op$.addInput(axis);
  op$.setAttrBool('exclusive', exclusive);
  op$.setAttrBool('reverse', reverse);
  op$.setAttrType('Tidx', tidx);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> cumsum<T>(Output<T> x, Output<T> axis,
    {Graph graph,
    String operationName,
    bool exclusive: false,
    bool reverse: false,
    DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Cumsum', operationName ??= graph._scope.uniqueName('Cumsum/'));
  op$.addInput(x);
  op$.addInput(axis);
  op$.setAttrBool('exclusive', exclusive);
  op$.setAttrBool('reverse', reverse);
  op$.setAttrType('Tidx', tidx);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> bincount<T>(Output<int> arr, Output<int> size, Output<T> weights,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Bincount', operationName ??= graph._scope.uniqueName('Bincount/'));
  op$.addInput(arr);
  op$.addInput(size);
  op$.addInput(weights);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> cross<T>(Output<T> a, Output<T> b,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Cross', operationName ??= graph._scope.uniqueName('Cross/'));
  op$.addInput(a);
  op$.addInput(b);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> conj<T>(Output<T> input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Conj', operationName ??= graph._scope.uniqueName('Conj/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> angle<T>(Output<T> input,
    {Graph graph, String operationName, DataType tout: DataType.DT_FLOAT}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Angle', operationName ??= graph._scope.uniqueName('Angle/'));
  op$.addInput(input);
  op$.setAttrType('Tout', tout);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> imag<T>(Output<T> input,
    {Graph graph, String operationName, DataType tout: DataType.DT_FLOAT}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Imag', operationName ??= graph._scope.uniqueName('Imag/'));
  op$.addInput(input);
  op$.setAttrType('Tout', tout);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> linSpace<T>(Output<T> start, Output<T> stop, Output<T> num,
    {Graph graph, String operationName, DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'LinSpace', operationName ??= graph._scope.uniqueName('LinSpace/'));
  op$.addInput(start);
  op$.addInput(stop);
  op$.addInput(num);
  op$.setAttrType('Tidx', tidx);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> range<T>(Output<T> start, Output<T> limit, Output<T> delta,
    {Graph graph, String operationName, DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Range', operationName ??= graph._scope.uniqueName('Range/'));
  op$.addInput(start);
  op$.addInput(limit);
  op$.addInput(delta);
  op$.setAttrType('Tidx', tidx);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<bool> any<T>(Output<bool> input, Output<T> reductionIndices,
    {Graph graph,
    String operationName,
    bool keepDims: false,
    DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Any', operationName ??= graph._scope.uniqueName('Any/'));
  op$.addInput(input);
  op$.addInput(reductionIndices);
  op$.setAttrBool('keep_dims', keepDims);
  op$.setAttrType('Tidx', tidx);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
}

Output<T> dilation2DBackpropInput<T>(
    Output<T> input, Output<T> filter, Output<T> outBackprop,
    {Graph graph,
    String operationName,
    List<int> strides,
    List<int> rates,
    String padding}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('Dilation2DBackpropInput',
      operationName ??= graph._scope.uniqueName('Dilation2DBackpropInput/'));
  op$.addInput(input);
  op$.addInput(filter);
  op$.addInput(outBackprop);
  op$.setAttrIntList('strides', strides);
  op$.setAttrIntList('rates', rates);
  op$.setAttrString('padding', padding);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<bool> all<T>(Output<bool> input, Output<T> reductionIndices,
    {Graph graph,
    String operationName,
    bool keepDims: false,
    DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'All', operationName ??= graph._scope.uniqueName('All/'));
  op$.addInput(input);
  op$.addInput(reductionIndices);
  op$.setAttrBool('keep_dims', keepDims);
  op$.setAttrType('Tidx', tidx);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
}

Output<T> sparseSegmentSqrtNGrad<T>(Output<T> grad, Output<T> indices,
    Output<int> segmentIds, Output<int> outputDim0,
    {Graph graph, String operationName, DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseSegmentSqrtNGrad',
      operationName ??= graph._scope.uniqueName('SparseSegmentSqrtNGrad/'));
  op$.addInput(grad);
  op$.addInput(indices);
  op$.addInput(segmentIds);
  op$.addInput(outputDim0);
  op$.setAttrType('Tidx', tidx);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> sparseSegmentMean<T>(
    Output<T> data, Output<T> indices, Output<int> segmentIds,
    {Graph graph, String operationName, DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseSegmentMean',
      operationName ??= graph._scope.uniqueName('SparseSegmentMean/'));
  op$.addInput(data);
  op$.addInput(indices);
  op$.addInput(segmentIds);
  op$.setAttrType('Tidx', tidx);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> sparseSegmentSumWithNumSegments<T>(Output<T> data, Output<T> indices,
    Output<int> segmentIds, Output<T> numSegments,
    {Graph graph,
    String operationName,
    DataType tidx: DataType.DT_INT32,
    DataType tnumsegments: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SparseSegmentSumWithNumSegments',
      operationName ??=
          graph._scope.uniqueName('SparseSegmentSumWithNumSegments/'));
  op$.addInput(data);
  op$.addInput(indices);
  op$.addInput(segmentIds);
  op$.addInput(numSegments);
  op$.setAttrType('Tidx', tidx);
  op$.setAttrType('Tnumsegments', tnumsegments);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> unsortedSegmentProd<T>(
    Output<T> data, Output<T> segmentIds, Output<T> numSegments,
    {Graph graph,
    String operationName,
    DataType tindices,
    DataType tnumsegments: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('UnsortedSegmentProd',
      operationName ??= graph._scope.uniqueName('UnsortedSegmentProd/'));
  op$.addInput(data);
  op$.addInput(segmentIds);
  op$.addInput(numSegments);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrType('Tnumsegments', tnumsegments);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> unsortedSegmentMin<T>(
    Output<T> data, Output<T> segmentIds, Output<T> numSegments,
    {Graph graph,
    String operationName,
    DataType tindices,
    DataType tnumsegments: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('UnsortedSegmentMin',
      operationName ??= graph._scope.uniqueName('UnsortedSegmentMin/'));
  op$.addInput(data);
  op$.addInput(segmentIds);
  op$.addInput(numSegments);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrType('Tnumsegments', tnumsegments);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> unsortedSegmentMax<T>(
    Output<T> data, Output<T> segmentIds, Output<T> numSegments,
    {Graph graph,
    String operationName,
    DataType tindices,
    DataType tnumsegments: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('UnsortedSegmentMax',
      operationName ??= graph._scope.uniqueName('UnsortedSegmentMax/'));
  op$.addInput(data);
  op$.addInput(segmentIds);
  op$.addInput(numSegments);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrType('Tnumsegments', tnumsegments);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> unsortedSegmentSum<T>(
    Output<T> data, Output<T> segmentIds, Output<T> numSegments,
    {Graph graph,
    String operationName,
    DataType tindices,
    DataType tnumsegments: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('UnsortedSegmentSum',
      operationName ??= graph._scope.uniqueName('UnsortedSegmentSum/'));
  op$.addInput(data);
  op$.addInput(segmentIds);
  op$.addInput(numSegments);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrType('Tnumsegments', tnumsegments);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> segmentMin<T>(Output<T> data, Output<T> segmentIds,
    {Graph graph, String operationName, DataType tindices}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SegmentMin', operationName ??= graph._scope.uniqueName('SegmentMin/'));
  op$.addInput(data);
  op$.addInput(segmentIds);
  op$.setAttrType('Tindices', tindices);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> segmentMean<T>(Output<T> data, Output<T> segmentIds,
    {Graph graph, String operationName, DataType tindices}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SegmentMean', operationName ??= graph._scope.uniqueName('SegmentMean/'));
  op$.addInput(data);
  op$.addInput(segmentIds);
  op$.setAttrType('Tindices', tindices);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> segmentSum<T>(Output<T> data, Output<T> segmentIds,
    {Graph graph, String operationName, DataType tindices}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SegmentSum', operationName ??= graph._scope.uniqueName('SegmentSum/'));
  op$.addInput(data);
  op$.addInput(segmentIds);
  op$.setAttrType('Tindices', tindices);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> argMin<T>(Output<T> input, Output<T> dimension,
    {Graph graph,
    String operationName,
    DataType tidx: DataType.DT_INT32,
    DataType outputType: DataType.DT_INT64}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ArgMin', operationName ??= graph._scope.uniqueName('ArgMin/'));
  op$.addInput(input);
  op$.addInput(dimension);
  op$.setAttrType('Tidx', tidx);
  op$.setAttrType('output_type', outputType);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> sum<T>(Output<T> input, Output<T> reductionIndices,
    {Graph graph,
    String operationName,
    bool keepDims: false,
    DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Sum', operationName ??= graph._scope.uniqueName('Sum/'));
  op$.addInput(input);
  op$.addInput(reductionIndices);
  op$.setAttrBool('keep_dims', keepDims);
  op$.setAttrType('Tidx', tidx);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class FusedBatchNormOutput<T> {
  FusedBatchNormOutput(this._graph, this.op, this.y, this.batchMean,
      this.batchVariance, this.reserveSpace1, this.reserveSpace2);

  final Graph _graph;

  Operation op;

  final Output<T> y;

  final Output<T> batchMean;

  final Output<T> batchVariance;

  final Output<T> reserveSpace1;

  final Output<T> reserveSpace2;

  FusedBatchNorm run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var idx$3 = runner.fetch(op.name, index: 3);
    var idx$4 = runner.fetch(op.name, index: 4);
    var result$ = runner.run();
    return FusedBatchNorm<T>(
        (result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<T>),
        (result$[idx$2] as Output<T>),
        (result$[idx$3] as Output<T>),
        (result$[idx$4] as Output<T>));
  }
}

class FusedBatchNorm<T> {
  FusedBatchNorm(this.y, this.batchMean, this.batchVariance, this.reserveSpace1,
      this.reserveSpace2);

  final Output<T> y;

  final Output<T> batchMean;

  final Output<T> batchVariance;

  final Output<T> reserveSpace1;

  final Output<T> reserveSpace2;
}

FusedBatchNormOutput fusedBatchNorm<T>(Output<T> x, Output<T> scale,
    Output<T> offset, Output<T> mean, Output<T> variance,
    {Graph graph,
    String operationName,
    double epsilon: 0.00009999999747378752,
    String dataFormat: 'NHWC',
    bool isTraining: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('FusedBatchNorm',
      operationName ??= graph._scope.uniqueName('FusedBatchNorm/'));
  op$.addInput(x);
  op$.addInput(scale);
  op$.addInput(offset);
  op$.addInput(mean);
  op$.addInput(variance);
  op$.setAttrFloat('epsilon', epsilon);
  op$.setAttrString('data_format', dataFormat);
  op$.setAttrBool('is_training', isTraining);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return FusedBatchNormOutput<T>(
      graph,
      result$,
      (result$[0] as Output<T>),
      (result$[1] as Output<T>),
      (result$[2] as Output<T>),
      (result$[3] as Output<T>),
      (result$[4] as Output<T>));
}

Output<double> sparseMatMul<T>(Output<T> a, Output<T> b,
    {Graph graph,
    String operationName,
    bool transposeA: false,
    bool transposeB: false,
    bool aIsSparse: false,
    bool bIsSparse: false,
    DataType ta: DataType.DT_FLOAT,
    DataType tb: DataType.DT_FLOAT}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseMatMul',
      operationName ??= graph._scope.uniqueName('SparseMatMul/'));
  op$.addInput(a);
  op$.addInput(b);
  op$.setAttrBool('transpose_a', transposeA);
  op$.setAttrBool('transpose_b', transposeB);
  op$.setAttrBool('a_is_sparse', aIsSparse);
  op$.setAttrBool('b_is_sparse', bIsSparse);
  op$.setAttrType('Ta', ta);
  op$.setAttrType('Tb', tb);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

Output<T> select<T>(Output<bool> condition, Output<T> t, Output<T> e,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Select', operationName ??= graph._scope.uniqueName('Select/'));
  op$.addInput(condition);
  op$.addInput(t);
  op$.addInput(e);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<bool> logicalOr(Output<bool> x, Output<bool> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'LogicalOr', operationName ??= graph._scope.uniqueName('LogicalOr/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
}

Output<bool> logicalNot(Output<bool> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'LogicalNot', operationName ??= graph._scope.uniqueName('LogicalNot/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
}

Output<bool> equal<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Equal', operationName ??= graph._scope.uniqueName('Equal/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
}

Output<bool> greater<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Greater', operationName ??= graph._scope.uniqueName('Greater/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
}

Output<bool> lessEqual<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'LessEqual', operationName ??= graph._scope.uniqueName('LessEqual/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
}

Output<bool> less<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Less', operationName ??= graph._scope.uniqueName('Less/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
}

Output<T> segmentProd<T>(Output<T> data, Output<T> segmentIds,
    {Graph graph, String operationName, DataType tindices}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SegmentProd', operationName ??= graph._scope.uniqueName('SegmentProd/'));
  op$.addInput(data);
  op$.addInput(segmentIds);
  op$.setAttrType('Tindices', tindices);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> atan2<T>(Output<T> y, Output<T> x,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Atan2', operationName ??= graph._scope.uniqueName('Atan2/'));
  op$.addInput(y);
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> polygamma<T>(Output<T> a, Output<T> x,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Polygamma', operationName ??= graph._scope.uniqueName('Polygamma/'));
  op$.addInput(a);
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> igammac<T>(Output<T> a, Output<T> x,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Igammac', operationName ??= graph._scope.uniqueName('Igammac/'));
  op$.addInput(a);
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> truncateMod<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'TruncateMod', operationName ??= graph._scope.uniqueName('TruncateMod/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> floorMod<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'FloorMod', operationName ??= graph._scope.uniqueName('FloorMod/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> mod<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Mod', operationName ??= graph._scope.uniqueName('Mod/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> minimum<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Minimum', operationName ??= graph._scope.uniqueName('Minimum/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> sparseSegmentSqrtN<T>(
    Output<T> data, Output<T> indices, Output<int> segmentIds,
    {Graph graph, String operationName, DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseSegmentSqrtN',
      operationName ??= graph._scope.uniqueName('SparseSegmentSqrtN/'));
  op$.addInput(data);
  op$.addInput(indices);
  op$.addInput(segmentIds);
  op$.setAttrType('Tidx', tidx);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> maximum<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Maximum', operationName ??= graph._scope.uniqueName('Maximum/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> squaredDifference<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SquaredDifference',
      operationName ??= graph._scope.uniqueName('SquaredDifference/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> truncateDiv<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'TruncateDiv', operationName ??= graph._scope.uniqueName('TruncateDiv/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> floorDiv<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'FloorDiv', operationName ??= graph._scope.uniqueName('FloorDiv/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> divNoNan<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'DivNoNan', operationName ??= graph._scope.uniqueName('DivNoNan/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> div<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Div', operationName ??= graph._scope.uniqueName('Div/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<bool> inTopK<T>(Output<double> predictions, Output<T> targets,
    {Graph graph, String operationName, int k}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'InTopK', operationName ??= graph._scope.uniqueName('InTopK/'));
  op$.addInput(predictions);
  op$.addInput(targets);
  op$.setAttrInt('k', k);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
}

Output<T> sub<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Sub', operationName ??= graph._scope.uniqueName('Sub/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> real<T>(Output<T> input,
    {Graph graph, String operationName, DataType tout: DataType.DT_FLOAT}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Real', operationName ??= graph._scope.uniqueName('Real/'));
  op$.addInput(input);
  op$.setAttrType('Tout', tout);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> rint<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Rint', operationName ??= graph._scope.uniqueName('Rint/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> floor<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Floor', operationName ??= graph._scope.uniqueName('Floor/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> ceil<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Ceil', operationName ??= graph._scope.uniqueName('Ceil/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<bool> isInf<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'IsInf', operationName ??= graph._scope.uniqueName('IsInf/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
}

Output<T> besselI1e<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BesselI1e', operationName ??= graph._scope.uniqueName('BesselI1e/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output groupByWindowDataset<T>(
    Output inputDataset,
    List<Output<List<T>>> keyFuncOtherArguments,
    List<Output<List<T>>> reduceFuncOtherArguments,
    List<Output<List<T>>> windowSizeFuncOtherArguments,
    {Graph graph,
    String operationName,
    Func keyFunc,
    Func reduceFunc,
    Func windowSizeFunc,
    List<DataType> tkeyFuncOtherArguments,
    List<DataType> treduceFuncOtherArguments,
    List<DataType> twindowSizeFuncOtherArguments,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('GroupByWindowDataset',
      operationName ??= graph._scope.uniqueName('GroupByWindowDataset/'));
  op$.addInput(inputDataset);
  op$.addInputList(keyFuncOtherArguments);
  op$.addInputList(reduceFuncOtherArguments);
  op$.addInputList(windowSizeFuncOtherArguments);
  op$.setAttrFunc('key_func', keyFunc);
  op$.setAttrFunc('reduce_func', reduceFunc);
  op$.setAttrFunc('window_size_func', windowSizeFunc);
  op$.setAttrTypeList('Tkey_func_other_arguments', tkeyFuncOtherArguments);
  op$.setAttrTypeList(
      'Treduce_func_other_arguments', treduceFuncOtherArguments);
  op$.setAttrTypeList(
      'Twindow_size_func_other_arguments', twindowSizeFuncOtherArguments);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<T> besselI0e<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BesselI0e', operationName ??= graph._scope.uniqueName('BesselI0e/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> padV2<T>(
    Output<T> input, Output<T> paddings, Output<T> constantValues,
    {Graph graph,
    String operationName,
    DataType tpaddings: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'PadV2', operationName ??= graph._scope.uniqueName('PadV2/'));
  op$.addInput(input);
  op$.addInput(paddings);
  op$.addInput(constantValues);
  op$.setAttrType('Tpaddings', tpaddings);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> cos<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Cos', operationName ??= graph._scope.uniqueName('Cos/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class FusedBatchNormV2Output<T> {
  FusedBatchNormV2Output(this._graph, this.op, this.y, this.batchMean,
      this.batchVariance, this.reserveSpace1, this.reserveSpace2);

  final Graph _graph;

  Operation op;

  final Output<T> y;

  final Output<T> batchMean;

  final Output<T> batchVariance;

  final Output<T> reserveSpace1;

  final Output<T> reserveSpace2;

  FusedBatchNormV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var idx$3 = runner.fetch(op.name, index: 3);
    var idx$4 = runner.fetch(op.name, index: 4);
    var result$ = runner.run();
    return FusedBatchNormV2<T>(
        (result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<T>),
        (result$[idx$2] as Output<T>),
        (result$[idx$3] as Output<T>),
        (result$[idx$4] as Output<T>));
  }
}

class FusedBatchNormV2<T> {
  FusedBatchNormV2(this.y, this.batchMean, this.batchVariance,
      this.reserveSpace1, this.reserveSpace2);

  final Output<T> y;

  final Output<T> batchMean;

  final Output<T> batchVariance;

  final Output<T> reserveSpace1;

  final Output<T> reserveSpace2;
}

FusedBatchNormV2Output fusedBatchNormV2<T>(Output<T> x, Output<T> scale,
    Output<T> offset, Output<T> mean, Output<T> variance,
    {Graph graph,
    String operationName,
    DataType u,
    double epsilon: 0.00009999999747378752,
    String dataFormat: 'NHWC',
    bool isTraining: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('FusedBatchNormV2',
      operationName ??= graph._scope.uniqueName('FusedBatchNormV2/'));
  op$.addInput(x);
  op$.addInput(scale);
  op$.addInput(offset);
  op$.addInput(mean);
  op$.addInput(variance);
  op$.setAttrType('U', u);
  op$.setAttrFloat('epsilon', epsilon);
  op$.setAttrString('data_format', dataFormat);
  op$.setAttrBool('is_training', isTraining);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return FusedBatchNormV2Output<T>(
      graph,
      result$,
      (result$[0] as Output<T>),
      (result$[1] as Output<T>),
      (result$[2] as Output<T>),
      (result$[3] as Output<T>),
      (result$[4] as Output<T>));
}

Output<T> sin<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Sin', operationName ??= graph._scope.uniqueName('Sin/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> digamma<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Digamma', operationName ??= graph._scope.uniqueName('Digamma/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class RequantizationRangeOutput<T> {
  RequantizationRangeOutput(
      this._graph, this.op, this.outputMin, this.outputMax);

  final Graph _graph;

  Operation op;

  final Output<double> outputMin;

  final Output<double> outputMax;

  RequantizationRange run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return RequantizationRange<T>(
        (result$[idx$0] as Output<double>), (result$[idx$1] as Output<double>));
  }
}

class RequantizationRange<T> {
  RequantizationRange(this.outputMin, this.outputMax);

  final Output<double> outputMin;

  final Output<double> outputMax;
}

RequantizationRangeOutput requantizationRange<T>(
    Output<T> input, Output<double> inputMin, Output<double> inputMax,
    {Graph graph, String operationName, DataType tinput}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('RequantizationRange',
      operationName ??= graph._scope.uniqueName('RequantizationRange/'));
  op$.addInput(input);
  op$.addInput(inputMin);
  op$.addInput(inputMax);
  op$.setAttrType('Tinput', tinput);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return RequantizationRangeOutput<T>(graph, result$,
      (result$[0] as Output<double>), (result$[1] as Output<double>));
}

Output<T> readVariableOp<T>(Output resource,
    {Graph graph, String operationName, DataType dtype}) {
  dtype ??= inferType(resource);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ReadVariableOp',
      operationName ??= graph._scope.uniqueName('ReadVariableOp/'));
  op$.addInput(resource);
  op$.setAttrType('dtype', dtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> lgamma<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Lgamma', operationName ??= graph._scope.uniqueName('Lgamma/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class BoostedTreesSerializeEnsembleOutput {
  BoostedTreesSerializeEnsembleOutput(
      this._graph, this.op, this.stampToken, this.treeEnsembleSerialized);

  final Graph _graph;

  Operation op;

  final Output<int> stampToken;

  final Output<String> treeEnsembleSerialized;

  BoostedTreesSerializeEnsemble run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return BoostedTreesSerializeEnsemble(
        (result$[idx$0] as Output<int>), (result$[idx$1] as Output<String>));
  }
}

class BoostedTreesSerializeEnsemble {
  BoostedTreesSerializeEnsemble(this.stampToken, this.treeEnsembleSerialized);

  final Output<int> stampToken;

  final Output<String> treeEnsembleSerialized;
}

BoostedTreesSerializeEnsembleOutput boostedTreesSerializeEnsemble(
    Output treeEnsembleHandle,
    {Graph graph,
    String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BoostedTreesSerializeEnsemble',
      operationName ??=
          graph._scope.uniqueName('BoostedTreesSerializeEnsemble/'));
  op$.addInput(treeEnsembleHandle);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return BoostedTreesSerializeEnsembleOutput(graph, result$,
      (result$[0] as Output<int>), (result$[1] as Output<String>));
}

Output<T> acosh<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Acosh', operationName ??= graph._scope.uniqueName('Acosh/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation resourceScatterDiv<T>(
    Output resource, Output<T> indices, Output<T> updates,
    {Graph graph, String operationName, DataType dtype, DataType tindices}) {
  dtype ??= inferType(resource);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceScatterDiv',
      operationName ??= graph._scope.uniqueName('ResourceScatterDiv/'));
  op$.addInput(resource);
  op$.addInput(indices);
  op$.addInput(updates);
  op$.setAttrType('dtype', dtype);
  op$.setAttrType('Tindices', tindices);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// This operation has no outputs.
Operation resourceApplyProximalAdagrad<T>(Output var$, Output accum,
    Output<T> lr, Output<T> l1, Output<T> l2, Output<T> grad,
    {Graph graph, String operationName, bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ResourceApplyProximalAdagrad',
      operationName ??=
          graph._scope.uniqueName('ResourceApplyProximalAdagrad/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(lr);
  op$.addInput(l1);
  op$.addInput(l2);
  op$.addInput(grad);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> asin<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Asin', operationName ??= graph._scope.uniqueName('Asin/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> log1p<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Log1p', operationName ??= graph._scope.uniqueName('Log1p/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> conv2DBackpropInput<T>(
    Output<int> inputSizes, Output<T> filter, Output<T> outBackprop,
    {Graph graph,
    String operationName,
    List<int> strides,
    bool useCudnnOnGpu: true,
    String padding,
    String dataFormat: 'NHWC',
    List<int> dilations}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('Conv2DBackpropInput',
      operationName ??= graph._scope.uniqueName('Conv2DBackpropInput/'));
  op$.addInput(inputSizes);
  op$.addInput(filter);
  op$.addInput(outBackprop);
  op$.setAttrIntList('strides', strides);
  op$.setAttrBool('use_cudnn_on_gpu', useCudnnOnGpu);
  op$.setAttrString('padding', padding);
  op$.setAttrString('data_format', dataFormat);
  op$.setAttrIntList('dilations', dilations);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> expm1<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Expm1', operationName ??= graph._scope.uniqueName('Expm1/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> exp<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Exp', operationName ??= graph._scope.uniqueName('Exp/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation deserializeIterator(Output resourceHandle, Output serialized,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DeserializeIterator',
      operationName ??= graph._scope.uniqueName('DeserializeIterator/'));
  op$.addInput(resourceHandle);
  op$.addInput(serialized);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> rsqrtGrad<T>(Output<T> y, Output<T> dy,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RsqrtGrad', operationName ??= graph._scope.uniqueName('RsqrtGrad/'));
  op$.addInput(y);
  op$.addInput(dy);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// An op that receives embedding activations on the TPU.
/// The TPU system performs the embedding lookups and aggregations specified by
/// the arguments to TPUEmbeddingEnqueueSparseBatch. The results of these
/// aggregations are visible to the Tensorflow Graph as the outputs of a
/// TPUEmbeddingDequeueActivations Op. This op returns a list containing one
/// Tensor of activations per table specified in the model. There can be at most
/// one ReceieveActivations op in the TPU graph.
/// This operation has one output: A TensorList of embedding activations containing one Tensor per
/// embedding table in the model.
/// attr [numTables]: The number of output activation tensors, equal to the number of
/// embedding tables in the model.
/// attr [tpuEmbeddingConfig]: Serialized TPUEmbeddingConfiguration proto.
Output<double> tPUEmbeddingReceiveActivations(
    {Graph graph,
    String operationName,
    int numTables,
    String tpuEmbeddingConfig}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'TPUEmbeddingReceiveActivations',
      operationName ??=
          graph._scope.uniqueName('TPUEmbeddingReceiveActivations/'));
  op$.setAttrInt('num_tables', numTables);
  op$.setAttrString('tpu_embedding_config', tpuEmbeddingConfig);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

/// This operation has no outputs.
Operation initializeTableFromTextFile(
    Output<String> tableHandle, Output<String> filename,
    {Graph graph,
    String operationName,
    int keyIndex,
    int valueIndex,
    int vocabSize: -1,
    String delimiter: '	'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'InitializeTableFromTextFile',
      operationName ??=
          graph._scope.uniqueName('InitializeTableFromTextFile/'));
  op$.addInput(tableHandle);
  op$.addInput(filename);
  op$.setAttrInt('key_index', keyIndex);
  op$.setAttrInt('value_index', valueIndex);
  op$.setAttrInt('vocab_size', vocabSize);
  op$.setAttrString('delimiter', delimiter);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> sqrtGrad<T>(Output<T> y, Output<T> dy,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SqrtGrad', operationName ??= graph._scope.uniqueName('SqrtGrad/'));
  op$.addInput(y);
  op$.addInput(dy);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> invGrad<T>(Output<T> y, Output<T> dy,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'InvGrad', operationName ??= graph._scope.uniqueName('InvGrad/'));
  op$.addInput(y);
  op$.addInput(dy);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> inv<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Inv', operationName ??= graph._scope.uniqueName('Inv/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

@Deprecated('DEPRECATED at GraphDef version 14: Use MatrixSetDiag')
Output<T> batchMatrixSetDiag<T>(Output<T> input, Output<T> diagonal,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchMatrixSetDiag',
      operationName ??= graph._scope.uniqueName('BatchMatrixSetDiag/'));
  op$.addInput(input);
  op$.addInput(diagonal);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> rsqrt<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Rsqrt', operationName ??= graph._scope.uniqueName('Rsqrt/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class QuantizedInstanceNormOutput<T> {
  QuantizedInstanceNormOutput(
      this._graph, this.op, this.y, this.yMin, this.yMax);

  final Graph _graph;

  Operation op;

  final Output<T> y;

  final Output<double> yMin;

  final Output<double> yMax;

  QuantizedInstanceNorm run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return QuantizedInstanceNorm<T>((result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<double>), (result$[idx$2] as Output<double>));
  }
}

class QuantizedInstanceNorm<T> {
  QuantizedInstanceNorm(this.y, this.yMin, this.yMax);

  final Output<T> y;

  final Output<double> yMin;

  final Output<double> yMax;
}

QuantizedInstanceNormOutput quantizedInstanceNorm<T>(
    Output<T> x, Output<double> xMin, Output<double> xMax,
    {Graph graph,
    String operationName,
    bool outputRangeGiven: false,
    double givenYMin: 0.0,
    double givenYMax: 0.0,
    double varianceEpsilon: 0.000009999999747378752,
    double minSeparation: 0.0010000000474974513}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QuantizedInstanceNorm',
      operationName ??= graph._scope.uniqueName('QuantizedInstanceNorm/'));
  op$.addInput(x);
  op$.addInput(xMin);
  op$.addInput(xMax);
  op$.setAttrBool('output_range_given', outputRangeGiven);
  op$.setAttrFloat('given_y_min', givenYMin);
  op$.setAttrFloat('given_y_max', givenYMax);
  op$.setAttrFloat('variance_epsilon', varianceEpsilon);
  op$.setAttrFloat('min_separation', minSeparation);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return QuantizedInstanceNormOutput<T>(
      graph,
      result$,
      (result$[0] as Output<T>),
      (result$[1] as Output<double>),
      (result$[2] as Output<double>));
}

Output<T> depthToSpace<T>(Output<T> input,
    {Graph graph,
    String operationName,
    int blockSize,
    String dataFormat: 'NHWC'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DepthToSpace',
      operationName ??= graph._scope.uniqueName('DepthToSpace/'));
  op$.addInput(input);
  op$.setAttrInt('block_size', blockSize);
  op$.setAttrString('data_format', dataFormat);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> spaceToDepth<T>(Output<T> input,
    {Graph graph,
    String operationName,
    int blockSize,
    String dataFormat: 'NHWC'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SpaceToDepth',
      operationName ??= graph._scope.uniqueName('SpaceToDepth/'));
  op$.addInput(input);
  op$.setAttrInt('block_size', blockSize);
  op$.setAttrString('data_format', dataFormat);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> batchToSpace<T>(Output<T> input, Output<T> crops,
    {Graph graph,
    String operationName,
    int blockSize,
    DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchToSpace',
      operationName ??= graph._scope.uniqueName('BatchToSpace/'));
  op$.addInput(input);
  op$.addInput(crops);
  op$.setAttrInt('block_size', blockSize);
  op$.setAttrType('Tidx', tidx);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> squeeze<T>(Output<T> input,
    {Graph graph, String operationName, List<int> squeezeDims}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Squeeze', operationName ??= graph._scope.uniqueName('Squeeze/'));
  op$.addInput(input);
  op$.setAttrIntList('squeeze_dims', squeezeDims);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> expandDims<T>(Output<T> input, Output<T> dim,
    {Graph graph, String operationName, DataType tdim: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ExpandDims', operationName ??= graph._scope.uniqueName('ExpandDims/'));
  op$.addInput(input);
  op$.addInput(dim);
  op$.setAttrType('Tdim', tdim);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> placeholderWithDefault<T>(Output<T> input,
    {Graph graph, String operationName, DataType dtype, Shape shape}) {
  dtype ??= inferType(input);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('PlaceholderWithDefault',
      operationName ??= graph._scope.uniqueName('PlaceholderWithDefault/'));
  op$.addInput(input);
  op$.setAttrType('dtype', dtype);
  op$.setAttrShape('shape', shape);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> applyMomentum<T>(Output<T> var$, Output<T> accum, Output<T> lr,
    Output<T> grad, Output<T> momentum,
    {Graph graph,
    String operationName,
    bool useLocking: false,
    bool useNesterov: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ApplyMomentum',
      operationName ??= graph._scope.uniqueName('ApplyMomentum/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(lr);
  op$.addInput(grad);
  op$.addInput(momentum);
  op$.setAttrBool('use_locking', useLocking);
  op$.setAttrBool('use_nesterov', useNesterov);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> acos<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Acos', operationName ??= graph._scope.uniqueName('Acos/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> placeholder<T>(
    {Graph graph,
    String operationName,
    @required DataType dtype,
    Shape shape}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Placeholder', operationName ??= graph._scope.uniqueName('Placeholder/'));
  op$.setAttrType('dtype', dtype);
  op$.setAttrShape('shape', shape);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class QuantizedMaxPoolOutput<T> {
  QuantizedMaxPoolOutput(
      this._graph, this.op, this.output, this.minOutput, this.maxOutput);

  final Graph _graph;

  Operation op;

  final Output<T> output;

  final Output<double> minOutput;

  final Output<double> maxOutput;

  QuantizedMaxPool run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return QuantizedMaxPool<T>((result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<double>), (result$[idx$2] as Output<double>));
  }
}

class QuantizedMaxPool<T> {
  QuantizedMaxPool(this.output, this.minOutput, this.maxOutput);

  final Output<T> output;

  final Output<double> minOutput;

  final Output<double> maxOutput;
}

QuantizedMaxPoolOutput quantizedMaxPool<T>(
    Output<T> input, Output<double> minInput, Output<double> maxInput,
    {Graph graph,
    String operationName,
    List<int> ksize,
    List<int> strides,
    String padding}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QuantizedMaxPool',
      operationName ??= graph._scope.uniqueName('QuantizedMaxPool/'));
  op$.addInput(input);
  op$.addInput(minInput);
  op$.addInput(maxInput);
  op$.setAttrIntList('ksize', ksize);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return QuantizedMaxPoolOutput<T>(graph, result$, (result$[0] as Output<T>),
      (result$[1] as Output<double>), (result$[2] as Output<double>));
}

Output<T> mirrorPadGrad<T>(Output<T> input, Output<T> paddings,
    {Graph graph,
    String operationName,
    DataType tpaddings: DataType.DT_INT32,
    String mode}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MirrorPadGrad',
      operationName ??= graph._scope.uniqueName('MirrorPadGrad/'));
  op$.addInput(input);
  op$.addInput(paddings);
  op$.setAttrType('Tpaddings', tpaddings);
  op$.setAttrString('mode', mode);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class TensorArrayV3Output {
  TensorArrayV3Output(this._graph, this.op, this.handle, this.flow);

  final Graph _graph;

  Operation op;

  final Output handle;

  final Output<double> flow;

  TensorArrayV3 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return TensorArrayV3(
        (result$[idx$0] as Output), (result$[idx$1] as Output<double>));
  }
}

class TensorArrayV3 {
  TensorArrayV3(this.handle, this.flow);

  final Output handle;

  final Output<double> flow;
}

TensorArrayV3Output tensorArrayV3(Output<int> size,
    {Graph graph,
    String operationName,
    DataType dtype,
    Shape elementShape,
    bool dynamicSize: false,
    bool clearAfterRead: true,
    bool identicalElementShapes: false,
    String tensorArrayName}) {
  dtype ??= inferType(size);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayV3',
      operationName ??= graph._scope.uniqueName('TensorArrayV3/'));
  op$.addInput(size);
  op$.setAttrType('dtype', dtype);
  op$.setAttrShape('element_shape', elementShape);
  op$.setAttrBool('dynamic_size', dynamicSize);
  op$.setAttrBool('clear_after_read', clearAfterRead);
  op$.setAttrBool('identical_element_shapes', identicalElementShapes);
  op$.setAttrString('tensor_array_name', tensorArrayName);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return TensorArrayV3Output(
      graph, result$, (result$[0] as Output), (result$[1] as Output<double>));
}

Output<T> matrixSolveLs<T>(
    Output<T> matrix, Output<T> rhs, Output l2Regularizer,
    {Graph graph, String operationName, bool fast: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MatrixSolveLs',
      operationName ??= graph._scope.uniqueName('MatrixSolveLs/'));
  op$.addInput(matrix);
  op$.addInput(rhs);
  op$.addInput(l2Regularizer);
  op$.setAttrBool('fast', fast);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> mirrorPad<T>(Output<T> input, Output<T> paddings,
    {Graph graph,
    String operationName,
    DataType tpaddings: DataType.DT_INT32,
    String mode}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'MirrorPad', operationName ??= graph._scope.uniqueName('MirrorPad/'));
  op$.addInput(input);
  op$.addInput(paddings);
  op$.setAttrType('Tpaddings', tpaddings);
  op$.setAttrString('mode', mode);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class CudnnRNNV2Output<T> {
  CudnnRNNV2Output(this._graph, this.op, this.output, this.outputH,
      this.outputC, this.reserveSpace, this.hostReserved);

  final Graph _graph;

  Operation op;

  final Output<T> output;

  final Output<T> outputH;

  final Output<T> outputC;

  final Output<T> reserveSpace;

  final Output hostReserved;

  CudnnRNNV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var idx$3 = runner.fetch(op.name, index: 3);
    var idx$4 = runner.fetch(op.name, index: 4);
    var result$ = runner.run();
    return CudnnRNNV2<T>(
        (result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<T>),
        (result$[idx$2] as Output<T>),
        (result$[idx$3] as Output<T>),
        (result$[idx$4] as Output));
  }
}

class CudnnRNNV2<T> {
  CudnnRNNV2(this.output, this.outputH, this.outputC, this.reserveSpace,
      this.hostReserved);

  final Output<T> output;

  final Output<T> outputH;

  final Output<T> outputC;

  final Output<T> reserveSpace;

  final Output hostReserved;
}

CudnnRNNV2Output cudnnRNNV2<T>(
    Output<T> input, Output<T> inputH, Output<T> inputC, Output<T> params,
    {Graph graph,
    String operationName,
    String rnnMode: 'lstm',
    String inputMode: 'linear_input',
    String direction: 'unidirectional',
    double dropout: 0.0,
    int seed: 0,
    int seed2: 0,
    bool isTraining: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'CudnnRNNV2', operationName ??= graph._scope.uniqueName('CudnnRNNV2/'));
  op$.addInput(input);
  op$.addInput(inputH);
  op$.addInput(inputC);
  op$.addInput(params);
  op$.setAttrString('rnn_mode', rnnMode);
  op$.setAttrString('input_mode', inputMode);
  op$.setAttrString('direction', direction);
  op$.setAttrFloat('dropout', dropout);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
  op$.setAttrBool('is_training', isTraining);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return CudnnRNNV2Output<T>(
      graph,
      result$,
      (result$[0] as Output<T>),
      (result$[1] as Output<T>),
      (result$[2] as Output<T>),
      (result$[3] as Output<T>),
      (result$[4] as Output));
}

Output<T> pad<T>(Output<T> input, Output<T> paddings,
    {Graph graph,
    String operationName,
    DataType tpaddings: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Pad', operationName ??= graph._scope.uniqueName('Pad/'));
  op$.addInput(input);
  op$.addInput(paddings);
  op$.setAttrType('Tpaddings', tpaddings);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class BroadcastGradientArgsOutput<T> {
  BroadcastGradientArgsOutput(this._graph, this.op, this.r0, this.r1);

  final Graph _graph;

  Operation op;

  final Output<T> r0;

  final Output<T> r1;

  BroadcastGradientArgs run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return BroadcastGradientArgs<T>(
        (result$[idx$0] as Output<T>), (result$[idx$1] as Output<T>));
  }
}

class BroadcastGradientArgs<T> {
  BroadcastGradientArgs(this.r0, this.r1);

  final Output<T> r0;

  final Output<T> r1;
}

BroadcastGradientArgsOutput broadcastGradientArgs<T>(Output<T> s0, Output<T> s1,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BroadcastGradientArgs',
      operationName ??= graph._scope.uniqueName('BroadcastGradientArgs/'));
  op$.addInput(s0);
  op$.addInput(s1);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return BroadcastGradientArgsOutput<T>(
      graph, result$, (result$[0] as Output<T>), (result$[1] as Output<T>));
}

Output<T> broadcastArgs<T>(Output<T> s0, Output<T> s1,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BroadcastArgs',
      operationName ??= graph._scope.uniqueName('BroadcastArgs/'));
  op$.addInput(s0);
  op$.addInput(s1);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class QuantizedRelu6Output<T> {
  QuantizedRelu6Output(this._graph, this.op, this.activations,
      this.minActivations, this.maxActivations);

  final Graph _graph;

  Operation op;

  final Output<T> activations;

  final Output<double> minActivations;

  final Output<double> maxActivations;

  QuantizedRelu6 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return QuantizedRelu6<T>((result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<double>), (result$[idx$2] as Output<double>));
  }
}

class QuantizedRelu6<T> {
  QuantizedRelu6(this.activations, this.minActivations, this.maxActivations);

  final Output<T> activations;

  final Output<double> minActivations;

  final Output<double> maxActivations;
}

QuantizedRelu6Output quantizedRelu6<T>(
    Output<T> features, Output<double> minFeatures, Output<double> maxFeatures,
    {Graph graph,
    String operationName,
    DataType tinput,
    DataType outType: DataType.DT_QUINT8}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QuantizedRelu6',
      operationName ??= graph._scope.uniqueName('QuantizedRelu6/'));
  op$.addInput(features);
  op$.addInput(minFeatures);
  op$.addInput(maxFeatures);
  op$.setAttrType('Tinput', tinput);
  op$.setAttrType('out_type', outType);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return QuantizedRelu6Output<T>(graph, result$, (result$[0] as Output<T>),
      (result$[1] as Output<double>), (result$[2] as Output<double>));
}

/// This operation has no outputs.
Operation resourceStridedSliceAssign<T>(Output ref, Output<T> begin,
    Output<T> end, Output<T> strides, Output<T> value,
    {Graph graph,
    String operationName,
    DataType index,
    int beginMask: 0,
    int endMask: 0,
    int ellipsisMask: 0,
    int newAxisMask: 0,
    int shrinkAxisMask: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceStridedSliceAssign',
      operationName ??= graph._scope.uniqueName('ResourceStridedSliceAssign/'));
  op$.addInput(ref);
  op$.addInput(begin);
  op$.addInput(end);
  op$.addInput(strides);
  op$.addInput(value);
  op$.setAttrType('Index', index);
  op$.setAttrInt('begin_mask', beginMask);
  op$.setAttrInt('end_mask', endMask);
  op$.setAttrInt('ellipsis_mask', ellipsisMask);
  op$.setAttrInt('new_axis_mask', newAxisMask);
  op$.setAttrInt('shrink_axis_mask', shrinkAxisMask);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// This operation has no outputs.
Operation resourceApplyFtrl<T>(Output var$, Output accum, Output linear,
    Output<T> grad, Output<T> lr, Output<T> l1, Output<T> l2, Output<T> lrPower,
    {Graph graph, String operationName, bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceApplyFtrl',
      operationName ??= graph._scope.uniqueName('ResourceApplyFtrl/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(linear);
  op$.addInput(grad);
  op$.addInput(lr);
  op$.addInput(l1);
  op$.addInput(l2);
  op$.addInput(lrPower);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> stridedSliceGrad<T>(Output<T> shape, Output<T> begin, Output<T> end,
    Output<T> strides, Output<T> dy,
    {Graph graph,
    String operationName,
    DataType index,
    int beginMask: 0,
    int endMask: 0,
    int ellipsisMask: 0,
    int newAxisMask: 0,
    int shrinkAxisMask: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StridedSliceGrad',
      operationName ??= graph._scope.uniqueName('StridedSliceGrad/'));
  op$.addInput(shape);
  op$.addInput(begin);
  op$.addInput(end);
  op$.addInput(strides);
  op$.addInput(dy);
  op$.setAttrType('Index', index);
  op$.setAttrInt('begin_mask', beginMask);
  op$.setAttrInt('end_mask', endMask);
  op$.setAttrInt('ellipsis_mask', ellipsisMask);
  op$.setAttrInt('new_axis_mask', newAxisMask);
  op$.setAttrInt('shrink_axis_mask', shrinkAxisMask);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> stridedSlice<T>(
    Output<T> input, Output<T> begin, Output<T> end, Output<T> strides,
    {Graph graph,
    String operationName,
    DataType index,
    int beginMask: 0,
    int endMask: 0,
    int ellipsisMask: 0,
    int newAxisMask: 0,
    int shrinkAxisMask: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StridedSlice',
      operationName ??= graph._scope.uniqueName('StridedSlice/'));
  op$.addInput(input);
  op$.addInput(begin);
  op$.addInput(end);
  op$.addInput(strides);
  op$.setAttrType('Index', index);
  op$.setAttrInt('begin_mask', beginMask);
  op$.setAttrInt('end_mask', endMask);
  op$.setAttrInt('ellipsis_mask', ellipsisMask);
  op$.setAttrInt('new_axis_mask', newAxisMask);
  op$.setAttrInt('shrink_axis_mask', shrinkAxisMask);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<String> lMDBReader(
    {Graph graph, String operationName, String container, String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'LMDBReader', operationName ??= graph._scope.uniqueName('LMDBReader/'));
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<T> slice<T>(Output<T> input, Output<T> begin, Output<T> size,
    {Graph graph, String operationName, DataType index}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Slice', operationName ??= graph._scope.uniqueName('Slice/'));
  op$.addInput(input);
  op$.addInput(begin);
  op$.addInput(size);
  op$.setAttrType('Index', index);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class UniqueV2Output<T> {
  UniqueV2Output(this._graph, this.op, this.y, this.idx);

  final Graph _graph;

  Operation op;

  final Output<T> y;

  final Output<T> idx;

  UniqueV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return UniqueV2<T>(
        (result$[idx$0] as Output<T>), (result$[idx$1] as Output<T>));
  }
}

class UniqueV2<T> {
  UniqueV2(this.y, this.idx);

  final Output<T> y;

  final Output<T> idx;
}

UniqueV2Output uniqueV2<T>(Output<T> x, Output<T> axis,
    {Graph graph,
    String operationName,
    DataType taxis: DataType.DT_INT64,
    DataType outIdx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'UniqueV2', operationName ??= graph._scope.uniqueName('UniqueV2/'));
  op$.addInput(x);
  op$.addInput(axis);
  op$.setAttrType('Taxis', taxis);
  op$.setAttrType('out_idx', outIdx);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return UniqueV2Output<T>(
      graph, result$, (result$[0] as Output<T>), (result$[1] as Output<T>));
}

Output<T> scatterNd<T>(Output<T> indices, Output<T> updates, Output<T> shape,
    {Graph graph, String operationName, DataType tindices}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ScatterNd', operationName ??= graph._scope.uniqueName('ScatterNd/'));
  op$.addInput(indices);
  op$.addInput(updates);
  op$.addInput(shape);
  op$.setAttrType('Tindices', tindices);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class UniqueOutput<T> {
  UniqueOutput(this._graph, this.op, this.y, this.idx);

  final Graph _graph;

  Operation op;

  final Output<T> y;

  final Output<T> idx;

  Unique run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return Unique<T>(
        (result$[idx$0] as Output<T>), (result$[idx$1] as Output<T>));
  }
}

class Unique<T> {
  Unique(this.y, this.idx);

  final Output<T> y;

  final Output<T> idx;
}

UniqueOutput unique<T>(Output<T> x,
    {Graph graph, String operationName, DataType outIdx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Unique', operationName ??= graph._scope.uniqueName('Unique/'));
  op$.addInput(x);
  op$.setAttrType('out_idx', outIdx);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return UniqueOutput<T>(
      graph, result$, (result$[0] as Output<T>), (result$[1] as Output<T>));
}

Output<T> broadcastTo<T>(Output<T> input, Output<T> shape,
    {Graph graph, String operationName, DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BroadcastTo', operationName ??= graph._scope.uniqueName('BroadcastTo/'));
  op$.addInput(input);
  op$.addInput(shape);
  op$.setAttrType('Tidx', tidx);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> checkNumerics<T>(Output<T> tensor,
    {Graph graph, String operationName, String message}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CheckNumerics',
      operationName ??= graph._scope.uniqueName('CheckNumerics/'));
  op$.addInput(tensor);
  op$.setAttrString('message', message);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> debugGradientIdentity<T>(Output<T> input,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DebugGradientIdentity',
      operationName ??= graph._scope.uniqueName('DebugGradientIdentity/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output zipDataset(List<Output> inputDatasets,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes,
    int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ZipDataset', operationName ??= graph._scope.uniqueName('ZipDataset/'));
  op$.addInputList(inputDatasets);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
  op$.setAttrInt('N', n);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<T> round<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Round', operationName ??= graph._scope.uniqueName('Round/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<bool> optionalHasValue(Output optional,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('OptionalHasValue',
      operationName ??= graph._scope.uniqueName('OptionalHasValue/'));
  op$.addInput(optional);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
}

Output<List<T>> identityN<T>(List<Output<List<T>>> input,
    {Graph graph, String operationName, List<DataType> t}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'IdentityN', operationName ??= graph._scope.uniqueName('IdentityN/'));
  op$.addInputList(input);
  op$.setAttrTypeList('T', t);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

Output<T> sparseTensorDenseAdd<T>(
    Output<T> aIndices, Output<T> aValues, Output<T> aShape, Output<T> b,
    {Graph graph, String operationName, DataType tindices}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseTensorDenseAdd',
      operationName ??= graph._scope.uniqueName('SparseTensorDenseAdd/'));
  op$.addInput(aIndices);
  op$.addInput(aValues);
  op$.addInput(aShape);
  op$.addInput(b);
  op$.setAttrType('Tindices', tindices);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> snapshot<T>(Output<T> input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Snapshot', operationName ??= graph._scope.uniqueName('Snapshot/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class FakeQuantWithMinMaxVarsGradientOutput {
  FakeQuantWithMinMaxVarsGradientOutput(this._graph, this.op,
      this.backpropsWrtInput, this.backpropWrtMin, this.backpropWrtMax);

  final Graph _graph;

  Operation op;

  final Output<double> backpropsWrtInput;

  final Output<double> backpropWrtMin;

  final Output<double> backpropWrtMax;

  FakeQuantWithMinMaxVarsGradient run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return FakeQuantWithMinMaxVarsGradient((result$[idx$0] as Output<double>),
        (result$[idx$1] as Output<double>), (result$[idx$2] as Output<double>));
  }
}

class FakeQuantWithMinMaxVarsGradient {
  FakeQuantWithMinMaxVarsGradient(
      this.backpropsWrtInput, this.backpropWrtMin, this.backpropWrtMax);

  final Output<double> backpropsWrtInput;

  final Output<double> backpropWrtMin;

  final Output<double> backpropWrtMax;
}

FakeQuantWithMinMaxVarsGradientOutput fakeQuantWithMinMaxVarsGradient(
    Output<double> gradients,
    Output<double> inputs,
    Output<double> min,
    Output<double> max,
    {Graph graph,
    String operationName,
    int numBits: 8,
    bool narrowRange: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'FakeQuantWithMinMaxVarsGradient',
      operationName ??=
          graph._scope.uniqueName('FakeQuantWithMinMaxVarsGradient/'));
  op$.addInput(gradients);
  op$.addInput(inputs);
  op$.addInput(min);
  op$.addInput(max);
  op$.setAttrInt('num_bits', numBits);
  op$.setAttrBool('narrow_range', narrowRange);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return FakeQuantWithMinMaxVarsGradientOutput(
      graph,
      result$,
      (result$[0] as Output<double>),
      (result$[1] as Output<double>),
      (result$[2] as Output<double>));
}

/// Operator that connects N unreplicated inputs to an N-way replicated TPU computation.
Output<T> tPUReplicatedInput<T>(List<Output<T>> inputs,
    {Graph graph, String operationName, int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TPUReplicatedInput',
      operationName ??= graph._scope.uniqueName('TPUReplicatedInput/'));
  op$.addInputList(inputs);
  op$.setAttrInt('N', n);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> size<T>(Output<T> input,
    {Graph graph, String operationName, DataType outType: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Size', operationName ??= graph._scope.uniqueName('Size/'));
  op$.addInput(input);
  op$.setAttrType('out_type', outType);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<String> scalarSummary<T>(Output<String> tags, Output<T> values,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ScalarSummary',
      operationName ??= graph._scope.uniqueName('ScalarSummary/'));
  op$.addInput(tags);
  op$.addInput(values);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<T> identity<T>(Output<T> input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Identity', operationName ??= graph._scope.uniqueName('Identity/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> reverseV2<T>(Output<T> tensor, Output<T> axis,
    {Graph graph, String operationName, DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ReverseV2', operationName ??= graph._scope.uniqueName('ReverseV2/'));
  op$.addInput(tensor);
  op$.addInput(axis);
  op$.setAttrType('Tidx', tidx);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> reverse<T>(Output<T> tensor, Output<bool> dims,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Reverse', operationName ??= graph._scope.uniqueName('Reverse/'));
  op$.addInput(tensor);
  op$.addInput(dims);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> matrixSetDiag<T>(Output<T> input, Output<T> diagonal,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MatrixSetDiag',
      operationName ??= graph._scope.uniqueName('MatrixSetDiag/'));
  op$.addInput(input);
  op$.addInput(diagonal);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output generatorDataset<T>(
    List<Output<List<T>>> initFuncOtherArgs,
    List<Output<List<T>>> nextFuncOtherArgs,
    List<Output<List<T>>> finalizeFuncOtherArgs,
    {Graph graph,
    String operationName,
    Func initFunc,
    Func nextFunc,
    Func finalizeFunc,
    List<DataType> tinitFuncArgs,
    List<DataType> tnextFuncArgs,
    List<DataType> tfinalizeFuncArgs,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('GeneratorDataset',
      operationName ??= graph._scope.uniqueName('GeneratorDataset/'));
  op$.addInputList(initFuncOtherArgs);
  op$.addInputList(nextFuncOtherArgs);
  op$.addInputList(finalizeFuncOtherArgs);
  op$.setAttrFunc('init_func', initFunc);
  op$.setAttrFunc('next_func', nextFunc);
  op$.setAttrFunc('finalize_func', finalizeFunc);
  op$.setAttrTypeList('Tinit_func_args', tinitFuncArgs);
  op$.setAttrTypeList('Tnext_func_args', tnextFuncArgs);
  op$.setAttrTypeList('Tfinalize_func_args', tfinalizeFuncArgs);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

@Deprecated(
    'DEPRECATED at GraphDef version 23: Placeholder now behaves the same as PlaceholderV2.')
Output<T> placeholderV2<T>(
    {Graph graph,
    String operationName,
    @required DataType dtype,
    Shape shape}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('PlaceholderV2',
      operationName ??= graph._scope.uniqueName('PlaceholderV2/'));
  op$.setAttrType('dtype', dtype);
  op$.setAttrShape('shape', shape);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class CudnnRNNParamsToCanonicalOutput<T> {
  CudnnRNNParamsToCanonicalOutput(
      this._graph, this.op, this.weights, this.biases);

  final Graph _graph;

  Operation op;

  final Output<T> weights;

  final Output<T> biases;

  CudnnRNNParamsToCanonical run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return CudnnRNNParamsToCanonical<T>(
        (result$[idx$0] as Output<T>), (result$[idx$1] as Output<T>));
  }
}

class CudnnRNNParamsToCanonical<T> {
  CudnnRNNParamsToCanonical(this.weights, this.biases);

  final Output<T> weights;

  final Output<T> biases;
}

CudnnRNNParamsToCanonicalOutput cudnnRNNParamsToCanonical<T>(
    Output<int> numLayers,
    Output<int> numUnits,
    Output<int> inputSize,
    Output<T> params,
    {Graph graph,
    String operationName,
    int numParams,
    String rnnMode: 'lstm',
    String inputMode: 'linear_input',
    String direction: 'unidirectional',
    double dropout: 0.0,
    int seed: 0,
    int seed2: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CudnnRNNParamsToCanonical',
      operationName ??= graph._scope.uniqueName('CudnnRNNParamsToCanonical/'));
  op$.addInput(numLayers);
  op$.addInput(numUnits);
  op$.addInput(inputSize);
  op$.addInput(params);
  op$.setAttrInt('num_params', numParams);
  op$.setAttrString('rnn_mode', rnnMode);
  op$.setAttrString('input_mode', inputMode);
  op$.setAttrString('direction', direction);
  op$.setAttrFloat('dropout', dropout);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return CudnnRNNParamsToCanonicalOutput<T>(
      graph, result$, (result$[0] as Output<T>), (result$[1] as Output<T>));
}

Output<T> diagPart<T>(Output<T> input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'DiagPart', operationName ??= graph._scope.uniqueName('DiagPart/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class FakeQuantWithMinMaxVarsPerChannelGradientOutput {
  FakeQuantWithMinMaxVarsPerChannelGradientOutput(this._graph, this.op,
      this.backpropsWrtInput, this.backpropWrtMin, this.backpropWrtMax);

  final Graph _graph;

  Operation op;

  final Output<double> backpropsWrtInput;

  final Output<double> backpropWrtMin;

  final Output<double> backpropWrtMax;

  FakeQuantWithMinMaxVarsPerChannelGradient run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return FakeQuantWithMinMaxVarsPerChannelGradient(
        (result$[idx$0] as Output<double>),
        (result$[idx$1] as Output<double>),
        (result$[idx$2] as Output<double>));
  }
}

class FakeQuantWithMinMaxVarsPerChannelGradient {
  FakeQuantWithMinMaxVarsPerChannelGradient(
      this.backpropsWrtInput, this.backpropWrtMin, this.backpropWrtMax);

  final Output<double> backpropsWrtInput;

  final Output<double> backpropWrtMin;

  final Output<double> backpropWrtMax;
}

FakeQuantWithMinMaxVarsPerChannelGradientOutput
    fakeQuantWithMinMaxVarsPerChannelGradient(Output<double> gradients,
        Output<double> inputs, Output<double> min, Output<double> max,
        {Graph graph,
        String operationName,
        int numBits: 8,
        bool narrowRange: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'FakeQuantWithMinMaxVarsPerChannelGradient',
      operationName ??= graph._scope
          .uniqueName('FakeQuantWithMinMaxVarsPerChannelGradient/'));
  op$.addInput(gradients);
  op$.addInput(inputs);
  op$.addInput(min);
  op$.addInput(max);
  op$.setAttrInt('num_bits', numBits);
  op$.setAttrBool('narrow_range', narrowRange);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return FakeQuantWithMinMaxVarsPerChannelGradientOutput(
      graph,
      result$,
      (result$[0] as Output<double>),
      (result$[1] as Output<double>),
      (result$[2] as Output<double>));
}

Output<T> onesLike<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'OnesLike', operationName ??= graph._scope.uniqueName('OnesLike/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class ParseSingleExampleOutput<T> {
  ParseSingleExampleOutput(this._graph, this.op, this.sparseIndices,
      this.sparseValues, this.sparseShapes, this.denseValues);

  final Graph _graph;

  Operation op;

  final Output<int> sparseIndices;

  final Output<List<T>> sparseValues;

  final Output<int> sparseShapes;

  final Output<List<T>> denseValues;

  ParseSingleExample run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var idx$3 = runner.fetch(op.name, index: 3);
    var result$ = runner.run();
    return ParseSingleExample<T>(
        (result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<List<T>>),
        (result$[idx$2] as Output<int>),
        (result$[idx$3] as Output<List<T>>));
  }
}

class ParseSingleExample<T> {
  ParseSingleExample(this.sparseIndices, this.sparseValues, this.sparseShapes,
      this.denseValues);

  final Output<int> sparseIndices;

  final Output<List<T>> sparseValues;

  final Output<int> sparseShapes;

  final Output<List<T>> denseValues;
}

ParseSingleExampleOutput parseSingleExample<T>(
    Output<String> serialized, List<Output<List<T>>> denseDefaults,
    {Graph graph,
    String operationName,
    int numSparse,
    List<String> sparseKeys,
    List<String> denseKeys,
    List<DataType> sparseTypes,
    List<DataType> tdense,
    List<Shape> denseShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ParseSingleExample',
      operationName ??= graph._scope.uniqueName('ParseSingleExample/'));
  op$.addInput(serialized);
  op$.addInputList(denseDefaults);
  op$.setAttrInt('num_sparse', numSparse);
  op$.setAttrStringList('sparse_keys', sparseKeys);
  op$.setAttrStringList('dense_keys', denseKeys);
  op$.setAttrTypeList('sparse_types', sparseTypes);
  op$.setAttrTypeList('Tdense', tdense);
  op$.setAttrShapeList('dense_shapes', denseShapes);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return ParseSingleExampleOutput<T>(
      graph,
      result$,
      (result$[0] as Output<int>),
      (result$[1] as Output<List<T>>),
      (result$[2] as Output<int>),
      (result$[3] as Output<List<T>>));
}

Output<T> guaranteeConst<T>(Output<T> input,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('GuaranteeConst',
      operationName ??= graph._scope.uniqueName('GuaranteeConst/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> immutableConst<T>(
    {Graph graph,
    String operationName,
    @required DataType dtype,
    Shape shape,
    String memoryRegionName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ImmutableConst',
      operationName ??= graph._scope.uniqueName('ImmutableConst/'));
  op$.setAttrType('dtype', dtype);
  op$.setAttrShape('shape', shape);
  op$.setAttrString('memory_region_name', memoryRegionName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> hostConst<T>(
    {Graph graph,
    String operationName,
    Tensor value,
    @required DataType dtype}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'HostConst', operationName ??= graph._scope.uniqueName('HostConst/'));
  op$.setAttrTensor('value', value);
  op$.setAttrType('dtype', dtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> fill<T>(Output<T> dims, Output<T> value,
    {Graph graph,
    String operationName,
    DataType indexType: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Fill', operationName ??= graph._scope.uniqueName('Fill/'));
  op$.addInput(dims);
  op$.addInput(value);
  op$.setAttrType('index_type', indexType);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> applyCenteredRMSProp<T>(
    Output<T> var$,
    Output<T> mg,
    Output<T> ms,
    Output<T> mom,
    Output<T> lr,
    Output<T> rho,
    Output<T> momentum,
    Output<T> epsilon,
    Output<T> grad,
    {Graph graph,
    String operationName,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ApplyCenteredRMSProp',
      operationName ??= graph._scope.uniqueName('ApplyCenteredRMSProp/'));
  op$.addInput(var$);
  op$.addInput(mg);
  op$.addInput(ms);
  op$.addInput(mom);
  op$.addInput(lr);
  op$.addInput(rho);
  op$.addInput(momentum);
  op$.addInput(epsilon);
  op$.addInput(grad);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

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

Output<T> splitV<T>(Output<T> value, Output<T> sizeSplits, Output<int> splitDim,
    {Graph graph,
    String operationName,
    int numSplit,
    DataType tlen: DataType.DT_INT64}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SplitV', operationName ??= graph._scope.uniqueName('SplitV/'));
  op$.addInput(value);
  op$.addInput(sizeSplits);
  op$.addInput(splitDim);
  op$.setAttrInt('num_split', numSplit);
  op$.setAttrType('Tlen', tlen);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
@Deprecated(
    'DEPRECATED at GraphDef version 19: Moving word2vec into tensorflow_models/tutorials and deprecating its ops here as a result')
Operation negTrain(Output<double> wIn, Output<double> wOut,
    Output<int> examples, Output<int> labels, Output<double> lr,
    {Graph graph,
    String operationName,
    List<int> vocabCount,
    int numNegativeSamples}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'NegTrain', operationName ??= graph._scope.uniqueName('NegTrain/'));
  op$.addInput(wIn);
  op$.addInput(wOut);
  op$.addInput(examples);
  op$.addInput(labels);
  op$.addInput(lr);
  op$.setAttrIntList('vocab_count', vocabCount);
  op$.setAttrInt('num_negative_samples', numNegativeSamples);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> concatV2<T>(List<Output<T>> values, Output<T> axis,
    {Graph graph,
    String operationName,
    int n,
    DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ConcatV2', operationName ??= graph._scope.uniqueName('ConcatV2/'));
  op$.addInputList(values);
  op$.addInput(axis);
  op$.setAttrInt('N', n);
  op$.setAttrType('Tidx', tidx);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation resourceApplyPowerSign<T>(Output var$, Output m, Output<T> lr,
    Output<T> logbase, Output<T> signDecay, Output<T> beta, Output<T> grad,
    {Graph graph, String operationName, bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceApplyPowerSign',
      operationName ??= graph._scope.uniqueName('ResourceApplyPowerSign/'));
  op$.addInput(var$);
  op$.addInput(m);
  op$.addInput(lr);
  op$.addInput(logbase);
  op$.addInput(signDecay);
  op$.addInput(beta);
  op$.addInput(grad);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> concat<T>(Output<int> concatDim, List<Output<T>> values,
    {Graph graph, String operationName, int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Concat', operationName ??= graph._scope.uniqueName('Concat/'));
  op$.addInput(concatDim);
  op$.addInputList(values);
  op$.setAttrInt('N', n);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> split<T>(Output<int> splitDim, Output<T> value,
    {Graph graph, String operationName, int numSplit}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Split', operationName ??= graph._scope.uniqueName('Split/'));
  op$.addInput(splitDim);
  op$.addInput(value);
  op$.setAttrInt('num_split', numSplit);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> empty<T>(Output<int> shape,
    {Graph graph, String operationName, DataType dtype, bool init: false}) {
  dtype ??= inferType(shape);
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Empty', operationName ??= graph._scope.uniqueName('Empty/'));
  op$.addInput(shape);
  op$.setAttrType('dtype', dtype);
  op$.setAttrBool('init', init);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> refIdentity<T>(Output<T> input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RefIdentity', operationName ??= graph._scope.uniqueName('RefIdentity/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> inplaceSub<T>(Output<T> x, Output<int> i, Output<T> v,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'InplaceSub', operationName ??= graph._scope.uniqueName('InplaceSub/'));
  op$.addInput(x);
  op$.addInput(i);
  op$.addInput(v);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> spaceToBatch<T>(Output<T> input, Output<T> paddings,
    {Graph graph,
    String operationName,
    DataType tpaddings: DataType.DT_INT32,
    int blockSize}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SpaceToBatch',
      operationName ??= graph._scope.uniqueName('SpaceToBatch/'));
  op$.addInput(input);
  op$.addInput(paddings);
  op$.setAttrType('Tpaddings', tpaddings);
  op$.setAttrInt('block_size', blockSize);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation initializeTableV2<T>(
    Output tableHandle, Output<T> keys, Output<T> values,
    {Graph graph, String operationName, DataType tkey, DataType tval}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('InitializeTableV2',
      operationName ??= graph._scope.uniqueName('InitializeTableV2/'));
  op$.addInput(tableHandle);
  op$.addInput(keys);
  op$.addInput(values);
  op$.setAttrType('Tkey', tkey);
  op$.setAttrType('Tval', tval);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> inplaceUpdate<T>(Output<T> x, Output<int> i, Output<T> v,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('InplaceUpdate',
      operationName ??= graph._scope.uniqueName('InplaceUpdate/'));
  op$.addInput(x);
  op$.addInput(i);
  op$.addInput(v);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> deepCopy<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'DeepCopy', operationName ??= graph._scope.uniqueName('DeepCopy/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> leftShift<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'LeftShift', operationName ??= graph._scope.uniqueName('LeftShift/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

@Deprecated('DEPRECATED at GraphDef version 19: Use TensorArrayGradV3')
Output<double> tensorArrayScatter<T>(Output<String> handle, Output<int> indices,
    Output<T> value, Output<double> flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayScatter',
      operationName ??= graph._scope.uniqueName('TensorArrayScatter/'));
  op$.addInput(handle);
  op$.addInput(indices);
  op$.addInput(value);
  op$.addInput(flowIn);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

Output<T> bitwiseOr<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BitwiseOr', operationName ??= graph._scope.uniqueName('BitwiseOr/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> applyAddSign<T>(Output<T> var$, Output<T> m, Output<T> lr,
    Output<T> alpha, Output<T> signDecay, Output<T> beta, Output<T> grad,
    {Graph graph, String operationName, bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ApplyAddSign',
      operationName ??= graph._scope.uniqueName('ApplyAddSign/'));
  op$.addInput(var$);
  op$.addInput(m);
  op$.addInput(lr);
  op$.addInput(alpha);
  op$.addInput(signDecay);
  op$.addInput(beta);
  op$.addInput(grad);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> bitwiseAnd<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BitwiseAnd', operationName ??= graph._scope.uniqueName('BitwiseAnd/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output populationCount<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('PopulationCount',
      operationName ??= graph._scope.uniqueName('PopulationCount/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<T> decodePng<T>(Output<String> contents,
    {Graph graph,
    String operationName,
    int channels: 0,
    DataType dtype: DataType.DT_UINT8}) {
  dtype ??= inferType(contents);
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'DecodePng', operationName ??= graph._scope.uniqueName('DecodePng/'));
  op$.addInput(contents);
  op$.setAttrInt('channels', channels);
  op$.setAttrType('dtype', dtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> invert<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Invert', operationName ??= graph._scope.uniqueName('Invert/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<String> fact({Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Fact', operationName ??= graph._scope.uniqueName('Fact/'));
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

/// Generates serialized partition messages suitable for batch reads.
/// This op should not be used directly by clients. Instead, the
/// bigquery_reader_ops.py file defines a clean interface to the reader.
/// This operation has one output: Serialized table partitions.
/// attr [projectId]: GCP project ID.
/// attr [datasetId]: BigQuery Dataset ID.
/// attr [tableId]: Table to read.
/// attr [columns]: List of columns to read. Leave empty to read all columns.
/// attr [timestampMillis]: Table snapshot timestamp in millis since epoch. Relative
/// (negative or zero) snapshot times are not allowed. For more details, see
/// 'Table Decorators' in BigQuery docs.
/// attr [numPartitions]: Number of partitions to split the table into.
/// attr [testEndPoint]: Do not use. For testing purposes only.
Output<String> generateBigQueryReaderPartitions(
    {Graph graph,
    String operationName,
    String projectId,
    String datasetId,
    String tableId,
    List<String> columns,
    int timestampMillis,
    int numPartitions,
    String testEndPoint}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'GenerateBigQueryReaderPartitions',
      operationName ??=
          graph._scope.uniqueName('GenerateBigQueryReaderPartitions/'));
  op$.setAttrString('project_id', projectId);
  op$.setAttrString('dataset_id', datasetId);
  op$.setAttrString('table_id', tableId);
  op$.setAttrStringList('columns', columns);
  op$.setAttrInt('timestamp_millis', timestampMillis);
  op$.setAttrInt('num_partitions', numPartitions);
  op$.setAttrString('test_end_point', testEndPoint);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

class SkipgramOutput {
  SkipgramOutput(
      this._graph,
      this.op,
      this.vocabWord,
      this.vocabFreq,
      this.wordsPerEpoch,
      this.currentEpoch,
      this.totalWordsProcessed,
      this.examples,
      this.labels);

  final Graph _graph;

  Operation op;

  final Output<String> vocabWord;

  final Output<int> vocabFreq;

  final Output<int> wordsPerEpoch;

  final Output<int> currentEpoch;

  final Output<int> totalWordsProcessed;

  final Output<int> examples;

  final Output<int> labels;

  Skipgram run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var idx$3 = runner.fetch(op.name, index: 3);
    var idx$4 = runner.fetch(op.name, index: 4);
    var idx$5 = runner.fetch(op.name, index: 5);
    var idx$6 = runner.fetch(op.name, index: 6);
    var result$ = runner.run();
    return Skipgram(
        (result$[idx$0] as Output<String>),
        (result$[idx$1] as Output<int>),
        (result$[idx$2] as Output<int>),
        (result$[idx$3] as Output<int>),
        (result$[idx$4] as Output<int>),
        (result$[idx$5] as Output<int>),
        (result$[idx$6] as Output<int>));
  }
}

class Skipgram {
  Skipgram(this.vocabWord, this.vocabFreq, this.wordsPerEpoch,
      this.currentEpoch, this.totalWordsProcessed, this.examples, this.labels);

  final Output<String> vocabWord;

  final Output<int> vocabFreq;

  final Output<int> wordsPerEpoch;

  final Output<int> currentEpoch;

  final Output<int> totalWordsProcessed;

  final Output<int> examples;

  final Output<int> labels;
}

@Deprecated(
    'DEPRECATED at GraphDef version 19: Moving word2vec into tensorflow_models/tutorials and deprecating its ops here as a result')
SkipgramOutput skipgram(
    {Graph graph,
    String operationName,
    String filename,
    int batchSize,
    int windowSize: 5,
    int minCount: 5,
    double subsample: 0.0010000000474974513}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Skipgram', operationName ??= graph._scope.uniqueName('Skipgram/'));
  op$.setAttrString('filename', filename);
  op$.setAttrInt('batch_size', batchSize);
  op$.setAttrInt('window_size', windowSize);
  op$.setAttrInt('min_count', minCount);
  op$.setAttrFloat('subsample', subsample);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return SkipgramOutput(
      graph,
      result$,
      (result$[0] as Output<String>),
      (result$[1] as Output<int>),
      (result$[2] as Output<int>),
      (result$[3] as Output<int>),
      (result$[4] as Output<int>),
      (result$[5] as Output<int>),
      (result$[6] as Output<int>));
}

Output<T> maxPool3DGrad<T>(
    Output<T> origInput, Output<T> origOutput, Output<T> grad,
    {Graph graph,
    String operationName,
    List<int> ksize,
    List<int> strides,
    String padding,
    String dataFormat: 'NDHWC',
    DataType tInput: DataType.DT_FLOAT}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MaxPool3DGrad',
      operationName ??= graph._scope.uniqueName('MaxPool3DGrad/'));
  op$.addInput(origInput);
  op$.addInput(origOutput);
  op$.addInput(grad);
  op$.setAttrIntList('ksize', ksize);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
  op$.setAttrString('data_format', dataFormat);
  op$.setAttrType('TInput', tInput);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation resourceApplyRMSProp<T>(
    Output var$,
    Output ms,
    Output mom,
    Output<T> lr,
    Output<T> rho,
    Output<T> momentum,
    Output<T> epsilon,
    Output<T> grad,
    {Graph graph,
    String operationName,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceApplyRMSProp',
      operationName ??= graph._scope.uniqueName('ResourceApplyRMSProp/'));
  op$.addInput(var$);
  op$.addInput(ms);
  op$.addInput(mom);
  op$.addInput(lr);
  op$.addInput(rho);
  op$.addInput(momentum);
  op$.addInput(epsilon);
  op$.addInput(grad);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> zerosLike<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ZerosLike', operationName ??= graph._scope.uniqueName('ZerosLike/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> applyAdaMax<T>(
    Output<T> var$,
    Output<T> m,
    Output<T> v,
    Output<T> beta1Power,
    Output<T> lr,
    Output<T> beta1,
    Output<T> beta2,
    Output<T> epsilon,
    Output<T> grad,
    {Graph graph,
    String operationName,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ApplyAdaMax', operationName ??= graph._scope.uniqueName('ApplyAdaMax/'));
  op$.addInput(var$);
  op$.addInput(m);
  op$.addInput(v);
  op$.addInput(beta1Power);
  op$.addInput(lr);
  op$.addInput(beta1);
  op$.addInput(beta2);
  op$.addInput(epsilon);
  op$.addInput(grad);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<int> concatOffset(Output<int> concatDim, List<Output<int>> shape,
    {Graph graph, String operationName, int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ConcatOffset',
      operationName ??= graph._scope.uniqueName('ConcatOffset/'));
  op$.addInput(concatDim);
  op$.addInputList(shape);
  op$.setAttrInt('N', n);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

Output<T> sigmoid<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Sigmoid', operationName ??= graph._scope.uniqueName('Sigmoid/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation resourceSparseApplyAdadelta<T>(
    Output var$,
    Output accum,
    Output accumUpdate,
    Output<T> lr,
    Output<T> rho,
    Output<T> epsilon,
    Output<T> grad,
    Output<T> indices,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ResourceSparseApplyAdadelta',
      operationName ??=
          graph._scope.uniqueName('ResourceSparseApplyAdadelta/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(accumUpdate);
  op$.addInput(lr);
  op$.addInput(rho);
  op$.addInput(epsilon);
  op$.addInput(grad);
  op$.addInput(indices);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// This operation has no outputs.
Operation resourceApplyAdam<T>(
    Output var$,
    Output m,
    Output v,
    Output<T> beta1Power,
    Output<T> beta2Power,
    Output<T> lr,
    Output<T> beta1,
    Output<T> beta2,
    Output<T> epsilon,
    Output<T> grad,
    {Graph graph,
    String operationName,
    bool useLocking: false,
    bool useNesterov: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceApplyAdam',
      operationName ??= graph._scope.uniqueName('ResourceApplyAdam/'));
  op$.addInput(var$);
  op$.addInput(m);
  op$.addInput(v);
  op$.addInput(beta1Power);
  op$.addInput(beta2Power);
  op$.addInput(lr);
  op$.addInput(beta1);
  op$.addInput(beta2);
  op$.addInput(epsilon);
  op$.addInput(grad);
  op$.setAttrBool('use_locking', useLocking);
  op$.setAttrBool('use_nesterov', useNesterov);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// This operation has no outputs.
Operation resourceSparseApplyMomentum<T>(Output var$, Output accum,
    Output<T> lr, Output<T> grad, Output<T> indices, Output<T> momentum,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false,
    bool useNesterov: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ResourceSparseApplyMomentum',
      operationName ??=
          graph._scope.uniqueName('ResourceSparseApplyMomentum/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(lr);
  op$.addInput(grad);
  op$.addInput(indices);
  op$.addInput(momentum);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
  op$.setAttrBool('use_nesterov', useNesterov);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> avgPoolGrad<T>(Output<int> origInputShape, Output<T> grad,
    {Graph graph,
    String operationName,
    List<int> ksize,
    List<int> strides,
    String padding,
    String dataFormat: 'NHWC'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'AvgPoolGrad', operationName ??= graph._scope.uniqueName('AvgPoolGrad/'));
  op$.addInput(origInputShape);
  op$.addInput(grad);
  op$.setAttrIntList('ksize', ksize);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
  op$.setAttrString('data_format', dataFormat);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> parallelConcat<T>(List<Output<T>> values,
    {Graph graph, String operationName, int n, Shape shape}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ParallelConcat',
      operationName ??= graph._scope.uniqueName('ParallelConcat/'));
  op$.addInputList(values);
  op$.setAttrInt('N', n);
  op$.setAttrShape('shape', shape);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<double> editDistance<T>(
    Output<int> hypothesisIndices,
    Output<T> hypothesisValues,
    Output<int> hypothesisShape,
    Output<int> truthIndices,
    Output<T> truthValues,
    Output<int> truthShape,
    {Graph graph,
    String operationName,
    bool normalize: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('EditDistance',
      operationName ??= graph._scope.uniqueName('EditDistance/'));
  op$.addInput(hypothesisIndices);
  op$.addInput(hypothesisValues);
  op$.addInput(hypothesisShape);
  op$.addInput(truthIndices);
  op$.addInput(truthValues);
  op$.addInput(truthShape);
  op$.setAttrBool('normalize', normalize);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

/// This operation has no outputs.
Operation resourceApplyFtrlV2<T>(
    Output var$,
    Output accum,
    Output linear,
    Output<T> grad,
    Output<T> lr,
    Output<T> l1,
    Output<T> l2,
    Output<T> l2Shrinkage,
    Output<T> lrPower,
    {Graph graph,
    String operationName,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceApplyFtrlV2',
      operationName ??= graph._scope.uniqueName('ResourceApplyFtrlV2/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(linear);
  op$.addInput(grad);
  op$.addInput(lr);
  op$.addInput(l1);
  op$.addInput(l2);
  op$.addInput(l2Shrinkage);
  op$.addInput(lrPower);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> stackPop<T>(Output<String> handle,
    {Graph graph, String operationName, DataType elemType}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'StackPop', operationName ??= graph._scope.uniqueName('StackPop/'));
  op$.addInput(handle);
  op$.setAttrType('elem_type', elemType);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> sparseApplyFtrlV2<T>(
    Output<T> var$,
    Output<T> accum,
    Output<T> linear,
    Output<T> grad,
    Output<T> indices,
    Output<T> lr,
    Output<T> l1,
    Output<T> l2,
    Output<T> l2Shrinkage,
    Output<T> lrPower,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseApplyFtrlV2',
      operationName ??= graph._scope.uniqueName('SparseApplyFtrlV2/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(linear);
  op$.addInput(grad);
  op$.addInput(indices);
  op$.addInput(lr);
  op$.addInput(l1);
  op$.addInput(l2);
  op$.addInput(l2Shrinkage);
  op$.addInput(lrPower);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation resourceSparseApplyFtrl<T>(
    Output var$,
    Output accum,
    Output linear,
    Output<T> grad,
    Output<T> indices,
    Output<T> lr,
    Output<T> l1,
    Output<T> l2,
    Output<T> lrPower,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceSparseApplyFtrl',
      operationName ??= graph._scope.uniqueName('ResourceSparseApplyFtrl/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(linear);
  op$.addInput(grad);
  op$.addInput(indices);
  op$.addInput(lr);
  op$.addInput(l1);
  op$.addInput(l2);
  op$.addInput(lrPower);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> sign<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Sign', operationName ??= graph._scope.uniqueName('Sign/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation resourceApplyAddSign<T>(Output var$, Output m, Output<T> lr,
    Output<T> alpha, Output<T> signDecay, Output<T> beta, Output<T> grad,
    {Graph graph, String operationName, bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceApplyAddSign',
      operationName ??= graph._scope.uniqueName('ResourceApplyAddSign/'));
  op$.addInput(var$);
  op$.addInput(m);
  op$.addInput(lr);
  op$.addInput(alpha);
  op$.addInput(signDecay);
  op$.addInput(beta);
  op$.addInput(grad);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<String> barrier(
    {Graph graph,
    String operationName,
    List<DataType> componentTypes,
    List<Shape> shapes,
    int capacity: -1,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Barrier', operationName ??= graph._scope.uniqueName('Barrier/'));
  op$.setAttrTypeList('component_types', componentTypes);
  op$.setAttrShapeList('shapes', shapes);
  op$.setAttrInt('capacity', capacity);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<T> neg<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Neg', operationName ??= graph._scope.uniqueName('Neg/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation resourceSparseApplyProximalAdagrad<T>(Output var$, Output accum,
    Output<T> lr, Output<T> l1, Output<T> l2, Output<T> grad, Output<T> indices,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ResourceSparseApplyProximalAdagrad',
      operationName ??=
          graph._scope.uniqueName('ResourceSparseApplyProximalAdagrad/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(lr);
  op$.addInput(l1);
  op$.addInput(l2);
  op$.addInput(grad);
  op$.addInput(indices);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> bitcast<T>(Output<T> input,
    {Graph graph, String operationName, DataType type}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Bitcast', operationName ??= graph._scope.uniqueName('Bitcast/'));
  op$.addInput(input);
  op$.setAttrType('type', type);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> sparseToDense<T>(Output<T> sparseIndices, Output<T> outputShape,
    Output<T> sparseValues, Output<T> defaultValue,
    {Graph graph,
    String operationName,
    bool validateIndices: true,
    DataType tindices}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseToDense',
      operationName ??= graph._scope.uniqueName('SparseToDense/'));
  op$.addInput(sparseIndices);
  op$.addInput(outputShape);
  op$.addInput(sparseValues);
  op$.addInput(defaultValue);
  op$.setAttrBool('validate_indices', validateIndices);
  op$.setAttrType('Tindices', tindices);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation resourceApplyAdagradDA<T>(
    Output var$,
    Output gradientAccumulator,
    Output gradientSquaredAccumulator,
    Output<T> grad,
    Output<T> lr,
    Output<T> l1,
    Output<T> l2,
    Output<int> globalStep,
    {Graph graph,
    String operationName,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceApplyAdagradDA',
      operationName ??= graph._scope.uniqueName('ResourceApplyAdagradDA/'));
  op$.addInput(var$);
  op$.addInput(gradientAccumulator);
  op$.addInput(gradientSquaredAccumulator);
  op$.addInput(grad);
  op$.addInput(lr);
  op$.addInput(l1);
  op$.addInput(l2);
  op$.addInput(globalStep);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> sparseApplyAdagradDA<T>(
    Output<T> var$,
    Output<T> gradientAccumulator,
    Output<T> gradientSquaredAccumulator,
    Output<T> grad,
    Output<T> indices,
    Output<T> lr,
    Output<T> l1,
    Output<T> l2,
    Output<int> globalStep,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseApplyAdagradDA',
      operationName ??= graph._scope.uniqueName('SparseApplyAdagradDA/'));
  op$.addInput(var$);
  op$.addInput(gradientAccumulator);
  op$.addInput(gradientSquaredAccumulator);
  op$.addInput(grad);
  op$.addInput(indices);
  op$.addInput(lr);
  op$.addInput(l1);
  op$.addInput(l2);
  op$.addInput(globalStep);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation resourceApplyAdaMax<T>(
    Output var$,
    Output m,
    Output v,
    Output<T> beta1Power,
    Output<T> lr,
    Output<T> beta1,
    Output<T> beta2,
    Output<T> epsilon,
    Output<T> grad,
    {Graph graph,
    String operationName,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceApplyAdaMax',
      operationName ??= graph._scope.uniqueName('ResourceApplyAdaMax/'));
  op$.addInput(var$);
  op$.addInput(m);
  op$.addInput(v);
  op$.addInput(beta1Power);
  op$.addInput(lr);
  op$.addInput(beta1);
  op$.addInput(beta2);
  op$.addInput(epsilon);
  op$.addInput(grad);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> sqrt<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Sqrt', operationName ??= graph._scope.uniqueName('Sqrt/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation resourceApplyAdagrad<T>(
    Output var$, Output accum, Output<T> lr, Output<T> grad,
    {Graph graph,
    String operationName,
    bool useLocking: false,
    bool updateSlots: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceApplyAdagrad',
      operationName ??= graph._scope.uniqueName('ResourceApplyAdagrad/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(lr);
  op$.addInput(grad);
  op$.setAttrBool('use_locking', useLocking);
  op$.setAttrBool('update_slots', updateSlots);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> applyAdadelta<T>(
    Output<T> var$,
    Output<T> accum,
    Output<T> accumUpdate,
    Output<T> lr,
    Output<T> rho,
    Output<T> epsilon,
    Output<T> grad,
    {Graph graph,
    String operationName,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ApplyAdadelta',
      operationName ??= graph._scope.uniqueName('ApplyAdadelta/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(accumUpdate);
  op$.addInput(lr);
  op$.addInput(rho);
  op$.addInput(epsilon);
  op$.addInput(grad);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> tile<T>(Output<T> input, Output<T> multiples,
    {Graph graph,
    String operationName,
    DataType tmultiples: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Tile', operationName ??= graph._scope.uniqueName('Tile/'));
  op$.addInput(input);
  op$.addInput(multiples);
  op$.setAttrType('Tmultiples', tmultiples);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> sparseApplyProximalGradientDescent<T>(Output<T> var$, Output<T> alpha,
    Output<T> l1, Output<T> l2, Output<T> grad, Output<T> indices,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SparseApplyProximalGradientDescent',
      operationName ??=
          graph._scope.uniqueName('SparseApplyProximalGradientDescent/'));
  op$.addInput(var$);
  op$.addInput(alpha);
  op$.addInput(l1);
  op$.addInput(l2);
  op$.addInput(grad);
  op$.addInput(indices);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> applyProximalGradientDescent<T>(Output<T> var$, Output<T> alpha,
    Output<T> l1, Output<T> l2, Output<T> delta,
    {Graph graph, String operationName, bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ApplyProximalGradientDescent',
      operationName ??=
          graph._scope.uniqueName('ApplyProximalGradientDescent/'));
  op$.addInput(var$);
  op$.addInput(alpha);
  op$.addInput(l1);
  op$.addInput(l2);
  op$.addInput(delta);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class BarrierTakeManyOutput<T> {
  BarrierTakeManyOutput(
      this._graph, this.op, this.indices, this.keys, this.values);

  final Graph _graph;

  Operation op;

  final Output<int> indices;

  final Output<String> keys;

  final Output<List<T>> values;

  BarrierTakeMany run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return BarrierTakeMany<T>(
        (result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<String>),
        (result$[idx$2] as Output<List<T>>));
  }
}

class BarrierTakeMany<T> {
  BarrierTakeMany(this.indices, this.keys, this.values);

  final Output<int> indices;

  final Output<String> keys;

  final Output<List<T>> values;
}

BarrierTakeManyOutput barrierTakeMany<T>(
    Output<String> handle, Output<int> numElements,
    {Graph graph,
    String operationName,
    List<DataType> componentTypes,
    bool allowSmallBatch: false,
    bool waitForIncomplete: false,
    int timeoutMs: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BarrierTakeMany',
      operationName ??= graph._scope.uniqueName('BarrierTakeMany/'));
  op$.addInput(handle);
  op$.addInput(numElements);
  op$.setAttrTypeList('component_types', componentTypes);
  op$.setAttrBool('allow_small_batch', allowSmallBatch);
  op$.setAttrBool('wait_for_incomplete', waitForIncomplete);
  op$.setAttrInt('timeout_ms', timeoutMs);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return BarrierTakeManyOutput<T>(graph, result$, (result$[0] as Output<int>),
      (result$[1] as Output<String>), (result$[2] as Output<List<T>>));
}

Output<T> matrixLogarithm<T>(Output<T> input,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MatrixLogarithm',
      operationName ??= graph._scope.uniqueName('MatrixLogarithm/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation resourceApplyGradientDescent<T>(
    Output var$, Output<T> alpha, Output<T> delta,
    {Graph graph, String operationName, bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ResourceApplyGradientDescent',
      operationName ??=
          graph._scope.uniqueName('ResourceApplyGradientDescent/'));
  op$.addInput(var$);
  op$.addInput(alpha);
  op$.addInput(delta);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> cosh<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Cosh', operationName ??= graph._scope.uniqueName('Cosh/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> collectiveReduce<T>(Output<T> input,
    {Graph graph,
    String operationName,
    int groupSize,
    int groupKey,
    int instanceKey,
    String mergeOp,
    String finalOp,
    List<int> subdivOffsets}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CollectiveReduce',
      operationName ??= graph._scope.uniqueName('CollectiveReduce/'));
  op$.addInput(input);
  op$.setAttrInt('group_size', groupSize);
  op$.setAttrInt('group_key', groupKey);
  op$.setAttrInt('instance_key', instanceKey);
  op$.setAttrString('merge_op', mergeOp);
  op$.setAttrString('final_op', finalOp);
  op$.setAttrIntList('subdiv_offsets', subdivOffsets);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> applyGradientDescent<T>(
    Output<T> var$, Output<T> alpha, Output<T> delta,
    {Graph graph, String operationName, bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ApplyGradientDescent',
      operationName ??= graph._scope.uniqueName('ApplyGradientDescent/'));
  op$.addInput(var$);
  op$.addInput(alpha);
  op$.addInput(delta);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> countUpTo<T>(Output<T> ref,
    {Graph graph, String operationName, int limit}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'CountUpTo', operationName ??= graph._scope.uniqueName('CountUpTo/'));
  op$.addInput(ref);
  op$.setAttrInt('limit', limit);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

@Deprecated('DEPRECATED at GraphDef version 9: Use tf.nn.batch_normalization()')
Output<T> batchNormWithGlobalNormalization<T>(
    Output<T> t, Output<T> m, Output<T> v, Output<T> beta, Output<T> gamma,
    {Graph graph,
    String operationName,
    double varianceEpsilon,
    bool scaleAfterNormalization}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BatchNormWithGlobalNormalization',
      operationName ??=
          graph._scope.uniqueName('BatchNormWithGlobalNormalization/'));
  op$.addInput(t);
  op$.addInput(m);
  op$.addInput(v);
  op$.addInput(beta);
  op$.addInput(gamma);
  op$.setAttrFloat('variance_epsilon', varianceEpsilon);
  op$.setAttrBool('scale_after_normalization', scaleAfterNormalization);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<double> fakeQuantWithMinMaxArgs(Output<double> inputs,
    {Graph graph,
    String operationName,
    double min: -6.0,
    double max: 6.0,
    int numBits: 8,
    bool narrowRange: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('FakeQuantWithMinMaxArgs',
      operationName ??= graph._scope.uniqueName('FakeQuantWithMinMaxArgs/'));
  op$.addInput(inputs);
  op$.setAttrFloat('min', min);
  op$.setAttrFloat('max', max);
  op$.setAttrInt('num_bits', numBits);
  op$.setAttrBool('narrow_range', narrowRange);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

Output<T> dilation2D<T>(Output<T> input, Output<T> filter,
    {Graph graph,
    String operationName,
    List<int> strides,
    List<int> rates,
    String padding}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Dilation2D', operationName ??= graph._scope.uniqueName('Dilation2D/'));
  op$.addInput(input);
  op$.addInput(filter);
  op$.setAttrIntList('strides', strides);
  op$.setAttrIntList('rates', rates);
  op$.setAttrString('padding', padding);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<String> mutableHashTableOfTensors(
    {Graph graph,
    String operationName,
    String container,
    String sharedName,
    bool useNodeNameSharing: false,
    DataType keyDtype,
    DataType valueDtype,
    Shape valueShape}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MutableHashTableOfTensors',
      operationName ??= graph._scope.uniqueName('MutableHashTableOfTensors/'));
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
  op$.setAttrBool('use_node_name_sharing', useNodeNameSharing);
  op$.setAttrType('key_dtype', keyDtype);
  op$.setAttrType('value_dtype', valueDtype);
  op$.setAttrShape('value_shape', valueShape);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<T> scatterNdAdd<T>(Output<T> ref, Output<T> indices, Output<T> updates,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ScatterNdAdd',
      operationName ??= graph._scope.uniqueName('ScatterNdAdd/'));
  op$.addInput(ref);
  op$.addInput(indices);
  op$.addInput(updates);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class BoostedTreesGetEnsembleStatesOutput {
  BoostedTreesGetEnsembleStatesOutput(
      this._graph,
      this.op,
      this.stampToken,
      this.numTrees,
      this.numFinalizedTrees,
      this.numAttemptedLayers,
      this.lastLayerNodesRange);

  final Graph _graph;

  Operation op;

  final Output<int> stampToken;

  final Output<int> numTrees;

  final Output<int> numFinalizedTrees;

  final Output<int> numAttemptedLayers;

  final Output<int> lastLayerNodesRange;

  BoostedTreesGetEnsembleStates run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var idx$3 = runner.fetch(op.name, index: 3);
    var idx$4 = runner.fetch(op.name, index: 4);
    var result$ = runner.run();
    return BoostedTreesGetEnsembleStates(
        (result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<int>),
        (result$[idx$2] as Output<int>),
        (result$[idx$3] as Output<int>),
        (result$[idx$4] as Output<int>));
  }
}

class BoostedTreesGetEnsembleStates {
  BoostedTreesGetEnsembleStates(
      this.stampToken,
      this.numTrees,
      this.numFinalizedTrees,
      this.numAttemptedLayers,
      this.lastLayerNodesRange);

  final Output<int> stampToken;

  final Output<int> numTrees;

  final Output<int> numFinalizedTrees;

  final Output<int> numAttemptedLayers;

  final Output<int> lastLayerNodesRange;
}

BoostedTreesGetEnsembleStatesOutput boostedTreesGetEnsembleStates(
    Output treeEnsembleHandle,
    {Graph graph,
    String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BoostedTreesGetEnsembleStates',
      operationName ??=
          graph._scope.uniqueName('BoostedTreesGetEnsembleStates/'));
  op$.addInput(treeEnsembleHandle);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return BoostedTreesGetEnsembleStatesOutput(
      graph,
      result$,
      (result$[0] as Output<int>),
      (result$[1] as Output<int>),
      (result$[2] as Output<int>),
      (result$[3] as Output<int>),
      (result$[4] as Output<int>));
}

/// This operation has no outputs.
Operation resourceScatterNdAdd<T>(
    Output ref, Output<T> indices, Output<T> updates,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceScatterNdAdd',
      operationName ??= graph._scope.uniqueName('ResourceScatterNdAdd/'));
  op$.addInput(ref);
  op$.addInput(indices);
  op$.addInput(updates);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// This operation has no outputs.
Operation resourceScatterNdUpdate<T>(
    Output ref, Output<T> indices, Output<T> updates,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceScatterNdUpdate',
      operationName ??= graph._scope.uniqueName('ResourceScatterNdUpdate/'));
  op$.addInput(ref);
  op$.addInput(indices);
  op$.addInput(updates);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> scatterNdUpdate<T>(
    Output<T> ref, Output<T> indices, Output<T> updates,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ScatterNdUpdate',
      operationName ??= graph._scope.uniqueName('ScatterNdUpdate/'));
  op$.addInput(ref);
  op$.addInput(indices);
  op$.addInput(updates);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> scatterSub<T>(Output<T> ref, Output<T> indices, Output<T> updates,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ScatterSub', operationName ??= graph._scope.uniqueName('ScatterSub/'));
  op$.addInput(ref);
  op$.addInput(indices);
  op$.addInput(updates);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> scatterAdd<T>(Output<T> ref, Output<T> indices, Output<T> updates,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ScatterAdd', operationName ??= graph._scope.uniqueName('ScatterAdd/'));
  op$.addInput(ref);
  op$.addInput(indices);
  op$.addInput(updates);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> scatterUpdate<T>(Output<T> ref, Output<T> indices, Output<T> updates,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ScatterUpdate',
      operationName ??= graph._scope.uniqueName('ScatterUpdate/'));
  op$.addInput(ref);
  op$.addInput(indices);
  op$.addInput(updates);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> assignSub<T>(Output<T> ref, Output<T> value,
    {Graph graph, String operationName, bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'AssignSub', operationName ??= graph._scope.uniqueName('AssignSub/'));
  op$.addInput(ref);
  op$.addInput(value);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> assign<T>(Output<T> ref, Output<T> value,
    {Graph graph,
    String operationName,
    bool validateShape: true,
    bool useLocking: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Assign', operationName ??= graph._scope.uniqueName('Assign/'));
  op$.addInput(ref);
  op$.addInput(value);
  op$.setAttrBool('validate_shape', validateShape);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> cudnnRNNCanonicalToParams<T>(
    Output<int> numLayers,
    Output<int> numUnits,
    Output<int> inputSize,
    List<Output<T>> weights,
    List<Output<T>> biases,
    {Graph graph,
    String operationName,
    int numParams,
    String rnnMode: 'lstm',
    String inputMode: 'linear_input',
    String direction: 'unidirectional',
    double dropout: 0.0,
    int seed: 0,
    int seed2: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CudnnRNNCanonicalToParams',
      operationName ??= graph._scope.uniqueName('CudnnRNNCanonicalToParams/'));
  op$.addInput(numLayers);
  op$.addInput(numUnits);
  op$.addInput(inputSize);
  op$.addInputList(weights);
  op$.addInputList(biases);
  op$.setAttrInt('num_params', numParams);
  op$.setAttrString('rnn_mode', rnnMode);
  op$.setAttrString('input_mode', inputMode);
  op$.setAttrString('direction', direction);
  op$.setAttrFloat('dropout', dropout);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> variableV2<T>(
    {Graph graph,
    String operationName,
    Shape shape,
    @required DataType dtype,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'VariableV2', operationName ??= graph._scope.uniqueName('VariableV2/'));
  op$.setAttrShape('shape', shape);
  op$.setAttrType('dtype', dtype);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output iteratorFromStringHandle(Output<String> stringHandle,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('IteratorFromStringHandle',
      operationName ??= graph._scope.uniqueName('IteratorFromStringHandle/'));
  op$.addInput(stringHandle);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

/// This operation has no outputs.
Operation writeAudioSummary(Output writer, Output<int> step, Output<String> tag,
    Output<double> tensor, Output<double> sampleRate,
    {Graph graph, String operationName, int maxOutputs: 3}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('WriteAudioSummary',
      operationName ??= graph._scope.uniqueName('WriteAudioSummary/'));
  op$.addInput(writer);
  op$.addInput(step);
  op$.addInput(tag);
  op$.addInput(tensor);
  op$.addInput(sampleRate);
  op$.setAttrInt('max_outputs', maxOutputs);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// This operation has no outputs.
@Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayCloseV3')
Operation tensorArrayClose(Output<String> handle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayClose',
      operationName ??= graph._scope.uniqueName('TensorArrayClose/'));
  op$.addInput(handle);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> matrixBandPart<T>(
    Output<T> input, Output<T> numLower, Output<T> numUpper,
    {Graph graph, String operationName, DataType tindex: DataType.DT_INT64}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MatrixBandPart',
      operationName ??= graph._scope.uniqueName('MatrixBandPart/'));
  op$.addInput(input);
  op$.addInput(numLower);
  op$.addInput(numUpper);
  op$.setAttrType('Tindex', tindex);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation writeFile(Output<String> filename, Output<String> contents,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'WriteFile', operationName ??= graph._scope.uniqueName('WriteFile/'));
  op$.addInput(filename);
  op$.addInput(contents);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

class TensorArrayConcatV2Output<T> {
  TensorArrayConcatV2Output(this._graph, this.op, this.value, this.lengths);

  final Graph _graph;

  Operation op;

  final Output<T> value;

  final Output<int> lengths;

  TensorArrayConcatV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return TensorArrayConcatV2<T>(
        (result$[idx$0] as Output<T>), (result$[idx$1] as Output<int>));
  }
}

class TensorArrayConcatV2<T> {
  TensorArrayConcatV2(this.value, this.lengths);

  final Output<T> value;

  final Output<int> lengths;
}

TensorArrayConcatV2Output tensorArrayConcatV2<T>(
    Output<String> handle, Output<double> flowIn,
    {Graph graph,
    String operationName,
    DataType dtype,
    Shape elementShapeExcept0}) {
  dtype ??= inferType(handle);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayConcatV2',
      operationName ??= graph._scope.uniqueName('TensorArrayConcatV2/'));
  op$.addInput(handle);
  op$.addInput(flowIn);
  op$.setAttrType('dtype', dtype);
  op$.setAttrShape('element_shape_except0', elementShapeExcept0);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return TensorArrayConcatV2Output<T>(
      graph, result$, (result$[0] as Output<T>), (result$[1] as Output<int>));
}

Output<T> matrixSolve<T>(Output<T> matrix, Output<T> rhs,
    {Graph graph, String operationName, bool adjoint: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'MatrixSolve', operationName ??= graph._scope.uniqueName('MatrixSolve/'));
  op$.addInput(matrix);
  op$.addInput(rhs);
  op$.setAttrBool('adjoint', adjoint);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation writeImageSummary<T>(Output writer, Output<int> step,
    Output<String> tag, Output<T> tensor, Output badColor,
    {Graph graph, String operationName, int maxImages: 3}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('WriteImageSummary',
      operationName ??= graph._scope.uniqueName('WriteImageSummary/'));
  op$.addInput(writer);
  op$.addInput(step);
  op$.addInput(tag);
  op$.addInput(tensor);
  op$.addInput(badColor);
  op$.setAttrInt('max_images', maxImages);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> tan<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Tan', operationName ??= graph._scope.uniqueName('Tan/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
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

Output<T> batchMatMul<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName, bool adjX: false, bool adjY: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BatchMatMul', operationName ??= graph._scope.uniqueName('BatchMatMul/'));
  op$.addInput(x);
  op$.addInput(y);
  op$.setAttrBool('adj_x', adjX);
  op$.setAttrBool('adj_y', adjY);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> igamma<T>(Output<T> a, Output<T> x,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Igamma', operationName ??= graph._scope.uniqueName('Igamma/'));
  op$.addInput(a);
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class StringSplitV2Output {
  StringSplitV2Output(
      this._graph, this.op, this.indices, this.values, this.shape);

  final Graph _graph;

  Operation op;

  final Output<int> indices;

  final Output<String> values;

  final Output<int> shape;

  StringSplitV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return StringSplitV2((result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<String>), (result$[idx$2] as Output<int>));
  }
}

class StringSplitV2 {
  StringSplitV2(this.indices, this.values, this.shape);

  final Output<int> indices;

  final Output<String> values;

  final Output<int> shape;
}

StringSplitV2Output stringSplitV2(Output<String> input, Output<String> sep,
    {Graph graph, String operationName, int maxsplit: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StringSplitV2',
      operationName ??= graph._scope.uniqueName('StringSplitV2/'));
  op$.addInput(input);
  op$.addInput(sep);
  op$.setAttrInt('maxsplit', maxsplit);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return StringSplitV2Output(graph, result$, (result$[0] as Output<int>),
      (result$[1] as Output<String>), (result$[2] as Output<int>));
}

/// This operation has no outputs.
Operation importEvent(Output writer, Output<String> event,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ImportEvent', operationName ??= graph._scope.uniqueName('ImportEvent/'));
  op$.addInput(writer);
  op$.addInput(event);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

class BatchOutput<T> {
  BatchOutput(
      this._graph, this.op, this.batchedTensors, this.batchIndex, this.id);

  final Graph _graph;

  Operation op;

  final Output<List<T>> batchedTensors;

  final Output<int> batchIndex;

  final Output<int> id;

  Batch run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return Batch<T>((result$[idx$0] as Output<List<T>>),
        (result$[idx$1] as Output<int>), (result$[idx$2] as Output<int>));
  }
}

class Batch<T> {
  Batch(this.batchedTensors, this.batchIndex, this.id);

  final Output<List<T>> batchedTensors;

  final Output<int> batchIndex;

  final Output<int> id;
}

BatchOutput batch<T>(List<Output<List<T>>> inTensors,
    {Graph graph,
    String operationName,
    int numBatchThreads,
    int maxBatchSize,
    int maxEnqueuedBatches: 10,
    int batchTimeoutMicros,
    List<int> allowedBatchSizes,
    int gradTimeoutMicros,
    String container,
    String sharedName,
    String batchingQueue,
    List<DataType> t}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Batch', operationName ??= graph._scope.uniqueName('Batch/'));
  op$.addInputList(inTensors);
  op$.setAttrInt('num_batch_threads', numBatchThreads);
  op$.setAttrInt('max_batch_size', maxBatchSize);
  op$.setAttrInt('max_enqueued_batches', maxEnqueuedBatches);
  op$.setAttrInt('batch_timeout_micros', batchTimeoutMicros);
  op$.setAttrIntList('allowed_batch_sizes', allowedBatchSizes);
  op$.setAttrInt('grad_timeout_micros', gradTimeoutMicros);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
  op$.setAttrString('batching_queue', batchingQueue);
  op$.setAttrTypeList('T', t);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return BatchOutput<T>(graph, result$, (result$[0] as Output<List<T>>),
      (result$[1] as Output<int>), (result$[2] as Output<int>));
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
Operation flushSummaryWriter(Output writer,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('FlushSummaryWriter',
      operationName ??= graph._scope.uniqueName('FlushSummaryWriter/'));
  op$.addInput(writer);
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

Output<T> ensureShape<T>(Output<T> input,
    {Graph graph, String operationName, Shape shape}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'EnsureShape', operationName ??= graph._scope.uniqueName('EnsureShape/'));
  op$.addInput(input);
  op$.setAttrShape('shape', shape);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> sparseApplyRMSProp<T>(
    Output<T> var$,
    Output<T> ms,
    Output<T> mom,
    Output<T> lr,
    Output<T> rho,
    Output<T> momentum,
    Output<T> epsilon,
    Output<T> grad,
    Output<T> indices,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseApplyRMSProp',
      operationName ??= graph._scope.uniqueName('SparseApplyRMSProp/'));
  op$.addInput(var$);
  op$.addInput(ms);
  op$.addInput(mom);
  op$.addInput(lr);
  op$.addInput(rho);
  op$.addInput(momentum);
  op$.addInput(epsilon);
  op$.addInput(grad);
  op$.addInput(indices);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
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

Output<String> substr<T>(Output<String> input, Output<T> pos, Output<T> len,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Substr', operationName ??= graph._scope.uniqueName('Substr/'));
  op$.addInput(input);
  op$.addInput(pos);
  op$.addInput(len);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<String> decodeBase64(Output<String> input,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DecodeBase64',
      operationName ??= graph._scope.uniqueName('DecodeBase64/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<String> encodeBase64(Output<String> input,
    {Graph graph, String operationName, bool pad: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('EncodeBase64',
      operationName ??= graph._scope.uniqueName('EncodeBase64/'));
  op$.addInput(input);
  op$.setAttrBool('pad', pad);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<String> tensorSummary<T>(Output<T> tensor,
    {Graph graph,
    String operationName,
    String description,
    List<String> labels,
    String displayName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorSummary',
      operationName ??= graph._scope.uniqueName('TensorSummary/'));
  op$.addInput(tensor);
  op$.setAttrString('description', description);
  op$.setAttrStringList('labels', labels);
  op$.setAttrString('display_name', displayName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<T> scatterDiv<T>(Output<T> ref, Output<T> indices, Output<T> updates,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ScatterDiv', operationName ??= graph._scope.uniqueName('ScatterDiv/'));
  op$.addInput(ref);
  op$.addInput(indices);
  op$.addInput(updates);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<int> stringLength(Output<String> input,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StringLength',
      operationName ??= graph._scope.uniqueName('StringLength/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

Output<T> refSelect<T>(Output<int> index, List<Output<T>> inputs,
    {Graph graph, String operationName, int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RefSelect', operationName ??= graph._scope.uniqueName('RefSelect/'));
  op$.addInput(index);
  op$.addInputList(inputs);
  op$.setAttrInt('N', n);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<String> stringStrip(Output<String> input,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'StringStrip', operationName ??= graph._scope.uniqueName('StringStrip/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<String> stringJoin(List<Output<String>> inputs,
    {Graph graph, String operationName, int n, String separator}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'StringJoin', operationName ??= graph._scope.uniqueName('StringJoin/'));
  op$.addInputList(inputs);
  op$.setAttrInt('N', n);
  op$.setAttrString('separator', separator);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<T> conv3DBackpropFilterV2<T>(
    Output<T> input, Output<int> filterSizes, Output<T> outBackprop,
    {Graph graph,
    String operationName,
    List<int> strides,
    String padding,
    String dataFormat: 'NDHWC',
    List<int> dilations}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('Conv3DBackpropFilterV2',
      operationName ??= graph._scope.uniqueName('Conv3DBackpropFilterV2/'));
  op$.addInput(input);
  op$.addInput(filterSizes);
  op$.addInput(outBackprop);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
  op$.setAttrString('data_format', dataFormat);
  op$.setAttrIntList('dilations', dilations);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> addV2<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'AddV2', operationName ??= graph._scope.uniqueName('AddV2/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<String> asString<T>(Output<T> input,
    {Graph graph,
    String operationName,
    int precision: -1,
    bool scientific: false,
    bool shortest: false,
    int width: -1,
    String fill}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'AsString', operationName ??= graph._scope.uniqueName('AsString/'));
  op$.addInput(input);
  op$.setAttrInt('precision', precision);
  op$.setAttrBool('scientific', scientific);
  op$.setAttrBool('shortest', shortest);
  op$.setAttrInt('width', width);
  op$.setAttrString('fill', fill);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<T> softsign<T>(Output<T> features, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Softsign', operationName ??= graph._scope.uniqueName('Softsign/'));
  op$.addInput(features);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class QuantizedAddOutput<T> {
  QuantizedAddOutput(this._graph, this.op, this.z, this.minZ, this.maxZ);

  final Graph _graph;

  Operation op;

  final Output<T> z;

  final Output<double> minZ;

  final Output<double> maxZ;

  QuantizedAdd run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return QuantizedAdd<T>((result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<double>), (result$[idx$2] as Output<double>));
  }
}

class QuantizedAdd<T> {
  QuantizedAdd(this.z, this.minZ, this.maxZ);

  final Output<T> z;

  final Output<double> minZ;

  final Output<double> maxZ;
}

QuantizedAddOutput quantizedAdd<T>(
    Output<T> x,
    Output<T> y,
    Output<double> minX,
    Output<double> maxX,
    Output<double> minY,
    Output<double> maxY,
    {Graph graph,
    String operationName,
    DataType t1,
    DataType t2,
    DataType toutput: DataType.DT_QINT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QuantizedAdd',
      operationName ??= graph._scope.uniqueName('QuantizedAdd/'));
  op$.addInput(x);
  op$.addInput(y);
  op$.addInput(minX);
  op$.addInput(maxX);
  op$.addInput(minY);
  op$.addInput(maxY);
  op$.setAttrType('T1', t1);
  op$.setAttrType('T2', t2);
  op$.setAttrType('Toutput', toutput);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return QuantizedAddOutput<T>(graph, result$, (result$[0] as Output<T>),
      (result$[1] as Output<double>), (result$[2] as Output<double>));
}

Output<int> stringToHashBucket(Output<String> stringTensor,
    {Graph graph, String operationName, int numBuckets}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StringToHashBucket',
      operationName ??= graph._scope.uniqueName('StringToHashBucket/'));
  op$.addInput(stringTensor);
  op$.setAttrInt('num_buckets', numBuckets);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

Output<T> scatterMax<T>(Output<T> ref, Output<T> indices, Output<T> updates,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ScatterMax', operationName ??= graph._scope.uniqueName('ScatterMax/'));
  op$.addInput(ref);
  op$.addInput(indices);
  op$.addInput(updates);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation lookupTableImport<T>(
    Output<String> tableHandle, Output<T> keys, Output<T> values,
    {Graph graph, String operationName, DataType tin, DataType tout}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('LookupTableImport',
      operationName ??= graph._scope.uniqueName('LookupTableImport/'));
  op$.addInput(tableHandle);
  op$.addInput(keys);
  op$.addInput(values);
  op$.setAttrType('Tin', tin);
  op$.setAttrType('Tout', tout);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<bool> regexFullMatch(Output<String> input, Output<String> pattern,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('RegexFullMatch',
      operationName ??= graph._scope.uniqueName('RegexFullMatch/'));
  op$.addInput(input);
  op$.addInput(pattern);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
}

Output<String> staticRegexReplace(Output<String> input,
    {Graph graph,
    String operationName,
    String pattern,
    String rewrite,
    bool replaceGlobal: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StaticRegexReplace',
      operationName ??= graph._scope.uniqueName('StaticRegexReplace/'));
  op$.addInput(input);
  op$.setAttrString('pattern', pattern);
  op$.setAttrString('rewrite', rewrite);
  op$.setAttrBool('replace_global', replaceGlobal);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<bool> isFinite<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'IsFinite', operationName ??= graph._scope.uniqueName('IsFinite/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
}

Output<String> regexReplace(
    Output<String> input, Output<String> pattern, Output<String> rewrite,
    {Graph graph, String operationName, bool replaceGlobal: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('RegexReplace',
      operationName ??= graph._scope.uniqueName('RegexReplace/'));
  op$.addInput(input);
  op$.addInput(pattern);
  op$.addInput(rewrite);
  op$.setAttrBool('replace_global', replaceGlobal);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<T> statelessMultinomial<T>(
    Output<T> logits, Output<int> numSamples, Output<T> seed,
    {Graph graph,
    String operationName,
    DataType tseed: DataType.DT_INT64,
    DataType outputDtype: DataType.DT_INT64}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StatelessMultinomial',
      operationName ??= graph._scope.uniqueName('StatelessMultinomial/'));
  op$.addInput(logits);
  op$.addInput(numSamples);
  op$.addInput(seed);
  op$.setAttrType('Tseed', tseed);
  op$.setAttrType('output_dtype', outputDtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> matrixDiag<T>(Output<T> diagonal,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'MatrixDiag', operationName ??= graph._scope.uniqueName('MatrixDiag/'));
  op$.addInput(diagonal);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> statelessTruncatedNormal<T>(Output<T> shape, Output<T> seed,
    {Graph graph,
    String operationName,
    DataType dtype: DataType.DT_FLOAT,
    DataType tseed: DataType.DT_INT64}) {
  dtype ??= inferType(shape);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StatelessTruncatedNormal',
      operationName ??= graph._scope.uniqueName('StatelessTruncatedNormal/'));
  op$.addInput(shape);
  op$.addInput(seed);
  op$.setAttrType('dtype', dtype);
  op$.setAttrType('Tseed', tseed);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> applyAdagrad<T>(
    Output<T> var$, Output<T> accum, Output<T> lr, Output<T> grad,
    {Graph graph,
    String operationName,
    bool useLocking: false,
    bool updateSlots: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ApplyAdagrad',
      operationName ??= graph._scope.uniqueName('ApplyAdagrad/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(lr);
  op$.addInput(grad);
  op$.setAttrBool('use_locking', useLocking);
  op$.setAttrBool('update_slots', updateSlots);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> statelessRandomNormal<T>(Output<T> shape, Output<T> seed,
    {Graph graph,
    String operationName,
    DataType dtype: DataType.DT_FLOAT,
    DataType tseed: DataType.DT_INT64}) {
  dtype ??= inferType(shape);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StatelessRandomNormal',
      operationName ??= graph._scope.uniqueName('StatelessRandomNormal/'));
  op$.addInput(shape);
  op$.addInput(seed);
  op$.setAttrType('dtype', dtype);
  op$.setAttrType('Tseed', tseed);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> statelessRandomUniform<T>(Output<T> shape, Output<T> seed,
    {Graph graph,
    String operationName,
    DataType dtype: DataType.DT_FLOAT,
    DataType tseed: DataType.DT_INT64}) {
  dtype ??= inferType(shape);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StatelessRandomUniform',
      operationName ??= graph._scope.uniqueName('StatelessRandomUniform/'));
  op$.addInput(shape);
  op$.addInput(seed);
  op$.setAttrType('dtype', dtype);
  op$.setAttrType('Tseed', tseed);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class QuantizedResizeBilinearOutput<T> {
  QuantizedResizeBilinearOutput(
      this._graph, this.op, this.resizedImages, this.outMin, this.outMax);

  final Graph _graph;

  Operation op;

  final Output<T> resizedImages;

  final Output<double> outMin;

  final Output<double> outMax;

  QuantizedResizeBilinear run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return QuantizedResizeBilinear<T>((result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<double>), (result$[idx$2] as Output<double>));
  }
}

class QuantizedResizeBilinear<T> {
  QuantizedResizeBilinear(this.resizedImages, this.outMin, this.outMax);

  final Output<T> resizedImages;

  final Output<double> outMin;

  final Output<double> outMax;
}

QuantizedResizeBilinearOutput quantizedResizeBilinear<T>(
    Output<T> images, Output<int> size, Output<double> min, Output<double> max,
    {Graph graph, String operationName, bool alignCorners: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QuantizedResizeBilinear',
      operationName ??= graph._scope.uniqueName('QuantizedResizeBilinear/'));
  op$.addInput(images);
  op$.addInput(size);
  op$.addInput(min);
  op$.addInput(max);
  op$.setAttrBool('align_corners', alignCorners);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return QuantizedResizeBilinearOutput<T>(
      graph,
      result$,
      (result$[0] as Output<T>),
      (result$[1] as Output<double>),
      (result$[2] as Output<double>));
}

Output<T> randomGamma<T>(Output<T> shape, Output<T> alpha,
    {Graph graph,
    String operationName,
    int seed: 0,
    int seed2: 0,
    DataType s}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RandomGamma', operationName ??= graph._scope.uniqueName('RandomGamma/'));
  op$.addInput(shape);
  op$.addInput(alpha);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
  op$.setAttrType('S', s);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> randomShuffle<T>(Output<T> value,
    {Graph graph, String operationName, int seed: 0, int seed2: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('RandomShuffle',
      operationName ??= graph._scope.uniqueName('RandomShuffle/'));
  op$.addInput(value);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> invertPermutation<T>(Output<T> x,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('InvertPermutation',
      operationName ??= graph._scope.uniqueName('InvertPermutation/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<String> readFile(Output<String> filename,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ReadFile', operationName ??= graph._scope.uniqueName('ReadFile/'));
  op$.addInput(filename);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<T> truncatedNormal<T>(Output<T> shape,
    {Graph graph,
    String operationName,
    int seed: 0,
    int seed2: 0,
    DataType dtype}) {
  dtype ??= inferType(shape);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TruncatedNormal',
      operationName ??= graph._scope.uniqueName('TruncatedNormal/'));
  op$.addInput(shape);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
  op$.setAttrType('dtype', dtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> erf<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Erf', operationName ??= graph._scope.uniqueName('Erf/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> randomStandardNormal<T>(Output<T> shape,
    {Graph graph,
    String operationName,
    int seed: 0,
    int seed2: 0,
    DataType dtype}) {
  dtype ??= inferType(shape);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('RandomStandardNormal',
      operationName ??= graph._scope.uniqueName('RandomStandardNormal/'));
  op$.addInput(shape);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
  op$.setAttrType('dtype', dtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> erfc<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Erfc', operationName ??= graph._scope.uniqueName('Erfc/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> randomUniformInt<T>(
    Output<T> shape, Output<T> minval, Output<T> maxval,
    {Graph graph,
    String operationName,
    int seed: 0,
    int seed2: 0,
    DataType tout}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('RandomUniformInt',
      operationName ??= graph._scope.uniqueName('RandomUniformInt/'));
  op$.addInput(shape);
  op$.addInput(minval);
  op$.addInput(maxval);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
  op$.setAttrType('Tout', tout);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> randomUniform<T>(Output<T> shape,
    {Graph graph,
    String operationName,
    int seed: 0,
    int seed2: 0,
    DataType dtype}) {
  dtype ??= inferType(shape);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('RandomUniform',
      operationName ??= graph._scope.uniqueName('RandomUniform/'));
  op$.addInput(shape);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
  op$.setAttrType('dtype', dtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class SparseFillEmptyRowsGradOutput<T> {
  SparseFillEmptyRowsGradOutput(
      this._graph, this.op, this.dValues, this.dDefaultValue);

  final Graph _graph;

  Operation op;

  final Output<T> dValues;

  final Output<T> dDefaultValue;

  SparseFillEmptyRowsGrad run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return SparseFillEmptyRowsGrad<T>(
        (result$[idx$0] as Output<T>), (result$[idx$1] as Output<T>));
  }
}

class SparseFillEmptyRowsGrad<T> {
  SparseFillEmptyRowsGrad(this.dValues, this.dDefaultValue);

  final Output<T> dValues;

  final Output<T> dDefaultValue;
}

SparseFillEmptyRowsGradOutput sparseFillEmptyRowsGrad<T>(
    Output<int> reverseIndexMap, Output<T> gradValues,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseFillEmptyRowsGrad',
      operationName ??= graph._scope.uniqueName('SparseFillEmptyRowsGrad/'));
  op$.addInput(reverseIndexMap);
  op$.addInput(gradValues);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return SparseFillEmptyRowsGradOutput<T>(
      graph, result$, (result$[0] as Output<T>), (result$[1] as Output<T>));
}

class QuantizedConv2DOutput<T> {
  QuantizedConv2DOutput(
      this._graph, this.op, this.output, this.minOutput, this.maxOutput);

  final Graph _graph;

  Operation op;

  final Output<T> output;

  final Output<double> minOutput;

  final Output<double> maxOutput;

  QuantizedConv2D run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return QuantizedConv2D<T>((result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<double>), (result$[idx$2] as Output<double>));
  }
}

class QuantizedConv2D<T> {
  QuantizedConv2D(this.output, this.minOutput, this.maxOutput);

  final Output<T> output;

  final Output<double> minOutput;

  final Output<double> maxOutput;
}

QuantizedConv2DOutput quantizedConv2D<T>(
    Output<T> input,
    Output<T> filter,
    Output<double> minInput,
    Output<double> maxInput,
    Output<double> minFilter,
    Output<double> maxFilter,
    {Graph graph,
    String operationName,
    DataType tinput,
    DataType tfilter,
    DataType outType: DataType.DT_QINT32,
    List<int> strides,
    String padding,
    List<int> dilations}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QuantizedConv2D',
      operationName ??= graph._scope.uniqueName('QuantizedConv2D/'));
  op$.addInput(input);
  op$.addInput(filter);
  op$.addInput(minInput);
  op$.addInput(maxInput);
  op$.addInput(minFilter);
  op$.addInput(maxFilter);
  op$.setAttrType('Tinput', tinput);
  op$.setAttrType('Tfilter', tfilter);
  op$.setAttrType('out_type', outType);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
  op$.setAttrIntList('dilations', dilations);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return QuantizedConv2DOutput<T>(graph, result$, (result$[0] as Output<T>),
      (result$[1] as Output<double>), (result$[2] as Output<double>));
}

Output<T> scatterNdSub<T>(Output<T> ref, Output<T> indices, Output<T> updates,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ScatterNdSub',
      operationName ??= graph._scope.uniqueName('ScatterNdSub/'));
  op$.addInput(ref);
  op$.addInput(indices);
  op$.addInput(updates);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class SparseFillEmptyRowsOutput<T> {
  SparseFillEmptyRowsOutput(this._graph, this.op, this.outputIndices,
      this.outputValues, this.emptyRowIndicator, this.reverseIndexMap);

  final Graph _graph;

  Operation op;

  final Output<int> outputIndices;

  final Output<T> outputValues;

  final Output<bool> emptyRowIndicator;

  final Output<int> reverseIndexMap;

  SparseFillEmptyRows run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var idx$3 = runner.fetch(op.name, index: 3);
    var result$ = runner.run();
    return SparseFillEmptyRows<T>(
        (result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<T>),
        (result$[idx$2] as Output<bool>),
        (result$[idx$3] as Output<int>));
  }
}

class SparseFillEmptyRows<T> {
  SparseFillEmptyRows(this.outputIndices, this.outputValues,
      this.emptyRowIndicator, this.reverseIndexMap);

  final Output<int> outputIndices;

  final Output<T> outputValues;

  final Output<bool> emptyRowIndicator;

  final Output<int> reverseIndexMap;
}

SparseFillEmptyRowsOutput sparseFillEmptyRows<T>(Output<int> indices,
    Output<T> values, Output<int> denseShape, Output<T> defaultValue,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseFillEmptyRows',
      operationName ??= graph._scope.uniqueName('SparseFillEmptyRows/'));
  op$.addInput(indices);
  op$.addInput(values);
  op$.addInput(denseShape);
  op$.addInput(defaultValue);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return SparseFillEmptyRowsOutput<T>(
      graph,
      result$,
      (result$[0] as Output<int>),
      (result$[1] as Output<T>),
      (result$[2] as Output<bool>),
      (result$[3] as Output<int>));
}

Output<List<T>> statelessIf<T>(Output<T> cond, List<Output<List<T>>> input,
    {Graph graph,
    String operationName,
    DataType tcond,
    List<DataType> tin,
    List<DataType> tout,
    Func thenBranch,
    Func elseBranch}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'StatelessIf', operationName ??= graph._scope.uniqueName('StatelessIf/'));
  op$.addInput(cond);
  op$.addInputList(input);
  op$.setAttrType('Tcond', tcond);
  op$.setAttrTypeList('Tin', tin);
  op$.setAttrTypeList('Tout', tout);
  op$.setAttrFunc('then_branch', thenBranch);
  op$.setAttrFunc('else_branch', elseBranch);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

Output flatMapDataset<T>(
    Output inputDataset, List<Output<List<T>>> otherArguments,
    {Graph graph,
    String operationName,
    Func f,
    List<DataType> targuments,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('FlatMapDataset',
      operationName ??= graph._scope.uniqueName('FlatMapDataset/'));
  op$.addInput(inputDataset);
  op$.addInputList(otherArguments);
  op$.setAttrFunc('f', f);
  op$.setAttrTypeList('Targuments', targuments);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<int> addManySparseToTensorsMap<T>(
    Output<int> sparseIndices, Output<T> sparseValues, Output<int> sparseShape,
    {Graph graph, String operationName, String container, String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AddManySparseToTensorsMap',
      operationName ??= graph._scope.uniqueName('AddManySparseToTensorsMap/'));
  op$.addInput(sparseIndices);
  op$.addInput(sparseValues);
  op$.addInput(sparseShape);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

Output<T> elu<T>(Output<T> features, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Elu', operationName ??= graph._scope.uniqueName('Elu/'));
  op$.addInput(features);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<int> addSparseToTensorsMap<T>(
    Output<int> sparseIndices, Output<T> sparseValues, Output<int> sparseShape,
    {Graph graph, String operationName, String container, String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AddSparseToTensorsMap',
      operationName ??= graph._scope.uniqueName('AddSparseToTensorsMap/'));
  op$.addInput(sparseIndices);
  op$.addInput(sparseValues);
  op$.addInput(sparseShape);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

class SparseSparseMaximumOutput<T> {
  SparseSparseMaximumOutput(
      this._graph, this.op, this.outputIndices, this.outputValues);

  final Graph _graph;

  Operation op;

  final Output<int> outputIndices;

  final Output<T> outputValues;

  SparseSparseMaximum run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return SparseSparseMaximum<T>(
        (result$[idx$0] as Output<int>), (result$[idx$1] as Output<T>));
  }
}

class SparseSparseMaximum<T> {
  SparseSparseMaximum(this.outputIndices, this.outputValues);

  final Output<int> outputIndices;

  final Output<T> outputValues;
}

SparseSparseMaximumOutput sparseSparseMaximum<T>(
    Output<int> aIndices,
    Output<T> aValues,
    Output<int> aShape,
    Output<int> bIndices,
    Output<T> bValues,
    Output<int> bShape,
    {Graph graph,
    String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseSparseMaximum',
      operationName ??= graph._scope.uniqueName('SparseSparseMaximum/'));
  op$.addInput(aIndices);
  op$.addInput(aValues);
  op$.addInput(aShape);
  op$.addInput(bIndices);
  op$.addInput(bValues);
  op$.addInput(bShape);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return SparseSparseMaximumOutput<T>(
      graph, result$, (result$[0] as Output<int>), (result$[1] as Output<T>));
}

Output<T> preventGradient<T>(Output<T> input,
    {Graph graph, String operationName, String message}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('PreventGradient',
      operationName ??= graph._scope.uniqueName('PreventGradient/'));
  op$.addInput(input);
  op$.setAttrString('message', message);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> sparseSoftmax<T>(
    Output<int> spIndices, Output<T> spValues, Output<int> spShape,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseSoftmax',
      operationName ??= graph._scope.uniqueName('SparseSoftmax/'));
  op$.addInput(spIndices);
  op$.addInput(spValues);
  op$.addInput(spShape);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> sparseDenseCwiseAdd<T>(Output<int> spIndices, Output<T> spValues,
    Output<int> spShape, Output<T> dense,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseDenseCwiseAdd',
      operationName ??= graph._scope.uniqueName('SparseDenseCwiseAdd/'));
  op$.addInput(spIndices);
  op$.addInput(spValues);
  op$.addInput(spShape);
  op$.addInput(dense);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> sparseDenseCwiseDiv<T>(Output<int> spIndices, Output<T> spValues,
    Output<int> spShape, Output<T> dense,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseDenseCwiseDiv',
      operationName ??= graph._scope.uniqueName('SparseDenseCwiseDiv/'));
  op$.addInput(spIndices);
  op$.addInput(spValues);
  op$.addInput(spShape);
  op$.addInput(dense);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<String> imageSummary<T>(Output<String> tag, Output<T> tensor,
    {Graph graph, String operationName, int maxImages: 3, Tensor badColor}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ImageSummary',
      operationName ??= graph._scope.uniqueName('ImageSummary/'));
  op$.addInput(tag);
  op$.addInput(tensor);
  op$.setAttrInt('max_images', maxImages);
  op$.setAttrTensor('bad_color', badColor);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<T> shapeN<T>(List<Output<T>> input,
    {Graph graph,
    String operationName,
    int n,
    DataType outType: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ShapeN', operationName ??= graph._scope.uniqueName('ShapeN/'));
  op$.addInputList(input);
  op$.setAttrInt('N', n);
  op$.setAttrType('out_type', outType);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> relu<T>(Output<T> features, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Relu', operationName ??= graph._scope.uniqueName('Relu/'));
  op$.addInput(features);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> matMul<T>(Output<T> a, Output<T> b,
    {Graph graph,
    String operationName,
    bool transposeA: false,
    bool transposeB: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'MatMul', operationName ??= graph._scope.uniqueName('MatMul/'));
  op$.addInput(a);
  op$.addInput(b);
  op$.setAttrBool('transpose_a', transposeA);
  op$.setAttrBool('transpose_b', transposeB);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class SparseReduceSumSparseOutput<T> {
  SparseReduceSumSparseOutput(this._graph, this.op, this.outputIndices,
      this.outputValues, this.outputShape);

  final Graph _graph;

  Operation op;

  final Output<int> outputIndices;

  final Output<T> outputValues;

  final Output<int> outputShape;

  SparseReduceSumSparse run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return SparseReduceSumSparse<T>((result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<T>), (result$[idx$2] as Output<int>));
  }
}

class SparseReduceSumSparse<T> {
  SparseReduceSumSparse(
      this.outputIndices, this.outputValues, this.outputShape);

  final Output<int> outputIndices;

  final Output<T> outputValues;

  final Output<int> outputShape;
}

SparseReduceSumSparseOutput sparseReduceSumSparse<T>(Output<int> inputIndices,
    Output<T> inputValues, Output<int> inputShape, Output<int> reductionAxes,
    {Graph graph, String operationName, bool keepDims: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseReduceSumSparse',
      operationName ??= graph._scope.uniqueName('SparseReduceSumSparse/'));
  op$.addInput(inputIndices);
  op$.addInput(inputValues);
  op$.addInput(inputShape);
  op$.addInput(reductionAxes);
  op$.setAttrBool('keep_dims', keepDims);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return SparseReduceSumSparseOutput<T>(
      graph,
      result$,
      (result$[0] as Output<int>),
      (result$[1] as Output<T>),
      (result$[2] as Output<int>));
}

Output<T> zeta<T>(Output<T> x, Output<T> q,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Zeta', operationName ??= graph._scope.uniqueName('Zeta/'));
  op$.addInput(x);
  op$.addInput(q);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> sparseReduceSum<T>(Output<int> inputIndices, Output<T> inputValues,
    Output<int> inputShape, Output<int> reductionAxes,
    {Graph graph, String operationName, bool keepDims: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseReduceSum',
      operationName ??= graph._scope.uniqueName('SparseReduceSum/'));
  op$.addInput(inputIndices);
  op$.addInput(inputValues);
  op$.addInput(inputShape);
  op$.addInput(reductionAxes);
  op$.setAttrBool('keep_dims', keepDims);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output cacheDataset(Output inputDataset, Output<String> filename,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CacheDataset',
      operationName ??= graph._scope.uniqueName('CacheDataset/'));
  op$.addInput(inputDataset);
  op$.addInput(filename);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

class SparseReduceMaxSparseOutput<T> {
  SparseReduceMaxSparseOutput(this._graph, this.op, this.outputIndices,
      this.outputValues, this.outputShape);

  final Graph _graph;

  Operation op;

  final Output<int> outputIndices;

  final Output<T> outputValues;

  final Output<int> outputShape;

  SparseReduceMaxSparse run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return SparseReduceMaxSparse<T>((result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<T>), (result$[idx$2] as Output<int>));
  }
}

class SparseReduceMaxSparse<T> {
  SparseReduceMaxSparse(
      this.outputIndices, this.outputValues, this.outputShape);

  final Output<int> outputIndices;

  final Output<T> outputValues;

  final Output<int> outputShape;
}

SparseReduceMaxSparseOutput sparseReduceMaxSparse<T>(Output<int> inputIndices,
    Output<T> inputValues, Output<int> inputShape, Output<int> reductionAxes,
    {Graph graph, String operationName, bool keepDims: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseReduceMaxSparse',
      operationName ??= graph._scope.uniqueName('SparseReduceMaxSparse/'));
  op$.addInput(inputIndices);
  op$.addInput(inputValues);
  op$.addInput(inputShape);
  op$.addInput(reductionAxes);
  op$.setAttrBool('keep_dims', keepDims);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return SparseReduceMaxSparseOutput<T>(
      graph,
      result$,
      (result$[0] as Output<int>),
      (result$[1] as Output<T>),
      (result$[2] as Output<int>));
}

Output concatenateDataset(Output inputDataset, Output anotherDataset,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ConcatenateDataset',
      operationName ??= graph._scope.uniqueName('ConcatenateDataset/'));
  op$.addInput(inputDataset);
  op$.addInput(anotherDataset);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<T> unpack<T>(Output<T> value,
    {Graph graph, String operationName, int num, int axis: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Unpack', operationName ??= graph._scope.uniqueName('Unpack/'));
  op$.addInput(value);
  op$.setAttrInt('num', num);
  op$.setAttrInt('axis', axis);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> sparseReduceMax<T>(Output<int> inputIndices, Output<T> inputValues,
    Output<int> inputShape, Output<int> reductionAxes,
    {Graph graph, String operationName, bool keepDims: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseReduceMax',
      operationName ??= graph._scope.uniqueName('SparseReduceMax/'));
  op$.addInput(inputIndices);
  op$.addInput(inputValues);
  op$.addInput(inputShape);
  op$.addInput(reductionAxes);
  op$.setAttrBool('keep_dims', keepDims);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> sparseApplyAdadelta<T>(
    Output<T> var$,
    Output<T> accum,
    Output<T> accumUpdate,
    Output<T> lr,
    Output<T> rho,
    Output<T> epsilon,
    Output<T> grad,
    Output<T> indices,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseApplyAdadelta',
      operationName ??= graph._scope.uniqueName('SparseApplyAdadelta/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(accumUpdate);
  op$.addInput(lr);
  op$.addInput(rho);
  op$.addInput(epsilon);
  op$.addInput(grad);
  op$.addInput(indices);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class SparseReshapeOutput {
  SparseReshapeOutput(
      this._graph, this.op, this.outputIndices, this.outputShape);

  final Graph _graph;

  Operation op;

  final Output<int> outputIndices;

  final Output<int> outputShape;

  SparseReshape run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return SparseReshape(
        (result$[idx$0] as Output<int>), (result$[idx$1] as Output<int>));
  }
}

class SparseReshape {
  SparseReshape(this.outputIndices, this.outputShape);

  final Output<int> outputIndices;

  final Output<int> outputShape;
}

SparseReshapeOutput sparseReshape(
    Output<int> inputIndices, Output<int> inputShape, Output<int> newShape,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseReshape',
      operationName ??= graph._scope.uniqueName('SparseReshape/'));
  op$.addInput(inputIndices);
  op$.addInput(inputShape);
  op$.addInput(newShape);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return SparseReshapeOutput(
      graph, result$, (result$[0] as Output<int>), (result$[1] as Output<int>));
}

class SparseSliceOutput<T> {
  SparseSliceOutput(this._graph, this.op, this.outputIndices, this.outputValues,
      this.outputShape);

  final Graph _graph;

  Operation op;

  final Output<int> outputIndices;

  final Output<T> outputValues;

  final Output<int> outputShape;

  SparseSlice run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return SparseSlice<T>((result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<T>), (result$[idx$2] as Output<int>));
  }
}

class SparseSlice<T> {
  SparseSlice(this.outputIndices, this.outputValues, this.outputShape);

  final Output<int> outputIndices;

  final Output<T> outputValues;

  final Output<int> outputShape;
}

SparseSliceOutput sparseSlice<T>(Output<int> indices, Output<T> values,
    Output<int> shape, Output<int> start, Output<int> size,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SparseSlice', operationName ??= graph._scope.uniqueName('SparseSlice/'));
  op$.addInput(indices);
  op$.addInput(values);
  op$.addInput(shape);
  op$.addInput(start);
  op$.addInput(size);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return SparseSliceOutput<T>(graph, result$, (result$[0] as Output<int>),
      (result$[1] as Output<T>), (result$[2] as Output<int>));
}

Output<T> sparseSliceGrad<T>(Output<T> backpropValGrad,
    Output<int> inputIndices, Output<int> inputStart, Output<int> outputIndices,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseSliceGrad',
      operationName ??= graph._scope.uniqueName('SparseSliceGrad/'));
  op$.addInput(backpropValGrad);
  op$.addInput(inputIndices);
  op$.addInput(inputStart);
  op$.addInput(outputIndices);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation mapClear(
    {Graph graph,
    String operationName,
    int capacity: 0,
    int memoryLimit: 0,
    List<DataType> dtypes,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'MapClear', operationName ??= graph._scope.uniqueName('MapClear/'));
  op$.setAttrInt('capacity', capacity);
  op$.setAttrInt('memory_limit', memoryLimit);
  op$.setAttrTypeList('dtypes', dtypes);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

class DeserializeSparseOutput<T> {
  DeserializeSparseOutput(this._graph, this.op, this.sparseIndices,
      this.sparseValues, this.sparseShape);

  final Graph _graph;

  Operation op;

  final Output<int> sparseIndices;

  final Output<T> sparseValues;

  final Output<int> sparseShape;

  DeserializeSparse run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return DeserializeSparse<T>((result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<T>), (result$[idx$2] as Output<int>));
  }
}

class DeserializeSparse<T> {
  DeserializeSparse(this.sparseIndices, this.sparseValues, this.sparseShape);

  final Output<int> sparseIndices;

  final Output<T> sparseValues;

  final Output<int> sparseShape;
}

DeserializeSparseOutput deserializeSparse<T>(Output<T> serializedSparse,
    {Graph graph,
    String operationName,
    DataType dtype,
    DataType tserialized: DataType.DT_STRING}) {
  dtype ??= inferType(serializedSparse);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DeserializeSparse',
      operationName ??= graph._scope.uniqueName('DeserializeSparse/'));
  op$.addInput(serializedSparse);
  op$.setAttrType('dtype', dtype);
  op$.setAttrType('Tserialized', tserialized);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return DeserializeSparseOutput<T>(graph, result$, (result$[0] as Output<int>),
      (result$[1] as Output<T>), (result$[2] as Output<int>));
}

Output<T> serializeSparse<T>(
    Output<int> sparseIndices, Output<T> sparseValues, Output<int> sparseShape,
    {Graph graph, String operationName, DataType outType: DataType.DT_STRING}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SerializeSparse',
      operationName ??= graph._scope.uniqueName('SerializeSparse/'));
  op$.addInput(sparseIndices);
  op$.addInput(sparseValues);
  op$.addInput(sparseShape);
  op$.setAttrType('out_type', outType);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class FusedBatchNormGradV2Output<T> {
  FusedBatchNormGradV2Output(
      this._graph,
      this.op,
      this.xBackprop,
      this.scaleBackprop,
      this.offsetBackprop,
      this.reserveSpace3,
      this.reserveSpace4);

  final Graph _graph;

  Operation op;

  final Output<T> xBackprop;

  final Output<T> scaleBackprop;

  final Output<T> offsetBackprop;

  final Output<T> reserveSpace3;

  final Output<T> reserveSpace4;

  FusedBatchNormGradV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var idx$3 = runner.fetch(op.name, index: 3);
    var idx$4 = runner.fetch(op.name, index: 4);
    var result$ = runner.run();
    return FusedBatchNormGradV2<T>(
        (result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<T>),
        (result$[idx$2] as Output<T>),
        (result$[idx$3] as Output<T>),
        (result$[idx$4] as Output<T>));
  }
}

class FusedBatchNormGradV2<T> {
  FusedBatchNormGradV2(this.xBackprop, this.scaleBackprop, this.offsetBackprop,
      this.reserveSpace3, this.reserveSpace4);

  final Output<T> xBackprop;

  final Output<T> scaleBackprop;

  final Output<T> offsetBackprop;

  final Output<T> reserveSpace3;

  final Output<T> reserveSpace4;
}

FusedBatchNormGradV2Output fusedBatchNormGradV2<T>(
    Output<T> yBackprop,
    Output<T> x,
    Output<double> scale,
    Output<T> reserveSpace1,
    Output<T> reserveSpace2,
    {Graph graph,
    String operationName,
    DataType u,
    double epsilon: 0.00009999999747378752,
    String dataFormat: 'NHWC',
    bool isTraining: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('FusedBatchNormGradV2',
      operationName ??= graph._scope.uniqueName('FusedBatchNormGradV2/'));
  op$.addInput(yBackprop);
  op$.addInput(x);
  op$.addInput(scale);
  op$.addInput(reserveSpace1);
  op$.addInput(reserveSpace2);
  op$.setAttrType('U', u);
  op$.setAttrFloat('epsilon', epsilon);
  op$.setAttrString('data_format', dataFormat);
  op$.setAttrBool('is_training', isTraining);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return FusedBatchNormGradV2Output<T>(
      graph,
      result$,
      (result$[0] as Output<T>),
      (result$[1] as Output<T>),
      (result$[2] as Output<T>),
      (result$[3] as Output<T>),
      (result$[4] as Output<T>));
}

Output<int> barrierReadySize(Output<String> handle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BarrierReadySize',
      operationName ??= graph._scope.uniqueName('BarrierReadySize/'));
  op$.addInput(handle);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

/// This operation has no outputs.
Operation mapStage<T>(
    Output<int> key, Output<int> indices, List<Output<List<T>>> values,
    {Graph graph,
    String operationName,
    int capacity: 0,
    int memoryLimit: 0,
    List<DataType> dtypes,
    List<DataType> fakeDtypes,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'MapStage', operationName ??= graph._scope.uniqueName('MapStage/'));
  op$.addInput(key);
  op$.addInput(indices);
  op$.addInputList(values);
  op$.setAttrInt('capacity', capacity);
  op$.setAttrInt('memory_limit', memoryLimit);
  op$.setAttrTypeList('dtypes', dtypes);
  op$.setAttrTypeList('fake_dtypes', fakeDtypes);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> sparseTensorDenseMatMul<T>(
    Output<T> aIndices, Output<T> aValues, Output<int> aShape, Output<T> b,
    {Graph graph,
    String operationName,
    DataType tindices: DataType.DT_INT64,
    bool adjointA: false,
    bool adjointB: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseTensorDenseMatMul',
      operationName ??= graph._scope.uniqueName('SparseTensorDenseMatMul/'));
  op$.addInput(aIndices);
  op$.addInput(aValues);
  op$.addInput(aShape);
  op$.addInput(b);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('adjoint_a', adjointA);
  op$.setAttrBool('adjoint_b', adjointB);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class SparseAddGradOutput<T> {
  SparseAddGradOutput(this._graph, this.op, this.aValGrad, this.bValGrad);

  final Graph _graph;

  Operation op;

  final Output<T> aValGrad;

  final Output<T> bValGrad;

  SparseAddGrad run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return SparseAddGrad<T>(
        (result$[idx$0] as Output<T>), (result$[idx$1] as Output<T>));
  }
}

class SparseAddGrad<T> {
  SparseAddGrad(this.aValGrad, this.bValGrad);

  final Output<T> aValGrad;

  final Output<T> bValGrad;
}

SparseAddGradOutput sparseAddGrad<T>(Output<T> backpropValGrad,
    Output<int> aIndices, Output<int> bIndices, Output<int> sumIndices,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseAddGrad',
      operationName ??= graph._scope.uniqueName('SparseAddGrad/'));
  op$.addInput(backpropValGrad);
  op$.addInput(aIndices);
  op$.addInput(bIndices);
  op$.addInput(sumIndices);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return SparseAddGradOutput<T>(
      graph, result$, (result$[0] as Output<T>), (result$[1] as Output<T>));
}

class SparseToSparseSetOperationOutput<T> {
  SparseToSparseSetOperationOutput(this._graph, this.op, this.resultIndices,
      this.resultValues, this.resultShape);

  final Graph _graph;

  Operation op;

  final Output<int> resultIndices;

  final Output<T> resultValues;

  final Output<int> resultShape;

  SparseToSparseSetOperation run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return SparseToSparseSetOperation<T>((result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<T>), (result$[idx$2] as Output<int>));
  }
}

class SparseToSparseSetOperation<T> {
  SparseToSparseSetOperation(
      this.resultIndices, this.resultValues, this.resultShape);

  final Output<int> resultIndices;

  final Output<T> resultValues;

  final Output<int> resultShape;
}

SparseToSparseSetOperationOutput sparseToSparseSetOperation<T>(
    Output<int> set1Indices,
    Output<T> set1Values,
    Output<int> set1Shape,
    Output<int> set2Indices,
    Output<T> set2Values,
    Output<int> set2Shape,
    {Graph graph,
    String operationName,
    String setOperation,
    bool validateIndices: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseToSparseSetOperation',
      operationName ??= graph._scope.uniqueName('SparseToSparseSetOperation/'));
  op$.addInput(set1Indices);
  op$.addInput(set1Values);
  op$.addInput(set1Shape);
  op$.addInput(set2Indices);
  op$.addInput(set2Values);
  op$.addInput(set2Shape);
  op$.setAttrString('set_operation', setOperation);
  op$.setAttrBool('validate_indices', validateIndices);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return SparseToSparseSetOperationOutput<T>(
      graph,
      result$,
      (result$[0] as Output<int>),
      (result$[1] as Output<T>),
      (result$[2] as Output<int>));
}

Output<T> resizeNearestNeighborGrad<T>(Output<T> grads, Output<int> size,
    {Graph graph, String operationName, bool alignCorners: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResizeNearestNeighborGrad',
      operationName ??= graph._scope.uniqueName('ResizeNearestNeighborGrad/'));
  op$.addInput(grads);
  op$.addInput(size);
  op$.setAttrBool('align_corners', alignCorners);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// A Reader that outputs rows from a BigQuery table as tensorflow Examples.
/// This operation has one output: The handle to reference the Reader.
/// attr [container]: If non-empty, this reader is placed in the given container.
/// Otherwise, a default container is used.
/// attr [sharedName]: If non-empty, this reader is named in the given bucket
/// with this shared_name. Otherwise, the node name is used instead.
/// attr [projectId]: GCP project ID.
/// attr [datasetId]: BigQuery Dataset ID.
/// attr [tableId]: Table to read.
/// attr [columns]: List of columns to read. Leave empty to read all columns.
/// attr [timestampMillis]: Table snapshot timestamp in millis since epoch. Relative
/// (negative or zero) snapshot times are not allowed. For more details, see
/// 'Table Decorators' in BigQuery docs.
/// attr [testEndPoint]: Do not use. For testing purposes only.
Output<String> bigQueryReader(
    {Graph graph,
    String operationName,
    String container,
    String sharedName,
    String projectId,
    String datasetId,
    String tableId,
    List<String> columns,
    int timestampMillis,
    String testEndPoint}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BigQueryReader',
      operationName ??= graph._scope.uniqueName('BigQueryReader/'));
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
  op$.setAttrString('project_id', projectId);
  op$.setAttrString('dataset_id', datasetId);
  op$.setAttrString('table_id', tableId);
  op$.setAttrStringList('columns', columns);
  op$.setAttrInt('timestamp_millis', timestampMillis);
  op$.setAttrString('test_end_point', testEndPoint);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output windowDataset(Output inputDataset, Output<int> windowSize,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('WindowDataset',
      operationName ??= graph._scope.uniqueName('WindowDataset/'));
  op$.addInput(inputDataset);
  op$.addInput(windowSize);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<int> setSize<T>(
    Output<int> setIndices, Output<T> setValues, Output<int> setShape,
    {Graph graph, String operationName, bool validateIndices: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SetSize', operationName ??= graph._scope.uniqueName('SetSize/'));
  op$.addInput(setIndices);
  op$.addInput(setValues);
  op$.addInput(setShape);
  op$.setAttrBool('validate_indices', validateIndices);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

Output<int> sdcaFprint(Output<String> input,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SdcaFprint', operationName ??= graph._scope.uniqueName('SdcaFprint/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

/// This operation has no outputs.
Operation sdcaShrinkL1(List<Output<double>> weights,
    {Graph graph,
    String operationName,
    int numFeatures,
    double l1,
    double l2}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SdcaShrinkL1',
      operationName ??= graph._scope.uniqueName('SdcaShrinkL1/'));
  op$.addInputList(weights);
  op$.setAttrInt('num_features', numFeatures);
  op$.setAttrFloat('l1', l1);
  op$.setAttrFloat('l2', l2);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

class SdcaOptimizerOutput {
  SdcaOptimizerOutput(this._graph, this.op, this.outExampleStateData,
      this.outDeltaSparseWeights, this.outDeltaDenseWeights);

  final Graph _graph;

  Operation op;

  final Output<double> outExampleStateData;

  final Output<double> outDeltaSparseWeights;

  final Output<double> outDeltaDenseWeights;

  SdcaOptimizer run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return SdcaOptimizer((result$[idx$0] as Output<double>),
        (result$[idx$1] as Output<double>), (result$[idx$2] as Output<double>));
  }
}

class SdcaOptimizer {
  SdcaOptimizer(this.outExampleStateData, this.outDeltaSparseWeights,
      this.outDeltaDenseWeights);

  final Output<double> outExampleStateData;

  final Output<double> outDeltaSparseWeights;

  final Output<double> outDeltaDenseWeights;
}

SdcaOptimizerOutput sdcaOptimizer(
    List<Output<int>> sparseExampleIndices,
    List<Output<int>> sparseFeatureIndices,
    List<Output<double>> sparseFeatureValues,
    List<Output<double>> denseFeatures,
    Output<double> exampleWeights,
    Output<double> exampleLabels,
    List<Output<int>> sparseIndices,
    List<Output<double>> sparseWeights,
    List<Output<double>> denseWeights,
    Output<double> exampleStateData,
    {Graph graph,
    String operationName,
    String lossType,
    bool adaptative: false,
    int numSparseFeatures,
    int numSparseFeaturesWithValues,
    int numDenseFeatures,
    double l1,
    double l2,
    int numLossPartitions,
    int numInnerIterations}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SdcaOptimizer',
      operationName ??= graph._scope.uniqueName('SdcaOptimizer/'));
  op$.addInputList(sparseExampleIndices);
  op$.addInputList(sparseFeatureIndices);
  op$.addInputList(sparseFeatureValues);
  op$.addInputList(denseFeatures);
  op$.addInput(exampleWeights);
  op$.addInput(exampleLabels);
  op$.addInputList(sparseIndices);
  op$.addInputList(sparseWeights);
  op$.addInputList(denseWeights);
  op$.addInput(exampleStateData);
  op$.setAttrString('loss_type', lossType);
  op$.setAttrBool('adaptative', adaptative);
  op$.setAttrInt('num_sparse_features', numSparseFeatures);
  op$.setAttrInt(
      'num_sparse_features_with_values', numSparseFeaturesWithValues);
  op$.setAttrInt('num_dense_features', numDenseFeatures);
  op$.setAttrFloat('l1', l1);
  op$.setAttrFloat('l2', l2);
  op$.setAttrInt('num_loss_partitions', numLossPartitions);
  op$.setAttrInt('num_inner_iterations', numInnerIterations);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return SdcaOptimizerOutput(graph, result$, (result$[0] as Output<double>),
      (result$[1] as Output<double>), (result$[2] as Output<double>));
}

/// This operation has no outputs.
Operation resourceSparseApplyAdagrad<T>(
    Output var$, Output accum, Output<T> lr, Output<T> grad, Output<T> indices,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false,
    bool updateSlots: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceSparseApplyAdagrad',
      operationName ??= graph._scope.uniqueName('ResourceSparseApplyAdagrad/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(lr);
  op$.addInput(grad);
  op$.addInput(indices);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
  op$.setAttrBool('update_slots', updateSlots);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> add<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Add', operationName ??= graph._scope.uniqueName('Add/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class UniformCandidateSamplerOutput {
  UniformCandidateSamplerOutput(this._graph, this.op, this.sampledCandidates,
      this.trueExpectedCount, this.sampledExpectedCount);

  final Graph _graph;

  Operation op;

  final Output<int> sampledCandidates;

  final Output<double> trueExpectedCount;

  final Output<double> sampledExpectedCount;

  UniformCandidateSampler run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return UniformCandidateSampler((result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<double>), (result$[idx$2] as Output<double>));
  }
}

class UniformCandidateSampler {
  UniformCandidateSampler(this.sampledCandidates, this.trueExpectedCount,
      this.sampledExpectedCount);

  final Output<int> sampledCandidates;

  final Output<double> trueExpectedCount;

  final Output<double> sampledExpectedCount;
}

UniformCandidateSamplerOutput uniformCandidateSampler(Output<int> trueClasses,
    {Graph graph,
    String operationName,
    int numTrue,
    int numSampled,
    bool unique,
    int rangeMax,
    int seed: 0,
    int seed2: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('UniformCandidateSampler',
      operationName ??= graph._scope.uniqueName('UniformCandidateSampler/'));
  op$.addInput(trueClasses);
  op$.setAttrInt('num_true', numTrue);
  op$.setAttrInt('num_sampled', numSampled);
  op$.setAttrBool('unique', unique);
  op$.setAttrInt('range_max', rangeMax);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return UniformCandidateSamplerOutput(
      graph,
      result$,
      (result$[0] as Output<int>),
      (result$[1] as Output<double>),
      (result$[2] as Output<double>));
}

Output<T> resourceGather<T>(Output resource, Output<T> indices,
    {Graph graph,
    String operationName,
    bool validateIndices: true,
    DataType dtype,
    DataType tindices}) {
  dtype ??= inferType(resource);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceGather',
      operationName ??= graph._scope.uniqueName('ResourceGather/'));
  op$.addInput(resource);
  op$.addInput(indices);
  op$.setAttrBool('validate_indices', validateIndices);
  op$.setAttrType('dtype', dtype);
  op$.setAttrType('Tindices', tindices);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class TryRpcOutput {
  TryRpcOutput(
      this._graph, this.op, this.response, this.statusCode, this.statusMessage);

  final Graph _graph;

  Operation op;

  final Output<String> response;

  final Output<int> statusCode;

  final Output<String> statusMessage;

  TryRpc run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return TryRpc((result$[idx$0] as Output<String>),
        (result$[idx$1] as Output<int>), (result$[idx$2] as Output<String>));
  }
}

class TryRpc {
  TryRpc(this.response, this.statusCode, this.statusMessage);

  final Output<String> response;

  final Output<int> statusCode;

  final Output<String> statusMessage;
}

TryRpcOutput tryRpc(
    Output<String> address, Output<String> method, Output<String> request,
    {Graph graph,
    String operationName,
    String protocol,
    bool failFast: true,
    int timeoutInMs: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'TryRpc', operationName ??= graph._scope.uniqueName('TryRpc/'));
  op$.addInput(address);
  op$.addInput(method);
  op$.addInput(request);
  op$.setAttrString('protocol', protocol);
  op$.setAttrBool('fail_fast', failFast);
  op$.setAttrInt('timeout_in_ms', timeoutInMs);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return TryRpcOutput(graph, result$, (result$[0] as Output<String>),
      (result$[1] as Output<int>), (result$[2] as Output<String>));
}

Output tFRecordDataset(Output<String> filenames, Output<String> compressionType,
    Output<int> bufferSize,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TFRecordDataset',
      operationName ??= graph._scope.uniqueName('TFRecordDataset/'));
  op$.addInput(filenames);
  op$.addInput(compressionType);
  op$.addInput(bufferSize);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<String> rpc(
    Output<String> address, Output<String> method, Output<String> request,
    {Graph graph,
    String operationName,
    String protocol,
    bool failFast: true,
    int timeoutInMs: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Rpc', operationName ??= graph._scope.uniqueName('Rpc/'));
  op$.addInput(address);
  op$.addInput(method);
  op$.addInput(request);
  op$.setAttrString('protocol', protocol);
  op$.setAttrBool('fail_fast', failFast);
  op$.setAttrInt('timeout_in_ms', timeoutInMs);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

/// This operation has no outputs.
Operation consumeMutexLock(Output mutexLock,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ConsumeMutexLock',
      operationName ??= graph._scope.uniqueName('ConsumeMutexLock/'));
  op$.addInput(mutexLock);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output mutexLock(Output mutex, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'MutexLock', operationName ??= graph._scope.uniqueName('MutexLock/'));
  op$.addInput(mutex);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<String> encodeJpeg(Output image,
    {Graph graph,
    String operationName,
    String format,
    int quality: 95,
    bool progressive: false,
    bool optimizeSize: false,
    bool chromaDownsampling: true,
    String densityUnit: 'in',
    int xDensity: 300,
    int yDensity: 300,
    String xmpMetadata}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'EncodeJpeg', operationName ??= graph._scope.uniqueName('EncodeJpeg/'));
  op$.addInput(image);
  op$.setAttrString('format', format);
  op$.setAttrInt('quality', quality);
  op$.setAttrBool('progressive', progressive);
  op$.setAttrBool('optimize_size', optimizeSize);
  op$.setAttrBool('chroma_downsampling', chromaDownsampling);
  op$.setAttrString('density_unit', densityUnit);
  op$.setAttrInt('x_density', xDensity);
  op$.setAttrInt('y_density', yDensity);
  op$.setAttrString('xmp_metadata', xmpMetadata);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<int> rank<T>(Output<T> input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Rank', operationName ??= graph._scope.uniqueName('Rank/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

class StringSplitOutput {
  StringSplitOutput(
      this._graph, this.op, this.indices, this.values, this.shape);

  final Graph _graph;

  Operation op;

  final Output<int> indices;

  final Output<String> values;

  final Output<int> shape;

  StringSplit run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return StringSplit((result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<String>), (result$[idx$2] as Output<int>));
  }
}

class StringSplit {
  StringSplit(this.indices, this.values, this.shape);

  final Output<int> indices;

  final Output<String> values;

  final Output<int> shape;
}

StringSplitOutput stringSplit(Output<String> input, Output<String> delimiter,
    {Graph graph, String operationName, bool skipEmpty: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'StringSplit', operationName ??= graph._scope.uniqueName('StringSplit/'));
  op$.addInput(input);
  op$.addInput(delimiter);
  op$.setAttrBool('skip_empty', skipEmpty);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return StringSplitOutput(graph, result$, (result$[0] as Output<int>),
      (result$[1] as Output<String>), (result$[2] as Output<int>));
}

/// This operation has no outputs.
Operation resourceScatterUpdate<T>(
    Output resource, Output<T> indices, Output<T> updates,
    {Graph graph, String operationName, DataType dtype, DataType tindices}) {
  dtype ??= inferType(resource);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceScatterUpdate',
      operationName ??= graph._scope.uniqueName('ResourceScatterUpdate/'));
  op$.addInput(resource);
  op$.addInput(indices);
  op$.addInput(updates);
  op$.setAttrType('dtype', dtype);
  op$.setAttrType('Tindices', tindices);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// This operation has no outputs.
Operation resourceScatterMin<T>(
    Output resource, Output<T> indices, Output<T> updates,
    {Graph graph, String operationName, DataType dtype, DataType tindices}) {
  dtype ??= inferType(resource);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceScatterMin',
      operationName ??= graph._scope.uniqueName('ResourceScatterMin/'));
  op$.addInput(resource);
  op$.addInput(indices);
  op$.addInput(updates);
  op$.setAttrType('dtype', dtype);
  op$.setAttrType('Tindices', tindices);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> stopGradient<T>(Output<T> input,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StopGradient',
      operationName ??= graph._scope.uniqueName('StopGradient/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<String> wholeFileReader(
    {Graph graph, String operationName, String container, String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('WholeFileReader',
      operationName ??= graph._scope.uniqueName('WholeFileReader/'));
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

/// This operation has no outputs.
Operation resourceScatterMul<T>(
    Output resource, Output<T> indices, Output<T> updates,
    {Graph graph, String operationName, DataType dtype, DataType tindices}) {
  dtype ??= inferType(resource);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceScatterMul',
      operationName ??= graph._scope.uniqueName('ResourceScatterMul/'));
  op$.addInput(resource);
  op$.addInput(indices);
  op$.addInput(updates);
  op$.setAttrType('dtype', dtype);
  op$.setAttrType('Tindices', tindices);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<double> fakeQuantWithMinMaxVarsPerChannel(
    Output<double> inputs, Output<double> min, Output<double> max,
    {Graph graph,
    String operationName,
    int numBits: 8,
    bool narrowRange: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'FakeQuantWithMinMaxVarsPerChannel',
      operationName ??=
          graph._scope.uniqueName('FakeQuantWithMinMaxVarsPerChannel/'));
  op$.addInput(inputs);
  op$.addInput(min);
  op$.addInput(max);
  op$.setAttrInt('num_bits', numBits);
  op$.setAttrBool('narrow_range', narrowRange);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

Output<bool> varIsInitializedOp(Output resource,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('VarIsInitializedOp',
      operationName ??= graph._scope.uniqueName('VarIsInitializedOp/'));
  op$.addInput(resource);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
}

Output<T> applyAdam<T>(
    Output<T> var$,
    Output<T> m,
    Output<T> v,
    Output<T> beta1Power,
    Output<T> beta2Power,
    Output<T> lr,
    Output<T> beta1,
    Output<T> beta2,
    Output<T> epsilon,
    Output<T> grad,
    {Graph graph,
    String operationName,
    bool useLocking: false,
    bool useNesterov: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ApplyAdam', operationName ??= graph._scope.uniqueName('ApplyAdam/'));
  op$.addInput(var$);
  op$.addInput(m);
  op$.addInput(v);
  op$.addInput(beta1Power);
  op$.addInput(beta2Power);
  op$.addInput(lr);
  op$.addInput(beta1);
  op$.addInput(beta2);
  op$.addInput(epsilon);
  op$.addInput(grad);
  op$.setAttrBool('use_locking', useLocking);
  op$.setAttrBool('use_nesterov', useNesterov);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> depthwiseConv2dNativeBackpropInput<T>(
    Output<int> inputSizes, Output<T> filter, Output<T> outBackprop,
    {Graph graph,
    String operationName,
    List<int> strides,
    String padding,
    String dataFormat: 'NHWC',
    List<int> dilations}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'DepthwiseConv2dNativeBackpropInput',
      operationName ??=
          graph._scope.uniqueName('DepthwiseConv2dNativeBackpropInput/'));
  op$.addInput(inputSizes);
  op$.addInput(filter);
  op$.addInput(outBackprop);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
  op$.setAttrString('data_format', dataFormat);
  op$.setAttrIntList('dilations', dilations);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation assignAddVariableOp<T>(Output resource, Output<T> value,
    {Graph graph, String operationName, DataType dtype}) {
  dtype ??= inferType(resource);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AssignAddVariableOp',
      operationName ??= graph._scope.uniqueName('AssignAddVariableOp/'));
  op$.addInput(resource);
  op$.addInput(value);
  op$.setAttrType('dtype', dtype);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> histogramFixedWidth<T>(
    Output<T> values, Output<T> valueRange, Output<int> nbins,
    {Graph graph, String operationName, DataType dtype: DataType.DT_INT32}) {
  dtype ??= inferType(values);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('HistogramFixedWidth',
      operationName ??= graph._scope.uniqueName('HistogramFixedWidth/'));
  op$.addInput(values);
  op$.addInput(valueRange);
  op$.addInput(nbins);
  op$.setAttrType('dtype', dtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation destroyResourceOp(Output resource,
    {Graph graph, String operationName, bool ignoreLookupError: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DestroyResourceOp',
      operationName ??= graph._scope.uniqueName('DestroyResourceOp/'));
  op$.addInput(resource);
  op$.setAttrBool('ignore_lookup_error', ignoreLookupError);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> stridedSliceAssign<T>(Output<T> ref, Output<T> begin, Output<T> end,
    Output<T> strides, Output<T> value,
    {Graph graph,
    String operationName,
    DataType index,
    int beginMask: 0,
    int endMask: 0,
    int ellipsisMask: 0,
    int newAxisMask: 0,
    int shrinkAxisMask: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StridedSliceAssign',
      operationName ??= graph._scope.uniqueName('StridedSliceAssign/'));
  op$.addInput(ref);
  op$.addInput(begin);
  op$.addInput(end);
  op$.addInput(strides);
  op$.addInput(value);
  op$.setAttrType('Index', index);
  op$.setAttrInt('begin_mask', beginMask);
  op$.setAttrInt('end_mask', endMask);
  op$.setAttrInt('ellipsis_mask', ellipsisMask);
  op$.setAttrInt('new_axis_mask', newAxisMask);
  op$.setAttrInt('shrink_axis_mask', shrinkAxisMask);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class ComputeAccidentalHitsOutput {
  ComputeAccidentalHitsOutput(
      this._graph, this.op, this.indices, this.ids, this.weights);

  final Graph _graph;

  Operation op;

  final Output<int> indices;

  final Output<int> ids;

  final Output<double> weights;

  ComputeAccidentalHits run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return ComputeAccidentalHits((result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<int>), (result$[idx$2] as Output<double>));
  }
}

class ComputeAccidentalHits {
  ComputeAccidentalHits(this.indices, this.ids, this.weights);

  final Output<int> indices;

  final Output<int> ids;

  final Output<double> weights;
}

ComputeAccidentalHitsOutput computeAccidentalHits(
    Output<int> trueClasses, Output<int> sampledCandidates,
    {Graph graph,
    String operationName,
    int numTrue,
    int seed: 0,
    int seed2: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ComputeAccidentalHits',
      operationName ??= graph._scope.uniqueName('ComputeAccidentalHits/'));
  op$.addInput(trueClasses);
  op$.addInput(sampledCandidates);
  op$.setAttrInt('num_true', numTrue);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return ComputeAccidentalHitsOutput(
      graph,
      result$,
      (result$[0] as Output<int>),
      (result$[1] as Output<int>),
      (result$[2] as Output<double>));
}

Output varHandleOp(
    {Graph graph,
    String operationName,
    String container,
    String sharedName,
    @required DataType dtype,
    Shape shape}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'VarHandleOp', operationName ??= graph._scope.uniqueName('VarHandleOp/'));
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
  op$.setAttrType('dtype', dtype);
  op$.setAttrShape('shape', shape);
  // ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

/// This operation has no outputs.
Operation resourceSparseApplyRMSProp<T>(
    Output var$,
    Output ms,
    Output mom,
    Output<T> lr,
    Output<T> rho,
    Output<T> momentum,
    Output<T> epsilon,
    Output<T> grad,
    Output<T> indices,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceSparseApplyRMSProp',
      operationName ??= graph._scope.uniqueName('ResourceSparseApplyRMSProp/'));
  op$.addInput(var$);
  op$.addInput(ms);
  op$.addInput(mom);
  op$.addInput(lr);
  op$.addInput(rho);
  op$.addInput(momentum);
  op$.addInput(epsilon);
  op$.addInput(grad);
  op$.addInput(indices);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

@Deprecated('DEPRECATED at GraphDef version 15: Use IFFT2D')
Output batchIFFT2D(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BatchIFFT2D', operationName ??= graph._scope.uniqueName('BatchIFFT2D/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<T> stringToNumber<T>(Output<String> stringTensor,
    {Graph graph, String operationName, DataType outType: DataType.DT_FLOAT}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StringToNumber',
      operationName ??= graph._scope.uniqueName('StringToNumber/'));
  op$.addInput(stringTensor);
  op$.setAttrType('out_type', outType);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> unravelIndex<T>(Output<T> indices, Output<T> dims,
    {Graph graph, String operationName, DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('UnravelIndex',
      operationName ??= graph._scope.uniqueName('UnravelIndex/'));
  op$.addInput(indices);
  op$.addInput(dims);
  op$.setAttrType('Tidx', tidx);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<List<T>> decodeCSV<T>(
    Output<String> records, List<Output<List<T>>> recordDefaults,
    {Graph graph,
    String operationName,
    List<DataType> oUTTYPE,
    String fieldDelim: ',',
    bool useQuoteDelim: true,
    String naValue,
    List<int> selectCols}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'DecodeCSV', operationName ??= graph._scope.uniqueName('DecodeCSV/'));
  op$.addInput(records);
  op$.addInputList(recordDefaults);
  op$.setAttrTypeList('OUT_TYPE', oUTTYPE);
  op$.setAttrString('field_delim', fieldDelim);
  op$.setAttrBool('use_quote_delim', useQuoteDelim);
  op$.setAttrString('na_value', naValue);
  op$.setAttrIntList('select_cols', selectCols);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

Output<String> serializeTensor<T>(Output<T> tensor,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SerializeTensor',
      operationName ??= graph._scope.uniqueName('SerializeTensor/'));
  op$.addInput(tensor);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output scanDataset<T>(Output inputDataset, List<Output<List<T>>> initialState,
    List<Output<List<T>>> otherArguments,
    {Graph graph,
    String operationName,
    Func f,
    List<DataType> tstate,
    List<DataType> targuments,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ScanDataset', operationName ??= graph._scope.uniqueName('ScanDataset/'));
  op$.addInput(inputDataset);
  op$.addInputList(initialState);
  op$.addInputList(otherArguments);
  op$.setAttrFunc('f', f);
  op$.setAttrTypeList('Tstate', tstate);
  op$.setAttrTypeList('Targuments', targuments);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

class ParseSequenceExampleOutput<T> {
  ParseSequenceExampleOutput(
      this._graph,
      this.op,
      this.contextSparseIndices,
      this.contextSparseValues,
      this.contextSparseShapes,
      this.contextDenseValues,
      this.featureListSparseIndices,
      this.featureListSparseValues,
      this.featureListSparseShapes,
      this.featureListDenseValues,
      this.featureListDenseLengths);

  final Graph _graph;

  Operation op;

  final Output<int> contextSparseIndices;

  final Output<List<T>> contextSparseValues;

  final Output<int> contextSparseShapes;

  final Output<List<T>> contextDenseValues;

  final Output<int> featureListSparseIndices;

  final Output<List<T>> featureListSparseValues;

  final Output<int> featureListSparseShapes;

  final Output<List<T>> featureListDenseValues;

  final Output<int> featureListDenseLengths;

  ParseSequenceExample run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var idx$3 = runner.fetch(op.name, index: 3);
    var idx$4 = runner.fetch(op.name, index: 4);
    var idx$5 = runner.fetch(op.name, index: 5);
    var idx$6 = runner.fetch(op.name, index: 6);
    var idx$7 = runner.fetch(op.name, index: 7);
    var idx$8 = runner.fetch(op.name, index: 8);
    var result$ = runner.run();
    return ParseSequenceExample<T>(
        (result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<List<T>>),
        (result$[idx$2] as Output<int>),
        (result$[idx$3] as Output<List<T>>),
        (result$[idx$4] as Output<int>),
        (result$[idx$5] as Output<List<T>>),
        (result$[idx$6] as Output<int>),
        (result$[idx$7] as Output<List<T>>),
        (result$[idx$8] as Output<int>));
  }
}

class ParseSequenceExample<T> {
  ParseSequenceExample(
      this.contextSparseIndices,
      this.contextSparseValues,
      this.contextSparseShapes,
      this.contextDenseValues,
      this.featureListSparseIndices,
      this.featureListSparseValues,
      this.featureListSparseShapes,
      this.featureListDenseValues,
      this.featureListDenseLengths);

  final Output<int> contextSparseIndices;

  final Output<List<T>> contextSparseValues;

  final Output<int> contextSparseShapes;

  final Output<List<T>> contextDenseValues;

  final Output<int> featureListSparseIndices;

  final Output<List<T>> featureListSparseValues;

  final Output<int> featureListSparseShapes;

  final Output<List<T>> featureListDenseValues;

  final Output<int> featureListDenseLengths;
}

ParseSequenceExampleOutput parseSequenceExample<T>(Output<String> serialized,
    Output<String> debugName, List<Output<List<T>>> contextDenseDefaults,
    {Graph graph,
    String operationName,
    List<String> featureListDenseMissingAssumedEmpty,
    List<String> contextSparseKeys,
    List<String> contextDenseKeys,
    List<String> featureListSparseKeys,
    List<String> featureListDenseKeys,
    int ncontextSparse: 0,
    int ncontextDense: 0,
    int nfeatureListSparse: 0,
    int nfeatureListDense: 0,
    List<DataType> contextSparseTypes,
    List<DataType> tcontextDense,
    List<DataType> featureListDenseTypes,
    List<Shape> contextDenseShapes,
    List<DataType> featureListSparseTypes,
    List<Shape> featureListDenseShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ParseSequenceExample',
      operationName ??= graph._scope.uniqueName('ParseSequenceExample/'));
  op$.addInput(serialized);
  op$.addInput(debugName);
  op$.addInputList(contextDenseDefaults);
  op$.setAttrStringList('feature_list_dense_missing_assumed_empty',
      featureListDenseMissingAssumedEmpty);
  op$.setAttrStringList('context_sparse_keys', contextSparseKeys);
  op$.setAttrStringList('context_dense_keys', contextDenseKeys);
  op$.setAttrStringList('feature_list_sparse_keys', featureListSparseKeys);
  op$.setAttrStringList('feature_list_dense_keys', featureListDenseKeys);
  op$.setAttrInt('Ncontext_sparse', ncontextSparse);
  op$.setAttrInt('Ncontext_dense', ncontextDense);
  op$.setAttrInt('Nfeature_list_sparse', nfeatureListSparse);
  op$.setAttrInt('Nfeature_list_dense', nfeatureListDense);
  op$.setAttrTypeList('context_sparse_types', contextSparseTypes);
  op$.setAttrTypeList('Tcontext_dense', tcontextDense);
  op$.setAttrTypeList('feature_list_dense_types', featureListDenseTypes);
  op$.setAttrShapeList('context_dense_shapes', contextDenseShapes);
  op$.setAttrTypeList('feature_list_sparse_types', featureListSparseTypes);
  op$.setAttrShapeList('feature_list_dense_shapes', featureListDenseShapes);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return ParseSequenceExampleOutput<T>(
      graph,
      result$,
      (result$[0] as Output<int>),
      (result$[1] as Output<List<T>>),
      (result$[2] as Output<int>),
      (result$[3] as Output<List<T>>),
      (result$[4] as Output<int>),
      (result$[5] as Output<List<T>>),
      (result$[6] as Output<int>),
      (result$[7] as Output<List<T>>),
      (result$[8] as Output<int>));
}

Output<T> sigmoidGrad<T>(Output<T> y, Output<T> dy,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SigmoidGrad', operationName ??= graph._scope.uniqueName('SigmoidGrad/'));
  op$.addInput(y);
  op$.addInput(dy);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

@Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayV3')
Output<String> tensorArray(Output<int> size,
    {Graph graph,
    String operationName,
    DataType dtype,
    bool dynamicSize: false,
    bool clearAfterRead: true,
    String tensorArrayName,
    Shape elementShape}) {
  dtype ??= inferType(size);
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'TensorArray', operationName ??= graph._scope.uniqueName('TensorArray/'));
  op$.addInput(size);
  op$.setAttrType('dtype', dtype);
  op$.setAttrBool('dynamic_size', dynamicSize);
  op$.setAttrBool('clear_after_read', clearAfterRead);
  op$.setAttrString('tensor_array_name', tensorArrayName);
  op$.setAttrShape('element_shape', elementShape);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<T> tensorListGather<T>(Output inputHandle, Output<int> indices,
    {Graph graph, String operationName, DataType elementDtype}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorListGather',
      operationName ??= graph._scope.uniqueName('TensorListGather/'));
  op$.addInput(inputHandle);
  op$.addInput(indices);
  op$.setAttrType('element_dtype', elementDtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> variable<T>(
    {Graph graph,
    String operationName,
    Shape shape,
    @required DataType dtype,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Variable', operationName ??= graph._scope.uniqueName('Variable/'));
  op$.setAttrShape('shape', shape);
  op$.setAttrType('dtype', dtype);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class ParseExampleOutput<T> {
  ParseExampleOutput(this._graph, this.op, this.sparseIndices,
      this.sparseValues, this.sparseShapes, this.denseValues);

  final Graph _graph;

  Operation op;

  final Output<int> sparseIndices;

  final Output<List<T>> sparseValues;

  final Output<int> sparseShapes;

  final Output<List<T>> denseValues;

  ParseExample run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var idx$3 = runner.fetch(op.name, index: 3);
    var result$ = runner.run();
    return ParseExample<T>(
        (result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<List<T>>),
        (result$[idx$2] as Output<int>),
        (result$[idx$3] as Output<List<T>>));
  }
}

class ParseExample<T> {
  ParseExample(this.sparseIndices, this.sparseValues, this.sparseShapes,
      this.denseValues);

  final Output<int> sparseIndices;

  final Output<List<T>> sparseValues;

  final Output<int> sparseShapes;

  final Output<List<T>> denseValues;
}

ParseExampleOutput parseExample<T>(
    Output<String> serialized,
    Output<String> names,
    List<Output<String>> sparseKeys,
    List<Output<String>> denseKeys,
    List<Output<List<T>>> denseDefaults,
    {Graph graph,
    String operationName,
    int nsparse,
    int ndense,
    List<DataType> sparseTypes,
    List<DataType> tdense,
    List<Shape> denseShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ParseExample',
      operationName ??= graph._scope.uniqueName('ParseExample/'));
  op$.addInput(serialized);
  op$.addInput(names);
  op$.addInputList(sparseKeys);
  op$.addInputList(denseKeys);
  op$.addInputList(denseDefaults);
  op$.setAttrInt('Nsparse', nsparse);
  op$.setAttrInt('Ndense', ndense);
  op$.setAttrTypeList('sparse_types', sparseTypes);
  op$.setAttrTypeList('Tdense', tdense);
  op$.setAttrShapeList('dense_shapes', denseShapes);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return ParseExampleOutput<T>(
      graph,
      result$,
      (result$[0] as Output<int>),
      (result$[1] as Output<List<T>>),
      (result$[2] as Output<int>),
      (result$[3] as Output<List<T>>));
}

Output<T> scatterNdNonAliasingAdd<T>(
    Output<T> input, Output<T> indices, Output<T> updates,
    {Graph graph, String operationName, DataType tindices}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ScatterNdNonAliasingAdd',
      operationName ??= graph._scope.uniqueName('ScatterNdNonAliasingAdd/'));
  op$.addInput(input);
  op$.addInput(indices);
  op$.addInput(updates);
  op$.setAttrType('Tindices', tindices);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation queueEnqueue<T>(
    Output<String> handle, List<Output<List<T>>> components,
    {Graph graph,
    String operationName,
    List<DataType> tcomponents,
    int timeoutMs: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QueueEnqueue',
      operationName ??= graph._scope.uniqueName('QueueEnqueue/'));
  op$.addInput(handle);
  op$.addInputList(components);
  op$.setAttrTypeList('Tcomponents', tcomponents);
  op$.setAttrInt('timeout_ms', timeoutMs);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<int> stringToHashBucketStrong(Output<String> input,
    {Graph graph, String operationName, int numBuckets, List<int> key}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StringToHashBucketStrong',
      operationName ??= graph._scope.uniqueName('StringToHashBucketStrong/'));
  op$.addInput(input);
  op$.setAttrInt('num_buckets', numBuckets);
  op$.setAttrIntList('key', key);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

Output<T> multinomial<T>(Output<T> logits, Output<int> numSamples,
    {Graph graph,
    String operationName,
    int seed: 0,
    int seed2: 0,
    DataType outputDtype: DataType.DT_INT64}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Multinomial', operationName ??= graph._scope.uniqueName('Multinomial/'));
  op$.addInput(logits);
  op$.addInput(numSamples);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
  op$.setAttrType('output_dtype', outputDtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<String> decodeCompressed(Output<String> bytes,
    {Graph graph, String operationName, String compressionType}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DecodeCompressed',
      operationName ??= graph._scope.uniqueName('DecodeCompressed/'));
  op$.addInput(bytes);
  op$.setAttrString('compression_type', compressionType);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<double> adjustHue(Output<double> images, Output<double> delta,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'AdjustHue', operationName ??= graph._scope.uniqueName('AdjustHue/'));
  op$.addInput(images);
  op$.addInput(delta);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

@Deprecated('DEPRECATED at GraphDef version 15: Use FFT3D')
Output batchFFT3D(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BatchFFT3D', operationName ??= graph._scope.uniqueName('BatchFFT3D/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<bool> queueIsClosedV2(Output handle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QueueIsClosedV2',
      operationName ??= graph._scope.uniqueName('QueueIsClosedV2/'));
  op$.addInput(handle);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
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

@Deprecated('DEPRECATED at GraphDef version 15: Use FFT')
Output batchFFT(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BatchFFT', operationName ??= graph._scope.uniqueName('BatchFFT/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

@Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayGatherV3')
Output<T> tensorArrayGatherV2<T>(
    Output<String> handle, Output<int> indices, Output<double> flowIn,
    {Graph graph, String operationName, DataType dtype, Shape elementShape}) {
  dtype ??= inferType(handle);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayGatherV2',
      operationName ??= graph._scope.uniqueName('TensorArrayGatherV2/'));
  op$.addInput(handle);
  op$.addInput(indices);
  op$.addInput(flowIn);
  op$.setAttrType('dtype', dtype);
  op$.setAttrShape('element_shape', elementShape);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output rFFT3D(Output<double> input, Output<int> fftLength,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RFFT3D', operationName ??= graph._scope.uniqueName('RFFT3D/'));
  op$.addInput(input);
  op$.addInput(fftLength);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<T> log<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Log', operationName ??= graph._scope.uniqueName('Log/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<double> iRFFT2D(Output input, Output<int> fftLength,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'IRFFT2D', operationName ??= graph._scope.uniqueName('IRFFT2D/'));
  op$.addInput(input);
  op$.addInput(fftLength);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

Output<T> applyFtrl<T>(Output<T> var$, Output<T> accum, Output<T> linear,
    Output<T> grad, Output<T> lr, Output<T> l1, Output<T> l2, Output<T> lrPower,
    {Graph graph, String operationName, bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ApplyFtrl', operationName ??= graph._scope.uniqueName('ApplyFtrl/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(linear);
  op$.addInput(grad);
  op$.addInput(lr);
  op$.addInput(l1);
  op$.addInput(l2);
  op$.addInput(lrPower);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<double> iRFFT(Output input, Output<int> fftLength,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'IRFFT', operationName ??= graph._scope.uniqueName('IRFFT/'));
  op$.addInput(input);
  op$.addInput(fftLength);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

Output rFFT(Output<double> input, Output<int> fftLength,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RFFT', operationName ??= graph._scope.uniqueName('RFFT/'));
  op$.addInput(input);
  op$.addInput(fftLength);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<T> fFT3D<T>(Output<T> input,
    {Graph graph,
    String operationName,
    DataType tcomplex: DataType.DT_COMPLEX64}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'FFT3D', operationName ??= graph._scope.uniqueName('FFT3D/'));
  op$.addInput(input);
  op$.setAttrType('Tcomplex', tcomplex);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> fFT2D<T>(Output<T> input,
    {Graph graph,
    String operationName,
    DataType tcomplex: DataType.DT_COMPLEX64}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'FFT2D', operationName ??= graph._scope.uniqueName('FFT2D/'));
  op$.addInput(input);
  op$.setAttrType('Tcomplex', tcomplex);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> iFFT<T>(Output<T> input,
    {Graph graph,
    String operationName,
    DataType tcomplex: DataType.DT_COMPLEX64}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'IFFT', operationName ??= graph._scope.uniqueName('IFFT/'));
  op$.addInput(input);
  op$.setAttrType('Tcomplex', tcomplex);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> fFT<T>(Output<T> input,
    {Graph graph,
    String operationName,
    DataType tcomplex: DataType.DT_COMPLEX64}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'FFT', operationName ??= graph._scope.uniqueName('FFT/'));
  op$.addInput(input);
  op$.setAttrType('Tcomplex', tcomplex);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> maxPoolGrad<T>(
    Output<T> origInput, Output<T> origOutput, Output<T> grad,
    {Graph graph,
    String operationName,
    List<int> ksize,
    List<int> strides,
    String padding,
    String dataFormat: 'NHWC'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'MaxPoolGrad', operationName ??= graph._scope.uniqueName('MaxPoolGrad/'));
  op$.addInput(origInput);
  op$.addInput(origOutput);
  op$.addInput(grad);
  op$.setAttrIntList('ksize', ksize);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
  op$.setAttrString('data_format', dataFormat);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> roll<T>(Output<T> input, Output<T> shift, Output<T> axis,
    {Graph graph, String operationName, DataType tshift, DataType taxis}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Roll', operationName ??= graph._scope.uniqueName('Roll/'));
  op$.addInput(input);
  op$.addInput(shift);
  op$.addInput(axis);
  op$.setAttrType('Tshift', tshift);
  op$.setAttrType('Taxis', taxis);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output timestamp({Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Timestamp', operationName ??= graph._scope.uniqueName('Timestamp/'));
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<String> mergeSummary(List<Output<String>> inputs,
    {Graph graph, String operationName, int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MergeSummary',
      operationName ??= graph._scope.uniqueName('MergeSummary/'));
  op$.addInputList(inputs);
  op$.setAttrInt('N', n);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<T> avgPool<T>(Output<T> value,
    {Graph graph,
    String operationName,
    List<int> ksize,
    List<int> strides,
    String padding,
    String dataFormat: 'NHWC'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'AvgPool', operationName ??= graph._scope.uniqueName('AvgPool/'));
  op$.addInput(value);
  op$.setAttrIntList('ksize', ksize);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
  op$.setAttrString('data_format', dataFormat);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<String> audioSummaryV2(
    Output<String> tag, Output<double> tensor, Output<double> sampleRate,
    {Graph graph, String operationName, int maxOutputs: 3}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AudioSummaryV2',
      operationName ??= graph._scope.uniqueName('AudioSummaryV2/'));
  op$.addInput(tag);
  op$.addInput(tensor);
  op$.addInput(sampleRate);
  op$.setAttrInt('max_outputs', maxOutputs);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
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

Output<double> fakeQuantWithMinMaxArgsGradient(
    Output<double> gradients, Output<double> inputs,
    {Graph graph,
    String operationName,
    double min: -6.0,
    double max: 6.0,
    int numBits: 8,
    bool narrowRange: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'FakeQuantWithMinMaxArgsGradient',
      operationName ??=
          graph._scope.uniqueName('FakeQuantWithMinMaxArgsGradient/'));
  op$.addInput(gradients);
  op$.addInput(inputs);
  op$.setAttrFloat('min', min);
  op$.setAttrFloat('max', max);
  op$.setAttrInt('num_bits', numBits);
  op$.setAttrBool('narrow_range', narrowRange);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

class QuantizedAvgPoolOutput<T> {
  QuantizedAvgPoolOutput(
      this._graph, this.op, this.output, this.minOutput, this.maxOutput);

  final Graph _graph;

  Operation op;

  final Output<T> output;

  final Output<double> minOutput;

  final Output<double> maxOutput;

  QuantizedAvgPool run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return QuantizedAvgPool<T>((result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<double>), (result$[idx$2] as Output<double>));
  }
}

class QuantizedAvgPool<T> {
  QuantizedAvgPool(this.output, this.minOutput, this.maxOutput);

  final Output<T> output;

  final Output<double> minOutput;

  final Output<double> maxOutput;
}

QuantizedAvgPoolOutput quantizedAvgPool<T>(
    Output<T> input, Output<double> minInput, Output<double> maxInput,
    {Graph graph,
    String operationName,
    List<int> ksize,
    List<int> strides,
    String padding}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QuantizedAvgPool',
      operationName ??= graph._scope.uniqueName('QuantizedAvgPool/'));
  op$.addInput(input);
  op$.addInput(minInput);
  op$.addInput(maxInput);
  op$.setAttrIntList('ksize', ksize);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return QuantizedAvgPoolOutput<T>(graph, result$, (result$[0] as Output<T>),
      (result$[1] as Output<double>), (result$[2] as Output<double>));
}

Output<T> applyPowerSign<T>(Output<T> var$, Output<T> m, Output<T> lr,
    Output<T> logbase, Output<T> signDecay, Output<T> beta, Output<T> grad,
    {Graph graph, String operationName, bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ApplyPowerSign',
      operationName ??= graph._scope.uniqueName('ApplyPowerSign/'));
  op$.addInput(var$);
  op$.addInput(m);
  op$.addInput(lr);
  op$.addInput(logbase);
  op$.addInput(signDecay);
  op$.addInput(beta);
  op$.addInput(grad);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation initializeTableFromTextFileV2(
    Output tableHandle, Output<String> filename,
    {Graph graph,
    String operationName,
    int keyIndex,
    int valueIndex,
    int vocabSize: -1,
    String delimiter: '	'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'InitializeTableFromTextFileV2',
      operationName ??=
          graph._scope.uniqueName('InitializeTableFromTextFileV2/'));
  op$.addInput(tableHandle);
  op$.addInput(filename);
  op$.setAttrInt('key_index', keyIndex);
  op$.setAttrInt('value_index', valueIndex);
  op$.setAttrInt('vocab_size', vocabSize);
  op$.setAttrString('delimiter', delimiter);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// This operation has no outputs.
Operation initializeTable<T>(
    Output<String> tableHandle, Output<T> keys, Output<T> values,
    {Graph graph, String operationName, DataType tkey, DataType tval}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('InitializeTable',
      operationName ??= graph._scope.uniqueName('InitializeTable/'));
  op$.addInput(tableHandle);
  op$.addInput(keys);
  op$.addInput(values);
  op$.setAttrType('Tkey', tkey);
  op$.setAttrType('Tval', tval);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output mutableDenseHashTableV2<T>(Output<T> emptyKey,
    {Graph graph,
    String operationName,
    String container,
    String sharedName,
    bool useNodeNameSharing: false,
    DataType keyDtype,
    DataType valueDtype,
    Shape valueShape,
    int initialNumBuckets: 131072,
    double maxLoadFactor: 0.800000011920929}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MutableDenseHashTableV2',
      operationName ??= graph._scope.uniqueName('MutableDenseHashTableV2/'));
  op$.addInput(emptyKey);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
  op$.setAttrBool('use_node_name_sharing', useNodeNameSharing);
  op$.setAttrType('key_dtype', keyDtype);
  op$.setAttrType('value_dtype', valueDtype);
  op$.setAttrShape('value_shape', valueShape);
  op$.setAttrInt('initial_num_buckets', initialNumBuckets);
  op$.setAttrFloat('max_load_factor', maxLoadFactor);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<T> softplus<T>(Output<T> features, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Softplus', operationName ??= graph._scope.uniqueName('Softplus/'));
  op$.addInput(features);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output mutableHashTableV2(
    {Graph graph,
    String operationName,
    String container,
    String sharedName,
    bool useNodeNameSharing: false,
    DataType keyDtype,
    DataType valueDtype}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MutableHashTableV2',
      operationName ??= graph._scope.uniqueName('MutableHashTableV2/'));
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
  op$.setAttrBool('use_node_name_sharing', useNodeNameSharing);
  op$.setAttrType('key_dtype', keyDtype);
  op$.setAttrType('value_dtype', valueDtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<int> nonMaxSuppressionWithOverlaps(
    Output<double> overlaps,
    Output<double> scores,
    Output<int> maxOutputSize,
    Output<double> overlapThreshold,
    Output<double> scoreThreshold,
    {Graph graph,
    String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'NonMaxSuppressionWithOverlaps',
      operationName ??=
          graph._scope.uniqueName('NonMaxSuppressionWithOverlaps/'));
  op$.addInput(overlaps);
  op$.addInput(scores);
  op$.addInput(maxOutputSize);
  op$.addInput(overlapThreshold);
  op$.addInput(scoreThreshold);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

class LookupTableExportV2Output<T> {
  LookupTableExportV2Output(this._graph, this.op, this.keys, this.values);

  final Graph _graph;

  Operation op;

  final Output<T> keys;

  final Output<T> values;

  LookupTableExportV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return LookupTableExportV2<T>(
        (result$[idx$0] as Output<T>), (result$[idx$1] as Output<T>));
  }
}

class LookupTableExportV2<T> {
  LookupTableExportV2(this.keys, this.values);

  final Output<T> keys;

  final Output<T> values;
}

LookupTableExportV2Output lookupTableExportV2<T>(Output tableHandle,
    {Graph graph, String operationName, DataType tkeys, DataType tvalues}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('LookupTableExportV2',
      operationName ??= graph._scope.uniqueName('LookupTableExportV2/'));
  op$.addInput(tableHandle);
  op$.setAttrType('Tkeys', tkeys);
  op$.setAttrType('Tvalues', tvalues);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return LookupTableExportV2Output<T>(
      graph, result$, (result$[0] as Output<T>), (result$[1] as Output<T>));
}

/// This operation has no outputs.
Operation assignVariableOp<T>(Output resource, Output<T> value,
    {Graph graph, String operationName, DataType dtype}) {
  dtype ??= inferType(resource);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AssignVariableOp',
      operationName ??= graph._scope.uniqueName('AssignVariableOp/'));
  op$.addInput(resource);
  op$.addInput(value);
  op$.setAttrType('dtype', dtype);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<int> lookupTableSize(Output<String> tableHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('LookupTableSize',
      operationName ??= graph._scope.uniqueName('LookupTableSize/'));
  op$.addInput(tableHandle);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

Output tensorListScatter<T>(
    Output<T> tensor, Output<int> indices, Output<T> elementShape,
    {Graph graph,
    String operationName,
    DataType elementDtype,
    DataType shapeType}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorListScatter',
      operationName ??= graph._scope.uniqueName('TensorListScatter/'));
  op$.addInput(tensor);
  op$.addInput(indices);
  op$.addInput(elementShape);
  op$.setAttrType('element_dtype', elementDtype);
  op$.setAttrType('shape_type', shapeType);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<T> variableShape<T>(Output input,
    {Graph graph, String operationName, DataType outType: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('VariableShape',
      operationName ??= graph._scope.uniqueName('VariableShape/'));
  op$.addInput(input);
  op$.setAttrType('out_type', outType);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> clipByValue<T>(
    Output<T> t, Output<T> clipValueMin, Output<T> clipValueMax,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ClipByValue', operationName ??= graph._scope.uniqueName('ClipByValue/'));
  op$.addInput(t);
  op$.addInput(clipValueMin);
  op$.addInput(clipValueMax);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output tensorListReserve<T>(Output<T> elementShape, Output<int> numElements,
    {Graph graph,
    String operationName,
    DataType elementDtype,
    DataType shapeType}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorListReserve',
      operationName ??= graph._scope.uniqueName('TensorListReserve/'));
  op$.addInput(elementShape);
  op$.addInput(numElements);
  op$.setAttrType('element_dtype', elementDtype);
  op$.setAttrType('shape_type', shapeType);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<T> tensorListElementShape<T>(Output inputHandle,
    {Graph graph, String operationName, DataType shapeType}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorListElementShape',
      operationName ??= graph._scope.uniqueName('TensorListElementShape/'));
  op$.addInput(inputHandle);
  op$.setAttrType('shape_type', shapeType);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output emptyTensorList<T>(Output<T> elementShape,
    {Graph graph,
    String operationName,
    DataType elementDtype,
    DataType shapeType}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('EmptyTensorList',
      operationName ??= graph._scope.uniqueName('EmptyTensorList/'));
  op$.addInput(elementShape);
  op$.setAttrType('element_dtype', elementDtype);
  op$.setAttrType('shape_type', shapeType);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<T> sparseSegmentSqrtNWithNumSegments<T>(Output<T> data,
    Output<T> indices, Output<int> segmentIds, Output<T> numSegments,
    {Graph graph,
    String operationName,
    DataType tidx: DataType.DT_INT32,
    DataType tnumsegments: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SparseSegmentSqrtNWithNumSegments',
      operationName ??=
          graph._scope.uniqueName('SparseSegmentSqrtNWithNumSegments/'));
  op$.addInput(data);
  op$.addInput(indices);
  op$.addInput(segmentIds);
  op$.addInput(numSegments);
  op$.setAttrType('Tidx', tidx);
  op$.setAttrType('Tnumsegments', tnumsegments);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> cholesky<T>(Output<T> input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Cholesky', operationName ??= graph._scope.uniqueName('Cholesky/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

@Deprecated('DEPRECATED at GraphDef version 13: Use MatrixSolveLs instead.')
Output<T> batchMatrixSolveLs<T>(
    Output<T> matrix, Output<T> rhs, Output l2Regularizer,
    {Graph graph, String operationName, bool fast: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchMatrixSolveLs',
      operationName ??= graph._scope.uniqueName('BatchMatrixSolveLs/'));
  op$.addInput(matrix);
  op$.addInput(rhs);
  op$.addInput(l2Regularizer);
  op$.setAttrBool('fast', fast);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class ParseSingleSequenceExampleOutput<T> {
  ParseSingleSequenceExampleOutput(
      this._graph,
      this.op,
      this.contextSparseIndices,
      this.contextSparseValues,
      this.contextSparseShapes,
      this.contextDenseValues,
      this.featureListSparseIndices,
      this.featureListSparseValues,
      this.featureListSparseShapes,
      this.featureListDenseValues);

  final Graph _graph;

  Operation op;

  final Output<int> contextSparseIndices;

  final Output<List<T>> contextSparseValues;

  final Output<int> contextSparseShapes;

  final Output<List<T>> contextDenseValues;

  final Output<int> featureListSparseIndices;

  final Output<List<T>> featureListSparseValues;

  final Output<int> featureListSparseShapes;

  final Output<List<T>> featureListDenseValues;

  ParseSingleSequenceExample run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var idx$3 = runner.fetch(op.name, index: 3);
    var idx$4 = runner.fetch(op.name, index: 4);
    var idx$5 = runner.fetch(op.name, index: 5);
    var idx$6 = runner.fetch(op.name, index: 6);
    var idx$7 = runner.fetch(op.name, index: 7);
    var result$ = runner.run();
    return ParseSingleSequenceExample<T>(
        (result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<List<T>>),
        (result$[idx$2] as Output<int>),
        (result$[idx$3] as Output<List<T>>),
        (result$[idx$4] as Output<int>),
        (result$[idx$5] as Output<List<T>>),
        (result$[idx$6] as Output<int>),
        (result$[idx$7] as Output<List<T>>));
  }
}

class ParseSingleSequenceExample<T> {
  ParseSingleSequenceExample(
      this.contextSparseIndices,
      this.contextSparseValues,
      this.contextSparseShapes,
      this.contextDenseValues,
      this.featureListSparseIndices,
      this.featureListSparseValues,
      this.featureListSparseShapes,
      this.featureListDenseValues);

  final Output<int> contextSparseIndices;

  final Output<List<T>> contextSparseValues;

  final Output<int> contextSparseShapes;

  final Output<List<T>> contextDenseValues;

  final Output<int> featureListSparseIndices;

  final Output<List<T>> featureListSparseValues;

  final Output<int> featureListSparseShapes;

  final Output<List<T>> featureListDenseValues;
}

ParseSingleSequenceExampleOutput parseSingleSequenceExample<T>(
    Output<String> serialized,
    Output<String> featureListDenseMissingAssumedEmpty,
    List<Output<String>> contextSparseKeys,
    List<Output<String>> contextDenseKeys,
    List<Output<String>> featureListSparseKeys,
    List<Output<String>> featureListDenseKeys,
    List<Output<List<T>>> contextDenseDefaults,
    Output<String> debugName,
    {Graph graph,
    String operationName,
    int ncontextSparse: 0,
    int ncontextDense: 0,
    int nfeatureListSparse: 0,
    int nfeatureListDense: 0,
    List<DataType> contextSparseTypes,
    List<DataType> tcontextDense,
    List<DataType> featureListDenseTypes,
    List<Shape> contextDenseShapes,
    List<DataType> featureListSparseTypes,
    List<Shape> featureListDenseShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ParseSingleSequenceExample',
      operationName ??= graph._scope.uniqueName('ParseSingleSequenceExample/'));
  op$.addInput(serialized);
  op$.addInput(featureListDenseMissingAssumedEmpty);
  op$.addInputList(contextSparseKeys);
  op$.addInputList(contextDenseKeys);
  op$.addInputList(featureListSparseKeys);
  op$.addInputList(featureListDenseKeys);
  op$.addInputList(contextDenseDefaults);
  op$.addInput(debugName);
  op$.setAttrInt('Ncontext_sparse', ncontextSparse);
  op$.setAttrInt('Ncontext_dense', ncontextDense);
  op$.setAttrInt('Nfeature_list_sparse', nfeatureListSparse);
  op$.setAttrInt('Nfeature_list_dense', nfeatureListDense);
  op$.setAttrTypeList('context_sparse_types', contextSparseTypes);
  op$.setAttrTypeList('Tcontext_dense', tcontextDense);
  op$.setAttrTypeList('feature_list_dense_types', featureListDenseTypes);
  op$.setAttrShapeList('context_dense_shapes', contextDenseShapes);
  op$.setAttrTypeList('feature_list_sparse_types', featureListSparseTypes);
  op$.setAttrShapeList('feature_list_dense_shapes', featureListDenseShapes);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return ParseSingleSequenceExampleOutput<T>(
      graph,
      result$,
      (result$[0] as Output<int>),
      (result$[1] as Output<List<T>>),
      (result$[2] as Output<int>),
      (result$[3] as Output<List<T>>),
      (result$[4] as Output<int>),
      (result$[5] as Output<List<T>>),
      (result$[6] as Output<int>),
      (result$[7] as Output<List<T>>));
}

class LookupTableExportOutput<T> {
  LookupTableExportOutput(this._graph, this.op, this.keys, this.values);

  final Graph _graph;

  Operation op;

  final Output<T> keys;

  final Output<T> values;

  LookupTableExport run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return LookupTableExport<T>(
        (result$[idx$0] as Output<T>), (result$[idx$1] as Output<T>));
  }
}

class LookupTableExport<T> {
  LookupTableExport(this.keys, this.values);

  final Output<T> keys;

  final Output<T> values;
}

LookupTableExportOutput lookupTableExport<T>(Output<String> tableHandle,
    {Graph graph, String operationName, DataType tkeys, DataType tvalues}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('LookupTableExport',
      operationName ??= graph._scope.uniqueName('LookupTableExport/'));
  op$.addInput(tableHandle);
  op$.setAttrType('Tkeys', tkeys);
  op$.setAttrType('Tvalues', tvalues);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return LookupTableExportOutput<T>(
      graph, result$, (result$[0] as Output<T>), (result$[1] as Output<T>));
}

Output<T> gatherV2<T>(Output<T> params, Output<T> indices, Output<T> axis,
    {Graph graph,
    String operationName,
    DataType tparams,
    DataType tindices,
    DataType taxis}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'GatherV2', operationName ??= graph._scope.uniqueName('GatherV2/'));
  op$.addInput(params);
  op$.addInput(indices);
  op$.addInput(axis);
  op$.setAttrType('Tparams', tparams);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrType('Taxis', taxis);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class BatchSvdOutput<T> {
  BatchSvdOutput(this._graph, this.op, this.s, this.u, this.v);

  final Graph _graph;

  Operation op;

  final Output<T> s;

  final Output<T> u;

  final Output<T> v;

  BatchSvd run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return BatchSvd<T>((result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<T>), (result$[idx$2] as Output<T>));
  }
}

class BatchSvd<T> {
  BatchSvd(this.s, this.u, this.v);

  final Output<T> s;

  final Output<T> u;

  final Output<T> v;
}

@Deprecated('DEPRECATED at GraphDef version 13: Use Svd instead.')
BatchSvdOutput batchSvd<T>(Output<T> input,
    {Graph graph,
    String operationName,
    bool computeUv: true,
    bool fullMatrices: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BatchSvd', operationName ??= graph._scope.uniqueName('BatchSvd/'));
  op$.addInput(input);
  op$.setAttrBool('compute_uv', computeUv);
  op$.setAttrBool('full_matrices', fullMatrices);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return BatchSvdOutput<T>(graph, result$, (result$[0] as Output<T>),
      (result$[1] as Output<T>), (result$[2] as Output<T>));
}

@Deprecated('DEPRECATED at GraphDef version 13: Use MatrixSolve instead.')
Output<T> batchMatrixSolve<T>(Output<T> matrix, Output<T> rhs,
    {Graph graph, String operationName, bool adjoint: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchMatrixSolve',
      operationName ??= graph._scope.uniqueName('BatchMatrixSolve/'));
  op$.addInput(matrix);
  op$.addInput(rhs);
  op$.setAttrBool('adjoint', adjoint);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<List<T>> optionalGetValue<T>(Output optional,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('OptionalGetValue',
      operationName ??= graph._scope.uniqueName('OptionalGetValue/'));
  op$.addInput(optional);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

Output<T> sparseSegmentMeanGrad<T>(Output<T> grad, Output<T> indices,
    Output<int> segmentIds, Output<int> outputDim0,
    {Graph graph, String operationName, DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseSegmentMeanGrad',
      operationName ??= graph._scope.uniqueName('SparseSegmentMeanGrad/'));
  op$.addInput(grad);
  op$.addInput(indices);
  op$.addInput(segmentIds);
  op$.addInput(outputDim0);
  op$.setAttrType('Tidx', tidx);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> applyProximalAdagrad<T>(Output<T> var$, Output<T> accum, Output<T> lr,
    Output<T> l1, Output<T> l2, Output<T> grad,
    {Graph graph, String operationName, bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ApplyProximalAdagrad',
      operationName ??= graph._scope.uniqueName('ApplyProximalAdagrad/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(lr);
  op$.addInput(l1);
  op$.addInput(l2);
  op$.addInput(grad);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class SvdOutput<T> {
  SvdOutput(this._graph, this.op, this.s, this.u, this.v);

  final Graph _graph;

  Operation op;

  final Output<T> s;

  final Output<T> u;

  final Output<T> v;

  Svd run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return Svd<T>((result$[idx$0] as Output<T>), (result$[idx$1] as Output<T>),
        (result$[idx$2] as Output<T>));
  }
}

class Svd<T> {
  Svd(this.s, this.u, this.v);

  final Output<T> s;

  final Output<T> u;

  final Output<T> v;
}

SvdOutput svd<T>(Output<T> input,
    {Graph graph,
    String operationName,
    bool computeUv: true,
    bool fullMatrices: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Svd', operationName ??= graph._scope.uniqueName('Svd/'));
  op$.addInput(input);
  op$.setAttrBool('compute_uv', computeUv);
  op$.setAttrBool('full_matrices', fullMatrices);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return SvdOutput<T>(graph, result$, (result$[0] as Output<T>),
      (result$[1] as Output<T>), (result$[2] as Output<T>));
}

Output<T> inplaceAdd<T>(Output<T> x, Output<int> i, Output<T> v,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'InplaceAdd', operationName ??= graph._scope.uniqueName('InplaceAdd/'));
  op$.addInput(x);
  op$.addInput(i);
  op$.addInput(v);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class SparseCrossOutput<T> {
  SparseCrossOutput(this._graph, this.op, this.outputIndices, this.outputValues,
      this.outputShape);

  final Graph _graph;

  Operation op;

  final Output<int> outputIndices;

  final Output<T> outputValues;

  final Output<int> outputShape;

  SparseCross run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return SparseCross<T>((result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<T>), (result$[idx$2] as Output<int>));
  }
}

class SparseCross<T> {
  SparseCross(this.outputIndices, this.outputValues, this.outputShape);

  final Output<int> outputIndices;

  final Output<T> outputValues;

  final Output<int> outputShape;
}

SparseCrossOutput sparseCross<T>(
    List<Output<int>> indices,
    List<Output<List<T>>> values,
    List<Output<int>> shapes,
    List<Output<List<T>>> denseInputs,
    {Graph graph,
    String operationName,
    int n,
    bool hashedOutput,
    int numBuckets,
    int hashKey,
    List<DataType> sparseTypes,
    List<DataType> denseTypes,
    DataType outType,
    DataType internalType}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SparseCross', operationName ??= graph._scope.uniqueName('SparseCross/'));
  op$.addInputList(indices);
  op$.addInputList(values);
  op$.addInputList(shapes);
  op$.addInputList(denseInputs);
  op$.setAttrInt('N', n);
  op$.setAttrBool('hashed_output', hashedOutput);
  op$.setAttrInt('num_buckets', numBuckets);
  op$.setAttrInt('hash_key', hashKey);
  op$.setAttrTypeList('sparse_types', sparseTypes);
  op$.setAttrTypeList('dense_types', denseTypes);
  op$.setAttrType('out_type', outType);
  op$.setAttrType('internal_type', internalType);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return SparseCrossOutput<T>(graph, result$, (result$[0] as Output<int>),
      (result$[1] as Output<T>), (result$[2] as Output<int>));
}

Output<T> pack<T>(List<Output<T>> values,
    {Graph graph, String operationName, int n, int axis: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Pack', operationName ??= graph._scope.uniqueName('Pack/'));
  op$.addInputList(values);
  op$.setAttrInt('N', n);
  op$.setAttrInt('axis', axis);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation barrierClose(Output<String> handle,
    {Graph graph, String operationName, bool cancelPendingEnqueues: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BarrierClose',
      operationName ??= graph._scope.uniqueName('BarrierClose/'));
  op$.addInput(handle);
  op$.setAttrBool('cancel_pending_enqueues', cancelPendingEnqueues);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

class SelfAdjointEigV2Output<T> {
  SelfAdjointEigV2Output(this._graph, this.op, this.e, this.v);

  final Graph _graph;

  Operation op;

  final Output<T> e;

  final Output<T> v;

  SelfAdjointEigV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return SelfAdjointEigV2<T>(
        (result$[idx$0] as Output<T>), (result$[idx$1] as Output<T>));
  }
}

class SelfAdjointEigV2<T> {
  SelfAdjointEigV2(this.e, this.v);

  final Output<T> e;

  final Output<T> v;
}

SelfAdjointEigV2Output selfAdjointEigV2<T>(Output<T> input,
    {Graph graph, String operationName, bool computeV: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SelfAdjointEigV2',
      operationName ??= graph._scope.uniqueName('SelfAdjointEigV2/'));
  op$.addInput(input);
  op$.setAttrBool('compute_v', computeV);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return SelfAdjointEigV2Output<T>(
      graph, result$, (result$[0] as Output<T>), (result$[1] as Output<T>));
}

Output<T> choleskyGrad<T>(Output<T> l, Output<T> grad,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CholeskyGrad',
      operationName ??= graph._scope.uniqueName('CholeskyGrad/'));
  op$.addInput(l);
  op$.addInput(grad);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class QuantizedConcatOutput<T> {
  QuantizedConcatOutput(
      this._graph, this.op, this.output, this.outputMin, this.outputMax);

  final Graph _graph;

  Operation op;

  final Output<T> output;

  final Output<double> outputMin;

  final Output<double> outputMax;

  QuantizedConcat run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return QuantizedConcat<T>((result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<double>), (result$[idx$2] as Output<double>));
  }
}

class QuantizedConcat<T> {
  QuantizedConcat(this.output, this.outputMin, this.outputMax);

  final Output<T> output;

  final Output<double> outputMin;

  final Output<double> outputMax;
}

QuantizedConcatOutput quantizedConcat<T>(
    Output<int> concatDim,
    List<Output<T>> values,
    List<Output<double>> inputMins,
    List<Output<double>> inputMaxes,
    {Graph graph,
    String operationName,
    int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QuantizedConcat',
      operationName ??= graph._scope.uniqueName('QuantizedConcat/'));
  op$.addInput(concatDim);
  op$.addInputList(values);
  op$.addInputList(inputMins);
  op$.addInputList(inputMaxes);
  op$.setAttrInt('N', n);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return QuantizedConcatOutput<T>(graph, result$, (result$[0] as Output<T>),
      (result$[1] as Output<double>), (result$[2] as Output<double>));
}

Output<T> gatherNd<T>(Output<T> params, Output<T> indices,
    {Graph graph, String operationName, DataType tparams, DataType tindices}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'GatherNd', operationName ??= graph._scope.uniqueName('GatherNd/'));
  op$.addInput(params);
  op$.addInput(indices);
  op$.setAttrType('Tparams', tparams);
  op$.setAttrType('Tindices', tindices);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation queueCloseV2(Output handle,
    {Graph graph, String operationName, bool cancelPendingEnqueues: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QueueCloseV2',
      operationName ??= graph._scope.uniqueName('QueueCloseV2/'));
  op$.addInput(handle);
  op$.setAttrBool('cancel_pending_enqueues', cancelPendingEnqueues);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> maxPool<T>(Output<T> input,
    {Graph graph,
    String operationName,
    List<int> ksize,
    List<int> strides,
    String padding,
    String dataFormat: 'NHWC'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'MaxPool', operationName ??= graph._scope.uniqueName('MaxPool/'));
  op$.addInput(input);
  op$.setAttrIntList('ksize', ksize);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
  op$.setAttrString('data_format', dataFormat);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation orderedMapClear(
    {Graph graph,
    String operationName,
    int capacity: 0,
    int memoryLimit: 0,
    List<DataType> dtypes,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('OrderedMapClear',
      operationName ??= graph._scope.uniqueName('OrderedMapClear/'));
  op$.setAttrInt('capacity', capacity);
  op$.setAttrInt('memory_limit', memoryLimit);
  op$.setAttrTypeList('dtypes', dtypes);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

@Deprecated(
    'DEPRECATED at GraphDef version 27: Use Python implementation tf.linalg.matrix_exponential instead.')
Output<T> matrixExponential<T>(Output<T> input,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MatrixExponential',
      operationName ??= graph._scope.uniqueName('MatrixExponential/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<List<T>> queueDequeueManyV2<T>(Output handle, Output<int> n,
    {Graph graph,
    String operationName,
    List<DataType> componentTypes,
    int timeoutMs: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QueueDequeueManyV2',
      operationName ??= graph._scope.uniqueName('QueueDequeueManyV2/'));
  op$.addInput(handle);
  op$.addInput(n);
  op$.setAttrTypeList('component_types', componentTypes);
  op$.setAttrInt('timeout_ms', timeoutMs);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

/// Configures the credentials used by the GCS client of the local TF runtime.
/// The json input can be of the format:
/// 1. Refresh Token:
/// {
/// "client_id": "<redacted>",
/// "client_secret": "<redacted>",
/// "refresh_token: "<redacted>",
/// "type": "authorized_user",
/// }
/// 2. Service Account:
/// {
/// "type": "service_account",
/// "project_id": "<redacted>",
/// "private_key_id": "<redacted>",
/// "private_key": "------BEGIN PRIVATE KEY-----\n<REDACTED>\n-----END PRIVATE KEY------\n",
/// "client_email": "<REDACTED>@<REDACTED>.iam.gserviceaccount.com",
/// "client_id": "<REDACTED>",
/// # Some additional fields elided
/// }
/// Note the credentials established through this method are shared across all
/// sessions run on this runtime.
/// Note be sure to feed the inputs to this op to ensure the credentials are not
/// stored in a constant op within the graph that might accidentally be checkpointed
/// or in other ways be persisted or exfiltrated.
/// This operation has no outputs.
Operation gcsConfigureCredentials(Output<String> json,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('GcsConfigureCredentials',
      operationName ??= graph._scope.uniqueName('GcsConfigureCredentials/'));
  op$.addInput(json);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> matrixDeterminant<T>(Output<T> input,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MatrixDeterminant',
      operationName ??= graph._scope.uniqueName('MatrixDeterminant/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation deleteSessionTensor(Output<String> handle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DeleteSessionTensor',
      operationName ??= graph._scope.uniqueName('DeleteSessionTensor/'));
  op$.addInput(handle);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

@Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayReadV3')
Output<T> tensorArrayReadV2<T>(
    Output<String> handle, Output<int> index, Output<double> flowIn,
    {Graph graph, String operationName, DataType dtype}) {
  dtype ??= inferType(handle);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayReadV2',
      operationName ??= graph._scope.uniqueName('TensorArrayReadV2/'));
  op$.addInput(handle);
  op$.addInput(index);
  op$.addInput(flowIn);
  op$.setAttrType('dtype', dtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<List<T>> stagePeek<T>(Output<int> index,
    {Graph graph,
    String operationName,
    int capacity: 0,
    int memoryLimit: 0,
    List<DataType> dtypes,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'StagePeek', operationName ??= graph._scope.uniqueName('StagePeek/'));
  op$.addInput(index);
  op$.setAttrInt('capacity', capacity);
  op$.setAttrInt('memory_limit', memoryLimit);
  op$.setAttrTypeList('dtypes', dtypes);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

/// This operation has no outputs.
Operation readerRestoreStateV2(Output readerHandle, Output<String> state,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ReaderRestoreStateV2',
      operationName ??= graph._scope.uniqueName('ReaderRestoreStateV2/'));
  op$.addInput(readerHandle);
  op$.addInput(state);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

@Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayGatherV3')
Output<T> tensorArrayGather<T>(
    Output<String> handle, Output<int> indices, Output<double> flowIn,
    {Graph graph, String operationName, DataType dtype, Shape elementShape}) {
  dtype ??= inferType(handle);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayGather',
      operationName ??= graph._scope.uniqueName('TensorArrayGather/'));
  op$.addInput(handle);
  op$.addInput(indices);
  op$.addInput(flowIn);
  op$.setAttrType('dtype', dtype);
  op$.setAttrShape('element_shape', elementShape);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

@Deprecated('DEPRECATED at GraphDef version 13: Use Cholesky instead.')
Output<T> batchCholesky<T>(Output<T> input,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchCholesky',
      operationName ??= graph._scope.uniqueName('BatchCholesky/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<double> resizeArea<T>(Output<T> images, Output<int> size,
    {Graph graph, String operationName, bool alignCorners: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ResizeArea', operationName ??= graph._scope.uniqueName('ResizeArea/'));
  op$.addInput(images);
  op$.addInput(size);
  op$.setAttrBool('align_corners', alignCorners);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

/// This operation has no outputs.
Operation readerRestoreState(Output<String> readerHandle, Output<String> state,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ReaderRestoreState',
      operationName ??= graph._scope.uniqueName('ReaderRestoreState/'));
  op$.addInput(readerHandle);
  op$.addInput(state);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> matrixTriangularSolve<T>(Output<T> matrix, Output<T> rhs,
    {Graph graph,
    String operationName,
    bool lower: true,
    bool adjoint: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MatrixTriangularSolve',
      operationName ??= graph._scope.uniqueName('MatrixTriangularSolve/'));
  op$.addInput(matrix);
  op$.addInput(rhs);
  op$.setAttrBool('lower', lower);
  op$.setAttrBool('adjoint', adjoint);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class ReaderReadOutput {
  ReaderReadOutput(this._graph, this.op, this.key, this.value);

  final Graph _graph;

  Operation op;

  final Output<String> key;

  final Output<String> value;

  ReaderRead run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return ReaderRead(
        (result$[idx$0] as Output<String>), (result$[idx$1] as Output<String>));
  }
}

class ReaderRead {
  ReaderRead(this.key, this.value);

  final Output<String> key;

  final Output<String> value;
}

ReaderReadOutput readerRead(
    Output<String> readerHandle, Output<String> queueHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ReaderRead', operationName ??= graph._scope.uniqueName('ReaderRead/'));
  op$.addInput(readerHandle);
  op$.addInput(queueHandle);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return ReaderReadOutput(graph, result$, (result$[0] as Output<String>),
      (result$[1] as Output<String>));
}

class SparseSparseMinimumOutput<T> {
  SparseSparseMinimumOutput(
      this._graph, this.op, this.outputIndices, this.outputValues);

  final Graph _graph;

  Operation op;

  final Output<int> outputIndices;

  final Output<T> outputValues;

  SparseSparseMinimum run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return SparseSparseMinimum<T>(
        (result$[idx$0] as Output<int>), (result$[idx$1] as Output<T>));
  }
}

class SparseSparseMinimum<T> {
  SparseSparseMinimum(this.outputIndices, this.outputValues);

  final Output<int> outputIndices;

  final Output<T> outputValues;
}

SparseSparseMinimumOutput sparseSparseMinimum<T>(
    Output<int> aIndices,
    Output<T> aValues,
    Output<int> aShape,
    Output<int> bIndices,
    Output<T> bValues,
    Output<int> bShape,
    {Graph graph,
    String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseSparseMinimum',
      operationName ??= graph._scope.uniqueName('SparseSparseMinimum/'));
  op$.addInput(aIndices);
  op$.addInput(aValues);
  op$.addInput(aShape);
  op$.addInput(bIndices);
  op$.addInput(bValues);
  op$.addInput(bShape);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return SparseSparseMinimumOutput<T>(
      graph, result$, (result$[0] as Output<int>), (result$[1] as Output<T>));
}

Output<double> iRFFT3D(Output input, Output<int> fftLength,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'IRFFT3D', operationName ??= graph._scope.uniqueName('IRFFT3D/'));
  op$.addInput(input);
  op$.addInput(fftLength);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

Output textLineReaderV2(
    {Graph graph,
    String operationName,
    int skipHeaderLines: 0,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TextLineReaderV2',
      operationName ??= graph._scope.uniqueName('TextLineReaderV2/'));
  op$.setAttrInt('skip_header_lines', skipHeaderLines);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output parseExampleDataset<T>(Output inputDataset, Output<int> numParallelCalls,
    List<Output<List<T>>> denseDefaults,
    {Graph graph,
    String operationName,
    List<String> sparseKeys,
    List<String> denseKeys,
    List<DataType> sparseTypes,
    List<DataType> tdense,
    List<Shape> denseShapes,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ParseExampleDataset',
      operationName ??= graph._scope.uniqueName('ParseExampleDataset/'));
  op$.addInput(inputDataset);
  op$.addInput(numParallelCalls);
  op$.addInputList(denseDefaults);
  op$.setAttrStringList('sparse_keys', sparseKeys);
  op$.setAttrStringList('dense_keys', denseKeys);
  op$.setAttrTypeList('sparse_types', sparseTypes);
  op$.setAttrTypeList('Tdense', tdense);
  op$.setAttrShapeList('dense_shapes', denseShapes);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output identityReaderV2(
    {Graph graph, String operationName, String container, String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('IdentityReaderV2',
      operationName ??= graph._scope.uniqueName('IdentityReaderV2/'));
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output fixedLengthRecordReaderV2(
    {Graph graph,
    String operationName,
    int headerBytes: 0,
    int recordBytes,
    int footerBytes: 0,
    int hopBytes: 0,
    String container,
    String sharedName,
    String encoding}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('FixedLengthRecordReaderV2',
      operationName ??= graph._scope.uniqueName('FixedLengthRecordReaderV2/'));
  op$.setAttrInt('header_bytes', headerBytes);
  op$.setAttrInt('record_bytes', recordBytes);
  op$.setAttrInt('footer_bytes', footerBytes);
  op$.setAttrInt('hop_bytes', hopBytes);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
  op$.setAttrString('encoding', encoding);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

@Deprecated('DEPRECATED at GraphDef version 26: Use FixedLengthRecordReaderV2')
Output<String> fixedLengthRecordReader(
    {Graph graph,
    String operationName,
    int headerBytes: 0,
    int recordBytes,
    int footerBytes: 0,
    int hopBytes: 0,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('FixedLengthRecordReader',
      operationName ??= graph._scope.uniqueName('FixedLengthRecordReader/'));
  op$.setAttrInt('header_bytes', headerBytes);
  op$.setAttrInt('record_bytes', recordBytes);
  op$.setAttrInt('footer_bytes', footerBytes);
  op$.setAttrInt('hop_bytes', hopBytes);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<T> igammaGradA<T>(Output<T> a, Output<T> x,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'IgammaGradA', operationName ??= graph._scope.uniqueName('IgammaGradA/'));
  op$.addInput(a);
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation assert$<T>(Output<bool> condition, List<Output<List<T>>> data,
    {Graph graph, String operationName, List<DataType> t, int summarize: 3}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Assert', operationName ??= graph._scope.uniqueName('Assert/'));
  op$.addInput(condition);
  op$.addInputList(data);
  op$.setAttrTypeList('T', t);
  op$.setAttrInt('summarize', summarize);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> transpose<T>(Output<T> x, Output<T> perm,
    {Graph graph, String operationName, DataType tperm: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Transpose', operationName ??= graph._scope.uniqueName('Transpose/'));
  op$.addInput(x);
  op$.addInput(perm);
  op$.setAttrType('Tperm', tperm);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation writeScalarSummary<T>(
    Output writer, Output<int> step, Output<String> tag, Output<T> value,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('WriteScalarSummary',
      operationName ??= graph._scope.uniqueName('WriteScalarSummary/'));
  op$.addInput(writer);
  op$.addInput(step);
  op$.addInput(tag);
  op$.addInput(value);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<String> reduceJoin(Output<String> inputs, Output<int> reductionIndices,
    {Graph graph,
    String operationName,
    bool keepDims: false,
    String separator}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ReduceJoin', operationName ??= graph._scope.uniqueName('ReduceJoin/'));
  op$.addInput(inputs);
  op$.addInput(reductionIndices);
  op$.setAttrBool('keep_dims', keepDims);
  op$.setAttrString('separator', separator);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

class SparseConcatOutput<T> {
  SparseConcatOutput(this._graph, this.op, this.outputIndices,
      this.outputValues, this.outputShape);

  final Graph _graph;

  Operation op;

  final Output<int> outputIndices;

  final Output<T> outputValues;

  final Output<int> outputShape;

  SparseConcat run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return SparseConcat<T>((result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<T>), (result$[idx$2] as Output<int>));
  }
}

class SparseConcat<T> {
  SparseConcat(this.outputIndices, this.outputValues, this.outputShape);

  final Output<int> outputIndices;

  final Output<T> outputValues;

  final Output<int> outputShape;
}

SparseConcatOutput sparseConcat<T>(
    List<Output<int>> indices, List<Output<T>> values, List<Output<int>> shapes,
    {Graph graph, String operationName, int concatDim, int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseConcat',
      operationName ??= graph._scope.uniqueName('SparseConcat/'));
  op$.addInputList(indices);
  op$.addInputList(values);
  op$.addInputList(shapes);
  op$.setAttrInt('concat_dim', concatDim);
  op$.setAttrInt('N', n);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return SparseConcatOutput<T>(graph, result$, (result$[0] as Output<int>),
      (result$[1] as Output<T>), (result$[2] as Output<int>));
}

Output<T> iFFT2D<T>(Output<T> input,
    {Graph graph,
    String operationName,
    DataType tcomplex: DataType.DT_COMPLEX64}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'IFFT2D', operationName ??= graph._scope.uniqueName('IFFT2D/'));
  op$.addInput(input);
  op$.setAttrType('Tcomplex', tcomplex);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation resourceApplyCenteredRMSProp<T>(
    Output var$,
    Output mg,
    Output ms,
    Output mom,
    Output<T> lr,
    Output<T> rho,
    Output<T> momentum,
    Output<T> epsilon,
    Output<T> grad,
    {Graph graph,
    String operationName,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ResourceApplyCenteredRMSProp',
      operationName ??=
          graph._scope.uniqueName('ResourceApplyCenteredRMSProp/'));
  op$.addInput(var$);
  op$.addInput(mg);
  op$.addInput(ms);
  op$.addInput(mom);
  op$.addInput(lr);
  op$.addInput(rho);
  op$.addInput(momentum);
  op$.addInput(epsilon);
  op$.addInput(grad);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output serializeIterator(Output resourceHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SerializeIterator',
      operationName ??= graph._scope.uniqueName('SerializeIterator/'));
  op$.addInput(resourceHandle);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<String> shardedFilespec(Output<String> basename, Output<int> numShards,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ShardedFilespec',
      operationName ??= graph._scope.uniqueName('ShardedFilespec/'));
  op$.addInput(basename);
  op$.addInput(numShards);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<T> restoreSlice<T>(Output<String> filePattern, Output<String> tensorName,
    Output<String> shapeAndSlice,
    {Graph graph, String operationName, DataType dt, int preferredShard: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('RestoreSlice',
      operationName ??= graph._scope.uniqueName('RestoreSlice/'));
  op$.addInput(filePattern);
  op$.addInput(tensorName);
  op$.addInput(shapeAndSlice);
  op$.setAttrType('dt', dt);
  op$.setAttrInt('preferred_shard', preferredShard);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<int> readerNumRecordsProducedV2(Output readerHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ReaderNumRecordsProducedV2',
      operationName ??= graph._scope.uniqueName('ReaderNumRecordsProducedV2/'));
  op$.addInput(readerHandle);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

Output<T> decodeRaw<T>(Output<String> bytes,
    {Graph graph,
    String operationName,
    DataType outType,
    bool littleEndian: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'DecodeRaw', operationName ??= graph._scope.uniqueName('DecodeRaw/'));
  op$.addInput(bytes);
  op$.setAttrType('out_type', outType);
  op$.setAttrBool('little_endian', littleEndian);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> avgPool3D<T>(Output<T> input,
    {Graph graph,
    String operationName,
    List<int> ksize,
    List<int> strides,
    String padding,
    String dataFormat: 'NDHWC'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'AvgPool3D', operationName ??= graph._scope.uniqueName('AvgPool3D/'));
  op$.addInput(input);
  op$.setAttrIntList('ksize', ksize);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
  op$.setAttrString('data_format', dataFormat);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

@Deprecated('DEPRECATED at GraphDef version 15: Use IFFT3D')
Output batchIFFT3D(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BatchIFFT3D', operationName ??= graph._scope.uniqueName('BatchIFFT3D/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

/// This operation has no outputs.
Operation saveSlices<T>(Output<String> filename, Output<String> tensorNames,
    Output<String> shapesAndSlices, List<Output<List<T>>> data,
    {Graph graph, String operationName, List<DataType> t}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SaveSlices', operationName ??= graph._scope.uniqueName('SaveSlices/'));
  op$.addInput(filename);
  op$.addInput(tensorNames);
  op$.addInput(shapesAndSlices);
  op$.addInputList(data);
  op$.setAttrTypeList('T', t);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// This operation has no outputs.
Operation save<T>(Output<String> filename, Output<String> tensorNames,
    List<Output<List<T>>> data,
    {Graph graph, String operationName, List<DataType> t}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Save', operationName ??= graph._scope.uniqueName('Save/'));
  op$.addInput(filename);
  op$.addInput(tensorNames);
  op$.addInputList(data);
  op$.setAttrTypeList('T', t);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<String> hashTable(
    {Graph graph,
    String operationName,
    String container,
    String sharedName,
    bool useNodeNameSharing: false,
    DataType keyDtype,
    DataType valueDtype}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'HashTable', operationName ??= graph._scope.uniqueName('HashTable/'));
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
  op$.setAttrBool('use_node_name_sharing', useNodeNameSharing);
  op$.setAttrType('key_dtype', keyDtype);
  op$.setAttrType('value_dtype', valueDtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

class CudnnRNNBackpropOutput<T> {
  CudnnRNNBackpropOutput(this._graph, this.op, this.inputBackprop,
      this.inputHBackprop, this.inputCBackprop, this.paramsBackprop);

  final Graph _graph;

  Operation op;

  final Output<T> inputBackprop;

  final Output<T> inputHBackprop;

  final Output<T> inputCBackprop;

  final Output<T> paramsBackprop;

  CudnnRNNBackprop run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var idx$3 = runner.fetch(op.name, index: 3);
    var result$ = runner.run();
    return CudnnRNNBackprop<T>(
        (result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<T>),
        (result$[idx$2] as Output<T>),
        (result$[idx$3] as Output<T>));
  }
}

class CudnnRNNBackprop<T> {
  CudnnRNNBackprop(this.inputBackprop, this.inputHBackprop, this.inputCBackprop,
      this.paramsBackprop);

  final Output<T> inputBackprop;

  final Output<T> inputHBackprop;

  final Output<T> inputCBackprop;

  final Output<T> paramsBackprop;
}

CudnnRNNBackpropOutput cudnnRNNBackprop<T>(
    Output<T> input,
    Output<T> inputH,
    Output<T> inputC,
    Output<T> params,
    Output<T> output,
    Output<T> outputH,
    Output<T> outputC,
    Output<T> outputBackprop,
    Output<T> outputHBackprop,
    Output<T> outputCBackprop,
    Output<T> reserveSpace,
    {Graph graph,
    String operationName,
    String rnnMode: 'lstm',
    String inputMode: 'linear_input',
    String direction: 'unidirectional',
    double dropout: 0.0,
    int seed: 0,
    int seed2: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CudnnRNNBackprop',
      operationName ??= graph._scope.uniqueName('CudnnRNNBackprop/'));
  op$.addInput(input);
  op$.addInput(inputH);
  op$.addInput(inputC);
  op$.addInput(params);
  op$.addInput(output);
  op$.addInput(outputH);
  op$.addInput(outputC);
  op$.addInput(outputBackprop);
  op$.addInput(outputHBackprop);
  op$.addInput(outputCBackprop);
  op$.addInput(reserveSpace);
  op$.setAttrString('rnn_mode', rnnMode);
  op$.setAttrString('input_mode', inputMode);
  op$.setAttrString('direction', direction);
  op$.setAttrFloat('dropout', dropout);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return CudnnRNNBackpropOutput<T>(
      graph,
      result$,
      (result$[0] as Output<T>),
      (result$[1] as Output<T>),
      (result$[2] as Output<T>),
      (result$[3] as Output<T>));
}

class NonMaxSuppressionV4Output {
  NonMaxSuppressionV4Output(
      this._graph, this.op, this.selectedIndices, this.validOutputs);

  final Graph _graph;

  Operation op;

  final Output<int> selectedIndices;

  final Output<int> validOutputs;

  NonMaxSuppressionV4 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return NonMaxSuppressionV4(
        (result$[idx$0] as Output<int>), (result$[idx$1] as Output<int>));
  }
}

class NonMaxSuppressionV4 {
  NonMaxSuppressionV4(this.selectedIndices, this.validOutputs);

  final Output<int> selectedIndices;

  final Output<int> validOutputs;
}

NonMaxSuppressionV4Output nonMaxSuppressionV4(
    Output<double> boxes,
    Output<double> scores,
    Output<int> maxOutputSize,
    Output<double> iouThreshold,
    Output<double> scoreThreshold,
    {Graph graph,
    String operationName,
    bool padToMaxOutputSize: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('NonMaxSuppressionV4',
      operationName ??= graph._scope.uniqueName('NonMaxSuppressionV4/'));
  op$.addInput(boxes);
  op$.addInput(scores);
  op$.addInput(maxOutputSize);
  op$.addInput(iouThreshold);
  op$.addInput(scoreThreshold);
  op$.setAttrBool('pad_to_max_output_size', padToMaxOutputSize);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return NonMaxSuppressionV4Output(
      graph, result$, (result$[0] as Output<int>), (result$[1] as Output<int>));
}

Output<int> nonMaxSuppression(
    Output<double> boxes, Output<double> scores, Output<int> maxOutputSize,
    {Graph graph, String operationName, double iouThreshold: 0.5}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('NonMaxSuppression',
      operationName ??= graph._scope.uniqueName('NonMaxSuppression/'));
  op$.addInput(boxes);
  op$.addInput(scores);
  op$.addInput(maxOutputSize);
  op$.setAttrFloat('iou_threshold', iouThreshold);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

Output<T> oneHot<T>(
    Output<T> indices, Output<int> depth, Output<T> onValue, Output<T> offValue,
    {Graph graph,
    String operationName,
    int axis: -1,
    DataType tI: DataType.DT_INT64}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'OneHot', operationName ??= graph._scope.uniqueName('OneHot/'));
  op$.addInput(indices);
  op$.addInput(depth);
  op$.addInput(onValue);
  op$.addInput(offValue);
  op$.setAttrInt('axis', axis);
  op$.setAttrType('TI', tI);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output mutableHashTableOfTensorsV2(
    {Graph graph,
    String operationName,
    String container,
    String sharedName,
    bool useNodeNameSharing: false,
    DataType keyDtype,
    DataType valueDtype,
    Shape valueShape}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'MutableHashTableOfTensorsV2',
      operationName ??=
          graph._scope.uniqueName('MutableHashTableOfTensorsV2/'));
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
  op$.setAttrBool('use_node_name_sharing', useNodeNameSharing);
  op$.setAttrType('key_dtype', keyDtype);
  op$.setAttrType('value_dtype', valueDtype);
  op$.setAttrShape('value_shape', valueShape);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output tensorListConcatLists(Output inputA, Output inputB,
    {Graph graph, String operationName, DataType elementDtype}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorListConcatLists',
      operationName ??= graph._scope.uniqueName('TensorListConcatLists/'));
  op$.addInput(inputA);
  op$.addInput(inputB);
  op$.setAttrType('element_dtype', elementDtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output fIFOQueueV2(
    {Graph graph,
    String operationName,
    List<DataType> componentTypes,
    List<Shape> shapes,
    int capacity: -1,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'FIFOQueueV2', operationName ??= graph._scope.uniqueName('FIFOQueueV2/'));
  op$.setAttrTypeList('component_types', componentTypes);
  op$.setAttrShapeList('shapes', shapes);
  op$.setAttrInt('capacity', capacity);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<T> batchToSpaceND<T>(
    Output<T> input, Output<T> blockShape, Output<T> crops,
    {Graph graph,
    String operationName,
    DataType tblockShape: DataType.DT_INT32,
    DataType tcrops: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchToSpaceND',
      operationName ??= graph._scope.uniqueName('BatchToSpaceND/'));
  op$.addInput(input);
  op$.addInput(blockShape);
  op$.addInput(crops);
  op$.setAttrType('Tblock_shape', tblockShape);
  op$.setAttrType('Tcrops', tcrops);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> randomGammaGrad<T>(Output<T> alpha, Output<T> sample,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('RandomGammaGrad',
      operationName ??= graph._scope.uniqueName('RandomGammaGrad/'));
  op$.addInput(alpha);
  op$.addInput(sample);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<double> cropAndResizeGradBoxes<T>(Output<double> grads, Output<T> image,
    Output<double> boxes, Output<int> boxInd,
    {Graph graph, String operationName, String method: 'bilinear'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CropAndResizeGradBoxes',
      operationName ??= graph._scope.uniqueName('CropAndResizeGradBoxes/'));
  op$.addInput(grads);
  op$.addInput(image);
  op$.addInput(boxes);
  op$.addInput(boxInd);
  op$.setAttrString('method', method);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

class UniqueWithCountsOutput<T> {
  UniqueWithCountsOutput(this._graph, this.op, this.y, this.idx, this.count);

  final Graph _graph;

  Operation op;

  final Output<T> y;

  final Output<T> idx;

  final Output<T> count;

  UniqueWithCounts run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return UniqueWithCounts<T>((result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<T>), (result$[idx$2] as Output<T>));
  }
}

class UniqueWithCounts<T> {
  UniqueWithCounts(this.y, this.idx, this.count);

  final Output<T> y;

  final Output<T> idx;

  final Output<T> count;
}

UniqueWithCountsOutput uniqueWithCounts<T>(Output<T> x,
    {Graph graph, String operationName, DataType outIdx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('UniqueWithCounts',
      operationName ??= graph._scope.uniqueName('UniqueWithCounts/'));
  op$.addInput(x);
  op$.setAttrType('out_idx', outIdx);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return UniqueWithCountsOutput<T>(graph, result$, (result$[0] as Output<T>),
      (result$[1] as Output<T>), (result$[2] as Output<T>));
}

Output<T> resizeBicubicGrad<T>(Output<double> grads, Output<T> originalImage,
    {Graph graph, String operationName, bool alignCorners: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResizeBicubicGrad',
      operationName ??= graph._scope.uniqueName('ResizeBicubicGrad/'));
  op$.addInput(grads);
  op$.addInput(originalImage);
  op$.setAttrBool('align_corners', alignCorners);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> sparseApplyMomentum<T>(Output<T> var$, Output<T> accum, Output<T> lr,
    Output<T> grad, Output<T> indices, Output<T> momentum,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false,
    bool useNesterov: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseApplyMomentum',
      operationName ??= graph._scope.uniqueName('SparseApplyMomentum/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(lr);
  op$.addInput(grad);
  op$.addInput(indices);
  op$.addInput(momentum);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
  op$.setAttrBool('use_nesterov', useNesterov);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<double> extractGlimpse(
    Output<double> input, Output<int> size, Output<double> offsets,
    {Graph graph,
    String operationName,
    bool centered: true,
    bool normalized: true,
    bool uniformNoise: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ExtractGlimpse',
      operationName ??= graph._scope.uniqueName('ExtractGlimpse/'));
  op$.addInput(input);
  op$.addInput(size);
  op$.addInput(offsets);
  op$.setAttrBool('centered', centered);
  op$.setAttrBool('normalized', normalized);
  op$.setAttrBool('uniform_noise', uniformNoise);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

Output setStatsAggregatorDataset(Output inputDataset, Output statsAggregator,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SetStatsAggregatorDataset',
      operationName ??= graph._scope.uniqueName('SetStatsAggregatorDataset/'));
  op$.addInput(inputDataset);
  op$.addInput(statsAggregator);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<T> rightShift<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RightShift', operationName ??= graph._scope.uniqueName('RightShift/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output decodeBmp(Output<String> contents,
    {Graph graph, String operationName, int channels: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'DecodeBmp', operationName ??= graph._scope.uniqueName('DecodeBmp/'));
  op$.addInput(contents);
  op$.setAttrInt('channels', channels);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

class SampleDistortedBoundingBoxOutput<T> {
  SampleDistortedBoundingBoxOutput(
      this._graph, this.op, this.begin, this.size, this.bboxes);

  final Graph _graph;

  Operation op;

  final Output<T> begin;

  final Output<T> size;

  final Output<double> bboxes;

  SampleDistortedBoundingBox run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return SampleDistortedBoundingBox<T>((result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<T>), (result$[idx$2] as Output<double>));
  }
}

class SampleDistortedBoundingBox<T> {
  SampleDistortedBoundingBox(this.begin, this.size, this.bboxes);

  final Output<T> begin;

  final Output<T> size;

  final Output<double> bboxes;
}

SampleDistortedBoundingBoxOutput sampleDistortedBoundingBox<T>(
    Output<T> imageSize, Output<double> boundingBoxes,
    {Graph graph,
    String operationName,
    int seed: 0,
    int seed2: 0,
    double minObjectCovered: 0.10000000149011612,
    List<double> aspectRatioRange,
    List<double> areaRange,
    int maxAttempts: 100,
    bool useImageIfNoBoundingBoxes: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SampleDistortedBoundingBox',
      operationName ??= graph._scope.uniqueName('SampleDistortedBoundingBox/'));
  op$.addInput(imageSize);
  op$.addInput(boundingBoxes);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
  op$.setAttrFloat('min_object_covered', minObjectCovered);
  op$.setAttrFloatList('aspect_ratio_range', aspectRatioRange);
  op$.setAttrFloatList('area_range', areaRange);
  op$.setAttrInt('max_attempts', maxAttempts);
  op$.setAttrBool('use_image_if_no_bounding_boxes', useImageIfNoBoundingBoxes);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return SampleDistortedBoundingBoxOutput<T>(
      graph,
      result$,
      (result$[0] as Output<T>),
      (result$[1] as Output<T>),
      (result$[2] as Output<double>));
}

class ListDiffOutput<T> {
  ListDiffOutput(this._graph, this.op, this.out, this.idx);

  final Graph _graph;

  Operation op;

  final Output<T> out;

  final Output<T> idx;

  ListDiff run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return ListDiff<T>(
        (result$[idx$0] as Output<T>), (result$[idx$1] as Output<T>));
  }
}

class ListDiff<T> {
  ListDiff(this.out, this.idx);

  final Output<T> out;

  final Output<T> idx;
}

ListDiffOutput listDiff<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName, DataType outIdx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ListDiff', operationName ??= graph._scope.uniqueName('ListDiff/'));
  op$.addInput(x);
  op$.addInput(y);
  op$.setAttrType('out_idx', outIdx);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return ListDiffOutput<T>(
      graph, result$, (result$[0] as Output<T>), (result$[1] as Output<T>));
}

@Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayScatterV3')
Output<double> tensorArrayScatterV2<T>(Output<String> handle,
    Output<int> indices, Output<T> value, Output<double> flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayScatterV2',
      operationName ??= graph._scope.uniqueName('TensorArrayScatterV2/'));
  op$.addInput(handle);
  op$.addInput(indices);
  op$.addInput(value);
  op$.addInput(flowIn);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

Output<T> rGBToHSV<T>(Output<T> images, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RGBToHSV', operationName ??= graph._scope.uniqueName('RGBToHSV/'));
  op$.addInput(images);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class BoostedTreesCalculateBestGainsPerFeatureOutput {
  BoostedTreesCalculateBestGainsPerFeatureOutput(
      this._graph,
      this.op,
      this.nodeIdsList,
      this.gainsList,
      this.thresholdsList,
      this.leftNodeContribsList,
      this.rightNodeContribsList);

  final Graph _graph;

  Operation op;

  final Output<int> nodeIdsList;

  final Output<double> gainsList;

  final Output<int> thresholdsList;

  final Output<double> leftNodeContribsList;

  final Output<double> rightNodeContribsList;

  BoostedTreesCalculateBestGainsPerFeature run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var idx$3 = runner.fetch(op.name, index: 3);
    var idx$4 = runner.fetch(op.name, index: 4);
    var result$ = runner.run();
    return BoostedTreesCalculateBestGainsPerFeature(
        (result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<double>),
        (result$[idx$2] as Output<int>),
        (result$[idx$3] as Output<double>),
        (result$[idx$4] as Output<double>));
  }
}

class BoostedTreesCalculateBestGainsPerFeature {
  BoostedTreesCalculateBestGainsPerFeature(
      this.nodeIdsList,
      this.gainsList,
      this.thresholdsList,
      this.leftNodeContribsList,
      this.rightNodeContribsList);

  final Output<int> nodeIdsList;

  final Output<double> gainsList;

  final Output<int> thresholdsList;

  final Output<double> leftNodeContribsList;

  final Output<double> rightNodeContribsList;
}

BoostedTreesCalculateBestGainsPerFeatureOutput
    boostedTreesCalculateBestGainsPerFeature(
        Output<int> nodeIdRange,
        List<Output<double>> statsSummaryList,
        Output<double> l1,
        Output<double> l2,
        Output<double> treeComplexity,
        Output<double> minNodeWeight,
        {Graph graph,
        String operationName,
        int maxSplits,
        int numFeatures}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BoostedTreesCalculateBestGainsPerFeature',
      operationName ??=
          graph._scope.uniqueName('BoostedTreesCalculateBestGainsPerFeature/'));
  op$.addInput(nodeIdRange);
  op$.addInputList(statsSummaryList);
  op$.addInput(l1);
  op$.addInput(l2);
  op$.addInput(treeComplexity);
  op$.addInput(minNodeWeight);
  op$.setAttrInt('max_splits', maxSplits);
  op$.setAttrInt('num_features', numFeatures);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return BoostedTreesCalculateBestGainsPerFeatureOutput(
      graph,
      result$,
      (result$[0] as Output<int>),
      (result$[1] as Output<double>),
      (result$[2] as Output<int>),
      (result$[3] as Output<double>),
      (result$[4] as Output<double>));
}

Output decodeGif(Output<String> contents, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'DecodeGif', operationName ??= graph._scope.uniqueName('DecodeGif/'));
  op$.addInput(contents);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<double> adjustSaturation(Output<double> images, Output<double> scale,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AdjustSaturation',
      operationName ??= graph._scope.uniqueName('AdjustSaturation/'));
  op$.addInput(images);
  op$.addInput(scale);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

Output<double> adjustContrastv2(
    Output<double> images, Output<double> contrastFactor,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AdjustContrastv2',
      operationName ??= graph._scope.uniqueName('AdjustContrastv2/'));
  op$.addInput(images);
  op$.addInput(contrastFactor);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

Output<T> extractJpegShape<T>(Output<String> contents,
    {Graph graph,
    String operationName,
    DataType outputType: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ExtractJpegShape',
      operationName ??= graph._scope.uniqueName('ExtractJpegShape/'));
  op$.addInput(contents);
  op$.setAttrType('output_type', outputType);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class TensorArrayConcatOutput<T> {
  TensorArrayConcatOutput(this._graph, this.op, this.value, this.lengths);

  final Graph _graph;

  Operation op;

  final Output<T> value;

  final Output<int> lengths;

  TensorArrayConcat run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return TensorArrayConcat<T>(
        (result$[idx$0] as Output<T>), (result$[idx$1] as Output<int>));
  }
}

class TensorArrayConcat<T> {
  TensorArrayConcat(this.value, this.lengths);

  final Output<T> value;

  final Output<int> lengths;
}

@Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayGradV3')
TensorArrayConcatOutput tensorArrayConcat<T>(
    Output<String> handle, Output<double> flowIn,
    {Graph graph,
    String operationName,
    DataType dtype,
    Shape elementShapeExcept0}) {
  dtype ??= inferType(handle);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayConcat',
      operationName ??= graph._scope.uniqueName('TensorArrayConcat/'));
  op$.addInput(handle);
  op$.addInput(flowIn);
  op$.setAttrType('dtype', dtype);
  op$.setAttrShape('element_shape_except0', elementShapeExcept0);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return TensorArrayConcatOutput<T>(
      graph, result$, (result$[0] as Output<T>), (result$[1] as Output<int>));
}

Output decodeAndCropJpeg(Output<String> contents, Output<int> cropWindow,
    {Graph graph,
    String operationName,
    int channels: 0,
    int ratio: 1,
    bool fancyUpscaling: true,
    bool tryRecoverTruncated: false,
    double acceptableFraction: 1.0,
    String dctMethod}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DecodeAndCropJpeg',
      operationName ??= graph._scope.uniqueName('DecodeAndCropJpeg/'));
  op$.addInput(contents);
  op$.addInput(cropWindow);
  op$.setAttrInt('channels', channels);
  op$.setAttrInt('ratio', ratio);
  op$.setAttrBool('fancy_upscaling', fancyUpscaling);
  op$.setAttrBool('try_recover_truncated', tryRecoverTruncated);
  op$.setAttrFloat('acceptable_fraction', acceptableFraction);
  op$.setAttrString('dct_method', dctMethod);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<int> orderedMapIncompleteSize(
    {Graph graph,
    String operationName,
    int capacity: 0,
    int memoryLimit: 0,
    List<DataType> dtypes,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('OrderedMapIncompleteSize',
      operationName ??= graph._scope.uniqueName('OrderedMapIncompleteSize/'));
  op$.setAttrInt('capacity', capacity);
  op$.setAttrInt('memory_limit', memoryLimit);
  op$.setAttrTypeList('dtypes', dtypes);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

class LogMatrixDeterminantOutput<T> {
  LogMatrixDeterminantOutput(
      this._graph, this.op, this.sign, this.logAbsDeterminant);

  final Graph _graph;

  Operation op;

  final Output<T> sign;

  final Output<T> logAbsDeterminant;

  LogMatrixDeterminant run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return LogMatrixDeterminant<T>(
        (result$[idx$0] as Output<T>), (result$[idx$1] as Output<T>));
  }
}

class LogMatrixDeterminant<T> {
  LogMatrixDeterminant(this.sign, this.logAbsDeterminant);

  final Output<T> sign;

  final Output<T> logAbsDeterminant;
}

LogMatrixDeterminantOutput logMatrixDeterminant<T>(Output<T> input,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('LogMatrixDeterminant',
      operationName ??= graph._scope.uniqueName('LogMatrixDeterminant/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return LogMatrixDeterminantOutput<T>(
      graph, result$, (result$[0] as Output<T>), (result$[1] as Output<T>));
}

Output<T> temporaryVariable<T>(
    {Graph graph,
    String operationName,
    Shape shape,
    @required DataType dtype,
    String varName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TemporaryVariable',
      operationName ??= graph._scope.uniqueName('TemporaryVariable/'));
  op$.setAttrShape('shape', shape);
  op$.setAttrType('dtype', dtype);
  op$.setAttrString('var_name', varName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<double> resizeBilinear<T>(Output<T> images, Output<int> size,
    {Graph graph, String operationName, bool alignCorners: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResizeBilinear',
      operationName ??= graph._scope.uniqueName('ResizeBilinear/'));
  op$.addInput(images);
  op$.addInput(size);
  op$.setAttrBool('align_corners', alignCorners);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

Output<bool> isNan<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'IsNan', operationName ??= graph._scope.uniqueName('IsNan/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
}

Output tensorListPushBack<T>(Output inputHandle, Output<T> tensor,
    {Graph graph, String operationName, DataType elementDtype}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorListPushBack',
      operationName ??= graph._scope.uniqueName('TensorListPushBack/'));
  op$.addInput(inputHandle);
  op$.addInput(tensor);
  op$.setAttrType('element_dtype', elementDtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<T> hSVToRGB<T>(Output<T> images, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'HSVToRGB', operationName ??= graph._scope.uniqueName('HSVToRGB/'));
  op$.addInput(images);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> sparseSegmentMeanWithNumSegments<T>(Output<T> data, Output<T> indices,
    Output<int> segmentIds, Output<T> numSegments,
    {Graph graph,
    String operationName,
    DataType tidx: DataType.DT_INT32,
    DataType tnumsegments: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SparseSegmentMeanWithNumSegments',
      operationName ??=
          graph._scope.uniqueName('SparseSegmentMeanWithNumSegments/'));
  op$.addInput(data);
  op$.addInput(indices);
  op$.addInput(segmentIds);
  op$.addInput(numSegments);
  op$.setAttrType('Tidx', tidx);
  op$.setAttrType('Tnumsegments', tnumsegments);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<double> resizeBicubic<T>(Output<T> images, Output<int> size,
    {Graph graph, String operationName, bool alignCorners: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResizeBicubic',
      operationName ??= graph._scope.uniqueName('ResizeBicubic/'));
  op$.addInput(images);
  op$.addInput(size);
  op$.setAttrBool('align_corners', alignCorners);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

Output<List<T>> remoteFusedGraphExecute<T>(List<Output<List<T>>> inputs,
    {Graph graph,
    String operationName,
    List<DataType> tinputs,
    List<DataType> toutputs,
    String serializedRemoteFusedGraphExecuteInfo}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('RemoteFusedGraphExecute',
      operationName ??= graph._scope.uniqueName('RemoteFusedGraphExecute/'));
  op$.addInputList(inputs);
  op$.setAttrTypeList('Tinputs', tinputs);
  op$.setAttrTypeList('Toutputs', toutputs);
  op$.setAttrString('serialized_remote_fused_graph_execute_info',
      serializedRemoteFusedGraphExecuteInfo);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

Output<String> encodeProto<T>(Output<int> sizes, List<Output<List<T>>> values,
    {Graph graph,
    String operationName,
    List<String> fieldNames,
    String messageType,
    String descriptorSource: 'local://',
    List<DataType> tinputTypes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'EncodeProto', operationName ??= graph._scope.uniqueName('EncodeProto/'));
  op$.addInput(sizes);
  op$.addInputList(values);
  op$.setAttrStringList('field_names', fieldNames);
  op$.setAttrString('message_type', messageType);
  op$.setAttrString('descriptor_source', descriptorSource);
  op$.setAttrTypeList('Tinput_types', tinputTypes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<T> tensorListStack<T>(Output inputHandle,
    {Graph graph,
    String operationName,
    DataType elementDtype,
    int numElements: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorListStack',
      operationName ??= graph._scope.uniqueName('TensorListStack/'));
  op$.addInput(inputHandle);
  op$.setAttrType('element_dtype', elementDtype);
  op$.setAttrInt('num_elements', numElements);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> matrixDiagPart<T>(Output<T> input,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MatrixDiagPart',
      operationName ??= graph._scope.uniqueName('MatrixDiagPart/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class DecodeProtoV2Output<T> {
  DecodeProtoV2Output(this._graph, this.op, this.sizes, this.values);

  final Graph _graph;

  Operation op;

  final Output<int> sizes;

  final Output<List<T>> values;

  DecodeProtoV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return DecodeProtoV2<T>(
        (result$[idx$0] as Output<int>), (result$[idx$1] as Output<List<T>>));
  }
}

class DecodeProtoV2<T> {
  DecodeProtoV2(this.sizes, this.values);

  final Output<int> sizes;

  final Output<List<T>> values;
}

DecodeProtoV2Output decodeProtoV2<T>(Output<String> bytes,
    {Graph graph,
    String operationName,
    String messageType,
    List<String> fieldNames,
    List<DataType> outputTypes,
    String descriptorSource: 'local://',
    String messageFormat: 'binary',
    bool sanitize: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DecodeProtoV2',
      operationName ??= graph._scope.uniqueName('DecodeProtoV2/'));
  op$.addInput(bytes);
  op$.setAttrString('message_type', messageType);
  op$.setAttrStringList('field_names', fieldNames);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrString('descriptor_source', descriptorSource);
  op$.setAttrString('message_format', messageFormat);
  op$.setAttrBool('sanitize', sanitize);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return DecodeProtoV2Output<T>(graph, result$, (result$[0] as Output<int>),
      (result$[1] as Output<List<T>>));
}

class LogUniformCandidateSamplerOutput {
  LogUniformCandidateSamplerOutput(this._graph, this.op, this.sampledCandidates,
      this.trueExpectedCount, this.sampledExpectedCount);

  final Graph _graph;

  Operation op;

  final Output<int> sampledCandidates;

  final Output<double> trueExpectedCount;

  final Output<double> sampledExpectedCount;

  LogUniformCandidateSampler run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return LogUniformCandidateSampler((result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<double>), (result$[idx$2] as Output<double>));
  }
}

class LogUniformCandidateSampler {
  LogUniformCandidateSampler(this.sampledCandidates, this.trueExpectedCount,
      this.sampledExpectedCount);

  final Output<int> sampledCandidates;

  final Output<double> trueExpectedCount;

  final Output<double> sampledExpectedCount;
}

LogUniformCandidateSamplerOutput logUniformCandidateSampler(
    Output<int> trueClasses,
    {Graph graph,
    String operationName,
    int numTrue,
    int numSampled,
    bool unique,
    int rangeMax,
    int seed: 0,
    int seed2: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('LogUniformCandidateSampler',
      operationName ??= graph._scope.uniqueName('LogUniformCandidateSampler/'));
  op$.addInput(trueClasses);
  op$.setAttrInt('num_true', numTrue);
  op$.setAttrInt('num_sampled', numSampled);
  op$.setAttrBool('unique', unique);
  op$.setAttrInt('range_max', rangeMax);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return LogUniformCandidateSamplerOutput(
      graph,
      result$,
      (result$[0] as Output<int>),
      (result$[1] as Output<double>),
      (result$[2] as Output<double>));
}

Output<List<T>> mapDefun<T>(List<Output<List<T>>> arguments,
    {Graph graph,
    String operationName,
    List<DataType> targuments,
    List<DataType> outputTypes,
    List<Shape> outputShapes,
    Func f}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'MapDefun', operationName ??= graph._scope.uniqueName('MapDefun/'));
  op$.addInputList(arguments);
  op$.setAttrTypeList('Targuments', targuments);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
  op$.setAttrFunc('f', f);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

/// This operation has no outputs.
Operation stage<T>(List<Output<List<T>>> values,
    {Graph graph,
    String operationName,
    int capacity: 0,
    int memoryLimit: 0,
    List<DataType> dtypes,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Stage', operationName ??= graph._scope.uniqueName('Stage/'));
  op$.addInputList(values);
  op$.setAttrInt('capacity', capacity);
  op$.setAttrInt('memory_limit', memoryLimit);
  op$.setAttrTypeList('dtypes', dtypes);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

class QrOutput<T> {
  QrOutput(this._graph, this.op, this.q, this.r);

  final Graph _graph;

  Operation op;

  final Output<T> q;

  final Output<T> r;

  Qr run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return Qr<T>((result$[idx$0] as Output<T>), (result$[idx$1] as Output<T>));
  }
}

class Qr<T> {
  Qr(this.q, this.r);

  final Output<T> q;

  final Output<T> r;
}

QrOutput qr<T>(Output<T> input,
    {Graph graph, String operationName, bool fullMatrices: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Qr', operationName ??= graph._scope.uniqueName('Qr/'));
  op$.addInput(input);
  op$.setAttrBool('full_matrices', fullMatrices);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return QrOutput<T>(
      graph, result$, (result$[0] as Output<T>), (result$[1] as Output<T>));
}

Output optionalFromValue<T>(List<Output<List<T>>> components,
    {Graph graph, String operationName, List<DataType> toutputTypes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('OptionalFromValue',
      operationName ??= graph._scope.uniqueName('OptionalFromValue/'));
  op$.addInputList(components);
  op$.setAttrTypeList('Toutput_types', toutputTypes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output optimizeDataset(Output inputDataset, Output<String> optimizations,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('OptimizeDataset',
      operationName ??= graph._scope.uniqueName('OptimizeDataset/'));
  op$.addInput(inputDataset);
  op$.addInput(optimizations);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<String> recordInput(
    {Graph graph,
    String operationName,
    String filePattern,
    int fileRandomSeed: 301,
    double fileShuffleShiftRatio: 0.0,
    int fileBufferSize: 10000,
    int fileParallelism: 16,
    int batchSize: 32,
    String compressionType}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RecordInput', operationName ??= graph._scope.uniqueName('RecordInput/'));
  op$.setAttrString('file_pattern', filePattern);
  op$.setAttrInt('file_random_seed', fileRandomSeed);
  op$.setAttrFloat('file_shuffle_shift_ratio', fileShuffleShiftRatio);
  op$.setAttrInt('file_buffer_size', fileBufferSize);
  op$.setAttrInt('file_parallelism', fileParallelism);
  op$.setAttrInt('batch_size', batchSize);
  op$.setAttrString('compression_type', compressionType);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

@Deprecated('DEPRECATED at GraphDef version 26: Use TextLineReaderV2')
Output<String> textLineReader(
    {Graph graph,
    String operationName,
    int skipHeaderLines: 0,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TextLineReader',
      operationName ??= graph._scope.uniqueName('TextLineReader/'));
  op$.setAttrInt('skip_header_lines', skipHeaderLines);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output sinkDataset(Output inputDataset, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SinkDataset', operationName ??= graph._scope.uniqueName('SinkDataset/'));
  op$.addInput(inputDataset);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<String> datasetToGraph(Output inputDataset,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DatasetToGraph',
      operationName ??= graph._scope.uniqueName('DatasetToGraph/'));
  op$.addInput(inputDataset);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<int> lookupTableSizeV2(Output tableHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('LookupTableSizeV2',
      operationName ??= graph._scope.uniqueName('LookupTableSizeV2/'));
  op$.addInput(tableHandle);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

/// This operation has no outputs.
Operation enqueueInQueueDataset<T>(
    Output queue, List<Output<List<T>>> components,
    {Graph graph, String operationName, List<DataType> tcomponents}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('EnqueueInQueueDataset',
      operationName ??= graph._scope.uniqueName('EnqueueInQueueDataset/'));
  op$.addInput(queue);
  op$.addInputList(components);
  op$.setAttrTypeList('Tcomponents', tcomponents);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// This operation has no outputs.
Operation sparseAccumulatorApplyGradient<T>(
    Output<String> handle,
    Output<int> localStep,
    Output<int> gradientIndices,
    Output<T> gradientValues,
    Output<int> gradientShape,
    {Graph graph,
    String operationName,
    DataType dtype,
    bool hasKnownShape}) {
  dtype ??= inferType(handle);
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SparseAccumulatorApplyGradient',
      operationName ??=
          graph._scope.uniqueName('SparseAccumulatorApplyGradient/'));
  op$.addInput(handle);
  op$.addInput(localStep);
  op$.addInput(gradientIndices);
  op$.addInput(gradientValues);
  op$.addInput(gradientShape);
  op$.setAttrType('dtype', dtype);
  op$.setAttrBool('has_known_shape', hasKnownShape);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<String> statsAggregatorSummary(Output iterator,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StatsAggregatorSummary',
      operationName ??= graph._scope.uniqueName('StatsAggregatorSummary/'));
  op$.addInput(iterator);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

@Deprecated('DEPRECATED at GraphDef version 8: Random crop is now pure Python')
Output<T> randomCrop<T>(Output<T> image, Output<int> size,
    {Graph graph, String operationName, int seed: 0, int seed2: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RandomCrop', operationName ??= graph._scope.uniqueName('RandomCrop/'));
  op$.addInput(image);
  op$.addInput(size);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> diag<T>(Output<T> diagonal, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Diag', operationName ??= graph._scope.uniqueName('Diag/'));
  op$.addInput(diagonal);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> tensorListGetItem<T>(Output inputHandle, Output<int> index,
    {Graph graph, String operationName, DataType elementDtype}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorListGetItem',
      operationName ??= graph._scope.uniqueName('TensorListGetItem/'));
  op$.addInput(inputHandle);
  op$.addInput(index);
  op$.setAttrType('element_dtype', elementDtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<String> iteratorToStringHandle(Output resourceHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('IteratorToStringHandle',
      operationName ??= graph._scope.uniqueName('IteratorToStringHandle/'));
  op$.addInput(resourceHandle);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<T> min<T>(Output<T> input, Output<T> reductionIndices,
    {Graph graph,
    String operationName,
    bool keepDims: false,
    DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Min', operationName ??= graph._scope.uniqueName('Min/'));
  op$.addInput(input);
  op$.addInput(reductionIndices);
  op$.setAttrBool('keep_dims', keepDims);
  op$.setAttrType('Tidx', tidx);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> getSessionTensor<T>(Output<String> handle,
    {Graph graph, String operationName, DataType dtype}) {
  dtype ??= inferType(handle);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('GetSessionTensor',
      operationName ??= graph._scope.uniqueName('GetSessionTensor/'));
  op$.addInput(handle);
  op$.setAttrType('dtype', dtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output groupByReducerDataset<T>(
    Output inputDataset,
    List<Output<List<T>>> keyFuncOtherArguments,
    List<Output<List<T>>> initFuncOtherArguments,
    List<Output<List<T>>> reduceFuncOtherArguments,
    List<Output<List<T>>> finalizeFuncOtherArguments,
    {Graph graph,
    String operationName,
    Func keyFunc,
    Func initFunc,
    Func reduceFunc,
    Func finalizeFunc,
    List<DataType> tkeyFuncOtherArguments,
    List<DataType> tinitFuncOtherArguments,
    List<DataType> treduceFuncOtherArguments,
    List<DataType> tfinalizeFuncOtherArguments,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('GroupByReducerDataset',
      operationName ??= graph._scope.uniqueName('GroupByReducerDataset/'));
  op$.addInput(inputDataset);
  op$.addInputList(keyFuncOtherArguments);
  op$.addInputList(initFuncOtherArguments);
  op$.addInputList(reduceFuncOtherArguments);
  op$.addInputList(finalizeFuncOtherArguments);
  op$.setAttrFunc('key_func', keyFunc);
  op$.setAttrFunc('init_func', initFunc);
  op$.setAttrFunc('reduce_func', reduceFunc);
  op$.setAttrFunc('finalize_func', finalizeFunc);
  op$.setAttrTypeList('Tkey_func_other_arguments', tkeyFuncOtherArguments);
  op$.setAttrTypeList('Tinit_func_other_arguments', tinitFuncOtherArguments);
  op$.setAttrTypeList(
      'Treduce_func_other_arguments', treduceFuncOtherArguments);
  op$.setAttrTypeList(
      'Tfinalize_func_other_arguments', tfinalizeFuncOtherArguments);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<List<T>> iteratorGetNext<T>(Output iterator,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('IteratorGetNext',
      operationName ??= graph._scope.uniqueName('IteratorGetNext/'));
  op$.addInput(iterator);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

/// Load an embedding table shard into TPU memory for use with GradientDescent.
/// TPU embeddings use dedicated per-optimizer Ops for loading and retrieving
/// trainable variables and optimizer state from TPU memory. This op enables
/// functionality equivalent to GradientDescentOptimizer.
/// This operation has no outputs.
/// * [parameters]: The shard of the embedding table resident on the host executing this
/// op. For single-TPU models, this is the entire embedding table.
/// attr [tpuEmbeddingConfig]: Serialized TPUEmbeddingConfiguration proto.
/// attr [tableId]: The id of the table specified in the tpu_embedding_config.
/// attr [numHosts]: The number of CPU hosts in the distributed training job.
/// attr [hostId]: Which CPU host in the distributed training job will execute this op.
Operation tPUEmbeddingLoadGradientDescentParameters(Output<double> parameters,
    {Graph graph,
    String operationName,
    String tpuEmbeddingConfig,
    int tableId,
    int numHosts,
    int hostId}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'TPUEmbeddingLoadGradientDescentParameters',
      operationName ??= graph._scope
          .uniqueName('TPUEmbeddingLoadGradientDescentParameters/'));
  op$.addInput(parameters);
  op$.setAttrString('tpu_embedding_config', tpuEmbeddingConfig);
  op$.setAttrInt('table_id', tableId);
  op$.setAttrInt('num_hosts', numHosts);
  op$.setAttrInt('host_id', hostId);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output oneShotIterator(
    {Graph graph,
    String operationName,
    Func datasetFactory,
    List<DataType> outputTypes,
    List<Shape> outputShapes,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('OneShotIterator',
      operationName ??= graph._scope.uniqueName('OneShotIterator/'));
  op$.setAttrFunc('dataset_factory', datasetFactory);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

class UniqueWithCountsV2Output<T> {
  UniqueWithCountsV2Output(this._graph, this.op, this.y, this.idx, this.count);

  final Graph _graph;

  Operation op;

  final Output<T> y;

  final Output<T> idx;

  final Output<T> count;

  UniqueWithCountsV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return UniqueWithCountsV2<T>((result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<T>), (result$[idx$2] as Output<T>));
  }
}

class UniqueWithCountsV2<T> {
  UniqueWithCountsV2(this.y, this.idx, this.count);

  final Output<T> y;

  final Output<T> idx;

  final Output<T> count;
}

UniqueWithCountsV2Output uniqueWithCountsV2<T>(Output<T> x, Output<T> axis,
    {Graph graph,
    String operationName,
    DataType taxis: DataType.DT_INT64,
    DataType outIdx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('UniqueWithCountsV2',
      operationName ??= graph._scope.uniqueName('UniqueWithCountsV2/'));
  op$.addInput(x);
  op$.addInput(axis);
  op$.setAttrType('Taxis', taxis);
  op$.setAttrType('out_idx', outIdx);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return UniqueWithCountsV2Output<T>(graph, result$, (result$[0] as Output<T>),
      (result$[1] as Output<T>), (result$[2] as Output<T>));
}

Output anonymousIterator(
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AnonymousIterator',
      operationName ??= graph._scope.uniqueName('AnonymousIterator/'));
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

@Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayWriteV3')
Output<double> tensorArrayWriteV2<T>(Output<String> handle, Output<int> index,
    Output<T> value, Output<double> flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayWriteV2',
      operationName ??= graph._scope.uniqueName('TensorArrayWriteV2/'));
  op$.addInput(handle);
  op$.addInput(index);
  op$.addInput(value);
  op$.addInput(flowIn);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

class DenseToSparseSetOperationOutput<T> {
  DenseToSparseSetOperationOutput(this._graph, this.op, this.resultIndices,
      this.resultValues, this.resultShape);

  final Graph _graph;

  Operation op;

  final Output<int> resultIndices;

  final Output<T> resultValues;

  final Output<int> resultShape;

  DenseToSparseSetOperation run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return DenseToSparseSetOperation<T>((result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<T>), (result$[idx$2] as Output<int>));
  }
}

class DenseToSparseSetOperation<T> {
  DenseToSparseSetOperation(
      this.resultIndices, this.resultValues, this.resultShape);

  final Output<int> resultIndices;

  final Output<T> resultValues;

  final Output<int> resultShape;
}

DenseToSparseSetOperationOutput denseToSparseSetOperation<T>(Output<T> set1,
    Output<int> set2Indices, Output<T> set2Values, Output<int> set2Shape,
    {Graph graph,
    String operationName,
    String setOperation,
    bool validateIndices: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DenseToSparseSetOperation',
      operationName ??= graph._scope.uniqueName('DenseToSparseSetOperation/'));
  op$.addInput(set1);
  op$.addInput(set2Indices);
  op$.addInput(set2Values);
  op$.addInput(set2Shape);
  op$.setAttrString('set_operation', setOperation);
  op$.setAttrBool('validate_indices', validateIndices);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return DenseToSparseSetOperationOutput<T>(
      graph,
      result$,
      (result$[0] as Output<int>),
      (result$[1] as Output<T>),
      (result$[2] as Output<int>));
}

Output iterator(
    {Graph graph,
    String operationName,
    String sharedName,
    String container,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Iterator', operationName ??= graph._scope.uniqueName('Iterator/'));
  op$.setAttrString('shared_name', sharedName);
  op$.setAttrString('container', container);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

/// This operation has no outputs.
Operation resourceSparseApplyAdagradDA<T>(
    Output var$,
    Output gradientAccumulator,
    Output gradientSquaredAccumulator,
    Output<T> grad,
    Output<T> indices,
    Output<T> lr,
    Output<T> l1,
    Output<T> l2,
    Output<int> globalStep,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ResourceSparseApplyAdagradDA',
      operationName ??=
          graph._scope.uniqueName('ResourceSparseApplyAdagradDA/'));
  op$.addInput(var$);
  op$.addInput(gradientAccumulator);
  op$.addInput(gradientSquaredAccumulator);
  op$.addInput(grad);
  op$.addInput(indices);
  op$.addInput(lr);
  op$.addInput(l1);
  op$.addInput(l2);
  op$.addInput(globalStep);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> sparseApplyProximalAdagrad<T>(Output<T> var$, Output<T> accum,
    Output<T> lr, Output<T> l1, Output<T> l2, Output<T> grad, Output<T> indices,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseApplyProximalAdagrad',
      operationName ??= graph._scope.uniqueName('SparseApplyProximalAdagrad/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(lr);
  op$.addInput(l1);
  op$.addInput(l2);
  op$.addInput(grad);
  op$.addInput(indices);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<int> mapSize(
    {Graph graph,
    String operationName,
    int capacity: 0,
    int memoryLimit: 0,
    List<DataType> dtypes,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'MapSize', operationName ??= graph._scope.uniqueName('MapSize/'));
  op$.setAttrInt('capacity', capacity);
  op$.setAttrInt('memory_limit', memoryLimit);
  op$.setAttrTypeList('dtypes', dtypes);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

Output<T> sinh<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Sinh', operationName ??= graph._scope.uniqueName('Sinh/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

@Deprecated('DEPRECATED at GraphDef version 14: Use MatrixDiag')
Output<T> batchMatrixDiag<T>(Output<T> diagonal,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchMatrixDiag',
      operationName ??= graph._scope.uniqueName('BatchMatrixDiag/'));
  op$.addInput(diagonal);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output sqlDataset(Output<String> driverName, Output<String> dataSourceName,
    Output<String> query,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SqlDataset', operationName ??= graph._scope.uniqueName('SqlDataset/'));
  op$.addInput(driverName);
  op$.addInput(dataSourceName);
  op$.addInput(query);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

/// This operation has no outputs.
Operation tPUReplicateMetadata(
    {Graph graph,
    String operationName,
    int numReplicas,
    String topology,
    bool useTpu: true,
    List<int> deviceAssignment,
    List<int> computationShape,
    List<String> hostComputeCore}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TPUReplicateMetadata',
      operationName ??= graph._scope.uniqueName('TPUReplicateMetadata/'));
  op$.setAttrInt('num_replicas', numReplicas);
  op$.setAttrString('topology', topology);
  op$.setAttrBool('use_tpu', useTpu);
  op$.setAttrIntList('device_assignment', deviceAssignment);
  op$.setAttrIntList('computation_shape', computationShape);
  op$.setAttrStringList('host_compute_core', hostComputeCore);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// This operation has no outputs.
Operation orderedMapStage<T>(
    Output<int> key, Output<int> indices, List<Output<List<T>>> values,
    {Graph graph,
    String operationName,
    int capacity: 0,
    int memoryLimit: 0,
    List<DataType> dtypes,
    List<DataType> fakeDtypes,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('OrderedMapStage',
      operationName ??= graph._scope.uniqueName('OrderedMapStage/'));
  op$.addInput(key);
  op$.addInput(indices);
  op$.addInputList(values);
  op$.setAttrInt('capacity', capacity);
  op$.setAttrInt('memory_limit', memoryLimit);
  op$.setAttrTypeList('dtypes', dtypes);
  op$.setAttrTypeList('fake_dtypes', fakeDtypes);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// This operation has no outputs.
Operation tensorArrayCloseV3(Output handle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayCloseV3',
      operationName ??= graph._scope.uniqueName('TensorArrayCloseV3/'));
  op$.addInput(handle);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// This operation has no outputs.
Operation saveV2<T>(Output<String> prefix, Output<String> tensorNames,
    Output<String> shapeAndSlices, List<Output<List<T>>> tensors,
    {Graph graph, String operationName, List<DataType> dtypes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SaveV2', operationName ??= graph._scope.uniqueName('SaveV2/'));
  op$.addInput(prefix);
  op$.addInput(tensorNames);
  op$.addInput(shapeAndSlices);
  op$.addInputList(tensors);
  op$.setAttrTypeList('dtypes', dtypes);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

class QuantizedMulOutput<T> {
  QuantizedMulOutput(this._graph, this.op, this.z, this.minZ, this.maxZ);

  final Graph _graph;

  Operation op;

  final Output<T> z;

  final Output<double> minZ;

  final Output<double> maxZ;

  QuantizedMul run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return QuantizedMul<T>((result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<double>), (result$[idx$2] as Output<double>));
  }
}

class QuantizedMul<T> {
  QuantizedMul(this.z, this.minZ, this.maxZ);

  final Output<T> z;

  final Output<double> minZ;

  final Output<double> maxZ;
}

QuantizedMulOutput quantizedMul<T>(
    Output<T> x,
    Output<T> y,
    Output<double> minX,
    Output<double> maxX,
    Output<double> minY,
    Output<double> maxY,
    {Graph graph,
    String operationName,
    DataType t1,
    DataType t2,
    DataType toutput: DataType.DT_QINT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QuantizedMul',
      operationName ??= graph._scope.uniqueName('QuantizedMul/'));
  op$.addInput(x);
  op$.addInput(y);
  op$.addInput(minX);
  op$.addInput(maxX);
  op$.addInput(minY);
  op$.addInput(maxY);
  op$.setAttrType('T1', t1);
  op$.setAttrType('T2', t2);
  op$.setAttrType('Toutput', toutput);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return QuantizedMulOutput<T>(graph, result$, (result$[0] as Output<T>),
      (result$[1] as Output<double>), (result$[2] as Output<double>));
}

Output shuffleAndRepeatDataset(Output inputDataset, Output<int> bufferSize,
    Output<int> seed, Output<int> seed2, Output<int> count,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ShuffleAndRepeatDataset',
      operationName ??= graph._scope.uniqueName('ShuffleAndRepeatDataset/'));
  op$.addInput(inputDataset);
  op$.addInput(bufferSize);
  op$.addInput(seed);
  op$.addInput(seed2);
  op$.addInput(count);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<T> resizeNearestNeighbor<T>(Output<T> images, Output<int> size,
    {Graph graph, String operationName, bool alignCorners: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResizeNearestNeighbor',
      operationName ??= graph._scope.uniqueName('ResizeNearestNeighbor/'));
  op$.addInput(images);
  op$.addInput(size);
  op$.setAttrBool('align_corners', alignCorners);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// A placeholder op for a value that will be fed into the computation.
/// This operation has one output: A tensor that will be provided using the infeed mechanism.
/// attr [dtype]: The type of elements in the tensor.
/// attr [shape]: The shape of the tensor.
Output<T> infeedDequeue<T>(
    {Graph graph,
    String operationName,
    @required DataType dtype,
    Shape shape}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('InfeedDequeue',
      operationName ??= graph._scope.uniqueName('InfeedDequeue/'));
  op$.setAttrType('dtype', dtype);
  op$.setAttrShape('shape', shape);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> extractImagePatches<T>(Output<T> images,
    {Graph graph,
    String operationName,
    List<int> ksizes,
    List<int> strides,
    List<int> rates,
    String padding}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ExtractImagePatches',
      operationName ??= graph._scope.uniqueName('ExtractImagePatches/'));
  op$.addInput(images);
  op$.setAttrIntList('ksizes', ksizes);
  op$.setAttrIntList('strides', strides);
  op$.setAttrIntList('rates', rates);
  op$.setAttrString('padding', padding);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class MergeOutput<T> {
  MergeOutput(this._graph, this.op, this.output, this.valueIndex);

  final Graph _graph;

  Operation op;

  final Output<T> output;

  final Output<int> valueIndex;

  Merge run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return Merge<T>(
        (result$[idx$0] as Output<T>), (result$[idx$1] as Output<int>));
  }
}

class Merge<T> {
  Merge(this.output, this.valueIndex);

  final Output<T> output;

  final Output<int> valueIndex;
}

MergeOutput merge<T>(List<Output<T>> inputs,
    {Graph graph, String operationName, int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Merge', operationName ??= graph._scope.uniqueName('Merge/'));
  op$.addInputList(inputs);
  op$.setAttrInt('N', n);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return MergeOutput<T>(
      graph, result$, (result$[0] as Output<T>), (result$[1] as Output<int>));
}

Output paddedBatchDatasetV2<T>(
    Output inputDataset,
    Output<int> batchSize,
    List<Output<int>> paddedShapes,
    List<Output<List<T>>> paddingValues,
    Output<bool> dropRemainder,
    {Graph graph,
    String operationName,
    List<DataType> toutputTypes,
    List<Shape> outputShapes,
    int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('PaddedBatchDatasetV2',
      operationName ??= graph._scope.uniqueName('PaddedBatchDatasetV2/'));
  op$.addInput(inputDataset);
  op$.addInput(batchSize);
  op$.addInputList(paddedShapes);
  op$.addInputList(paddingValues);
  op$.addInput(dropRemainder);
  op$.setAttrTypeList('Toutput_types', toutputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
  op$.setAttrInt('N', n);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<List<T>> queueDequeueUpTo<T>(Output<String> handle, Output<int> n,
    {Graph graph,
    String operationName,
    List<DataType> componentTypes,
    int timeoutMs: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QueueDequeueUpTo',
      operationName ??= graph._scope.uniqueName('QueueDequeueUpTo/'));
  op$.addInput(handle);
  op$.addInput(n);
  op$.setAttrTypeList('component_types', componentTypes);
  op$.setAttrInt('timeout_ms', timeoutMs);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

@Deprecated(
    'DEPRECATED at GraphDef version 3: TileGrad has been replaced with reduce_sum')
Output<T> tileGrad<T>(Output<T> input, Output<int> multiples,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'TileGrad', operationName ??= graph._scope.uniqueName('TileGrad/'));
  op$.addInput(input);
  op$.addInput(multiples);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

@Deprecated('DEPRECATED at GraphDef version 15: Use AudioSummaryV2.')
Output<String> audioSummary(Output<String> tag, Output<double> tensor,
    {Graph graph, String operationName, double sampleRate, int maxOutputs: 3}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AudioSummary',
      operationName ??= graph._scope.uniqueName('AudioSummary/'));
  op$.addInput(tag);
  op$.addInput(tensor);
  op$.setAttrFloat('sample_rate', sampleRate);
  op$.setAttrInt('max_outputs', maxOutputs);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output stackV2(Output<int> maxSize,
    {Graph graph, String operationName, DataType elemType, String stackName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'StackV2', operationName ??= graph._scope.uniqueName('StackV2/'));
  op$.addInput(maxSize);
  op$.setAttrType('elem_type', elemType);
  op$.setAttrString('stack_name', stackName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output paddedBatchDataset<T>(Output inputDataset, Output<int> batchSize,
    List<Output<int>> paddedShapes, List<Output<List<T>>> paddingValues,
    {Graph graph,
    String operationName,
    List<DataType> toutputTypes,
    List<Shape> outputShapes,
    int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('PaddedBatchDataset',
      operationName ??= graph._scope.uniqueName('PaddedBatchDataset/'));
  op$.addInput(inputDataset);
  op$.addInput(batchSize);
  op$.addInputList(paddedShapes);
  op$.addInputList(paddingValues);
  op$.setAttrTypeList('Toutput_types', toutputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
  op$.setAttrInt('N', n);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output takeDataset(Output inputDataset, Output<int> count,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'TakeDataset', operationName ??= graph._scope.uniqueName('TakeDataset/'));
  op$.addInput(inputDataset);
  op$.addInput(count);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

class TensorListPopBackOutput<T> {
  TensorListPopBackOutput(this._graph, this.op, this.outputHandle, this.tensor);

  final Graph _graph;

  Operation op;

  final Output outputHandle;

  final Output<T> tensor;

  TensorListPopBack run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return TensorListPopBack<T>(
        (result$[idx$0] as Output), (result$[idx$1] as Output<T>));
  }
}

class TensorListPopBack<T> {
  TensorListPopBack(this.outputHandle, this.tensor);

  final Output outputHandle;

  final Output<T> tensor;
}

TensorListPopBackOutput tensorListPopBack<T>(Output inputHandle,
    {Graph graph, String operationName, DataType elementDtype}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorListPopBack',
      operationName ??= graph._scope.uniqueName('TensorListPopBack/'));
  op$.addInput(inputHandle);
  op$.setAttrType('element_dtype', elementDtype);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return TensorListPopBackOutput<T>(
      graph, result$, (result$[0] as Output), (result$[1] as Output<T>));
}

Output<T> quantizeAndDequantizeV2<T>(
    Output<T> input, Output<T> inputMin, Output<T> inputMax,
    {Graph graph,
    String operationName,
    bool signedInput: true,
    int numBits: 8,
    bool rangeGiven: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QuantizeAndDequantizeV2',
      operationName ??= graph._scope.uniqueName('QuantizeAndDequantizeV2/'));
  op$.addInput(input);
  op$.addInput(inputMin);
  op$.addInput(inputMax);
  op$.setAttrBool('signed_input', signedInput);
  op$.setAttrInt('num_bits', numBits);
  op$.setAttrBool('range_given', rangeGiven);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class TPUEmbeddingRetrieveAdagradParametersOutput {
  TPUEmbeddingRetrieveAdagradParametersOutput(
      this._graph, this.op, this.parameters, this.accumulators);

  final Graph _graph;

  Operation op;

  final Output<double> parameters;

  final Output<double> accumulators;

  TPUEmbeddingRetrieveAdagradParameters run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return TPUEmbeddingRetrieveAdagradParameters(
        (result$[idx$0] as Output<double>), (result$[idx$1] as Output<double>));
  }
}

class TPUEmbeddingRetrieveAdagradParameters {
  TPUEmbeddingRetrieveAdagradParameters(this.parameters, this.accumulators);

  final Output<double> parameters;

  final Output<double> accumulators;
}

/// Retrieve an embedding table shard from TPU memory.
/// TPU embeddings use dedicated per-optimizer Ops for loading and retrieving
/// trainable variables and optimizer state from TPU memory. This op enables
/// functionality equivalent to AdagradOptimizer.
/// attr [tpuEmbeddingConfig]: Serialized TPUEmbeddingConfiguration proto.
/// attr [tableId]: The id of the table specified in the embedding_config_json.
/// attr [numHosts]: The number of CPU hosts in the distributed training job.
/// attr [hostId]: Which CPU host in the distributed training job will execute this op.
TPUEmbeddingRetrieveAdagradParametersOutput
    tPUEmbeddingRetrieveAdagradParameters(
        {Graph graph,
        String operationName,
        String tpuEmbeddingConfig,
        int tableId,
        int numHosts,
        int hostId}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'TPUEmbeddingRetrieveAdagradParameters',
      operationName ??=
          graph._scope.uniqueName('TPUEmbeddingRetrieveAdagradParameters/'));
  op$.setAttrString('tpu_embedding_config', tpuEmbeddingConfig);
  op$.setAttrInt('table_id', tableId);
  op$.setAttrInt('num_hosts', numHosts);
  op$.setAttrInt('host_id', hostId);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return TPUEmbeddingRetrieveAdagradParametersOutput(graph, result$,
      (result$[0] as Output<double>), (result$[1] as Output<double>));
}

Output<T> print$<T>(Output<T> input, List<Output<List<T>>> data,
    {Graph graph,
    String operationName,
    List<DataType> u,
    String message,
    int firstN: -1,
    int summarize: 3}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Print', operationName ??= graph._scope.uniqueName('Print/'));
  op$.addInput(input);
  op$.addInputList(data);
  op$.setAttrTypeList('U', u);
  op$.setAttrString('message', message);
  op$.setAttrInt('first_n', firstN);
  op$.setAttrInt('summarize', summarize);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output slideDataset(Output inputDataset, Output<int> windowSize,
    Output<int> windowShift, Output<int> windowStride,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SlideDataset',
      operationName ??= graph._scope.uniqueName('SlideDataset/'));
  op$.addInput(inputDataset);
  op$.addInput(windowSize);
  op$.addInput(windowShift);
  op$.addInput(windowStride);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

class CudnnRNNOutput<T> {
  CudnnRNNOutput(this._graph, this.op, this.output, this.outputH, this.outputC,
      this.reserveSpace);

  final Graph _graph;

  Operation op;

  final Output<T> output;

  final Output<T> outputH;

  final Output<T> outputC;

  final Output<T> reserveSpace;

  CudnnRNN run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var idx$3 = runner.fetch(op.name, index: 3);
    var result$ = runner.run();
    return CudnnRNN<T>(
        (result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<T>),
        (result$[idx$2] as Output<T>),
        (result$[idx$3] as Output<T>));
  }
}

class CudnnRNN<T> {
  CudnnRNN(this.output, this.outputH, this.outputC, this.reserveSpace);

  final Output<T> output;

  final Output<T> outputH;

  final Output<T> outputC;

  final Output<T> reserveSpace;
}

CudnnRNNOutput cudnnRNN<T>(
    Output<T> input, Output<T> inputH, Output<T> inputC, Output<T> params,
    {Graph graph,
    String operationName,
    String rnnMode: 'lstm',
    String inputMode: 'linear_input',
    String direction: 'unidirectional',
    double dropout: 0.0,
    int seed: 0,
    int seed2: 0,
    bool isTraining: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'CudnnRNN', operationName ??= graph._scope.uniqueName('CudnnRNN/'));
  op$.addInput(input);
  op$.addInput(inputH);
  op$.addInput(inputC);
  op$.addInput(params);
  op$.setAttrString('rnn_mode', rnnMode);
  op$.setAttrString('input_mode', inputMode);
  op$.setAttrString('direction', direction);
  op$.setAttrFloat('dropout', dropout);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
  op$.setAttrBool('is_training', isTraining);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return CudnnRNNOutput<T>(
      graph,
      result$,
      (result$[0] as Output<T>),
      (result$[1] as Output<T>),
      (result$[2] as Output<T>),
      (result$[3] as Output<T>));
}

Output batchDataset(Output inputDataset, Output<int> batchSize,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchDataset',
      operationName ??= graph._scope.uniqueName('BatchDataset/'));
  op$.addInput(inputDataset);
  op$.addInput(batchSize);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<List<T>> mapUnstage<T>(Output<int> key, Output<int> indices,
    {Graph graph,
    String operationName,
    int capacity: 0,
    int memoryLimit: 0,
    List<DataType> dtypes,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'MapUnstage', operationName ??= graph._scope.uniqueName('MapUnstage/'));
  op$.addInput(key);
  op$.addInput(indices);
  op$.setAttrInt('capacity', capacity);
  op$.setAttrInt('memory_limit', memoryLimit);
  op$.setAttrTypeList('dtypes', dtypes);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

Output<T> unbatch<T>(
    Output<T> batchedTensor, Output<int> batchIndex, Output<int> id,
    {Graph graph,
    String operationName,
    int timeoutMicros,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Unbatch', operationName ??= graph._scope.uniqueName('Unbatch/'));
  op$.addInput(batchedTensor);
  op$.addInput(batchIndex);
  op$.addInput(id);
  op$.setAttrInt('timeout_micros', timeoutMicros);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation readerReset(Output<String> readerHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ReaderReset', operationName ??= graph._scope.uniqueName('ReaderReset/'));
  op$.addInput(readerHandle);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> atanh<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Atanh', operationName ??= graph._scope.uniqueName('Atanh/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation makeIterator(Output dataset, Output iterator,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MakeIterator',
      operationName ??= graph._scope.uniqueName('MakeIterator/'));
  op$.addInput(dataset);
  op$.addInput(iterator);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> parameterizedTruncatedNormal<T>(Output<T> shape, Output<T> means,
    Output<T> stdevs, Output<T> minvals, Output<T> maxvals,
    {Graph graph,
    String operationName,
    int seed: 0,
    int seed2: 0,
    DataType dtype}) {
  dtype ??= inferType(shape);
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ParameterizedTruncatedNormal',
      operationName ??=
          graph._scope.uniqueName('ParameterizedTruncatedNormal/'));
  op$.addInput(shape);
  op$.addInput(means);
  op$.addInput(stdevs);
  op$.addInput(minvals);
  op$.addInput(maxvals);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
  op$.setAttrType('dtype', dtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output parallelInterleaveDataset<T>(
    Output inputDataset,
    List<Output<List<T>>> otherArguments,
    Output<int> cycleLength,
    Output<int> blockLength,
    Output<bool> sloppy,
    Output<int> bufferOutputElements,
    Output<int> prefetchInputElements,
    {Graph graph,
    String operationName,
    Func f,
    List<DataType> targuments,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ParallelInterleaveDataset',
      operationName ??= graph._scope.uniqueName('ParallelInterleaveDataset/'));
  op$.addInput(inputDataset);
  op$.addInputList(otherArguments);
  op$.addInput(cycleLength);
  op$.addInput(blockLength);
  op$.addInput(sloppy);
  op$.addInput(bufferOutputElements);
  op$.addInput(prefetchInputElements);
  op$.setAttrFunc('f', f);
  op$.setAttrTypeList('Targuments', targuments);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output interleaveDataset<T>(
    Output inputDataset,
    List<Output<List<T>>> otherArguments,
    Output<int> cycleLength,
    Output<int> blockLength,
    {Graph graph,
    String operationName,
    Func f,
    List<DataType> targuments,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('InterleaveDataset',
      operationName ??= graph._scope.uniqueName('InterleaveDataset/'));
  op$.addInput(inputDataset);
  op$.addInputList(otherArguments);
  op$.addInput(cycleLength);
  op$.addInput(blockLength);
  op$.setAttrFunc('f', f);
  op$.setAttrTypeList('Targuments', targuments);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

class BatchSelfAdjointEigV2Output<T> {
  BatchSelfAdjointEigV2Output(this._graph, this.op, this.e, this.v);

  final Graph _graph;

  Operation op;

  final Output<T> e;

  final Output<T> v;

  BatchSelfAdjointEigV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return BatchSelfAdjointEigV2<T>(
        (result$[idx$0] as Output<T>), (result$[idx$1] as Output<T>));
  }
}

class BatchSelfAdjointEigV2<T> {
  BatchSelfAdjointEigV2(this.e, this.v);

  final Output<T> e;

  final Output<T> v;
}

@Deprecated('DEPRECATED at GraphDef version 13: Use SelfAdjointEigV2 instead.')
BatchSelfAdjointEigV2Output batchSelfAdjointEigV2<T>(Output<T> input,
    {Graph graph, String operationName, bool computeV: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchSelfAdjointEigV2',
      operationName ??= graph._scope.uniqueName('BatchSelfAdjointEigV2/'));
  op$.addInput(input);
  op$.setAttrBool('compute_v', computeV);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return BatchSelfAdjointEigV2Output<T>(
      graph, result$, (result$[0] as Output<T>), (result$[1] as Output<T>));
}

Output<T> tanhGrad<T>(Output<T> y, Output<T> dy,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'TanhGrad', operationName ??= graph._scope.uniqueName('TanhGrad/'));
  op$.addInput(y);
  op$.addInput(dy);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class BoostedTreesTrainingPredictOutput {
  BoostedTreesTrainingPredictOutput(
      this._graph, this.op, this.partialLogits, this.treeIds, this.nodeIds);

  final Graph _graph;

  Operation op;

  final Output<double> partialLogits;

  final Output<int> treeIds;

  final Output<int> nodeIds;

  BoostedTreesTrainingPredict run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return BoostedTreesTrainingPredict((result$[idx$0] as Output<double>),
        (result$[idx$1] as Output<int>), (result$[idx$2] as Output<int>));
  }
}

class BoostedTreesTrainingPredict {
  BoostedTreesTrainingPredict(this.partialLogits, this.treeIds, this.nodeIds);

  final Output<double> partialLogits;

  final Output<int> treeIds;

  final Output<int> nodeIds;
}

BoostedTreesTrainingPredictOutput boostedTreesTrainingPredict(
    Output treeEnsembleHandle,
    Output<int> cachedTreeIds,
    Output<int> cachedNodeIds,
    List<Output<int>> bucketizedFeatures,
    {Graph graph,
    String operationName,
    int numBucketizedFeatures,
    int logitsDimension}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BoostedTreesTrainingPredict',
      operationName ??=
          graph._scope.uniqueName('BoostedTreesTrainingPredict/'));
  op$.addInput(treeEnsembleHandle);
  op$.addInput(cachedTreeIds);
  op$.addInput(cachedNodeIds);
  op$.addInputList(bucketizedFeatures);
  op$.setAttrInt('num_bucketized_features', numBucketizedFeatures);
  op$.setAttrInt('logits_dimension', logitsDimension);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return BoostedTreesTrainingPredictOutput(
      graph,
      result$,
      (result$[0] as Output<double>),
      (result$[1] as Output<int>),
      (result$[2] as Output<int>));
}

Output<bool> loopCond(Output<bool> input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'LoopCond', operationName ??= graph._scope.uniqueName('LoopCond/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
}

Output parallelMapDataset<T>(Output inputDataset,
    List<Output<List<T>>> otherArguments, Output<int> numParallelCalls,
    {Graph graph,
    String operationName,
    Func f,
    List<DataType> targuments,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ParallelMapDataset',
      operationName ??= graph._scope.uniqueName('ParallelMapDataset/'));
  op$.addInput(inputDataset);
  op$.addInputList(otherArguments);
  op$.addInput(numParallelCalls);
  op$.setAttrFunc('f', f);
  op$.setAttrTypeList('Targuments', targuments);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<T> reciprocalGrad<T>(Output<T> y, Output<T> dy,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ReciprocalGrad',
      operationName ??= graph._scope.uniqueName('ReciprocalGrad/'));
  op$.addInput(y);
  op$.addInput(dy);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class QuantizedReshapeOutput<T> {
  QuantizedReshapeOutput(
      this._graph, this.op, this.output, this.outputMin, this.outputMax);

  final Graph _graph;

  Operation op;

  final Output<T> output;

  final Output<double> outputMin;

  final Output<double> outputMax;

  QuantizedReshape run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return QuantizedReshape<T>((result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<double>), (result$[idx$2] as Output<double>));
  }
}

class QuantizedReshape<T> {
  QuantizedReshape(this.output, this.outputMin, this.outputMax);

  final Output<T> output;

  final Output<double> outputMin;

  final Output<double> outputMax;
}

QuantizedReshapeOutput quantizedReshape<T>(Output<T> tensor, Output<T> shape,
    Output<double> inputMin, Output<double> inputMax,
    {Graph graph, String operationName, DataType tshape: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QuantizedReshape',
      operationName ??= graph._scope.uniqueName('QuantizedReshape/'));
  op$.addInput(tensor);
  op$.addInput(shape);
  op$.addInput(inputMin);
  op$.addInput(inputMax);
  op$.setAttrType('Tshape', tshape);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return QuantizedReshapeOutput<T>(graph, result$, (result$[0] as Output<T>),
      (result$[1] as Output<double>), (result$[2] as Output<double>));
}

Output mapDataset<T>(Output inputDataset, List<Output<List<T>>> otherArguments,
    {Graph graph,
    String operationName,
    Func f,
    List<DataType> targuments,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'MapDataset', operationName ??= graph._scope.uniqueName('MapDataset/'));
  op$.addInput(inputDataset);
  op$.addInputList(otherArguments);
  op$.setAttrFunc('f', f);
  op$.setAttrTypeList('Targuments', targuments);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

@Deprecated(
    'DEPRECATED at GraphDef version 22: Replaced by QuantizeAndDequantizeV2')
Output<T> quantizeAndDequantize<T>(Output<T> input,
    {Graph graph,
    String operationName,
    bool signedInput: true,
    int numBits: 8,
    bool rangeGiven: false,
    double inputMin: 0.0,
    double inputMax: 0.0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QuantizeAndDequantize',
      operationName ??= graph._scope.uniqueName('QuantizeAndDequantize/'));
  op$.addInput(input);
  op$.setAttrBool('signed_input', signedInput);
  op$.setAttrInt('num_bits', numBits);
  op$.setAttrBool('range_given', rangeGiven);
  op$.setAttrFloat('input_min', inputMin);
  op$.setAttrFloat('input_max', inputMax);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> lookupTableFindV2<T>(
    Output tableHandle, Output<T> keys, Output<T> defaultValue,
    {Graph graph, String operationName, DataType tin, DataType tout}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('LookupTableFindV2',
      operationName ??= graph._scope.uniqueName('LookupTableFindV2/'));
  op$.addInput(tableHandle);
  op$.addInput(keys);
  op$.addInput(defaultValue);
  op$.setAttrType('Tin', tin);
  op$.setAttrType('Tout', tout);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> asinh<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Asinh', operationName ??= graph._scope.uniqueName('Asinh/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output mutexV2(
    {Graph graph, String operationName, String container, String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'MutexV2', operationName ??= graph._scope.uniqueName('MutexV2/'));
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<List<T>> partitionedCall<T>(List<Output<List<T>>> args,
    {Graph graph,
    String operationName,
    List<DataType> tin,
    List<DataType> tout,
    Func f}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('PartitionedCall',
      operationName ??= graph._scope.uniqueName('PartitionedCall/'));
  op$.addInputList(args);
  op$.setAttrTypeList('Tin', tin);
  op$.setAttrTypeList('Tout', tout);
  op$.setAttrFunc('f', f);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

Output<T> pow<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Pow', operationName ??= graph._scope.uniqueName('Pow/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output latencyStatsDataset(Output inputDataset, Output<String> tag,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('LatencyStatsDataset',
      operationName ??= graph._scope.uniqueName('LatencyStatsDataset/'));
  op$.addInput(inputDataset);
  op$.addInput(tag);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output sparseTensorSliceDataset<T>(
    Output<int> indices, Output<T> values, Output<int> denseShape,
    {Graph graph, String operationName, DataType tvalues}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseTensorSliceDataset',
      operationName ??= graph._scope.uniqueName('SparseTensorSliceDataset/'));
  op$.addInput(indices);
  op$.addInput(values);
  op$.addInput(denseShape);
  op$.setAttrType('Tvalues', tvalues);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output randomShuffleQueueV2(
    {Graph graph,
    String operationName,
    List<DataType> componentTypes,
    List<Shape> shapes,
    int capacity: -1,
    int minAfterDequeue: 0,
    int seed: 0,
    int seed2: 0,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('RandomShuffleQueueV2',
      operationName ??= graph._scope.uniqueName('RandomShuffleQueueV2/'));
  op$.setAttrTypeList('component_types', componentTypes);
  op$.setAttrShapeList('shapes', shapes);
  op$.setAttrInt('capacity', capacity);
  op$.setAttrInt('min_after_dequeue', minAfterDequeue);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<double> tensorArrayWriteV3<T>(
    Output handle, Output<int> index, Output<T> value, Output<double> flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayWriteV3',
      operationName ??= graph._scope.uniqueName('TensorArrayWriteV3/'));
  op$.addInput(handle);
  op$.addInput(index);
  op$.addInput(value);
  op$.addInput(flowIn);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

class RefMergeOutput<T> {
  RefMergeOutput(this._graph, this.op, this.output, this.valueIndex);

  final Graph _graph;

  Operation op;

  final Output<T> output;

  final Output<int> valueIndex;

  RefMerge run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return RefMerge<T>(
        (result$[idx$0] as Output<T>), (result$[idx$1] as Output<int>));
  }
}

class RefMerge<T> {
  RefMerge(this.output, this.valueIndex);

  final Output<T> output;

  final Output<int> valueIndex;
}

RefMergeOutput refMerge<T>(List<Output<T>> inputs,
    {Graph graph, String operationName, int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RefMerge', operationName ??= graph._scope.uniqueName('RefMerge/'));
  op$.addInputList(inputs);
  op$.setAttrInt('N', n);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return RefMergeOutput<T>(
      graph, result$, (result$[0] as Output<T>), (result$[1] as Output<int>));
}

Output bytesProducedStatsDataset(Output inputDataset, Output<String> tag,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BytesProducedStatsDataset',
      operationName ??= graph._scope.uniqueName('BytesProducedStatsDataset/'));
  op$.addInput(inputDataset);
  op$.addInput(tag);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output skipDataset(Output inputDataset, Output<int> count,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SkipDataset', operationName ??= graph._scope.uniqueName('SkipDataset/'));
  op$.addInput(inputDataset);
  op$.addInput(count);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<List<T>> iteratorGetNextSync<T>(Output iterator,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('IteratorGetNextSync',
      operationName ??= graph._scope.uniqueName('IteratorGetNextSync/'));
  op$.addInput(iterator);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

Output<int> readerNumRecordsProduced(Output<String> readerHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ReaderNumRecordsProduced',
      operationName ??= graph._scope.uniqueName('ReaderNumRecordsProduced/'));
  op$.addInput(readerHandle);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

Output<List<T>> queueDequeueV2<T>(Output handle,
    {Graph graph,
    String operationName,
    List<DataType> componentTypes,
    int timeoutMs: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QueueDequeueV2',
      operationName ??= graph._scope.uniqueName('QueueDequeueV2/'));
  op$.addInput(handle);
  op$.setAttrTypeList('component_types', componentTypes);
  op$.setAttrInt('timeout_ms', timeoutMs);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

class ReaderReadUpToOutput {
  ReaderReadUpToOutput(this._graph, this.op, this.keys, this.values);

  final Graph _graph;

  Operation op;

  final Output<String> keys;

  final Output<String> values;

  ReaderReadUpTo run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return ReaderReadUpTo(
        (result$[idx$0] as Output<String>), (result$[idx$1] as Output<String>));
  }
}

class ReaderReadUpTo {
  ReaderReadUpTo(this.keys, this.values);

  final Output<String> keys;

  final Output<String> values;
}

ReaderReadUpToOutput readerReadUpTo(Output<String> readerHandle,
    Output<String> queueHandle, Output<int> numRecords,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ReaderReadUpTo',
      operationName ??= graph._scope.uniqueName('ReaderReadUpTo/'));
  op$.addInput(readerHandle);
  op$.addInput(queueHandle);
  op$.addInput(numRecords);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return ReaderReadUpToOutput(graph, result$, (result$[0] as Output<String>),
      (result$[1] as Output<String>));
}

class ReaderReadUpToV2Output {
  ReaderReadUpToV2Output(this._graph, this.op, this.keys, this.values);

  final Graph _graph;

  Operation op;

  final Output<String> keys;

  final Output<String> values;

  ReaderReadUpToV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return ReaderReadUpToV2(
        (result$[idx$0] as Output<String>), (result$[idx$1] as Output<String>));
  }
}

class ReaderReadUpToV2 {
  ReaderReadUpToV2(this.keys, this.values);

  final Output<String> keys;

  final Output<String> values;
}

ReaderReadUpToV2Output readerReadUpToV2(
    Output readerHandle, Output queueHandle, Output<int> numRecords,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ReaderReadUpToV2',
      operationName ??= graph._scope.uniqueName('ReaderReadUpToV2/'));
  op$.addInput(readerHandle);
  op$.addInput(queueHandle);
  op$.addInput(numRecords);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return ReaderReadUpToV2Output(graph, result$, (result$[0] as Output<String>),
      (result$[1] as Output<String>));
}

Output tensorSliceDataset<T>(List<Output<List<T>>> components,
    {Graph graph,
    String operationName,
    List<DataType> toutputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorSliceDataset',
      operationName ??= graph._scope.uniqueName('TensorSliceDataset/'));
  op$.addInputList(components);
  op$.setAttrTypeList('Toutput_types', toutputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output tensorDataset<T>(List<Output<List<T>>> components,
    {Graph graph,
    String operationName,
    List<DataType> toutputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorDataset',
      operationName ??= graph._scope.uniqueName('TensorDataset/'));
  op$.addInputList(components);
  op$.setAttrTypeList('Toutput_types', toutputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

@Deprecated('DEPRECATED at GraphDef version 11: Use SelfAdjointEigV2 instead.')
Output<T> selfAdjointEig<T>(Output<T> input,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SelfAdjointEig',
      operationName ??= graph._scope.uniqueName('SelfAdjointEig/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation readerResetV2(Output readerHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ReaderResetV2',
      operationName ??= graph._scope.uniqueName('ReaderResetV2/'));
  op$.addInput(readerHandle);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<int> orderedMapSize(
    {Graph graph,
    String operationName,
    int capacity: 0,
    int memoryLimit: 0,
    List<DataType> dtypes,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('OrderedMapSize',
      operationName ??= graph._scope.uniqueName('OrderedMapSize/'));
  op$.setAttrInt('capacity', capacity);
  op$.setAttrInt('memory_limit', memoryLimit);
  op$.setAttrTypeList('dtypes', dtypes);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

Output wholeFileReaderV2(
    {Graph graph, String operationName, String container, String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('WholeFileReaderV2',
      operationName ??= graph._scope.uniqueName('WholeFileReaderV2/'));
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

class MapUnstageNoKeyOutput<T> {
  MapUnstageNoKeyOutput(this._graph, this.op, this.key, this.values);

  final Graph _graph;

  Operation op;

  final Output<int> key;

  final Output<List<T>> values;

  MapUnstageNoKey run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return MapUnstageNoKey<T>(
        (result$[idx$0] as Output<int>), (result$[idx$1] as Output<List<T>>));
  }
}

class MapUnstageNoKey<T> {
  MapUnstageNoKey(this.key, this.values);

  final Output<int> key;

  final Output<List<T>> values;
}

MapUnstageNoKeyOutput mapUnstageNoKey<T>(Output<int> indices,
    {Graph graph,
    String operationName,
    int capacity: 0,
    int memoryLimit: 0,
    List<DataType> dtypes,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MapUnstageNoKey',
      operationName ??= graph._scope.uniqueName('MapUnstageNoKey/'));
  op$.addInput(indices);
  op$.setAttrInt('capacity', capacity);
  op$.setAttrInt('memory_limit', memoryLimit);
  op$.setAttrTypeList('dtypes', dtypes);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return MapUnstageNoKeyOutput<T>(graph, result$, (result$[0] as Output<int>),
      (result$[1] as Output<List<T>>));
}

Output textLineDataset(Output<String> filenames, Output<String> compressionType,
    Output<int> bufferSize,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TextLineDataset',
      operationName ??= graph._scope.uniqueName('TextLineDataset/'));
  op$.addInput(filenames);
  op$.addInput(compressionType);
  op$.addInput(bufferSize);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<String> tensorSummaryV2<T>(Output<String> tag, Output<T> tensor,
    Output<String> serializedSummaryMetadata,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorSummaryV2',
      operationName ??= graph._scope.uniqueName('TensorSummaryV2/'));
  op$.addInput(tag);
  op$.addInput(tensor);
  op$.addInput(serializedSummaryMetadata);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<T> serializeManySparse<T>(
    Output<int> sparseIndices, Output<T> sparseValues, Output<int> sparseShape,
    {Graph graph, String operationName, DataType outType: DataType.DT_STRING}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SerializeManySparse',
      operationName ??= graph._scope.uniqueName('SerializeManySparse/'));
  op$.addInput(sparseIndices);
  op$.addInput(sparseValues);
  op$.addInput(sparseShape);
  op$.setAttrType('out_type', outType);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class CTCGreedyDecoderOutput {
  CTCGreedyDecoderOutput(this._graph, this.op, this.decodedIndices,
      this.decodedValues, this.decodedShape, this.logProbability);

  final Graph _graph;

  Operation op;

  final Output<int> decodedIndices;

  final Output<int> decodedValues;

  final Output<int> decodedShape;

  final Output<double> logProbability;

  CTCGreedyDecoder run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var idx$3 = runner.fetch(op.name, index: 3);
    var result$ = runner.run();
    return CTCGreedyDecoder(
        (result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<int>),
        (result$[idx$2] as Output<int>),
        (result$[idx$3] as Output<double>));
  }
}

class CTCGreedyDecoder {
  CTCGreedyDecoder(this.decodedIndices, this.decodedValues, this.decodedShape,
      this.logProbability);

  final Output<int> decodedIndices;

  final Output<int> decodedValues;

  final Output<int> decodedShape;

  final Output<double> logProbability;
}

CTCGreedyDecoderOutput cTCGreedyDecoder(
    Output<double> inputs, Output<int> sequenceLength,
    {Graph graph, String operationName, bool mergeRepeated: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CTCGreedyDecoder',
      operationName ??= graph._scope.uniqueName('CTCGreedyDecoder/'));
  op$.addInput(inputs);
  op$.addInput(sequenceLength);
  op$.setAttrBool('merge_repeated', mergeRepeated);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return CTCGreedyDecoderOutput(
      graph,
      result$,
      (result$[0] as Output<int>),
      (result$[1] as Output<int>),
      (result$[2] as Output<int>),
      (result$[3] as Output<double>));
}

Output<int> stageSize(
    {Graph graph,
    String operationName,
    int capacity: 0,
    int memoryLimit: 0,
    List<DataType> dtypes,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'StageSize', operationName ??= graph._scope.uniqueName('StageSize/'));
  op$.setAttrInt('capacity', capacity);
  op$.setAttrInt('memory_limit', memoryLimit);
  op$.setAttrTypeList('dtypes', dtypes);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

Output<bool> greaterEqual<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('GreaterEqual',
      operationName ??= graph._scope.uniqueName('GreaterEqual/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
}

class QuantizeV2Output<T> {
  QuantizeV2Output(
      this._graph, this.op, this.output, this.outputMin, this.outputMax);

  final Graph _graph;

  Operation op;

  final Output<T> output;

  final Output<double> outputMin;

  final Output<double> outputMax;

  QuantizeV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return QuantizeV2<T>((result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<double>), (result$[idx$2] as Output<double>));
  }
}

class QuantizeV2<T> {
  QuantizeV2(this.output, this.outputMin, this.outputMax);

  final Output<T> output;

  final Output<double> outputMin;

  final Output<double> outputMax;
}

QuantizeV2Output quantizeV2<T>(
    Output<double> input, Output<double> minRange, Output<double> maxRange,
    {Graph graph,
    String operationName,
    String mode: 'MIN_COMBINED',
    String roundMode: 'HALF_AWAY_FROM_ZERO'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'QuantizeV2', operationName ??= graph._scope.uniqueName('QuantizeV2/'));
  op$.addInput(input);
  op$.addInput(minRange);
  op$.addInput(maxRange);
  op$.setAttrString('mode', mode);
  op$.setAttrString('round_mode', roundMode);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return QuantizeV2Output<T>(graph, result$, (result$[0] as Output<T>),
      (result$[1] as Output<double>), (result$[2] as Output<double>));
}

Output<List<T>> unstage<T>(
    {Graph graph,
    String operationName,
    int capacity: 0,
    int memoryLimit: 0,
    List<DataType> dtypes,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Unstage', operationName ??= graph._scope.uniqueName('Unstage/'));
  op$.setAttrInt('capacity', capacity);
  op$.setAttrInt('memory_limit', memoryLimit);
  op$.setAttrTypeList('dtypes', dtypes);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

Output getSessionHandleV2<T>(Output<T> value,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('GetSessionHandleV2',
      operationName ??= graph._scope.uniqueName('GetSessionHandleV2/'));
  op$.addInput(value);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

class SparseReorderOutput<T> {
  SparseReorderOutput(
      this._graph, this.op, this.outputIndices, this.outputValues);

  final Graph _graph;

  Operation op;

  final Output<int> outputIndices;

  final Output<T> outputValues;

  SparseReorder run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return SparseReorder<T>(
        (result$[idx$0] as Output<int>), (result$[idx$1] as Output<T>));
  }
}

class SparseReorder<T> {
  SparseReorder(this.outputIndices, this.outputValues);

  final Output<int> outputIndices;

  final Output<T> outputValues;
}

SparseReorderOutput sparseReorder<T>(
    Output<int> inputIndices, Output<T> inputValues, Output<int> inputShape,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseReorder',
      operationName ??= graph._scope.uniqueName('SparseReorder/'));
  op$.addInput(inputIndices);
  op$.addInput(inputValues);
  op$.addInput(inputShape);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return SparseReorderOutput<T>(
      graph, result$, (result$[0] as Output<int>), (result$[1] as Output<T>));
}

Output denseToSparseBatchDataset(
    Output inputDataset, Output<int> batchSize, Output<int> rowShape,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DenseToSparseBatchDataset',
      operationName ??= graph._scope.uniqueName('DenseToSparseBatchDataset/'));
  op$.addInput(inputDataset);
  op$.addInput(batchSize);
  op$.addInput(rowShape);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<String> randomShuffleQueue(
    {Graph graph,
    String operationName,
    List<DataType> componentTypes,
    List<Shape> shapes,
    int capacity: -1,
    int minAfterDequeue: 0,
    int seed: 0,
    int seed2: 0,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('RandomShuffleQueue',
      operationName ??= graph._scope.uniqueName('RandomShuffleQueue/'));
  op$.setAttrTypeList('component_types', componentTypes);
  op$.setAttrShapeList('shapes', shapes);
  op$.setAttrInt('capacity', capacity);
  op$.setAttrInt('min_after_dequeue', minAfterDequeue);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<List<T>> restoreV2<T>(Output<String> prefix, Output<String> tensorNames,
    Output<String> shapeAndSlices,
    {Graph graph, String operationName, List<DataType> dtypes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RestoreV2', operationName ??= graph._scope.uniqueName('RestoreV2/'));
  op$.addInput(prefix);
  op$.addInput(tensorNames);
  op$.addInput(shapeAndSlices);
  op$.setAttrTypeList('dtypes', dtypes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

class ThreadUnsafeUnigramCandidateSamplerOutput {
  ThreadUnsafeUnigramCandidateSamplerOutput(
      this._graph,
      this.op,
      this.sampledCandidates,
      this.trueExpectedCount,
      this.sampledExpectedCount);

  final Graph _graph;

  Operation op;

  final Output<int> sampledCandidates;

  final Output<double> trueExpectedCount;

  final Output<double> sampledExpectedCount;

  ThreadUnsafeUnigramCandidateSampler run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return ThreadUnsafeUnigramCandidateSampler((result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<double>), (result$[idx$2] as Output<double>));
  }
}

class ThreadUnsafeUnigramCandidateSampler {
  ThreadUnsafeUnigramCandidateSampler(this.sampledCandidates,
      this.trueExpectedCount, this.sampledExpectedCount);

  final Output<int> sampledCandidates;

  final Output<double> trueExpectedCount;

  final Output<double> sampledExpectedCount;
}

ThreadUnsafeUnigramCandidateSamplerOutput threadUnsafeUnigramCandidateSampler(
    Output<int> trueClasses,
    {Graph graph,
    String operationName,
    int numTrue,
    int numSampled,
    bool unique,
    int rangeMax,
    int seed: 0,
    int seed2: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ThreadUnsafeUnigramCandidateSampler',
      operationName ??=
          graph._scope.uniqueName('ThreadUnsafeUnigramCandidateSampler/'));
  op$.addInput(trueClasses);
  op$.setAttrInt('num_true', numTrue);
  op$.setAttrInt('num_sampled', numSampled);
  op$.setAttrBool('unique', unique);
  op$.setAttrInt('range_max', rangeMax);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return ThreadUnsafeUnigramCandidateSamplerOutput(
      graph,
      result$,
      (result$[0] as Output<int>),
      (result$[1] as Output<double>),
      (result$[2] as Output<double>));
}

/// This operation has no outputs.
Operation stackCloseV2(Output handle, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StackCloseV2',
      operationName ??= graph._scope.uniqueName('StackCloseV2/'));
  op$.addInput(handle);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> avgPool3DGrad<T>(Output<int> origInputShape, Output<T> grad,
    {Graph graph,
    String operationName,
    List<int> ksize,
    List<int> strides,
    String padding,
    String dataFormat: 'NDHWC'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AvgPool3DGrad',
      operationName ??= graph._scope.uniqueName('AvgPool3DGrad/'));
  op$.addInput(origInputShape);
  op$.addInput(grad);
  op$.setAttrIntList('ksize', ksize);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
  op$.setAttrString('data_format', dataFormat);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
@Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayCloseV3')
Operation tensorArrayCloseV2(Output<String> handle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayCloseV2',
      operationName ??= graph._scope.uniqueName('TensorArrayCloseV2/'));
  op$.addInput(handle);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

@Deprecated('DEPRECATED at GraphDef version 26: Use TensorArraySplitV3')
Output<double> tensorArraySplitV2<T>(Output<String> handle, Output<T> value,
    Output<int> lengths, Output<double> flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArraySplitV2',
      operationName ??= graph._scope.uniqueName('TensorArraySplitV2/'));
  op$.addInput(handle);
  op$.addInput(value);
  op$.addInput(lengths);
  op$.addInput(flowIn);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

Output<List<T>> orderedMapUnstage<T>(Output<int> key, Output<int> indices,
    {Graph graph,
    String operationName,
    int capacity: 0,
    int memoryLimit: 0,
    List<DataType> dtypes,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('OrderedMapUnstage',
      operationName ??= graph._scope.uniqueName('OrderedMapUnstage/'));
  op$.addInput(key);
  op$.addInput(indices);
  op$.setAttrInt('capacity', capacity);
  op$.setAttrInt('memory_limit', memoryLimit);
  op$.setAttrTypeList('dtypes', dtypes);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

@Deprecated('DEPRECATED at GraphDef version 14: Use MatrixBandPart')
Output<T> batchMatrixBandPart<T>(
    Output<T> input, Output<int> numLower, Output<int> numUpper,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchMatrixBandPart',
      operationName ??= graph._scope.uniqueName('BatchMatrixBandPart/'));
  op$.addInput(input);
  op$.addInput(numLower);
  op$.addInput(numUpper);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
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

@Deprecated('DEPRECATED at GraphDef version 26: Use TensorArraySizeV3')
Output<int> tensorArraySizeV2(Output<String> handle, Output<double> flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArraySizeV2',
      operationName ??= graph._scope.uniqueName('TensorArraySizeV2/'));
  op$.addInput(handle);
  op$.addInput(flowIn);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

Output<String> matchingFiles(Output<String> pattern,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MatchingFiles',
      operationName ??= graph._scope.uniqueName('MatchingFiles/'));
  op$.addInput(pattern);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
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

Output<T> tanh<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Tanh', operationName ??= graph._scope.uniqueName('Tanh/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// Retrieves a single tensor from the computation outfeed.  This operation will
/// block indefinitely until data is available.
/// This operation has one output: A tensor that will be read from the device outfeed.
/// attr [dtype]: The type of elements in the tensor.
/// attr [shape]: The shape of the tensor.
/// attr [deviceOrdinal]: The TPU device to use. This should be -1 when the Op
/// is running on a TPU device, and >= 0 when the Op is running on the CPU
/// device.
Output<T> outfeedDequeue<T>(
    {Graph graph,
    String operationName,
    @required DataType dtype,
    Shape shape,
    int deviceOrdinal: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('OutfeedDequeue',
      operationName ??= graph._scope.uniqueName('OutfeedDequeue/'));
  op$.setAttrType('dtype', dtype);
  op$.setAttrShape('shape', shape);
  op$.setAttrInt('device_ordinal', deviceOrdinal);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> cropAndResizeGradImage<T>(Output<double> grads, Output<double> boxes,
    Output<int> boxInd, Output<int> imageSize,
    {Graph graph, String operationName, String method: 'bilinear'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CropAndResizeGradImage',
      operationName ??= graph._scope.uniqueName('CropAndResizeGradImage/'));
  op$.addInput(grads);
  op$.addInput(boxes);
  op$.addInput(boxInd);
  op$.addInput(imageSize);
  op$.setAttrString('method', method);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> accumulatorTakeGradient<T>(
    Output<String> handle, Output<int> numRequired,
    {Graph graph, String operationName, DataType dtype}) {
  dtype ??= inferType(handle);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AccumulatorTakeGradient',
      operationName ??= graph._scope.uniqueName('AccumulatorTakeGradient/'));
  op$.addInput(handle);
  op$.addInput(numRequired);
  op$.setAttrType('dtype', dtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> addN<T>(List<Output<T>> inputs,
    {Graph graph, String operationName, int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'AddN', operationName ??= graph._scope.uniqueName('AddN/'));
  op$.addInputList(inputs);
  op$.setAttrInt('N', n);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

@Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayV3')
Output<String> tensorArrayV2(Output<int> size,
    {Graph graph,
    String operationName,
    DataType dtype,
    Shape elementShape,
    bool dynamicSize: false,
    bool clearAfterRead: true,
    String tensorArrayName}) {
  dtype ??= inferType(size);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayV2',
      operationName ??= graph._scope.uniqueName('TensorArrayV2/'));
  op$.addInput(size);
  op$.setAttrType('dtype', dtype);
  op$.setAttrShape('element_shape', elementShape);
  op$.setAttrBool('dynamic_size', dynamicSize);
  op$.setAttrBool('clear_after_read', clearAfterRead);
  op$.setAttrString('tensor_array_name', tensorArrayName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

/// This operation has no outputs.
Operation mergeV2Checkpoints(
    Output<String> checkpointPrefixes, Output<String> destinationPrefix,
    {Graph graph, String operationName, bool deleteOldDirs: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MergeV2Checkpoints',
      operationName ??= graph._scope.uniqueName('MergeV2Checkpoints/'));
  op$.addInput(checkpointPrefixes);
  op$.addInput(destinationPrefix);
  op$.setAttrBool('delete_old_dirs', deleteOldDirs);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// This operation has no outputs.
Operation queueClose(Output<String> handle,
    {Graph graph, String operationName, bool cancelPendingEnqueues: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'QueueClose', operationName ??= graph._scope.uniqueName('QueueClose/'));
  op$.addInput(handle);
  op$.setAttrBool('cancel_pending_enqueues', cancelPendingEnqueues);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

@Deprecated(
    'DEPRECATED at GraphDef version 20: Use TensorArrayScatterV3 with RangeOp')
Output<double> tensorArrayUnpack<T>(
    Output<String> handle, Output<T> value, Output<double> flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayUnpack',
      operationName ??= graph._scope.uniqueName('TensorArrayUnpack/'));
  op$.addInput(handle);
  op$.addInput(value);
  op$.addInput(flowIn);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

Output<double> audioSpectrogram(Output<double> input,
    {Graph graph,
    String operationName,
    int windowSize,
    int stride,
    bool magnitudeSquared: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AudioSpectrogram',
      operationName ??= graph._scope.uniqueName('AudioSpectrogram/'));
  op$.addInput(input);
  op$.setAttrInt('window_size', windowSize);
  op$.setAttrInt('stride', stride);
  op$.setAttrBool('magnitude_squared', magnitudeSquared);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

@Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayReadV3')
Output<T> tensorArrayRead<T>(
    Output<String> handle, Output<int> index, Output<double> flowIn,
    {Graph graph, String operationName, DataType dtype}) {
  dtype ??= inferType(handle);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayRead',
      operationName ??= graph._scope.uniqueName('TensorArrayRead/'));
  op$.addInput(handle);
  op$.addInput(index);
  op$.addInput(flowIn);
  op$.setAttrType('dtype', dtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

@Deprecated('DEPRECATED at GraphDef version 15: Use FFT2D')
Output batchFFT2D(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BatchFFT2D', operationName ??= graph._scope.uniqueName('BatchFFT2D/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<int> mapIncompleteSize(
    {Graph graph,
    String operationName,
    int capacity: 0,
    int memoryLimit: 0,
    List<DataType> dtypes,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MapIncompleteSize',
      operationName ??= graph._scope.uniqueName('MapIncompleteSize/'));
  op$.setAttrInt('capacity', capacity);
  op$.setAttrInt('memory_limit', memoryLimit);
  op$.setAttrTypeList('dtypes', dtypes);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

class SparseAddOutput<T> {
  SparseAddOutput(
      this._graph, this.op, this.sumIndices, this.sumValues, this.sumShape);

  final Graph _graph;

  Operation op;

  final Output<int> sumIndices;

  final Output<T> sumValues;

  final Output<int> sumShape;

  SparseAdd run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return SparseAdd<T>((result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<T>), (result$[idx$2] as Output<int>));
  }
}

class SparseAdd<T> {
  SparseAdd(this.sumIndices, this.sumValues, this.sumShape);

  final Output<int> sumIndices;

  final Output<T> sumValues;

  final Output<int> sumShape;
}

SparseAddOutput sparseAdd<T>(
    Output<int> aIndices,
    Output<T> aValues,
    Output<int> aShape,
    Output<int> bIndices,
    Output<T> bValues,
    Output<int> bShape,
    Output<T> thresh,
    {Graph graph,
    String operationName,
    DataType treal}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SparseAdd', operationName ??= graph._scope.uniqueName('SparseAdd/'));
  op$.addInput(aIndices);
  op$.addInput(aValues);
  op$.addInput(aShape);
  op$.addInput(bIndices);
  op$.addInput(bValues);
  op$.addInput(bShape);
  op$.addInput(thresh);
  op$.setAttrType('Treal', treal);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return SparseAddOutput<T>(graph, result$, (result$[0] as Output<int>),
      (result$[1] as Output<T>), (result$[2] as Output<int>));
}

Output<T> bitwiseXor<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BitwiseXor', operationName ??= graph._scope.uniqueName('BitwiseXor/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> segmentMax<T>(Output<T> data, Output<T> segmentIds,
    {Graph graph, String operationName, DataType tindices}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SegmentMax', operationName ??= graph._scope.uniqueName('SegmentMax/'));
  op$.addInput(data);
  op$.addInput(segmentIds);
  op$.setAttrType('Tindices', tindices);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> cast<T>(Output<T> x,
    {Graph graph,
    String operationName,
    DataType srcT,
    DataType dstT,
    bool truncate: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Cast', operationName ??= graph._scope.uniqueName('Cast/'));
  op$.addInput(x);
  op$.setAttrType('SrcT', srcT);
  op$.setAttrType('DstT', dstT);
  op$.setAttrBool('Truncate', truncate);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> mean<T>(Output<T> input, Output<T> reductionIndices,
    {Graph graph,
    String operationName,
    bool keepDims: false,
    DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Mean', operationName ??= graph._scope.uniqueName('Mean/'));
  op$.addInput(input);
  op$.addInput(reductionIndices);
  op$.setAttrBool('keep_dims', keepDims);
  op$.setAttrType('Tidx', tidx);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

@Deprecated(
    'DEPRECATED at GraphDef version 13: Use MatrixTriangularSolve instead.')
Output<T> batchMatrixTriangularSolve<T>(Output<T> matrix, Output<T> rhs,
    {Graph graph,
    String operationName,
    bool lower: true,
    bool adjoint: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchMatrixTriangularSolve',
      operationName ??= graph._scope.uniqueName('BatchMatrixTriangularSolve/'));
  op$.addInput(matrix);
  op$.addInput(rhs);
  op$.setAttrBool('lower', lower);
  op$.setAttrBool('adjoint', adjoint);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation resourceScatterAdd<T>(
    Output resource, Output<T> indices, Output<T> updates,
    {Graph graph, String operationName, DataType dtype, DataType tindices}) {
  dtype ??= inferType(resource);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceScatterAdd',
      operationName ??= graph._scope.uniqueName('ResourceScatterAdd/'));
  op$.addInput(resource);
  op$.addInput(indices);
  op$.addInput(updates);
  op$.setAttrType('dtype', dtype);
  op$.setAttrType('Tindices', tindices);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

@Deprecated('DEPRECATED at GraphDef version 13: Use CholeskyGrad instead.')
Output<T> batchCholeskyGrad<T>(Output<T> l, Output<T> grad,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchCholeskyGrad',
      operationName ??= graph._scope.uniqueName('BatchCholeskyGrad/'));
  op$.addInput(l);
  op$.addInput(grad);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<bool> isVariableInitialized<T>(Output<T> ref,
    {Graph graph, String operationName, DataType dtype}) {
  dtype ??= inferType(ref);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('IsVariableInitialized',
      operationName ??= graph._scope.uniqueName('IsVariableInitialized/'));
  op$.addInput(ref);
  op$.setAttrType('dtype', dtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
}

class DenseToDenseSetOperationOutput<T> {
  DenseToDenseSetOperationOutput(this._graph, this.op, this.resultIndices,
      this.resultValues, this.resultShape);

  final Graph _graph;

  Operation op;

  final Output<int> resultIndices;

  final Output<T> resultValues;

  final Output<int> resultShape;

  DenseToDenseSetOperation run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return DenseToDenseSetOperation<T>((result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<T>), (result$[idx$2] as Output<int>));
  }
}

class DenseToDenseSetOperation<T> {
  DenseToDenseSetOperation(
      this.resultIndices, this.resultValues, this.resultShape);

  final Output<int> resultIndices;

  final Output<T> resultValues;

  final Output<int> resultShape;
}

DenseToDenseSetOperationOutput denseToDenseSetOperation<T>(
    Output<T> set1, Output<T> set2,
    {Graph graph,
    String operationName,
    String setOperation,
    bool validateIndices: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DenseToDenseSetOperation',
      operationName ??= graph._scope.uniqueName('DenseToDenseSetOperation/'));
  op$.addInput(set1);
  op$.addInput(set2);
  op$.setAttrString('set_operation', setOperation);
  op$.setAttrBool('validate_indices', validateIndices);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return DenseToDenseSetOperationOutput<T>(
      graph,
      result$,
      (result$[0] as Output<int>),
      (result$[1] as Output<T>),
      (result$[2] as Output<int>));
}

class SoftmaxCrossEntropyWithLogitsOutput<T> {
  SoftmaxCrossEntropyWithLogitsOutput(
      this._graph, this.op, this.loss, this.backprop);

  final Graph _graph;

  Operation op;

  final Output<T> loss;

  final Output<T> backprop;

  SoftmaxCrossEntropyWithLogits run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return SoftmaxCrossEntropyWithLogits<T>(
        (result$[idx$0] as Output<T>), (result$[idx$1] as Output<T>));
  }
}

class SoftmaxCrossEntropyWithLogits<T> {
  SoftmaxCrossEntropyWithLogits(this.loss, this.backprop);

  final Output<T> loss;

  final Output<T> backprop;
}

SoftmaxCrossEntropyWithLogitsOutput softmaxCrossEntropyWithLogits<T>(
    Output<T> features, Output<T> labels,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SoftmaxCrossEntropyWithLogits',
      operationName ??=
          graph._scope.uniqueName('SoftmaxCrossEntropyWithLogits/'));
  op$.addInput(features);
  op$.addInput(labels);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return SoftmaxCrossEntropyWithLogitsOutput<T>(
      graph, result$, (result$[0] as Output<T>), (result$[1] as Output<T>));
}

Output<List<T>> datasetToSingleElement<T>(Output dataset,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DatasetToSingleElement',
      operationName ??= graph._scope.uniqueName('DatasetToSingleElement/'));
  op$.addInput(dataset);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

@Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayGradV3')
Output<String> tensorArrayGradV2(Output<String> handle, Output<double> flowIn,
    {Graph graph, String operationName, String source}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayGradV2',
      operationName ??= graph._scope.uniqueName('TensorArrayGradV2/'));
  op$.addInput(handle);
  op$.addInput(flowIn);
  op$.setAttrString('source', source);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<int> nonMaxSuppressionV2(Output<double> boxes, Output<double> scores,
    Output<int> maxOutputSize, Output<double> iouThreshold,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('NonMaxSuppressionV2',
      operationName ??= graph._scope.uniqueName('NonMaxSuppressionV2/'));
  op$.addInput(boxes);
  op$.addInput(scores);
  op$.addInput(maxOutputSize);
  op$.addInput(iouThreshold);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

Output<T> complex<T>(Output<T> real, Output<T> imag,
    {Graph graph, String operationName, DataType tout: DataType.DT_COMPLEX64}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Complex', operationName ??= graph._scope.uniqueName('Complex/'));
  op$.addInput(real);
  op$.addInput(imag);
  op$.setAttrType('Tout', tout);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<double> dequantize<T>(
    Output<T> input, Output<double> minRange, Output<double> maxRange,
    {Graph graph, String operationName, String mode: 'MIN_COMBINED'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Dequantize', operationName ??= graph._scope.uniqueName('Dequantize/'));
  op$.addInput(input);
  op$.addInput(minRange);
  op$.addInput(maxRange);
  op$.setAttrString('mode', mode);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

Output<T> drawBoundingBoxes<T>(Output<T> images, Output<double> boxes,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DrawBoundingBoxes',
      operationName ??= graph._scope.uniqueName('DrawBoundingBoxes/'));
  op$.addInput(images);
  op$.addInput(boxes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output priorityQueueV2(
    {Graph graph,
    String operationName,
    List<DataType> componentTypes,
    List<Shape> shapes,
    int capacity: -1,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('PriorityQueueV2',
      operationName ??= graph._scope.uniqueName('PriorityQueueV2/'));
  op$.setAttrTypeList('component_types', componentTypes);
  op$.setAttrShapeList('shapes', shapes);
  op$.setAttrInt('capacity', capacity);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<T> refEnter<T>(Output<T> data,
    {Graph graph,
    String operationName,
    String frameName,
    bool isConstant: false,
    int parallelIterations: 10}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RefEnter', operationName ??= graph._scope.uniqueName('RefEnter/'));
  op$.addInput(data);
  op$.setAttrString('frame_name', frameName);
  op$.setAttrBool('is_constant', isConstant);
  op$.setAttrInt('parallel_iterations', parallelIterations);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

@Deprecated('DEPRECATED at GraphDef version 16: Use TensorArraySplitV3')
Output<double> tensorArraySplit<T>(Output<String> handle, Output<T> value,
    Output<int> lengths, Output<double> flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArraySplit',
      operationName ??= graph._scope.uniqueName('TensorArraySplit/'));
  op$.addInput(handle);
  op$.addInput(value);
  op$.addInput(lengths);
  op$.addInput(flowIn);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

/// This operation has no outputs.
Operation abort(
    {Graph graph,
    String operationName,
    String errorMsg,
    bool exitWithoutError: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Abort', operationName ??= graph._scope.uniqueName('Abort/'));
  op$.setAttrString('error_msg', errorMsg);
  op$.setAttrBool('exit_without_error', exitWithoutError);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// A placeholder op for multiple values that will be fed into the computation
/// simultaneously as an XLA tuple.
/// This operation has one output: A list of tensors that will be provided using the infeed mechanism.
/// attr [dtypes]: The element types of each element in `outputs`.
/// attr [shapes]: The shapes of each tensor in `outputs`.
Output<List<T>> infeedDequeueTuple<T>(
    {Graph graph,
    String operationName,
    List<DataType> dtypes,
    List<Shape> shapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('InfeedDequeueTuple',
      operationName ??= graph._scope.uniqueName('InfeedDequeueTuple/'));
  op$.setAttrTypeList('dtypes', dtypes);
  op$.setAttrShapeList('shapes', shapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

Output<T> reverseSequence<T>(Output<T> input, Output<T> seqLengths,
    {Graph graph,
    String operationName,
    int seqDim,
    int batchDim: 0,
    DataType tlen: DataType.DT_INT64}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ReverseSequence',
      operationName ??= graph._scope.uniqueName('ReverseSequence/'));
  op$.addInput(input);
  op$.addInput(seqLengths);
  op$.setAttrInt('seq_dim', seqDim);
  op$.setAttrInt('batch_dim', batchDim);
  op$.setAttrType('Tlen', tlen);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> tensorArrayGatherV3<T>(
    Output handle, Output<int> indices, Output<double> flowIn,
    {Graph graph, String operationName, DataType dtype, Shape elementShape}) {
  dtype ??= inferType(handle);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayGatherV3',
      operationName ??= graph._scope.uniqueName('TensorArrayGatherV3/'));
  op$.addInput(handle);
  op$.addInput(indices);
  op$.addInput(flowIn);
  op$.setAttrType('dtype', dtype);
  op$.setAttrShape('element_shape', elementShape);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> collectiveBcastRecv<T>(
    {Graph graph,
    String operationName,
    int groupSize,
    int groupKey,
    int instanceKey,
    Shape shape}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CollectiveBcastRecv',
      operationName ??= graph._scope.uniqueName('CollectiveBcastRecv/'));
  op$.setAttrInt('group_size', groupSize);
  op$.setAttrInt('group_key', groupKey);
  op$.setAttrInt('instance_key', instanceKey);
  op$.setAttrShape('shape', shape);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<double> tensorArrayScatterV3<T>(
    Output handle, Output<int> indices, Output<T> value, Output<double> flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayScatterV3',
      operationName ??= graph._scope.uniqueName('TensorArrayScatterV3/'));
  op$.addInput(handle);
  op$.addInput(indices);
  op$.addInput(value);
  op$.addInput(flowIn);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

/// This operation has no outputs.
Operation resourceSparseApplyFtrlV2<T>(
    Output var$,
    Output accum,
    Output linear,
    Output<T> grad,
    Output<T> indices,
    Output<T> lr,
    Output<T> l1,
    Output<T> l2,
    Output<T> l2Shrinkage,
    Output<T> lrPower,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceSparseApplyFtrlV2',
      operationName ??= graph._scope.uniqueName('ResourceSparseApplyFtrlV2/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(linear);
  op$.addInput(grad);
  op$.addInput(indices);
  op$.addInput(lr);
  op$.addInput(l1);
  op$.addInput(l2);
  op$.addInput(l2Shrinkage);
  op$.addInput(lrPower);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<String> encodeWav(Output<double> audio, Output<int> sampleRate,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'EncodeWav', operationName ??= graph._scope.uniqueName('EncodeWav/'));
  op$.addInput(audio);
  op$.addInput(sampleRate);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output statsAggregatorHandle(
    {Graph graph, String operationName, String container, String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StatsAggregatorHandle',
      operationName ??= graph._scope.uniqueName('StatsAggregatorHandle/'));
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<T> abs<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Abs', operationName ??= graph._scope.uniqueName('Abs/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> gather<T>(Output<T> params, Output<T> indices,
    {Graph graph,
    String operationName,
    bool validateIndices: true,
    DataType tparams,
    DataType tindices}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Gather', operationName ??= graph._scope.uniqueName('Gather/'));
  op$.addInput(params);
  op$.addInput(indices);
  op$.setAttrBool('validate_indices', validateIndices);
  op$.setAttrType('Tparams', tparams);
  op$.setAttrType('Tindices', tindices);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> tensorArrayReadV3<T>(
    Output handle, Output<int> index, Output<double> flowIn,
    {Graph graph, String operationName, DataType dtype}) {
  dtype ??= inferType(handle);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayReadV3',
      operationName ??= graph._scope.uniqueName('TensorArrayReadV3/'));
  op$.addInput(handle);
  op$.addInput(index);
  op$.addInput(flowIn);
  op$.setAttrType('dtype', dtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> refNextIteration<T>(Output<T> data,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('RefNextIteration',
      operationName ??= graph._scope.uniqueName('RefNextIteration/'));
  op$.addInput(data);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output hashTableV2(
    {Graph graph,
    String operationName,
    String container,
    String sharedName,
    bool useNodeNameSharing: false,
    DataType keyDtype,
    DataType valueDtype}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'HashTableV2', operationName ??= graph._scope.uniqueName('HashTableV2/'));
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
  op$.setAttrBool('use_node_name_sharing', useNodeNameSharing);
  op$.setAttrType('key_dtype', keyDtype);
  op$.setAttrType('value_dtype', valueDtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<bool> boostedTreesCenterBias(
    Output treeEnsembleHandle,
    Output<double> meanGradients,
    Output<double> meanHessians,
    Output<double> l1,
    Output<double> l2,
    {Graph graph,
    String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BoostedTreesCenterBias',
      operationName ??= graph._scope.uniqueName('BoostedTreesCenterBias/'));
  op$.addInput(treeEnsembleHandle);
  op$.addInput(meanGradients);
  op$.addInput(meanHessians);
  op$.addInput(l1);
  op$.addInput(l2);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
}

Output<List<T>> orderedMapPeek<T>(Output<int> key, Output<int> indices,
    {Graph graph,
    String operationName,
    int capacity: 0,
    int memoryLimit: 0,
    List<DataType> dtypes,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('OrderedMapPeek',
      operationName ??= graph._scope.uniqueName('OrderedMapPeek/'));
  op$.addInput(key);
  op$.addInput(indices);
  op$.setAttrInt('capacity', capacity);
  op$.setAttrInt('memory_limit', memoryLimit);
  op$.setAttrTypeList('dtypes', dtypes);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

Output<T> randomPoissonV2<T>(Output<T> shape, Output<T> rate,
    {Graph graph,
    String operationName,
    int seed: 0,
    int seed2: 0,
    DataType s,
    DataType r: DataType.DT_DOUBLE,
    DataType dtype: DataType.DT_INT64}) {
  dtype ??= inferType(shape);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('RandomPoissonV2',
      operationName ??= graph._scope.uniqueName('RandomPoissonV2/'));
  op$.addInput(shape);
  op$.addInput(rate);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
  op$.setAttrType('S', s);
  op$.setAttrType('R', r);
  op$.setAttrType('dtype', dtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output filterByLastComponentDataset(Output inputDataset,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'FilterByLastComponentDataset',
      operationName ??=
          graph._scope.uniqueName('FilterByLastComponentDataset/'));
  op$.addInput(inputDataset);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output shuffleDataset(Output inputDataset, Output<int> bufferSize,
    Output<int> seed, Output<int> seed2,
    {Graph graph,
    String operationName,
    bool reshuffleEachIteration: true,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ShuffleDataset',
      operationName ??= graph._scope.uniqueName('ShuffleDataset/'));
  op$.addInput(inputDataset);
  op$.addInput(bufferSize);
  op$.addInput(seed);
  op$.addInput(seed2);
  op$.setAttrBool('reshuffle_each_iteration', reshuffleEachIteration);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output rangeDataset(Output<int> start, Output<int> stop, Output<int> step,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('RangeDataset',
      operationName ??= graph._scope.uniqueName('RangeDataset/'));
  op$.addInput(start);
  op$.addInput(stop);
  op$.addInput(step);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

class FusedBatchNormGradOutput<T> {
  FusedBatchNormGradOutput(
      this._graph,
      this.op,
      this.xBackprop,
      this.scaleBackprop,
      this.offsetBackprop,
      this.reserveSpace3,
      this.reserveSpace4);

  final Graph _graph;

  Operation op;

  final Output<T> xBackprop;

  final Output<T> scaleBackprop;

  final Output<T> offsetBackprop;

  final Output<T> reserveSpace3;

  final Output<T> reserveSpace4;

  FusedBatchNormGrad run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var idx$3 = runner.fetch(op.name, index: 3);
    var idx$4 = runner.fetch(op.name, index: 4);
    var result$ = runner.run();
    return FusedBatchNormGrad<T>(
        (result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<T>),
        (result$[idx$2] as Output<T>),
        (result$[idx$3] as Output<T>),
        (result$[idx$4] as Output<T>));
  }
}

class FusedBatchNormGrad<T> {
  FusedBatchNormGrad(this.xBackprop, this.scaleBackprop, this.offsetBackprop,
      this.reserveSpace3, this.reserveSpace4);

  final Output<T> xBackprop;

  final Output<T> scaleBackprop;

  final Output<T> offsetBackprop;

  final Output<T> reserveSpace3;

  final Output<T> reserveSpace4;
}

FusedBatchNormGradOutput fusedBatchNormGrad<T>(Output<T> yBackprop, Output<T> x,
    Output<T> scale, Output<T> reserveSpace1, Output<T> reserveSpace2,
    {Graph graph,
    String operationName,
    double epsilon: 0.00009999999747378752,
    String dataFormat: 'NHWC',
    bool isTraining: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('FusedBatchNormGrad',
      operationName ??= graph._scope.uniqueName('FusedBatchNormGrad/'));
  op$.addInput(yBackprop);
  op$.addInput(x);
  op$.addInput(scale);
  op$.addInput(reserveSpace1);
  op$.addInput(reserveSpace2);
  op$.setAttrFloat('epsilon', epsilon);
  op$.setAttrString('data_format', dataFormat);
  op$.setAttrBool('is_training', isTraining);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return FusedBatchNormGradOutput<T>(
      graph,
      result$,
      (result$[0] as Output<T>),
      (result$[1] as Output<T>),
      (result$[2] as Output<T>),
      (result$[3] as Output<T>),
      (result$[4] as Output<T>));
}

/// This operation has no outputs.
Operation assignSubVariableOp<T>(Output resource, Output<T> value,
    {Graph graph, String operationName, DataType dtype}) {
  dtype ??= inferType(resource);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AssignSubVariableOp',
      operationName ??= graph._scope.uniqueName('AssignSubVariableOp/'));
  op$.addInput(resource);
  op$.addInput(value);
  op$.setAttrType('dtype', dtype);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

class TensorArrayGradWithShapeOutput {
  TensorArrayGradWithShapeOutput(
      this._graph, this.op, this.gradHandle, this.flowOut);

  final Graph _graph;

  Operation op;

  final Output gradHandle;

  final Output<double> flowOut;

  TensorArrayGradWithShape run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return TensorArrayGradWithShape(
        (result$[idx$0] as Output), (result$[idx$1] as Output<double>));
  }
}

class TensorArrayGradWithShape {
  TensorArrayGradWithShape(this.gradHandle, this.flowOut);

  final Output gradHandle;

  final Output<double> flowOut;
}

TensorArrayGradWithShapeOutput tensorArrayGradWithShape(
    Output handle, Output<double> flowIn, Output<int> shapeToPrepend,
    {Graph graph, String operationName, String source}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayGradWithShape',
      operationName ??= graph._scope.uniqueName('TensorArrayGradWithShape/'));
  op$.addInput(handle);
  op$.addInput(flowIn);
  op$.addInput(shapeToPrepend);
  op$.setAttrString('source', source);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return TensorArrayGradWithShapeOutput(
      graph, result$, (result$[0] as Output), (result$[1] as Output<double>));
}

Output tFRecordReaderV2(
    {Graph graph,
    String operationName,
    String container,
    String sharedName,
    String compressionType}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TFRecordReaderV2',
      operationName ??= graph._scope.uniqueName('TFRecordReaderV2/'));
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
  op$.setAttrString('compression_type', compressionType);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output tensorListPushBackBatch<T>(Output inputHandles, Output<T> tensor,
    {Graph graph, String operationName, DataType elementDtype}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorListPushBackBatch',
      operationName ??= graph._scope.uniqueName('TensorListPushBackBatch/'));
  op$.addInput(inputHandles);
  op$.addInput(tensor);
  op$.setAttrType('element_dtype', elementDtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

/// This operation has no outputs.
Operation stackClose(Output<String> handle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'StackClose', operationName ??= graph._scope.uniqueName('StackClose/'));
  op$.addInput(handle);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> square<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Square', operationName ??= graph._scope.uniqueName('Square/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

@Deprecated('DEPRECATED at GraphDef version 26: Use IdentityReaderV2')
Output<String> identityReader(
    {Graph graph, String operationName, String container, String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('IdentityReader',
      operationName ??= graph._scope.uniqueName('IdentityReader/'));
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<T> mul<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Mul', operationName ??= graph._scope.uniqueName('Mul/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> quantizeAndDequantizeV3<T>(Output<T> input, Output<T> inputMin,
    Output<T> inputMax, Output<int> numBits,
    {Graph graph,
    String operationName,
    bool signedInput: true,
    bool rangeGiven: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QuantizeAndDequantizeV3',
      operationName ??= graph._scope.uniqueName('QuantizeAndDequantizeV3/'));
  op$.addInput(input);
  op$.addInput(inputMin);
  op$.addInput(inputMax);
  op$.addInput(numBits);
  op$.setAttrBool('signed_input', signedInput);
  op$.setAttrBool('range_given', rangeGiven);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<String> decodeJSONExample(Output<String> jsonExamples,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DecodeJSONExample',
      operationName ??= graph._scope.uniqueName('DecodeJSONExample/'));
  op$.addInput(jsonExamples);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

/// This operation has no outputs.
Operation boostedTreesDeserializeEnsemble(Output treeEnsembleHandle,
    Output<int> stampToken, Output<String> treeEnsembleSerialized,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BoostedTreesDeserializeEnsemble',
      operationName ??=
          graph._scope.uniqueName('BoostedTreesDeserializeEnsemble/'));
  op$.addInput(treeEnsembleHandle);
  op$.addInput(stampToken);
  op$.addInput(treeEnsembleSerialized);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> stackPush<T>(Output<String> handle, Output<T> elem,
    {Graph graph, String operationName, bool swapMemory: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'StackPush', operationName ??= graph._scope.uniqueName('StackPush/'));
  op$.addInput(handle);
  op$.addInput(elem);
  op$.setAttrBool('swap_memory', swapMemory);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

@Deprecated('DEPRECATED at GraphDef version 26: Use TFRecordReaderV2')
Output<String> tFRecordReader(
    {Graph graph,
    String operationName,
    String container,
    String sharedName,
    String compressionType}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TFRecordReader',
      operationName ??= graph._scope.uniqueName('TFRecordReader/'));
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
  op$.setAttrString('compression_type', compressionType);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

class SparseAccumulatorTakeGradientOutput<T> {
  SparseAccumulatorTakeGradientOutput(
      this._graph, this.op, this.indices, this.values, this.shape);

  final Graph _graph;

  Operation op;

  final Output<int> indices;

  final Output<T> values;

  final Output<int> shape;

  SparseAccumulatorTakeGradient run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return SparseAccumulatorTakeGradient<T>((result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<T>), (result$[idx$2] as Output<int>));
  }
}

class SparseAccumulatorTakeGradient<T> {
  SparseAccumulatorTakeGradient(this.indices, this.values, this.shape);

  final Output<int> indices;

  final Output<T> values;

  final Output<int> shape;
}

SparseAccumulatorTakeGradientOutput sparseAccumulatorTakeGradient<T>(
    Output<String> handle, Output<int> numRequired,
    {Graph graph, String operationName, DataType dtype}) {
  dtype ??= inferType(handle);
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SparseAccumulatorTakeGradient',
      operationName ??=
          graph._scope.uniqueName('SparseAccumulatorTakeGradient/'));
  op$.addInput(handle);
  op$.addInput(numRequired);
  op$.setAttrType('dtype', dtype);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return SparseAccumulatorTakeGradientOutput<T>(
      graph,
      result$,
      (result$[0] as Output<int>),
      (result$[1] as Output<T>),
      (result$[2] as Output<int>));
}

/// This operation has no outputs.
Operation stageClear(
    {Graph graph,
    String operationName,
    int capacity: 0,
    int memoryLimit: 0,
    List<DataType> dtypes,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'StageClear', operationName ??= graph._scope.uniqueName('StageClear/'));
  op$.setAttrInt('capacity', capacity);
  op$.setAttrInt('memory_limit', memoryLimit);
  op$.setAttrTypeList('dtypes', dtypes);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> iFFT3D<T>(Output<T> input,
    {Graph graph,
    String operationName,
    DataType tcomplex: DataType.DT_COMPLEX64}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'IFFT3D', operationName ??= graph._scope.uniqueName('IFFT3D/'));
  op$.addInput(input);
  op$.setAttrType('Tcomplex', tcomplex);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class GenerateVocabRemappingOutput {
  GenerateVocabRemappingOutput(
      this._graph, this.op, this.remapping, this.numPresent);

  final Graph _graph;

  Operation op;

  final Output<int> remapping;

  final Output<int> numPresent;

  GenerateVocabRemapping run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return GenerateVocabRemapping(
        (result$[idx$0] as Output<int>), (result$[idx$1] as Output<int>));
  }
}

class GenerateVocabRemapping {
  GenerateVocabRemapping(this.remapping, this.numPresent);

  final Output<int> remapping;

  final Output<int> numPresent;
}

GenerateVocabRemappingOutput generateVocabRemapping(
    Output<String> newVocabFile, Output<String> oldVocabFile,
    {Graph graph,
    String operationName,
    int newVocabOffset,
    int numNewVocab,
    int oldVocabSize: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('GenerateVocabRemapping',
      operationName ??= graph._scope.uniqueName('GenerateVocabRemapping/'));
  op$.addInput(newVocabFile);
  op$.addInput(oldVocabFile);
  op$.setAttrInt('new_vocab_offset', newVocabOffset);
  op$.setAttrInt('num_new_vocab', numNewVocab);
  op$.setAttrInt('old_vocab_size', oldVocabSize);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return GenerateVocabRemappingOutput(
      graph, result$, (result$[0] as Output<int>), (result$[1] as Output<int>));
}

Output iteratorFromStringHandleV2(Output<String> stringHandle,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('IteratorFromStringHandleV2',
      operationName ??= graph._scope.uniqueName('IteratorFromStringHandleV2/'));
  op$.addInput(stringHandle);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<String> mutableDenseHashTable<T>(Output<T> emptyKey,
    {Graph graph,
    String operationName,
    String container,
    String sharedName,
    bool useNodeNameSharing: false,
    DataType keyDtype,
    DataType valueDtype,
    Shape valueShape,
    int initialNumBuckets: 131072,
    double maxLoadFactor: 0.800000011920929}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MutableDenseHashTable',
      operationName ??= graph._scope.uniqueName('MutableDenseHashTable/'));
  op$.addInput(emptyKey);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
  op$.setAttrBool('use_node_name_sharing', useNodeNameSharing);
  op$.setAttrType('key_dtype', keyDtype);
  op$.setAttrType('value_dtype', valueDtype);
  op$.setAttrShape('value_shape', valueShape);
  op$.setAttrInt('initial_num_buckets', initialNumBuckets);
  op$.setAttrFloat('max_load_factor', maxLoadFactor);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

@Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayGradV3')
Output<String> tensorArrayGrad(Output<String> handle, Output<double> flowIn,
    {Graph graph, String operationName, String source}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayGrad',
      operationName ??= graph._scope.uniqueName('TensorArrayGrad/'));
  op$.addInput(handle);
  op$.addInput(flowIn);
  op$.setAttrString('source', source);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<String> mutableHashTable(
    {Graph graph,
    String operationName,
    String container,
    String sharedName,
    bool useNodeNameSharing: false,
    DataType keyDtype,
    DataType valueDtype}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MutableHashTable',
      operationName ??= graph._scope.uniqueName('MutableHashTable/'));
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
  op$.setAttrBool('use_node_name_sharing', useNodeNameSharing);
  op$.setAttrType('key_dtype', keyDtype);
  op$.setAttrType('value_dtype', valueDtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<String> sparseConditionalAccumulator(
    {Graph graph,
    String operationName,
    @required DataType dtype,
    Shape shape,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SparseConditionalAccumulator',
      operationName ??=
          graph._scope.uniqueName('SparseConditionalAccumulator/'));
  op$.setAttrType('dtype', dtype);
  op$.setAttrShape('shape', shape);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<String> conditionalAccumulator(
    {Graph graph,
    String operationName,
    @required DataType dtype,
    Shape shape,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ConditionalAccumulator',
      operationName ??= graph._scope.uniqueName('ConditionalAccumulator/'));
  op$.setAttrType('dtype', dtype);
  op$.setAttrShape('shape', shape);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

@Deprecated('DEPRECATED at GraphDef version 14: Use MatrixDiagPart')
Output<T> batchMatrixDiagPart<T>(Output<T> input,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchMatrixDiagPart',
      operationName ??= graph._scope.uniqueName('BatchMatrixDiagPart/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

@Deprecated('DEPRECATED at GraphDef version 2: Use AdjustContrastv2 instead')
Output<double> adjustContrast<T>(
    Output<T> images,
    Output<double> contrastFactor,
    Output<double> minValue,
    Output<double> maxValue,
    {Graph graph,
    String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AdjustContrast',
      operationName ??= graph._scope.uniqueName('AdjustContrast/'));
  op$.addInput(images);
  op$.addInput(contrastFactor);
  op$.addInput(minValue);
  op$.addInput(maxValue);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

/// This operation has no outputs.
Operation accumulatorSetGlobalStep(
    Output<String> handle, Output<int> newGlobalStep,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AccumulatorSetGlobalStep',
      operationName ??= graph._scope.uniqueName('AccumulatorSetGlobalStep/'));
  op$.addInput(handle);
  op$.addInput(newGlobalStep);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

@Deprecated('DEPRECATED at GraphDef version 13: Use MatrixInverse instead.')
Output<T> batchMatrixInverse<T>(Output<T> input,
    {Graph graph, String operationName, bool adjoint: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchMatrixInverse',
      operationName ??= graph._scope.uniqueName('BatchMatrixInverse/'));
  op$.addInput(input);
  op$.setAttrBool('adjoint', adjoint);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class FractionalAvgPoolOutput<T> {
  FractionalAvgPoolOutput(this._graph, this.op, this.output,
      this.rowPoolingSequence, this.colPoolingSequence);

  final Graph _graph;

  Operation op;

  final Output<T> output;

  final Output<int> rowPoolingSequence;

  final Output<int> colPoolingSequence;

  FractionalAvgPool run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return FractionalAvgPool<T>((result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<int>), (result$[idx$2] as Output<int>));
  }
}

class FractionalAvgPool<T> {
  FractionalAvgPool(
      this.output, this.rowPoolingSequence, this.colPoolingSequence);

  final Output<T> output;

  final Output<int> rowPoolingSequence;

  final Output<int> colPoolingSequence;
}

FractionalAvgPoolOutput fractionalAvgPool<T>(Output<T> value,
    {Graph graph,
    String operationName,
    List<double> poolingRatio,
    bool pseudoRandom: false,
    bool overlapping: false,
    bool deterministic: false,
    int seed: 0,
    int seed2: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('FractionalAvgPool',
      operationName ??= graph._scope.uniqueName('FractionalAvgPool/'));
  op$.addInput(value);
  op$.setAttrFloatList('pooling_ratio', poolingRatio);
  op$.setAttrBool('pseudo_random', pseudoRandom);
  op$.setAttrBool('overlapping', overlapping);
  op$.setAttrBool('deterministic', deterministic);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return FractionalAvgPoolOutput<T>(graph, result$, (result$[0] as Output<T>),
      (result$[1] as Output<int>), (result$[2] as Output<int>));
}

Output randomDataset(Output<int> seed, Output<int> seed2,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('RandomDataset',
      operationName ??= graph._scope.uniqueName('RandomDataset/'));
  op$.addInput(seed);
  op$.addInput(seed2);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<T> relu6<T>(Output<T> features, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Relu6', operationName ??= graph._scope.uniqueName('Relu6/'));
  op$.addInput(features);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<String> readerSerializeStateV2(Output readerHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ReaderSerializeStateV2',
      operationName ??= graph._scope.uniqueName('ReaderSerializeStateV2/'));
  op$.addInput(readerHandle);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

class SparseSplitOutput<T> {
  SparseSplitOutput(this._graph, this.op, this.outputIndices, this.outputValues,
      this.outputShape);

  final Graph _graph;

  Operation op;

  final Output<int> outputIndices;

  final Output<T> outputValues;

  final Output<int> outputShape;

  SparseSplit run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return SparseSplit<T>((result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<T>), (result$[idx$2] as Output<int>));
  }
}

class SparseSplit<T> {
  SparseSplit(this.outputIndices, this.outputValues, this.outputShape);

  final Output<int> outputIndices;

  final Output<T> outputValues;

  final Output<int> outputShape;
}

SparseSplitOutput sparseSplit<T>(Output<int> splitDim, Output<int> indices,
    Output<T> values, Output<int> shape,
    {Graph graph, String operationName, int numSplit}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SparseSplit', operationName ??= graph._scope.uniqueName('SparseSplit/'));
  op$.addInput(splitDim);
  op$.addInput(indices);
  op$.addInput(values);
  op$.addInput(shape);
  op$.setAttrInt('num_split', numSplit);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return SparseSplitOutput<T>(graph, result$, (result$[0] as Output<int>),
      (result$[1] as Output<T>), (result$[2] as Output<int>));
}

@Deprecated('DEPRECATED at GraphDef version 11: Use SelfAdjointEigV2 instead.')
Output<T> batchSelfAdjointEig<T>(Output<T> input,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchSelfAdjointEig',
      operationName ??= graph._scope.uniqueName('BatchSelfAdjointEig/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// Debug Numeric Summary Op.
/// Provide a basic summary of numeric value types, range and distribution.
/// This operation has one output: A double tensor of shape [14 + nDimensions], where nDimensions is the
/// the number of dimensions of the tensor's shape. The elements of output are:
/// [0]: is initialized (1.0) or not (0.0).
/// [1]: total number of elements
/// [2]: NaN element count
/// [3]: generalized -inf count: elements <= lower_bound. lower_bound is -inf by
/// default.
/// [4]: negative element count (excluding -inf), if lower_bound is the default
/// -inf. Otherwise, this is the count of elements > lower_bound and < 0.
/// [5]: zero element count
/// [6]: positive element count (excluding +inf), if upper_bound is the default
/// -inf. Otherwise, this is the count of elements < upper_bound and > 0.
/// [7]: generalized +inf count, elements >= upper_bound. upper_bound is +inf by
/// default.
/// Output elements [1:8] are all zero, if the tensor is uninitialized.
/// [8]: minimum of all non-inf and non-NaN elements.
/// If uninitialized or no such element exists: +inf.
/// [9]: maximum of all non-inf and non-NaN elements.
/// If uninitialized or no such element exists: -inf.
/// [10]: mean of all non-inf and non-NaN elements.
/// If uninitialized or no such element exists: NaN.
/// [11]: variance of all non-inf and non-NaN elements.
/// If uninitialized or no such element exists: NaN.
/// [12]: Data type of the tensor encoded as an enum integer. See the DataType
/// proto for more details.
/// [13]: Number of dimensions of the tensor (ndims).
/// [14+]: Sizes of the dimensions.
/// * [input]: Input tensor, non-Reference type, float or double.
/// attr [tensorName]: Name of the input tensor.
/// attr [debugUrls]: List of URLs to debug targets, e.g.,
/// file:///foo/tfdbg_dump, grpc:://localhost:11011
/// attr [lowerBound]: (float) The lower bound <= which values will be included in the
/// generalized -inf count. Default: -inf.
/// attr [upperBound]: (float) The upper bound >= which values will be included in the
/// generalized +inf count. Default: +inf.
/// attr [muteIfHealthy]: (bool) Do not send data to the debug URLs unless at least one
/// of elements [2], [3] and [7] (i.e., the nan count and the generalized -inf and
/// inf counts) is non-zero.
/// attr [gatedGrpc]: Whether this op will be gated. If any of the debug_urls of this
/// debug node is of the grpc:// scheme, when the value of this attribute is set
/// to True, the data will not actually be sent via the grpc stream unless this
/// debug op has been enabled at the debug_url. If all of the debug_urls of this
/// debug node are of the grpc:// scheme and the debug op is enabled at none of
/// them, the output will be an empty Tensor.
Output debugNumericSummary<T>(Output<T> input,
    {Graph graph,
    String operationName,
    String deviceName,
    String tensorName,
    List<String> debugUrls,
    double lowerBound: double.negativeInfinity,
    double upperBound: double.infinity,
    bool muteIfHealthy: false,
    bool gatedGrpc: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DebugNumericSummary',
      operationName ??= graph._scope.uniqueName('DebugNumericSummary/'));
  op$.addInput(input);
  op$.setAttrString('device_name', deviceName);
  op$.setAttrString('tensor_name', tensorName);
  op$.setAttrStringList('debug_urls', debugUrls);
  op$.setAttrFloat('lower_bound', lowerBound);
  op$.setAttrFloat('upper_bound', upperBound);
  op$.setAttrBool('mute_if_healthy', muteIfHealthy);
  op$.setAttrBool('gated_grpc', gatedGrpc);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

/// This operation has no outputs.
Operation datasetToTFRecord(Output inputDataset, Output<String> filename,
    Output<String> compressionType,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DatasetToTFRecord',
      operationName ??= graph._scope.uniqueName('DatasetToTFRecord/'));
  op$.addInput(inputDataset);
  op$.addInput(filename);
  op$.addInput(compressionType);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> sparseApplyCenteredRMSProp<T>(
    Output<T> var$,
    Output<T> mg,
    Output<T> ms,
    Output<T> mom,
    Output<T> lr,
    Output<T> rho,
    Output<T> momentum,
    Output<T> epsilon,
    Output<T> grad,
    Output<T> indices,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseApplyCenteredRMSProp',
      operationName ??= graph._scope.uniqueName('SparseApplyCenteredRMSProp/'));
  op$.addInput(var$);
  op$.addInput(mg);
  op$.addInput(ms);
  op$.addInput(mom);
  op$.addInput(lr);
  op$.addInput(rho);
  op$.addInput(momentum);
  op$.addInput(epsilon);
  op$.addInput(grad);
  op$.addInput(indices);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation resourceSparseApplyCenteredRMSProp<T>(
    Output var$,
    Output mg,
    Output ms,
    Output mom,
    Output<T> lr,
    Output<T> rho,
    Output<T> momentum,
    Output<T> epsilon,
    Output<T> grad,
    Output<T> indices,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ResourceSparseApplyCenteredRMSProp',
      operationName ??=
          graph._scope.uniqueName('ResourceSparseApplyCenteredRMSProp/'));
  op$.addInput(var$);
  op$.addInput(mg);
  op$.addInput(ms);
  op$.addInput(mom);
  op$.addInput(lr);
  op$.addInput(rho);
  op$.addInput(momentum);
  op$.addInput(epsilon);
  op$.addInput(grad);
  op$.addInput(indices);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<int> queueSizeV2(Output handle, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'QueueSizeV2', operationName ??= graph._scope.uniqueName('QueueSizeV2/'));
  op$.addInput(handle);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

Output<double> tensorArraySplitV3<T>(
    Output handle, Output<T> value, Output<int> lengths, Output<double> flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArraySplitV3',
      operationName ??= graph._scope.uniqueName('TensorArraySplitV3/'));
  op$.addInput(handle);
  op$.addInput(value);
  op$.addInput(lengths);
  op$.addInput(flowIn);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

Output iteratorGetNextAsOptional(Output iterator,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('IteratorGetNextAsOptional',
      operationName ??= graph._scope.uniqueName('IteratorGetNextAsOptional/'));
  op$.addInput(iterator);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

/// This operation has no outputs.
Operation lookupTableInsert<T>(
    Output<String> tableHandle, Output<T> keys, Output<T> values,
    {Graph graph, String operationName, DataType tin, DataType tout}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('LookupTableInsert',
      operationName ??= graph._scope.uniqueName('LookupTableInsert/'));
  op$.addInput(tableHandle);
  op$.addInput(keys);
  op$.addInput(values);
  op$.setAttrType('Tin', tin);
  op$.setAttrType('Tout', tout);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// An op which feeds a single Tensor value into the computation.
/// This operation has no outputs.
/// * [input]: A tensor that will be provided using the infeed mechanism.
/// attr [dtype]: The type of elements in the tensor.
/// attr [shape]: The shape of the tensor.
/// attr [deviceOrdinal]: The TPU device to use. This should be -1 when the Op
/// is running on a TPU device, and >= 0 when the Op is running on the CPU
/// device.
Operation infeedEnqueue<T>(Output<T> input,
    {Graph graph,
    String operationName,
    DataType dtype,
    Shape shape,
    int deviceOrdinal: -1}) {
  dtype ??= inferType(input);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('InfeedEnqueue',
      operationName ??= graph._scope.uniqueName('InfeedEnqueue/'));
  op$.addInput(input);
  op$.setAttrType('dtype', dtype);
  op$.setAttrShape('shape', shape);
  op$.setAttrInt('device_ordinal', deviceOrdinal);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<bool> queueIsClosed(Output<String> handle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QueueIsClosed',
      operationName ??= graph._scope.uniqueName('QueueIsClosed/'));
  op$.addInput(handle);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
}

Output<T> scatterMul<T>(Output<T> ref, Output<T> indices, Output<T> updates,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ScatterMul', operationName ??= graph._scope.uniqueName('ScatterMul/'));
  op$.addInput(ref);
  op$.addInput(indices);
  op$.addInput(updates);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> cudnnRNNParamsSize<T>(
    Output<int> numLayers, Output<int> numUnits, Output<int> inputSize,
    {Graph graph,
    String operationName,
    DataType s,
    String rnnMode: 'lstm',
    String inputMode: 'linear_input',
    String direction: 'unidirectional',
    double dropout: 0.0,
    int seed: 0,
    int seed2: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CudnnRNNParamsSize',
      operationName ??= graph._scope.uniqueName('CudnnRNNParamsSize/'));
  op$.addInput(numLayers);
  op$.addInput(numUnits);
  op$.addInput(inputSize);
  op$.setAttrType('S', s);
  op$.setAttrString('rnn_mode', rnnMode);
  op$.setAttrString('input_mode', inputMode);
  op$.setAttrString('direction', direction);
  op$.setAttrFloat('dropout', dropout);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> depthwiseConv2dNativeBackpropFilter<T>(
    Output<T> input, Output<int> filterSizes, Output<T> outBackprop,
    {Graph graph,
    String operationName,
    List<int> strides,
    String padding,
    String dataFormat: 'NHWC',
    List<int> dilations}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'DepthwiseConv2dNativeBackpropFilter',
      operationName ??=
          graph._scope.uniqueName('DepthwiseConv2dNativeBackpropFilter/'));
  op$.addInput(input);
  op$.addInput(filterSizes);
  op$.addInput(outBackprop);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
  op$.setAttrString('data_format', dataFormat);
  op$.setAttrIntList('dilations', dilations);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<double> cropAndResize<T>(Output<T> image, Output<double> boxes,
    Output<int> boxInd, Output<int> cropSize,
    {Graph graph,
    String operationName,
    String method: 'bilinear',
    double extrapolationValue: 0.0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CropAndResize',
      operationName ??= graph._scope.uniqueName('CropAndResize/'));
  op$.addInput(image);
  op$.addInput(boxes);
  op$.addInput(boxInd);
  op$.addInput(cropSize);
  op$.setAttrString('method', method);
  op$.setAttrFloat('extrapolation_value', extrapolationValue);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

class DeserializeManySparseOutput<T> {
  DeserializeManySparseOutput(this._graph, this.op, this.sparseIndices,
      this.sparseValues, this.sparseShape);

  final Graph _graph;

  Operation op;

  final Output<int> sparseIndices;

  final Output<T> sparseValues;

  final Output<int> sparseShape;

  DeserializeManySparse run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return DeserializeManySparse<T>((result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<T>), (result$[idx$2] as Output<int>));
  }
}

class DeserializeManySparse<T> {
  DeserializeManySparse(
      this.sparseIndices, this.sparseValues, this.sparseShape);

  final Output<int> sparseIndices;

  final Output<T> sparseValues;

  final Output<int> sparseShape;
}

DeserializeManySparseOutput deserializeManySparse<T>(
    Output<String> serializedSparse,
    {Graph graph,
    String operationName,
    DataType dtype}) {
  dtype ??= inferType(serializedSparse);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DeserializeManySparse',
      operationName ??= graph._scope.uniqueName('DeserializeManySparse/'));
  op$.addInput(serializedSparse);
  op$.setAttrType('dtype', dtype);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return DeserializeManySparseOutput<T>(
      graph,
      result$,
      (result$[0] as Output<int>),
      (result$[1] as Output<T>),
      (result$[2] as Output<int>));
}

Output<List<T>> queueDequeueMany<T>(Output<String> handle, Output<int> n,
    {Graph graph,
    String operationName,
    List<DataType> componentTypes,
    int timeoutMs: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QueueDequeueMany',
      operationName ??= graph._scope.uniqueName('QueueDequeueMany/'));
  op$.addInput(handle);
  op$.addInput(n);
  op$.setAttrTypeList('component_types', componentTypes);
  op$.setAttrInt('timeout_ms', timeoutMs);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

class TensorArrayConcatV3Output<T> {
  TensorArrayConcatV3Output(this._graph, this.op, this.value, this.lengths);

  final Graph _graph;

  Operation op;

  final Output<T> value;

  final Output<int> lengths;

  TensorArrayConcatV3 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return TensorArrayConcatV3<T>(
        (result$[idx$0] as Output<T>), (result$[idx$1] as Output<int>));
  }
}

class TensorArrayConcatV3<T> {
  TensorArrayConcatV3(this.value, this.lengths);

  final Output<T> value;

  final Output<int> lengths;
}

TensorArrayConcatV3Output tensorArrayConcatV3<T>(
    Output handle, Output<double> flowIn,
    {Graph graph,
    String operationName,
    DataType dtype,
    Shape elementShapeExcept0}) {
  dtype ??= inferType(handle);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayConcatV3',
      operationName ??= graph._scope.uniqueName('TensorArrayConcatV3/'));
  op$.addInput(handle);
  op$.addInput(flowIn);
  op$.setAttrType('dtype', dtype);
  op$.setAttrShape('element_shape_except0', elementShapeExcept0);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return TensorArrayConcatV3Output<T>(
      graph, result$, (result$[0] as Output<T>), (result$[1] as Output<int>));
}

/// This operation has no outputs.
Operation queueEnqueueManyV2<T>(Output handle, List<Output<List<T>>> components,
    {Graph graph,
    String operationName,
    List<DataType> tcomponents,
    int timeoutMs: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QueueEnqueueManyV2',
      operationName ??= graph._scope.uniqueName('QueueEnqueueManyV2/'));
  op$.addInput(handle);
  op$.addInputList(components);
  op$.setAttrTypeList('Tcomponents', tcomponents);
  op$.setAttrInt('timeout_ms', timeoutMs);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// This operation has no outputs.
Operation queueEnqueueMany<T>(
    Output<String> handle, List<Output<List<T>>> components,
    {Graph graph,
    String operationName,
    List<DataType> tcomponents,
    int timeoutMs: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QueueEnqueueMany',
      operationName ??= graph._scope.uniqueName('QueueEnqueueMany/'));
  op$.addInput(handle);
  op$.addInputList(components);
  op$.setAttrTypeList('Tcomponents', tcomponents);
  op$.setAttrInt('timeout_ms', timeoutMs);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// An op that performs gradient updates of embedding tables.
/// The TensorList argument has the same length and shapes as the return value of
/// TPUEmbeddingReceiveActivations, but contains gradients of the model's loss
/// with respect to the embedding activations. The embedding tables are updated
/// from these gradients via the optimizer specified in the configuration given
/// to tpu.initialize_system.
/// This operation has no outputs.
/// * [gradients]: A TensorList of gradients with which to update embedding tables.
/// attr [tpuEmbeddingConfig]: Serialized TPUEmbeddingConfiguration proto.
Operation tPUEmbeddingSendGradients(List<Output<double>> gradients,
    {Graph graph,
    String operationName,
    int numTables,
    String tpuEmbeddingConfig}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TPUEmbeddingSendGradients',
      operationName ??= graph._scope.uniqueName('TPUEmbeddingSendGradients/'));
  op$.addInputList(gradients);
  op$.setAttrInt('num_tables', numTables);
  op$.setAttrString('tpu_embedding_config', tpuEmbeddingConfig);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output filterDataset<T>(
    Output inputDataset, List<Output<List<T>>> otherArguments,
    {Graph graph,
    String operationName,
    Func predicate,
    List<DataType> targuments,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('FilterDataset',
      operationName ??= graph._scope.uniqueName('FilterDataset/'));
  op$.addInput(inputDataset);
  op$.addInputList(otherArguments);
  op$.setAttrFunc('predicate', predicate);
  op$.setAttrTypeList('Targuments', targuments);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

@Deprecated(
    'DEPRECATED at GraphDef version 16: Use TensorArrayGatherV3 with RangeOp')
Output<T> tensorArrayPack<T>(Output<String> handle, Output<double> flowIn,
    {Graph graph, String operationName, DataType dtype, Shape elementShape}) {
  dtype ??= inferType(handle);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayPack',
      operationName ??= graph._scope.uniqueName('TensorArrayPack/'));
  op$.addInput(handle);
  op$.addInput(flowIn);
  op$.setAttrType('dtype', dtype);
  op$.setAttrShape('element_shape', elementShape);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output optionalNone({Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('OptionalNone',
      operationName ??= graph._scope.uniqueName('OptionalNone/'));
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<T> dynamicPartition<T>(Output<T> data, Output<int> partitions,
    {Graph graph, String operationName, int numPartitions}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DynamicPartition',
      operationName ??= graph._scope.uniqueName('DynamicPartition/'));
  op$.addInput(data);
  op$.addInput(partitions);
  op$.setAttrInt('num_partitions', numPartitions);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<double> boostedTreesPredict(
    Output treeEnsembleHandle, List<Output<int>> bucketizedFeatures,
    {Graph graph,
    String operationName,
    int numBucketizedFeatures,
    int logitsDimension}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BoostedTreesPredict',
      operationName ??= graph._scope.uniqueName('BoostedTreesPredict/'));
  op$.addInput(treeEnsembleHandle);
  op$.addInputList(bucketizedFeatures);
  op$.setAttrInt('num_bucketized_features', numBucketizedFeatures);
  op$.setAttrInt('logits_dimension', logitsDimension);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

Output<String> fakeQueue(Output resource, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'FakeQueue', operationName ??= graph._scope.uniqueName('FakeQueue/'));
  op$.addInput(resource);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<String> tPUCompilationResult({Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TPUCompilationResult',
      operationName ??= graph._scope.uniqueName('TPUCompilationResult/'));
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<bool> isBoostedTreesEnsembleInitialized(Output treeEnsembleHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'IsBoostedTreesEnsembleInitialized',
      operationName ??=
          graph._scope.uniqueName('IsBoostedTreesEnsembleInitialized/'));
  op$.addInput(treeEnsembleHandle);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
}

/// Re-configures the GCS block cache with the configuration values.
/// If the values are the same as already configured values, this op is a no-op. If
/// they are different, the current contents of the block cache is dropped, and a
/// block cache is created fresh.
/// This operation has no outputs.
Operation gcsConfigureBlockCache(
    Output maxCacheSize, Output blockSize, Output maxStaleness,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('GcsConfigureBlockCache',
      operationName ??= graph._scope.uniqueName('GcsConfigureBlockCache/'));
  op$.addInput(maxCacheSize);
  op$.addInput(blockSize);
  op$.addInput(maxStaleness);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<String> encodePng<T>(Output<T> image,
    {Graph graph, String operationName, int compression: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'EncodePng', operationName ??= graph._scope.uniqueName('EncodePng/'));
  op$.addInput(image);
  op$.setAttrInt('compression', compression);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<T> enter<T>(Output<T> data,
    {Graph graph,
    String operationName,
    String frameName,
    bool isConstant: false,
    int parallelIterations: 10}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Enter', operationName ??= graph._scope.uniqueName('Enter/'));
  op$.addInput(data);
  op$.setAttrString('frame_name', frameName);
  op$.setAttrBool('is_constant', isConstant);
  op$.setAttrInt('parallel_iterations', parallelIterations);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<List<T>> for$<T>(Output<int> start, Output<int> limit, Output<int> delta,
    List<Output<List<T>>> input,
    {Graph graph, String operationName, List<DataType> t, Func body}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'For', operationName ??= graph._scope.uniqueName('For/'));
  op$.addInput(start);
  op$.addInput(limit);
  op$.addInput(delta);
  op$.addInputList(input);
  op$.setAttrTypeList('T', t);
  op$.setAttrFunc('body', body);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

Output<String> priorityQueue(
    {Graph graph,
    String operationName,
    List<DataType> componentTypes,
    List<Shape> shapes,
    int capacity: -1,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('PriorityQueue',
      operationName ??= graph._scope.uniqueName('PriorityQueue/'));
  op$.setAttrTypeList('component_types', componentTypes);
  op$.setAttrShapeList('shapes', shapes);
  op$.setAttrInt('capacity', capacity);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<T> lookupTableFind<T>(
    Output<String> tableHandle, Output<T> keys, Output<T> defaultValue,
    {Graph graph, String operationName, DataType tin, DataType tout}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('LookupTableFind',
      operationName ??= graph._scope.uniqueName('LookupTableFind/'));
  op$.addInput(tableHandle);
  op$.addInput(keys);
  op$.addInput(defaultValue);
  op$.setAttrType('Tin', tin);
  op$.setAttrType('Tout', tout);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output paddingFIFOQueueV2(
    {Graph graph,
    String operationName,
    List<DataType> componentTypes,
    List<Shape> shapes,
    int capacity: -1,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('PaddingFIFOQueueV2',
      operationName ??= graph._scope.uniqueName('PaddingFIFOQueueV2/'));
  op$.setAttrTypeList('component_types', componentTypes);
  op$.setAttrShapeList('shapes', shapes);
  op$.setAttrInt('capacity', capacity);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<bool> logicalAnd(Output<bool> x, Output<bool> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'LogicalAnd', operationName ??= graph._scope.uniqueName('LogicalAnd/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
}

Output<T> collectiveBcastSend<T>(Output<T> input,
    {Graph graph,
    String operationName,
    int groupSize,
    int groupKey,
    int instanceKey,
    Shape shape}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CollectiveBcastSend',
      operationName ??= graph._scope.uniqueName('CollectiveBcastSend/'));
  op$.addInput(input);
  op$.setAttrInt('group_size', groupSize);
  op$.setAttrInt('group_key', groupKey);
  op$.setAttrInt('instance_key', instanceKey);
  op$.setAttrShape('shape', shape);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class OrderedMapUnstageNoKeyOutput<T> {
  OrderedMapUnstageNoKeyOutput(this._graph, this.op, this.key, this.values);

  final Graph _graph;

  Operation op;

  final Output<int> key;

  final Output<List<T>> values;

  OrderedMapUnstageNoKey run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return OrderedMapUnstageNoKey<T>(
        (result$[idx$0] as Output<int>), (result$[idx$1] as Output<List<T>>));
  }
}

class OrderedMapUnstageNoKey<T> {
  OrderedMapUnstageNoKey(this.key, this.values);

  final Output<int> key;

  final Output<List<T>> values;
}

OrderedMapUnstageNoKeyOutput orderedMapUnstageNoKey<T>(Output<int> indices,
    {Graph graph,
    String operationName,
    int capacity: 0,
    int memoryLimit: 0,
    List<DataType> dtypes,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('OrderedMapUnstageNoKey',
      operationName ??= graph._scope.uniqueName('OrderedMapUnstageNoKey/'));
  op$.addInput(indices);
  op$.setAttrInt('capacity', capacity);
  op$.setAttrInt('memory_limit', memoryLimit);
  op$.setAttrTypeList('dtypes', dtypes);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return OrderedMapUnstageNoKeyOutput<T>(graph, result$,
      (result$[0] as Output<int>), (result$[1] as Output<List<T>>));
}

Output rFFT2D(Output<double> input, Output<int> fftLength,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RFFT2D', operationName ??= graph._scope.uniqueName('RFFT2D/'));
  op$.addInput(input);
  op$.addInput(fftLength);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<List<T>> queueDequeue<T>(Output<String> handle,
    {Graph graph,
    String operationName,
    List<DataType> componentTypes,
    int timeoutMs: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QueueDequeue',
      operationName ??= graph._scope.uniqueName('QueueDequeue/'));
  op$.addInput(handle);
  op$.setAttrTypeList('component_types', componentTypes);
  op$.setAttrInt('timeout_ms', timeoutMs);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

Output<T> sparseApplyFtrl<T>(
    Output<T> var$,
    Output<T> accum,
    Output<T> linear,
    Output<T> grad,
    Output<T> indices,
    Output<T> lr,
    Output<T> l1,
    Output<T> l2,
    Output<T> lrPower,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseApplyFtrl',
      operationName ??= graph._scope.uniqueName('SparseApplyFtrl/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(linear);
  op$.addInput(grad);
  op$.addInput(indices);
  op$.addInput(lr);
  op$.addInput(l1);
  op$.addInput(l2);
  op$.addInput(lrPower);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation resourceSparseApplyProximalGradientDescent<T>(
    Output var$,
    Output<T> alpha,
    Output<T> l1,
    Output<T> l2,
    Output<T> grad,
    Output<T> indices,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ResourceSparseApplyProximalGradientDescent',
      operationName ??= graph._scope
          .uniqueName('ResourceSparseApplyProximalGradientDescent/'));
  op$.addInput(var$);
  op$.addInput(alpha);
  op$.addInput(l1);
  op$.addInput(l2);
  op$.addInput(grad);
  op$.addInput(indices);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> sparseSegmentSum<T>(
    Output<T> data, Output<T> indices, Output<int> segmentIds,
    {Graph graph, String operationName, DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseSegmentSum',
      operationName ??= graph._scope.uniqueName('SparseSegmentSum/'));
  op$.addInput(data);
  op$.addInput(indices);
  op$.addInput(segmentIds);
  op$.setAttrType('Tidx', tidx);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<String> fIFOQueue(
    {Graph graph,
    String operationName,
    List<DataType> componentTypes,
    List<Shape> shapes,
    int capacity: -1,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'FIFOQueue', operationName ??= graph._scope.uniqueName('FIFOQueue/'));
  op$.setAttrTypeList('component_types', componentTypes);
  op$.setAttrShapeList('shapes', shapes);
  op$.setAttrInt('capacity', capacity);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output unbatchDataset(Output inputDataset,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('UnbatchDataset',
      operationName ??= graph._scope.uniqueName('UnbatchDataset/'));
  op$.addInput(inputDataset);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

/// This operation has no outputs.
Operation controlTrigger({Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ControlTrigger',
      operationName ??= graph._scope.uniqueName('ControlTrigger/'));
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> parallelDynamicStitch<T>(
    List<Output<int>> indices, List<Output<T>> data,
    {Graph graph, String operationName, int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ParallelDynamicStitch',
      operationName ??= graph._scope.uniqueName('ParallelDynamicStitch/'));
  op$.addInputList(indices);
  op$.addInputList(data);
  op$.setAttrInt('N', n);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<List<T>> queueDequeueUpToV2<T>(Output handle, Output<int> n,
    {Graph graph,
    String operationName,
    List<DataType> componentTypes,
    int timeoutMs: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QueueDequeueUpToV2',
      operationName ??= graph._scope.uniqueName('QueueDequeueUpToV2/'));
  op$.addInput(handle);
  op$.addInput(n);
  op$.setAttrTypeList('component_types', componentTypes);
  op$.setAttrInt('timeout_ms', timeoutMs);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

@Deprecated('DEPRECATED at GraphDef version 15: Use IFFT')
Output batchIFFT(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BatchIFFT', operationName ??= graph._scope.uniqueName('BatchIFFT/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

@Deprecated('DEPRECATED at GraphDef version 13: Use MatrixDeterminant instead.')
Output<T> batchMatrixDeterminant<T>(Output<T> input,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchMatrixDeterminant',
      operationName ??= graph._scope.uniqueName('BatchMatrixDeterminant/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> max<T>(Output<T> input, Output<T> reductionIndices,
    {Graph graph,
    String operationName,
    bool keepDims: false,
    DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Max', operationName ??= graph._scope.uniqueName('Max/'));
  op$.addInput(input);
  op$.addInput(reductionIndices);
  op$.setAttrBool('keep_dims', keepDims);
  op$.setAttrType('Tidx', tidx);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> resizeBilinearGrad<T>(Output<double> grads, Output<T> originalImage,
    {Graph graph, String operationName, bool alignCorners: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResizeBilinearGrad',
      operationName ??= graph._scope.uniqueName('ResizeBilinearGrad/'));
  op$.addInput(grads);
  op$.addInput(originalImage);
  op$.setAttrBool('align_corners', alignCorners);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> stackPopV2<T>(Output handle,
    {Graph graph, String operationName, DataType elemType}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'StackPopV2', operationName ??= graph._scope.uniqueName('StackPopV2/'));
  op$.addInput(handle);
  op$.setAttrType('elem_type', elemType);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> accumulateNV2<T>(List<Output<T>> inputs,
    {Graph graph, String operationName, int n, Shape shape}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AccumulateNV2',
      operationName ??= graph._scope.uniqueName('AccumulateNV2/'));
  op$.addInputList(inputs);
  op$.setAttrInt('N', n);
  op$.setAttrShape('shape', shape);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// An op enabling differentiation of TPU Embeddings.
/// This op simply returns its first input, which is assumed to have been sliced
/// from the Tensors returned by TPUEmbeddingDequeueActivations. The presence of this
/// op, and its first argument being a trainable Variable, enables automatic
/// differentiation of graphs containing embeddings via the TPU Embedding Python
/// libraries.
/// * [embeddingVariable]: A trainable variable, enabling optimizers to find this op.
/// * [slicedActivations]: The embedding activations Tensor to return.
/// attr [tableId]: The id of the table in the embedding layer configuration from which
/// these activations were computed.
/// attr [lookupId]: Identifier of the set of embedding indices which produced these
/// activations.
Output<double> tPUEmbeddingActivations(
    Output<double> embeddingVariable, Output<double> slicedActivations,
    {Graph graph, String operationName, int tableId, int lookupId}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TPUEmbeddingActivations',
      operationName ??= graph._scope.uniqueName('TPUEmbeddingActivations/'));
  op$.addInput(embeddingVariable);
  op$.addInput(slicedActivations);
  op$.setAttrInt('table_id', tableId);
  op$.setAttrInt('lookup_id', lookupId);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

/// This operation has no outputs.
Operation resourceScatterSub<T>(
    Output resource, Output<T> indices, Output<T> updates,
    {Graph graph, String operationName, DataType dtype, DataType tindices}) {
  dtype ??= inferType(resource);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceScatterSub',
      operationName ??= graph._scope.uniqueName('ResourceScatterSub/'));
  op$.addInput(resource);
  op$.addInput(indices);
  op$.addInput(updates);
  op$.setAttrType('dtype', dtype);
  op$.setAttrType('Tindices', tindices);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> dynamicStitch<T>(List<Output<int>> indices, List<Output<T>> data,
    {Graph graph, String operationName, int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DynamicStitch',
      operationName ??= graph._scope.uniqueName('DynamicStitch/'));
  op$.addInputList(indices);
  op$.addInputList(data);
  op$.setAttrInt('N', n);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation resourceApplyProximalGradientDescent<T>(
    Output var$, Output<T> alpha, Output<T> l1, Output<T> l2, Output<T> delta,
    {Graph graph, String operationName, bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ResourceApplyProximalGradientDescent',
      operationName ??=
          graph._scope.uniqueName('ResourceApplyProximalGradientDescent/'));
  op$.addInput(var$);
  op$.addInput(alpha);
  op$.addInput(l1);
  op$.addInput(l2);
  op$.addInput(delta);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// Worker heartbeat op.
/// Heartbeats may be sent periodically to indicate the coordinator is still active,
/// to retrieve the current worker status and to expedite shutdown when necessary.
/// This operation has one output: A string tensor containing a serialized WorkerHeartbeatResponse
/// * [request]: A string tensor containing a serialized WorkerHeartbeatRequest
Output<String> workerHeartbeat(Output<String> request,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('WorkerHeartbeat',
      operationName ??= graph._scope.uniqueName('WorkerHeartbeat/'));
  op$.addInput(request);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<bool> notEqual<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'NotEqual', operationName ??= graph._scope.uniqueName('NotEqual/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
}

Output<T> refExit<T>(Output<T> data, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RefExit', operationName ??= graph._scope.uniqueName('RefExit/'));
  op$.addInput(data);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<String> paddingFIFOQueue(
    {Graph graph,
    String operationName,
    List<DataType> componentTypes,
    List<Shape> shapes,
    int capacity: -1,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('PaddingFIFOQueue',
      operationName ??= graph._scope.uniqueName('PaddingFIFOQueue/'));
  op$.setAttrTypeList('component_types', componentTypes);
  op$.setAttrShapeList('shapes', shapes);
  op$.setAttrInt('capacity', capacity);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

/// An Op to sum inputs across replicated TPU instances. Each
/// instance supplies its own input. If group_assignment is empty, the output of
/// each is the sum of all the inputs, otherwise the output of each is the sum of
/// the inputs belonging to the same group.
/// For example, suppose there are 8 TPU instances: `[A, B, C, D, E, F, G, H]`.
/// Passing group_assignment=`[[0,2,4,6],[1,3,5,7]]` sets `A, C, E, G` as group 0,
/// and `B, D, F, H` as group 1. Thus we get the outputs:
/// `[A+C+E+G, B+D+F+H, A+C+E+G, B+D+F+H, A+C+E+G, B+D+F+H, A+C+E+G, B+D+F+H]`.
/// This operation has one output: The sum of all the distributed inputs.
/// * [input]: The local input to the sum.
/// * [groupAssignment]: An int32 tensor with shape
/// [num_groups, num_replicas_per_group]. `group_assignment[i]` represents the
/// replica ids in the ith subgroup.
Output<T> crossReplicaSum<T>(Output<T> input, Output<int> groupAssignment,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CrossReplicaSum',
      operationName ??= graph._scope.uniqueName('CrossReplicaSum/'));
  op$.addInput(input);
  op$.addInput(groupAssignment);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// Copy Host Op.
/// Performs CPU-to-CPU deep-copying of tensor.
/// N.B.: If the all downstream attached debug ops are disabled given the current
/// gRPC gating status, the output will simply forward the input tensor without
/// deep-copying. See the documentation of Debug* ops for more details.
/// Unlike the Copy Op, this op has HostMemory constraint on its input or output.
/// This operation has one output: Output tensor, deep-copied from input.
/// * [input]: Input tensor.
/// attr [tensorName]: The name of the input tensor.
/// attr [debugOpsSpec]: A list of debug op spec (op, url, gated_grpc) for attached debug
/// ops. Each element of the list has the format
/// <debug_op>;<grpc_url>;<gated_grpc>, wherein gated_grpc is boolean represented
/// as 0/1. E.g., "DebugIdentity;grpc://foo:3333;1",
/// "DebugIdentity;file:///tmp/tfdbg_1;0".
Output<T> copyHost<T>(Output<T> input,
    {Graph graph,
    String operationName,
    String tensorName,
    List<String> debugOpsSpec}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'CopyHost', operationName ??= graph._scope.uniqueName('CopyHost/'));
  op$.addInput(input);
  op$.setAttrString('tensor_name', tensorName);
  op$.setAttrStringList('debug_ops_spec', debugOpsSpec);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output fixedLengthRecordDataset(
    Output<String> filenames,
    Output<int> headerBytes,
    Output<int> recordBytes,
    Output<int> footerBytes,
    Output<int> bufferSize,
    {Graph graph,
    String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('FixedLengthRecordDataset',
      operationName ??= graph._scope.uniqueName('FixedLengthRecordDataset/'));
  op$.addInput(filenames);
  op$.addInput(headerBytes);
  op$.addInput(recordBytes);
  op$.addInput(footerBytes);
  op$.addInput(bufferSize);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

class CTCLossOutput {
  CTCLossOutput(this._graph, this.op, this.loss, this.gradient);

  final Graph _graph;

  Operation op;

  final Output<double> loss;

  final Output<double> gradient;

  CTCLoss run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return CTCLoss(
        (result$[idx$0] as Output<double>), (result$[idx$1] as Output<double>));
  }
}

class CTCLoss {
  CTCLoss(this.loss, this.gradient);

  final Output<double> loss;

  final Output<double> gradient;
}

CTCLossOutput cTCLoss(Output<double> inputs, Output<int> labelsIndices,
    Output<int> labelsValues, Output<int> sequenceLength,
    {Graph graph,
    String operationName,
    bool preprocessCollapseRepeated: false,
    bool ctcMergeRepeated: true,
    bool ignoreLongerOutputsThanInputs: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'CTCLoss', operationName ??= graph._scope.uniqueName('CTCLoss/'));
  op$.addInput(inputs);
  op$.addInput(labelsIndices);
  op$.addInput(labelsValues);
  op$.addInput(sequenceLength);
  op$.setAttrBool('preprocess_collapse_repeated', preprocessCollapseRepeated);
  op$.setAttrBool('ctc_merge_repeated', ctcMergeRepeated);
  op$.setAttrBool(
      'ignore_longer_outputs_than_inputs', ignoreLongerOutputsThanInputs);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return CTCLossOutput(graph, result$, (result$[0] as Output<double>),
      (result$[1] as Output<double>));
}

Output<int> stringToHashBucketFast(Output<String> input,
    {Graph graph, String operationName, int numBuckets}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StringToHashBucketFast',
      operationName ??= graph._scope.uniqueName('StringToHashBucketFast/'));
  op$.addInput(input);
  op$.setAttrInt('num_buckets', numBuckets);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

Output<T> unbatchGrad<T>(Output<T> originalInput, Output<int> batchIndex,
    Output<T> grad, Output<int> id,
    {Graph graph, String operationName, String container, String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'UnbatchGrad', operationName ??= graph._scope.uniqueName('UnbatchGrad/'));
  op$.addInput(originalInput);
  op$.addInput(batchIndex);
  op$.addInput(grad);
  op$.addInput(id);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output tensorListFromTensor<T>(Output<T> tensor, Output<T> elementShape,
    {Graph graph,
    String operationName,
    DataType elementDtype,
    DataType shapeType}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorListFromTensor',
      operationName ??= graph._scope.uniqueName('TensorListFromTensor/'));
  op$.addInput(tensor);
  op$.addInput(elementShape);
  op$.setAttrType('element_dtype', elementDtype);
  op$.setAttrType('shape_type', shapeType);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<T> atan<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Atan', operationName ??= graph._scope.uniqueName('Atan/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<int> tensorListLength(Output inputHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorListLength',
      operationName ??= graph._scope.uniqueName('TensorListLength/'));
  op$.addInput(inputHandle);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

class SwitchOutput<T> {
  SwitchOutput(this._graph, this.op, this.outputFalse, this.outputTrue);

  final Graph _graph;

  Operation op;

  final Output<T> outputFalse;

  final Output<T> outputTrue;

  Switch run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return Switch<T>(
        (result$[idx$0] as Output<T>), (result$[idx$1] as Output<T>));
  }
}

class Switch<T> {
  Switch(this.outputFalse, this.outputTrue);

  final Output<T> outputFalse;

  final Output<T> outputTrue;
}

SwitchOutput switch$<T>(Output<T> data, Output<bool> pred,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Switch', operationName ??= graph._scope.uniqueName('Switch/'));
  op$.addInput(data);
  op$.addInput(pred);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return SwitchOutput<T>(
      graph, result$, (result$[0] as Output<T>), (result$[1] as Output<T>));
}

Output batchDatasetV2(
    Output inputDataset, Output<int> batchSize, Output<bool> dropRemainder,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchDatasetV2',
      operationName ??= graph._scope.uniqueName('BatchDatasetV2/'));
  op$.addInput(inputDataset);
  op$.addInput(batchSize);
  op$.addInput(dropRemainder);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<List<T>> batchFunction<T>(
    List<Output<List<T>>> inTensors, List<Output<List<T>>> capturedTensors,
    {Graph graph,
    String operationName,
    Func f,
    int numBatchThreads,
    int maxBatchSize,
    int batchTimeoutMicros,
    int maxEnqueuedBatches: 10,
    List<int> allowedBatchSizes,
    String container,
    String sharedName,
    String batchingQueue,
    List<DataType> tin,
    List<DataType> tcaptured,
    List<DataType> tout}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchFunction',
      operationName ??= graph._scope.uniqueName('BatchFunction/'));
  op$.addInputList(inTensors);
  op$.addInputList(capturedTensors);
  op$.setAttrFunc('f', f);
  op$.setAttrInt('num_batch_threads', numBatchThreads);
  op$.setAttrInt('max_batch_size', maxBatchSize);
  op$.setAttrInt('batch_timeout_micros', batchTimeoutMicros);
  op$.setAttrInt('max_enqueued_batches', maxEnqueuedBatches);
  op$.setAttrIntList('allowed_batch_sizes', allowedBatchSizes);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
  op$.setAttrString('batching_queue', batchingQueue);
  op$.setAttrTypeList('Tin', tin);
  op$.setAttrTypeList('Tcaptured', tcaptured);
  op$.setAttrTypeList('Tout', tout);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

/// This operation has no outputs.
Operation queueEnqueueV2<T>(Output handle, List<Output<List<T>>> components,
    {Graph graph,
    String operationName,
    List<DataType> tcomponents,
    int timeoutMs: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QueueEnqueueV2',
      operationName ??= graph._scope.uniqueName('QueueEnqueueV2/'));
  op$.addInput(handle);
  op$.addInputList(components);
  op$.setAttrTypeList('Tcomponents', tcomponents);
  op$.setAttrInt('timeout_ms', timeoutMs);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<int> nonMaxSuppressionV3(
    Output<double> boxes,
    Output<double> scores,
    Output<int> maxOutputSize,
    Output<double> iouThreshold,
    Output<double> scoreThreshold,
    {Graph graph,
    String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('NonMaxSuppressionV3',
      operationName ??= graph._scope.uniqueName('NonMaxSuppressionV3/'));
  op$.addInput(boxes);
  op$.addInput(scores);
  op$.addInput(maxOutputSize);
  op$.addInput(iouThreshold);
  op$.addInput(scoreThreshold);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

class FractionalMaxPoolOutput<T> {
  FractionalMaxPoolOutput(this._graph, this.op, this.output,
      this.rowPoolingSequence, this.colPoolingSequence);

  final Graph _graph;

  Operation op;

  final Output<T> output;

  final Output<int> rowPoolingSequence;

  final Output<int> colPoolingSequence;

  FractionalMaxPool run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return FractionalMaxPool<T>((result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<int>), (result$[idx$2] as Output<int>));
  }
}

class FractionalMaxPool<T> {
  FractionalMaxPool(
      this.output, this.rowPoolingSequence, this.colPoolingSequence);

  final Output<T> output;

  final Output<int> rowPoolingSequence;

  final Output<int> colPoolingSequence;
}

FractionalMaxPoolOutput fractionalMaxPool<T>(Output<T> value,
    {Graph graph,
    String operationName,
    List<double> poolingRatio,
    bool pseudoRandom: false,
    bool overlapping: false,
    bool deterministic: false,
    int seed: 0,
    int seed2: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('FractionalMaxPool',
      operationName ??= graph._scope.uniqueName('FractionalMaxPool/'));
  op$.addInput(value);
  op$.setAttrFloatList('pooling_ratio', poolingRatio);
  op$.setAttrBool('pseudo_random', pseudoRandom);
  op$.setAttrBool('overlapping', overlapping);
  op$.setAttrBool('deterministic', deterministic);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return FractionalMaxPoolOutput<T>(graph, result$, (result$[0] as Output<T>),
      (result$[1] as Output<int>), (result$[2] as Output<int>));
}

Output<T> reciprocal<T>(Output<T> x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Reciprocal', operationName ??= graph._scope.uniqueName('Reciprocal/'));
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<int> readerNumWorkUnitsCompletedV2(Output readerHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ReaderNumWorkUnitsCompletedV2',
      operationName ??=
          graph._scope.uniqueName('ReaderNumWorkUnitsCompletedV2/'));
  op$.addInput(readerHandle);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

Output<String> shardedFilename(
    Output<String> basename, Output<int> shard, Output<int> numShards,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ShardedFilename',
      operationName ??= graph._scope.uniqueName('ShardedFilename/'));
  op$.addInput(basename);
  op$.addInput(shard);
  op$.addInput(numShards);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

class FixedUnigramCandidateSamplerOutput {
  FixedUnigramCandidateSamplerOutput(
      this._graph,
      this.op,
      this.sampledCandidates,
      this.trueExpectedCount,
      this.sampledExpectedCount);

  final Graph _graph;

  Operation op;

  final Output<int> sampledCandidates;

  final Output<double> trueExpectedCount;

  final Output<double> sampledExpectedCount;

  FixedUnigramCandidateSampler run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return FixedUnigramCandidateSampler((result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<double>), (result$[idx$2] as Output<double>));
  }
}

class FixedUnigramCandidateSampler {
  FixedUnigramCandidateSampler(this.sampledCandidates, this.trueExpectedCount,
      this.sampledExpectedCount);

  final Output<int> sampledCandidates;

  final Output<double> trueExpectedCount;

  final Output<double> sampledExpectedCount;
}

FixedUnigramCandidateSamplerOutput fixedUnigramCandidateSampler(
    Output<int> trueClasses,
    {Graph graph,
    String operationName,
    int numTrue,
    int numSampled,
    bool unique,
    int rangeMax,
    String vocabFile,
    double distortion: 1.0,
    int numReservedIds: 0,
    int numShards: 1,
    int shard: 0,
    List<double> unigrams,
    int seed: 0,
    int seed2: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'FixedUnigramCandidateSampler',
      operationName ??=
          graph._scope.uniqueName('FixedUnigramCandidateSampler/'));
  op$.addInput(trueClasses);
  op$.setAttrInt('num_true', numTrue);
  op$.setAttrInt('num_sampled', numSampled);
  op$.setAttrBool('unique', unique);
  op$.setAttrInt('range_max', rangeMax);
  op$.setAttrString('vocab_file', vocabFile);
  op$.setAttrFloat('distortion', distortion);
  op$.setAttrInt('num_reserved_ids', numReservedIds);
  op$.setAttrInt('num_shards', numShards);
  op$.setAttrInt('shard', shard);
  op$.setAttrFloatList('unigrams', unigrams);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return FixedUnigramCandidateSamplerOutput(
      graph,
      result$,
      (result$[0] as Output<int>),
      (result$[1] as Output<double>),
      (result$[2] as Output<double>));
}

Output<T> matrixInverse<T>(Output<T> input,
    {Graph graph, String operationName, bool adjoint: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MatrixInverse',
      operationName ??= graph._scope.uniqueName('MatrixInverse/'));
  op$.addInput(input);
  op$.setAttrBool('adjoint', adjoint);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

@Deprecated('DEPRECATED at GraphDef version 25: Replaced by RandomPoissonV2')
Output<T> randomPoisson<T>(Output<T> shape, Output<T> rate,
    {Graph graph,
    String operationName,
    int seed: 0,
    int seed2: 0,
    DataType s,
    DataType dtype}) {
  dtype ??= inferType(shape);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('RandomPoisson',
      operationName ??= graph._scope.uniqueName('RandomPoisson/'));
  op$.addInput(shape);
  op$.addInput(rate);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
  op$.setAttrType('S', s);
  op$.setAttrType('dtype', dtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class LearnedUnigramCandidateSamplerOutput {
  LearnedUnigramCandidateSamplerOutput(
      this._graph,
      this.op,
      this.sampledCandidates,
      this.trueExpectedCount,
      this.sampledExpectedCount);

  final Graph _graph;

  Operation op;

  final Output<int> sampledCandidates;

  final Output<double> trueExpectedCount;

  final Output<double> sampledExpectedCount;

  LearnedUnigramCandidateSampler run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return LearnedUnigramCandidateSampler((result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<double>), (result$[idx$2] as Output<double>));
  }
}

class LearnedUnigramCandidateSampler {
  LearnedUnigramCandidateSampler(this.sampledCandidates, this.trueExpectedCount,
      this.sampledExpectedCount);

  final Output<int> sampledCandidates;

  final Output<double> trueExpectedCount;

  final Output<double> sampledExpectedCount;
}

LearnedUnigramCandidateSamplerOutput learnedUnigramCandidateSampler(
    Output<int> trueClasses,
    {Graph graph,
    String operationName,
    int numTrue,
    int numSampled,
    bool unique,
    int rangeMax,
    int seed: 0,
    int seed2: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'LearnedUnigramCandidateSampler',
      operationName ??=
          graph._scope.uniqueName('LearnedUnigramCandidateSampler/'));
  op$.addInput(trueClasses);
  op$.setAttrInt('num_true', numTrue);
  op$.setAttrInt('num_sampled', numSampled);
  op$.setAttrBool('unique', unique);
  op$.setAttrInt('range_max', rangeMax);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return LearnedUnigramCandidateSamplerOutput(
      graph,
      result$,
      (result$[0] as Output<int>),
      (result$[1] as Output<double>),
      (result$[2] as Output<double>));
}

class RequantizeOutput<T> {
  RequantizeOutput(
      this._graph, this.op, this.output, this.outputMin, this.outputMax);

  final Graph _graph;

  Operation op;

  final Output<T> output;

  final Output<double> outputMin;

  final Output<double> outputMax;

  Requantize run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return Requantize<T>((result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<double>), (result$[idx$2] as Output<double>));
  }
}

class Requantize<T> {
  Requantize(this.output, this.outputMin, this.outputMax);

  final Output<T> output;

  final Output<double> outputMin;

  final Output<double> outputMax;
}

RequantizeOutput requantize<T>(
    Output<T> input,
    Output<double> inputMin,
    Output<double> inputMax,
    Output<double> requestedOutputMin,
    Output<double> requestedOutputMax,
    {Graph graph,
    String operationName,
    DataType tinput,
    DataType outType}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Requantize', operationName ??= graph._scope.uniqueName('Requantize/'));
  op$.addInput(input);
  op$.addInput(inputMin);
  op$.addInput(inputMax);
  op$.addInput(requestedOutputMin);
  op$.addInput(requestedOutputMax);
  op$.setAttrType('Tinput', tinput);
  op$.setAttrType('out_type', outType);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return RequantizeOutput<T>(graph, result$, (result$[0] as Output<T>),
      (result$[1] as Output<double>), (result$[2] as Output<double>));
}

@Deprecated('DEPRECATED at GraphDef version 16: Use TensorArraySizeV3')
Output<int> tensorArraySize(Output<String> handle, Output<double> flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArraySize',
      operationName ??= graph._scope.uniqueName('TensorArraySize/'));
  op$.addInput(handle);
  op$.addInput(flowIn);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

/// Load an embedding table shard into TensorNode memories for use with Adagrad.
/// TPU embeddings use dedicated per-optimizer Ops for loading and retrieving
/// trainable variables and optimizer state from TPU memory. This op enables
/// functionality equivalent to AdagradOptimizer.
/// This operation has no outputs.
/// * [parameters]: The shard of the embedding table resident on the host executing this
/// op. For single-TPU models, this is the entire embedding table.
/// * [accumulators]: Shard of the Adagrad accumulators resident on the host executing
/// this op.
/// attr [tpuEmbeddingConfig]: Serialized TPUEmbeddingConfiguration proto.
/// attr [tableId]: The id of the table specified in the embedding_config.
/// attr [numHosts]: The number of CPU hosts in the distributed training job.
/// attr [hostId]: Which CPU host in the distributed training job will execute this op.
Operation tPUEmbeddingLoadAdagradParameters(
    Output<double> parameters, Output<double> accumulators,
    {Graph graph,
    String operationName,
    String tpuEmbeddingConfig,
    int tableId,
    int numHosts,
    int hostId}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'TPUEmbeddingLoadAdagradParameters',
      operationName ??=
          graph._scope.uniqueName('TPUEmbeddingLoadAdagradParameters/'));
  op$.addInput(parameters);
  op$.addInput(accumulators);
  op$.setAttrString('tpu_embedding_config', tpuEmbeddingConfig);
  op$.setAttrInt('table_id', tableId);
  op$.setAttrInt('num_hosts', numHosts);
  op$.setAttrInt('host_id', hostId);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// Retrieve an embedding table shard from TPU memory.
/// TPU embeddings use dedicated per-optimizer Ops for loading and retrieving
/// trainable variables and optimizer state from TPU memory. This op enables
/// functionality equivalent to GradientDescentOptimizer.
/// attr [tpuEmbeddingConfig]: Serialized TPUEmbeddingConfiguration proto.
/// attr [tableId]: The id of the table specified in tpu_embedding_config.
/// attr [numHosts]: The number of CPU hosts in the distributed training job.
/// attr [hostId]: Which CPU host in the distributed training job will execute this op.
Output<double> tPUEmbeddingRetrieveGradientDescentParameters(
    {Graph graph,
    String operationName,
    String tpuEmbeddingConfig,
    int tableId,
    int numHosts,
    int hostId}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'TPUEmbeddingRetrieveGradientDescentParameters',
      operationName ??= graph._scope
          .uniqueName('TPUEmbeddingRetrieveGradientDescentParameters/'));
  op$.setAttrString('tpu_embedding_config', tpuEmbeddingConfig);
  op$.setAttrInt('table_id', tableId);
  op$.setAttrInt('num_hosts', numHosts);
  op$.setAttrInt('host_id', hostId);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

/// This operation has no outputs.
Operation lookupTableInsertV2<T>(
    Output tableHandle, Output<T> keys, Output<T> values,
    {Graph graph, String operationName, DataType tin, DataType tout}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('LookupTableInsertV2',
      operationName ??= graph._scope.uniqueName('LookupTableInsertV2/'));
  op$.addInput(tableHandle);
  op$.addInput(keys);
  op$.addInput(values);
  op$.setAttrType('Tin', tin);
  op$.setAttrType('Tout', tout);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// This operation has no outputs.
Operation barrierInsertMany<T>(
    Output<String> handle, Output<String> keys, Output<T> values,
    {Graph graph, String operationName, int componentIndex}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BarrierInsertMany',
      operationName ??= graph._scope.uniqueName('BarrierInsertMany/'));
  op$.addInput(handle);
  op$.addInput(keys);
  op$.addInput(values);
  op$.setAttrInt('component_index', componentIndex);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> complexAbs<T>(Output<T> x,
    {Graph graph, String operationName, DataType tout: DataType.DT_FLOAT}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ComplexAbs', operationName ??= graph._scope.uniqueName('ComplexAbs/'));
  op$.addInput(x);
  op$.setAttrType('Tout', tout);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output tensorListSetItem<T>(
    Output inputHandle, Output<int> index, Output<T> item,
    {Graph graph, String operationName, DataType elementDtype}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorListSetItem',
      operationName ??= graph._scope.uniqueName('TensorListSetItem/'));
  op$.addInput(inputHandle);
  op$.addInput(index);
  op$.addInput(item);
  op$.setAttrType('element_dtype', elementDtype);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output mapAndBatchDataset<T>(
    Output inputDataset,
    List<Output<List<T>>> otherArguments,
    Output<int> batchSize,
    Output<int> numParallelBatches,
    Output<bool> dropRemainder,
    {Graph graph,
    String operationName,
    Func f,
    List<DataType> targuments,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MapAndBatchDataset',
      operationName ??= graph._scope.uniqueName('MapAndBatchDataset/'));
  op$.addInput(inputDataset);
  op$.addInputList(otherArguments);
  op$.addInput(batchSize);
  op$.addInput(numParallelBatches);
  op$.addInput(dropRemainder);
  op$.setAttrFunc('f', f);
  op$.setAttrTypeList('Targuments', targuments);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<String> stack(
    {Graph graph, String operationName, DataType elemType, String stackName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Stack', operationName ??= graph._scope.uniqueName('Stack/'));
  op$.setAttrType('elem_type', elemType);
  op$.setAttrString('stack_name', stackName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

/// This operation has no outputs.
Operation boostedTreesUpdateEnsemble(
    Output treeEnsembleHandle,
    Output<int> featureIds,
    List<Output<int>> nodeIds,
    List<Output<double>> gains,
    List<Output<int>> thresholds,
    List<Output<double>> leftNodeContribs,
    List<Output<double>> rightNodeContribs,
    Output<int> maxDepth,
    Output<double> learningRate,
    {Graph graph,
    String operationName,
    int pruningMode,
    int numFeatures}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BoostedTreesUpdateEnsemble',
      operationName ??= graph._scope.uniqueName('BoostedTreesUpdateEnsemble/'));
  op$.addInput(treeEnsembleHandle);
  op$.addInput(featureIds);
  op$.addInputList(nodeIds);
  op$.addInputList(gains);
  op$.addInputList(thresholds);
  op$.addInputList(leftNodeContribs);
  op$.addInputList(rightNodeContribs);
  op$.addInput(maxDepth);
  op$.addInput(learningRate);
  op$.setAttrInt('pruning_mode', pruningMode);
  op$.setAttrInt('num_features', numFeatures);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> debugGradientRefIdentity<T>(Output<T> input,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DebugGradientRefIdentity',
      operationName ??= graph._scope.uniqueName('DebugGradientRefIdentity/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output iteratorV2(
    {Graph graph,
    String operationName,
    String sharedName,
    String container,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'IteratorV2', operationName ??= graph._scope.uniqueName('IteratorV2/'));
  op$.setAttrString('shared_name', sharedName);
  op$.setAttrString('container', container);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<T> assignAdd<T>(Output<T> ref, Output<T> value,
    {Graph graph, String operationName, bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'AssignAdd', operationName ??= graph._scope.uniqueName('AssignAdd/'));
  op$.addInput(ref);
  op$.addInput(value);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class CudnnRNNBackpropV2Output<T> {
  CudnnRNNBackpropV2Output(this._graph, this.op, this.inputBackprop,
      this.inputHBackprop, this.inputCBackprop, this.paramsBackprop);

  final Graph _graph;

  Operation op;

  final Output<T> inputBackprop;

  final Output<T> inputHBackprop;

  final Output<T> inputCBackprop;

  final Output<T> paramsBackprop;

  CudnnRNNBackpropV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var idx$3 = runner.fetch(op.name, index: 3);
    var result$ = runner.run();
    return CudnnRNNBackpropV2<T>(
        (result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<T>),
        (result$[idx$2] as Output<T>),
        (result$[idx$3] as Output<T>));
  }
}

class CudnnRNNBackpropV2<T> {
  CudnnRNNBackpropV2(this.inputBackprop, this.inputHBackprop,
      this.inputCBackprop, this.paramsBackprop);

  final Output<T> inputBackprop;

  final Output<T> inputHBackprop;

  final Output<T> inputCBackprop;

  final Output<T> paramsBackprop;
}

CudnnRNNBackpropV2Output cudnnRNNBackpropV2<T>(
    Output<T> input,
    Output<T> inputH,
    Output<T> inputC,
    Output<T> params,
    Output<T> output,
    Output<T> outputH,
    Output<T> outputC,
    Output<T> outputBackprop,
    Output<T> outputHBackprop,
    Output<T> outputCBackprop,
    Output<T> reserveSpace,
    Output hostReserved,
    {Graph graph,
    String operationName,
    String rnnMode: 'lstm',
    String inputMode: 'linear_input',
    String direction: 'unidirectional',
    double dropout: 0.0,
    int seed: 0,
    int seed2: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CudnnRNNBackpropV2',
      operationName ??= graph._scope.uniqueName('CudnnRNNBackpropV2/'));
  op$.addInput(input);
  op$.addInput(inputH);
  op$.addInput(inputC);
  op$.addInput(params);
  op$.addInput(output);
  op$.addInput(outputH);
  op$.addInput(outputC);
  op$.addInput(outputBackprop);
  op$.addInput(outputHBackprop);
  op$.addInput(outputCBackprop);
  op$.addInput(reserveSpace);
  op$.addInput(hostReserved);
  op$.setAttrString('rnn_mode', rnnMode);
  op$.setAttrString('input_mode', inputMode);
  op$.setAttrString('direction', direction);
  op$.setAttrFloat('dropout', dropout);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return CudnnRNNBackpropV2Output<T>(
      graph,
      result$,
      (result$[0] as Output<T>),
      (result$[1] as Output<T>),
      (result$[2] as Output<T>),
      (result$[3] as Output<T>));
}

Output<T> parseTensor<T>(Output<String> serialized,
    {Graph graph, String operationName, DataType outType}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ParseTensor', operationName ??= graph._scope.uniqueName('ParseTensor/'));
  op$.addInput(serialized);
  op$.setAttrType('out_type', outType);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class CTCBeamSearchDecoderOutput {
  CTCBeamSearchDecoderOutput(this._graph, this.op, this.decodedIndices,
      this.decodedValues, this.decodedShape, this.logProbability);

  final Graph _graph;

  Operation op;

  final Output<int> decodedIndices;

  final Output<int> decodedValues;

  final Output<int> decodedShape;

  final Output<double> logProbability;

  CTCBeamSearchDecoder run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var idx$3 = runner.fetch(op.name, index: 3);
    var result$ = runner.run();
    return CTCBeamSearchDecoder(
        (result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<int>),
        (result$[idx$2] as Output<int>),
        (result$[idx$3] as Output<double>));
  }
}

class CTCBeamSearchDecoder {
  CTCBeamSearchDecoder(this.decodedIndices, this.decodedValues,
      this.decodedShape, this.logProbability);

  final Output<int> decodedIndices;

  final Output<int> decodedValues;

  final Output<int> decodedShape;

  final Output<double> logProbability;
}

CTCBeamSearchDecoderOutput cTCBeamSearchDecoder(
    Output<double> inputs, Output<int> sequenceLength,
    {Graph graph,
    String operationName,
    int beamWidth,
    int topPaths,
    bool mergeRepeated: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CTCBeamSearchDecoder',
      operationName ??= graph._scope.uniqueName('CTCBeamSearchDecoder/'));
  op$.addInput(inputs);
  op$.addInput(sequenceLength);
  op$.setAttrInt('beam_width', beamWidth);
  op$.setAttrInt('top_paths', topPaths);
  op$.setAttrBool('merge_repeated', mergeRepeated);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return CTCBeamSearchDecoderOutput(
      graph,
      result$,
      (result$[0] as Output<int>),
      (result$[1] as Output<int>),
      (result$[2] as Output<int>),
      (result$[3] as Output<double>));
}

/// An op that sets up the centralized structures for a distributed TPU
/// system.
/// This operation has one output: A serialized tensorflow.tpu.TopologyProto that describes the TPU
/// topology.
/// attr [embeddingConfig]: Reserved. Do not use.
/// attr [tpuEmbeddingConfig]: Serialized tensorflow.tpu.TPUEmbeddingConfiguration that
/// describes the embedding lookups of the program.
/// attr [isGlobalInit]: Reserved. Do not use.
Output<String> configureDistributedTPU(
    {Graph graph,
    String operationName,
    String embeddingConfig,
    String tpuEmbeddingConfig,
    bool isGlobalInit: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ConfigureDistributedTPU',
      operationName ??= graph._scope.uniqueName('ConfigureDistributedTPU/'));
  op$.setAttrString('embedding_config', embeddingConfig);
  op$.setAttrString('tpu_embedding_config', tpuEmbeddingConfig);
  op$.setAttrBool('is_global_init', isGlobalInit);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<double> boostedTreesMakeStatsSummary(
    Output<int> nodeIds,
    Output<double> gradients,
    Output<double> hessians,
    List<Output<int>> bucketizedFeaturesList,
    {Graph graph,
    String operationName,
    int maxSplits,
    int numBuckets,
    int numFeatures}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BoostedTreesMakeStatsSummary',
      operationName ??=
          graph._scope.uniqueName('BoostedTreesMakeStatsSummary/'));
  op$.addInput(nodeIds);
  op$.addInput(gradients);
  op$.addInput(hessians);
  op$.addInputList(bucketizedFeaturesList);
  op$.setAttrInt('max_splits', maxSplits);
  op$.setAttrInt('num_buckets', numBuckets);
  op$.setAttrInt('num_features', numFeatures);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

Output<T> betainc<T>(Output<T> a, Output<T> b, Output<T> x,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Betainc', operationName ??= graph._scope.uniqueName('Betainc/'));
  op$.addInput(a);
  op$.addInput(b);
  op$.addInput(x);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation resourceScatterMax<T>(
    Output resource, Output<T> indices, Output<T> updates,
    {Graph graph, String operationName, DataType dtype, DataType tindices}) {
  dtype ??= inferType(resource);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceScatterMax',
      operationName ??= graph._scope.uniqueName('ResourceScatterMax/'));
  op$.addInput(resource);
  op$.addInput(indices);
  op$.addInput(updates);
  op$.setAttrType('dtype', dtype);
  op$.setAttrType('Tindices', tindices);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> exit<T>(Output<T> data, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Exit', operationName ??= graph._scope.uniqueName('Exit/'));
  op$.addInput(data);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output repeatDataset(Output inputDataset, Output<int> count,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('RepeatDataset',
      operationName ??= graph._scope.uniqueName('RepeatDataset/'));
  op$.addInput(inputDataset);
  op$.addInput(count);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

/// This operation has no outputs.
Operation boostedTreesCreateEnsemble(Output treeEnsembleHandle,
    Output<int> stampToken, Output<String> treeEnsembleSerialized,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BoostedTreesCreateEnsemble',
      operationName ??= graph._scope.uniqueName('BoostedTreesCreateEnsemble/'));
  op$.addInput(treeEnsembleHandle);
  op$.addInput(stampToken);
  op$.addInput(treeEnsembleSerialized);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> fakeParam<T>(
    {Graph graph,
    String operationName,
    @required DataType dtype,
    Shape shape}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'FakeParam', operationName ??= graph._scope.uniqueName('FakeParam/'));
  op$.setAttrType('dtype', dtype);
  op$.setAttrShape('shape', shape);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> scatterMin<T>(Output<T> ref, Output<T> indices, Output<T> updates,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ScatterMin', operationName ??= graph._scope.uniqueName('ScatterMin/'));
  op$.addInput(ref);
  op$.addInput(indices);
  op$.addInput(updates);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<String> boostedTreesExampleDebugOutputs(
    Output treeEnsembleHandle, List<Output<int>> bucketizedFeatures,
    {Graph graph,
    String operationName,
    int numBucketizedFeatures,
    int logitsDimension}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BoostedTreesExampleDebugOutputs',
      operationName ??=
          graph._scope.uniqueName('BoostedTreesExampleDebugOutputs/'));
  op$.addInput(treeEnsembleHandle);
  op$.addInputList(bucketizedFeatures);
  op$.setAttrInt('num_bucketized_features', numBucketizedFeatures);
  op$.setAttrInt('logits_dimension', logitsDimension);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

/// An op which emits multiple Tensor values from an XLA computation.
/// This operation has no outputs.
/// * [inputs]: A list of tensors that will be inserted into the outfeed queue as an
/// XLA tuple.
Operation outfeedEnqueueTuple<T>(List<Output<List<T>>> inputs,
    {Graph graph, String operationName, List<DataType> dtypes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('OutfeedEnqueueTuple',
      operationName ??= graph._scope.uniqueName('OutfeedEnqueueTuple/'));
  op$.addInputList(inputs);
  op$.setAttrTypeList('dtypes', dtypes);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<double> fakeQuantWithMinMaxVars(
    Output<double> inputs, Output<double> min, Output<double> max,
    {Graph graph,
    String operationName,
    int numBits: 8,
    bool narrowRange: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('FakeQuantWithMinMaxVars',
      operationName ??= graph._scope.uniqueName('FakeQuantWithMinMaxVars/'));
  op$.addInput(inputs);
  op$.addInput(min);
  op$.addInput(max);
  op$.setAttrInt('num_bits', numBits);
  op$.setAttrBool('narrow_range', narrowRange);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

Output<int> barrierIncompleteSize(Output<String> handle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BarrierIncompleteSize',
      operationName ??= graph._scope.uniqueName('BarrierIncompleteSize/'));
  op$.addInput(handle);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

/// An op which emits a single Tensor value from an XLA computation.
/// This operation has no outputs.
/// * [input]: A tensor that will be inserted into the outfeed queue.
Operation outfeedEnqueue<T>(Output<T> input,
    {Graph graph, String operationName, DataType dtype}) {
  dtype ??= inferType(input);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('OutfeedEnqueue',
      operationName ??= graph._scope.uniqueName('OutfeedEnqueue/'));
  op$.addInput(input);
  op$.setAttrType('dtype', dtype);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output mapAndBatchDatasetV2<T>(
    Output inputDataset,
    List<Output<List<T>>> otherArguments,
    Output<int> batchSize,
    Output<int> numParallelCalls,
    Output<bool> dropRemainder,
    {Graph graph,
    String operationName,
    Func f,
    List<DataType> targuments,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MapAndBatchDatasetV2',
      operationName ??= graph._scope.uniqueName('MapAndBatchDatasetV2/'));
  op$.addInput(inputDataset);
  op$.addInputList(otherArguments);
  op$.addInput(batchSize);
  op$.addInput(numParallelCalls);
  op$.addInput(dropRemainder);
  op$.setAttrFunc('f', f);
  op$.setAttrTypeList('Targuments', targuments);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<int> tensorArraySizeV3(Output handle, Output<double> flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArraySizeV3',
      operationName ??= graph._scope.uniqueName('TensorArraySizeV3/'));
  op$.addInput(handle);
  op$.addInput(flowIn);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

Output decodeJpeg(Output<String> contents,
    {Graph graph,
    String operationName,
    int channels: 0,
    int ratio: 1,
    bool fancyUpscaling: true,
    bool tryRecoverTruncated: false,
    double acceptableFraction: 1.0,
    String dctMethod}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'DecodeJpeg', operationName ??= graph._scope.uniqueName('DecodeJpeg/'));
  op$.addInput(contents);
  op$.setAttrInt('channels', channels);
  op$.setAttrInt('ratio', ratio);
  op$.setAttrBool('fancy_upscaling', fancyUpscaling);
  op$.setAttrBool('try_recover_truncated', tryRecoverTruncated);
  op$.setAttrFloat('acceptable_fraction', acceptableFraction);
  op$.setAttrString('dct_method', dctMethod);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

/// An op which feeds multiple Tensor values into the computation as an XLA tuple.
/// This operation has no outputs.
/// * [inputs]: A list of tensors that will be provided using the infeed mechanism.
/// attr [dtypes]: The element types of each element in `inputs`.
/// attr [shapes]: The shapes of each tensor in `inputs`.
/// attr [deviceOrdinal]: The TPU device to use. This should be -1 when the Op
/// is running on a TPU device, and >= 0 when the Op is running on the CPU
/// device.
Operation infeedEnqueueTuple<T>(List<Output<List<T>>> inputs,
    {Graph graph,
    String operationName,
    List<DataType> dtypes,
    List<Shape> shapes,
    int deviceOrdinal: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('InfeedEnqueueTuple',
      operationName ??= graph._scope.uniqueName('InfeedEnqueueTuple/'));
  op$.addInputList(inputs);
  op$.setAttrTypeList('dtypes', dtypes);
  op$.setAttrShapeList('shapes', shapes);
  op$.setAttrInt('device_ordinal', deviceOrdinal);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// Runs replicated computations on a distributed TPU system.
/// This operation has one output: the outputs of 'computation'.
/// * [inputs]: the inputs to 'computation', flattened, in replica-major order.
/// * [broadcastInputs]: additional arguments to broadcast to all replicas. The
/// broadcast inputs are appended to the per-replica inputs when calling
/// computation.
/// * [guaranteedConstants]: arguments which have been guaranteed to not
/// change their values during the session lifetime. These contain tensors marked as
/// constant using the GuaranteeConstOp.
/// attr [computation]: a function containing the computation to run.
/// attr [numReplicas]: the number of replicas of the computation to run.
/// attr [topology]: A serialized tensorflow.tpu.TopologyProto that describes the TPU
/// topology.
/// attr [useTpu]: a bool indicating if this computation will run on TPU or CPU/GPU.
/// Currently, only supports a default placement (computation is placed on GPU
/// if one is available, and on CPU if not).
/// attr [deviceAssignment]: a flattened array with shape
/// [replica] + computation_shape + [mesh_dimension] that maps the coordinates of
/// logical cores in each replica of a computation to physical coordinates in
/// the TPU topology.
/// attr [computationShape]: a [mesh_dimension] array describing the shape of each
/// computation replica in numbers of cores in the TPU mesh.
/// attr [tinputs]: the types of the arguments to 'computation'.
/// attr [tbroadcastInputs]: the types of the additional arguments to broadcast to all
/// replicas.
/// attr [tguaranteedConstants]: the types of the arguments to 'guaranteed_constants'.
/// attr [outputTypes]: the types of the outputs of 'computation'.
Output<List<T>> tPUReplicate<T>(
    List<Output<List<T>>> inputs,
    List<Output<List<T>>> broadcastInputs,
    List<Output> variables,
    List<Output<List<T>>> guaranteedConstants,
    {Graph graph,
    String operationName,
    Func computation,
    int numReplicas,
    String topology,
    bool useTpu: true,
    List<int> deviceAssignment,
    List<String> hostComputeCore,
    List<int> computationShape,
    List<DataType> tinputs,
    List<DataType> tbroadcastInputs,
    int numVariables,
    List<DataType> tguaranteedConstants,
    List<DataType> outputTypes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TPUReplicate',
      operationName ??= graph._scope.uniqueName('TPUReplicate/'));
  op$.addInputList(inputs);
  op$.addInputList(broadcastInputs);
  op$.addInputList(variables);
  op$.addInputList(guaranteedConstants);
  op$.setAttrFunc('computation', computation);
  op$.setAttrInt('num_replicas', numReplicas);
  op$.setAttrString('topology', topology);
  op$.setAttrBool('use_tpu', useTpu);
  op$.setAttrIntList('device_assignment', deviceAssignment);
  op$.setAttrStringList('host_compute_core', hostComputeCore);
  op$.setAttrIntList('computation_shape', computationShape);
  op$.setAttrTypeList('Tinputs', tinputs);
  op$.setAttrTypeList('Tbroadcast_inputs', tbroadcastInputs);
  op$.setAttrInt('NumVariables', numVariables);
  op$.setAttrTypeList('Tguaranteed_constants', tguaranteedConstants);
  op$.setAttrTypeList('output_types', outputTypes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

/// An op that feeds a batch of embedding indices and weights to the TPU.
/// Embedding lookups are equivalent to sparse-dense matrix multiplications: the
/// sparse matrix contains nonzeros in column j in order to retrieve row j from the
/// embedding table.
/// The three Tensor list arguments (sample_indices, embedding_indices, and
/// aggregation_weights) represent these sparse matrices in COO format. The Tensor
/// lists each have one entry for each embedding table specified in the model.
/// For the kth embedding table, the three Tensors at position k in the list
/// specify a COO-format sparse matrix. For the kth table, the row indices,
/// column indices, and nonzero values of the COO sparse matrix are specified by
/// sample_indices[k], embedding_indices[k], and aggregation_weights[k],
/// respectively. Entries must be sorted by row index, then by column index.
/// There should be at most one TPUEmbeddingEnqueueSparseBatch op in a signle
/// training step per TPU shard.
/// This operation has no outputs.
/// * [sampleIndices]: A list of rank 1 Tensors specifying row indices of the COO
/// sparse matrix representing the embedding lookups for each table.
/// * [embeddingIndices]: A list of rank 1 Tensors  specifying column indices of the
/// COO sparse matrix representing the embedding lookups for each table.
/// * [aggregationWeights]: A list of rank 1 Tensors specifying the nonzero values
/// of the COO sparse matrix representing the embedding lookups for each table.
/// attr [deviceOrdinal]: The TPU device to use. This should be -1 when the Op
/// is running on a TPU device, and >= 0 when the Op is running on the CPU
/// device.
Operation tPUEmbeddingEnqueueSparseBatch(List<Output<int>> sampleIndices,
    List<Output<int>> embeddingIndices, List<Output<double>> aggregationWeights,
    {Graph graph, String operationName, int numTables, int deviceOrdinal: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'TPUEmbeddingEnqueueSparseBatch',
      operationName ??=
          graph._scope.uniqueName('TPUEmbeddingEnqueueSparseBatch/'));
  op$.addInputList(sampleIndices);
  op$.addInputList(embeddingIndices);
  op$.addInputList(aggregationWeights);
  op$.setAttrInt('num_tables', numTables);
  op$.setAttrInt('device_ordinal', deviceOrdinal);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<int> readerNumWorkUnitsCompleted(Output<String> readerHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ReaderNumWorkUnitsCompleted',
      operationName ??=
          graph._scope.uniqueName('ReaderNumWorkUnitsCompleted/'));
  op$.addInput(readerHandle);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

class DecodeWavOutput {
  DecodeWavOutput(this._graph, this.op, this.audio, this.sampleRate);

  final Graph _graph;

  Operation op;

  final Output<double> audio;

  final Output<int> sampleRate;

  DecodeWav run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return DecodeWav(
        (result$[idx$0] as Output<double>), (result$[idx$1] as Output<int>));
  }
}

class DecodeWav {
  DecodeWav(this.audio, this.sampleRate);

  final Output<double> audio;

  final Output<int> sampleRate;
}

DecodeWavOutput decodeWav(Output<String> contents,
    {Graph graph,
    String operationName,
    int desiredChannels: -1,
    int desiredSamples: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'DecodeWav', operationName ??= graph._scope.uniqueName('DecodeWav/'));
  op$.addInput(contents);
  op$.setAttrInt('desired_channels', desiredChannels);
  op$.setAttrInt('desired_samples', desiredSamples);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return DecodeWavOutput(graph, result$, (result$[0] as Output<double>),
      (result$[1] as Output<int>));
}

/// Debug Identity Op.
/// Provides an identity mapping of the non-Ref type input tensor for debugging.
/// This operation has one output: Output tensor that equals the input tensor.
/// * [input]: Input tensor, non-Reference type.
/// attr [tensorName]: Name of the input tensor.
/// attr [debugUrls]: List of URLs to debug targets, e.g.,
/// file:///foo/tfdbg_dump, grpc:://localhost:11011
/// attr [gatedGrpc]: Whether this op will be gated. If any of the debug_urls of this
/// debug node is of the grpc:// scheme, when the value of this attribute is set
/// to True, the data will not actually be sent via the grpc stream unless this
/// debug op has been enabled at the debug_url. If all of the debug_urls of this
/// debug node are of the grpc:// scheme and the debug op is enabled at none of
/// them, the output will be an empty Tensor.
Output<T> debugIdentity<T>(Output<T> input,
    {Graph graph,
    String operationName,
    String deviceName,
    String tensorName,
    List<String> debugUrls,
    bool gatedGrpc: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DebugIdentity',
      operationName ??= graph._scope.uniqueName('DebugIdentity/'));
  op$.addInput(input);
  op$.setAttrString('device_name', deviceName);
  op$.setAttrString('tensor_name', tensorName);
  op$.setAttrStringList('debug_urls', debugUrls);
  op$.setAttrBool('gated_grpc', gatedGrpc);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> sparseApplyAdagrad<T>(Output<T> var$, Output<T> accum, Output<T> lr,
    Output<T> grad, Output<T> indices,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false,
    bool updateSlots: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseApplyAdagrad',
      operationName ??= graph._scope.uniqueName('SparseApplyAdagrad/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(lr);
  op$.addInput(grad);
  op$.addInput(indices);
  op$.setAttrType('Tindices', tindices);
  op$.setAttrBool('use_locking', useLocking);
  op$.setAttrBool('update_slots', updateSlots);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<int> queueSize(Output<String> handle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'QueueSize', operationName ??= graph._scope.uniqueName('QueueSize/'));
  op$.addInput(handle);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

class AllCandidateSamplerOutput {
  AllCandidateSamplerOutput(this._graph, this.op, this.sampledCandidates,
      this.trueExpectedCount, this.sampledExpectedCount);

  final Graph _graph;

  Operation op;

  final Output<int> sampledCandidates;

  final Output<double> trueExpectedCount;

  final Output<double> sampledExpectedCount;

  AllCandidateSampler run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return AllCandidateSampler((result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<double>), (result$[idx$2] as Output<double>));
  }
}

class AllCandidateSampler {
  AllCandidateSampler(this.sampledCandidates, this.trueExpectedCount,
      this.sampledExpectedCount);

  final Output<int> sampledCandidates;

  final Output<double> trueExpectedCount;

  final Output<double> sampledExpectedCount;
}

AllCandidateSamplerOutput allCandidateSampler(Output<int> trueClasses,
    {Graph graph,
    String operationName,
    int numTrue,
    int numSampled,
    bool unique,
    int seed: 0,
    int seed2: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AllCandidateSampler',
      operationName ??= graph._scope.uniqueName('AllCandidateSampler/'));
  op$.addInput(trueClasses);
  op$.setAttrInt('num_true', numTrue);
  op$.setAttrInt('num_sampled', numSampled);
  op$.setAttrBool('unique', unique);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return AllCandidateSamplerOutput(graph, result$, (result$[0] as Output<int>),
      (result$[1] as Output<double>), (result$[2] as Output<double>));
}

Output<T> nextIteration<T>(Output<T> data,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('NextIteration',
      operationName ??= graph._scope.uniqueName('NextIteration/'));
  op$.addInput(data);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// Copy Op.
/// Performs CPU-to-CPU or GPU-to-GPU deep-copying of tensor, depending on the
/// device on which the tensor is allocated.
/// N.B.: If the all downstream attached debug ops are disabled given the current
/// gRPC gating status, the output will simply forward the input tensor without
/// deep-copying. See the documentation of Debug* ops for more details.
/// Unlike the CopyHost Op, this op does not have HostMemory constraint on its
/// input or output.
/// This operation has one output: Output tensor, deep-copied from input.
/// * [input]: Input tensor.
/// attr [tensorName]: The name of the input tensor.
/// attr [debugOpsSpec]: A list of debug op spec (op, url, gated_grpc) for attached debug
/// ops. Each element of the list has the format
/// <debug_op>;<grpc_url>;<gated_grpc>, wherein gated_grpc is boolean represented
/// as 0/1. E.g., "DebugIdentity;grpc://foo:3333;1",
/// "DebugIdentity;file:///tmp/tfdbg_1;0".
Output<T> copy<T>(Output<T> input,
    {Graph graph,
    String operationName,
    String tensorName,
    List<String> debugOpsSpec}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Copy', operationName ??= graph._scope.uniqueName('Copy/'));
  op$.addInput(input);
  op$.setAttrString('tensor_name', tensorName);
  op$.setAttrStringList('debug_ops_spec', debugOpsSpec);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> applyRMSProp<T>(
    Output<T> var$,
    Output<T> ms,
    Output<T> mom,
    Output<T> lr,
    Output<T> rho,
    Output<T> momentum,
    Output<T> epsilon,
    Output<T> grad,
    {Graph graph,
    String operationName,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ApplyRMSProp',
      operationName ??= graph._scope.uniqueName('ApplyRMSProp/'));
  op$.addInput(var$);
  op$.addInput(ms);
  op$.addInput(mom);
  op$.addInput(lr);
  op$.addInput(rho);
  op$.addInput(momentum);
  op$.addInput(epsilon);
  op$.addInput(grad);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> stackPushV2<T>(Output handle, Output<T> elem,
    {Graph graph, String operationName, bool swapMemory: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'StackPushV2', operationName ??= graph._scope.uniqueName('StackPushV2/'));
  op$.addInput(handle);
  op$.addInput(elem);
  op$.setAttrBool('swap_memory', swapMemory);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output prefetchDataset(Output inputDataset, Output<int> bufferSize,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('PrefetchDataset',
      operationName ??= graph._scope.uniqueName('PrefetchDataset/'));
  op$.addInput(inputDataset);
  op$.addInput(bufferSize);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<T> applyFtrlV2<T>(
    Output<T> var$,
    Output<T> accum,
    Output<T> linear,
    Output<T> grad,
    Output<T> lr,
    Output<T> l1,
    Output<T> l2,
    Output<T> l2Shrinkage,
    Output<T> lrPower,
    {Graph graph,
    String operationName,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ApplyFtrlV2', operationName ??= graph._scope.uniqueName('ApplyFtrlV2/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(linear);
  op$.addInput(grad);
  op$.addInput(lr);
  op$.addInput(l1);
  op$.addInput(l2);
  op$.addInput(l2Shrinkage);
  op$.addInput(lrPower);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<int> where<T>(Output<T> input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Where', operationName ??= graph._scope.uniqueName('Where/'));
  op$.addInput(input);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

Output<double> mfcc(Output<double> spectrogram, Output<int> sampleRate,
    {Graph graph,
    String operationName,
    double upperFrequencyLimit: 4000.0,
    double lowerFrequencyLimit: 20.0,
    int filterbankChannelCount: 40,
    int dctCoefficientCount: 13}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Mfcc', operationName ??= graph._scope.uniqueName('Mfcc/'));
  op$.addInput(spectrogram);
  op$.addInput(sampleRate);
  op$.setAttrFloat('upper_frequency_limit', upperFrequencyLimit);
  op$.setAttrFloat('lower_frequency_limit', lowerFrequencyLimit);
  op$.setAttrInt('filterbank_channel_count', filterbankChannelCount);
  op$.setAttrInt('dct_coefficient_count', dctCoefficientCount);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

/// An op that shuts down a running distributed TPU system. The Op returns
/// an error if no system is running.
/// This operation has no outputs.
Operation shutdownDistributedTPU({Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ShutdownDistributedTPU',
      operationName ??= graph._scope.uniqueName('ShutdownDistributedTPU/'));
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> conjugateTranspose<T>(Output<T> x, Output<T> perm,
    {Graph graph, String operationName, DataType tperm: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ConjugateTranspose',
      operationName ??= graph._scope.uniqueName('ConjugateTranspose/'));
  op$.addInput(x);
  op$.addInput(perm);
  op$.setAttrType('Tperm', tperm);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<List<T>> mapPeek<T>(Output<int> key, Output<int> indices,
    {Graph graph,
    String operationName,
    int capacity: 0,
    int memoryLimit: 0,
    List<DataType> dtypes,
    String container,
    String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'MapPeek', operationName ??= graph._scope.uniqueName('MapPeek/'));
  op$.addInput(key);
  op$.addInput(indices);
  op$.setAttrInt('capacity', capacity);
  op$.setAttrInt('memory_limit', memoryLimit);
  op$.setAttrTypeList('dtypes', dtypes);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

Output<T> destroyTemporaryVariable<T>(Output<T> ref,
    {Graph graph, String operationName, String varName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DestroyTemporaryVariable',
      operationName ??= graph._scope.uniqueName('DestroyTemporaryVariable/'));
  op$.addInput(ref);
  op$.setAttrString('var_name', varName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class TakeManySparseFromTensorsMapOutput<T> {
  TakeManySparseFromTensorsMapOutput(this._graph, this.op, this.sparseIndices,
      this.sparseValues, this.sparseShape);

  final Graph _graph;

  Operation op;

  final Output<int> sparseIndices;

  final Output<T> sparseValues;

  final Output<int> sparseShape;

  TakeManySparseFromTensorsMap run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return TakeManySparseFromTensorsMap<T>((result$[idx$0] as Output<int>),
        (result$[idx$1] as Output<T>), (result$[idx$2] as Output<int>));
  }
}

class TakeManySparseFromTensorsMap<T> {
  TakeManySparseFromTensorsMap(
      this.sparseIndices, this.sparseValues, this.sparseShape);

  final Output<int> sparseIndices;

  final Output<T> sparseValues;

  final Output<int> sparseShape;
}

TakeManySparseFromTensorsMapOutput takeManySparseFromTensorsMap<T>(
    Output<int> sparseHandles,
    {Graph graph,
    String operationName,
    DataType dtype,
    String container,
    String sharedName}) {
  dtype ??= inferType(sparseHandles);
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'TakeManySparseFromTensorsMap',
      operationName ??=
          graph._scope.uniqueName('TakeManySparseFromTensorsMap/'));
  op$.addInput(sparseHandles);
  op$.setAttrType('dtype', dtype);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return TakeManySparseFromTensorsMapOutput<T>(
      graph,
      result$,
      (result$[0] as Output<int>),
      (result$[1] as Output<T>),
      (result$[2] as Output<int>));
}

/// This operation has no outputs.
Operation resourceApplyAdadelta<T>(
    Output var$,
    Output accum,
    Output accumUpdate,
    Output<T> lr,
    Output<T> rho,
    Output<T> epsilon,
    Output<T> grad,
    {Graph graph,
    String operationName,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceApplyAdadelta',
      operationName ??= graph._scope.uniqueName('ResourceApplyAdadelta/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(accumUpdate);
  op$.addInput(lr);
  op$.addInput(rho);
  op$.addInput(epsilon);
  op$.addInput(grad);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// Operator that connects the output of an N-way replicated TPU computation to N separate outputs.
Output<T> tPUReplicatedOutput<T>(Output<T> input,
    {Graph graph, String operationName, int numReplicas}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TPUReplicatedOutput',
      operationName ??= graph._scope.uniqueName('TPUReplicatedOutput/'));
  op$.addInput(input);
  op$.setAttrInt('num_replicas', numReplicas);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

/// This operation has no outputs.
Operation resourceApplyMomentum<T>(
    Output var$, Output accum, Output<T> lr, Output<T> grad, Output<T> momentum,
    {Graph graph,
    String operationName,
    bool useLocking: false,
    bool useNesterov: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceApplyMomentum',
      operationName ??= graph._scope.uniqueName('ResourceApplyMomentum/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(lr);
  op$.addInput(grad);
  op$.addInput(momentum);
  op$.setAttrBool('use_locking', useLocking);
  op$.setAttrBool('use_nesterov', useNesterov);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<T> applyAdagradDA<T>(
    Output<T> var$,
    Output<T> gradientAccumulator,
    Output<T> gradientSquaredAccumulator,
    Output<T> grad,
    Output<T> lr,
    Output<T> l1,
    Output<T> l2,
    Output<int> globalStep,
    {Graph graph,
    String operationName,
    bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ApplyAdagradDA',
      operationName ??= graph._scope.uniqueName('ApplyAdagradDA/'));
  op$.addInput(var$);
  op$.addInput(gradientAccumulator);
  op$.addInput(gradientSquaredAccumulator);
  op$.addInput(grad);
  op$.addInput(lr);
  op$.addInput(l1);
  op$.addInput(l2);
  op$.addInput(globalStep);
  op$.setAttrBool('use_locking', useLocking);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class RefSwitchOutput<T> {
  RefSwitchOutput(this._graph, this.op, this.outputFalse, this.outputTrue);

  final Graph _graph;

  Operation op;

  final Output<T> outputFalse;

  final Output<T> outputTrue;

  RefSwitch run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return RefSwitch<T>(
        (result$[idx$0] as Output<T>), (result$[idx$1] as Output<T>));
  }
}

class RefSwitch<T> {
  RefSwitch(this.outputFalse, this.outputTrue);

  final Output<T> outputFalse;

  final Output<T> outputTrue;
}

RefSwitchOutput refSwitch<T>(Output<T> data, Output<bool> pred,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RefSwitch', operationName ??= graph._scope.uniqueName('RefSwitch/'));
  op$.addInput(data);
  op$.addInput(pred);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return RefSwitchOutput<T>(
      graph, result$, (result$[0] as Output<T>), (result$[1] as Output<T>));
}

class TensorArrayGradV3Output {
  TensorArrayGradV3Output(this._graph, this.op, this.gradHandle, this.flowOut);

  final Graph _graph;

  Operation op;

  final Output gradHandle;

  final Output<double> flowOut;

  TensorArrayGradV3 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return TensorArrayGradV3(
        (result$[idx$0] as Output), (result$[idx$1] as Output<double>));
  }
}

class TensorArrayGradV3 {
  TensorArrayGradV3(this.gradHandle, this.flowOut);

  final Output gradHandle;

  final Output<double> flowOut;
}

TensorArrayGradV3Output tensorArrayGradV3(Output handle, Output<double> flowIn,
    {Graph graph, String operationName, String source}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayGradV3',
      operationName ??= graph._scope.uniqueName('TensorArrayGradV3/'));
  op$.addInput(handle);
  op$.addInput(flowIn);
  op$.setAttrString('source', source);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return TensorArrayGradV3Output(
      graph, result$, (result$[0] as Output), (result$[1] as Output<double>));
}

Output<T> argMax<T>(Output<T> input, Output<T> dimension,
    {Graph graph,
    String operationName,
    DataType tidx: DataType.DT_INT32,
    DataType outputType: DataType.DT_INT64}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ArgMax', operationName ??= graph._scope.uniqueName('ArgMax/'));
  op$.addInput(input);
  op$.addInput(dimension);
  op$.setAttrType('Tidx', tidx);
  op$.setAttrType('output_type', outputType);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> reshape<T>(Output<T> tensor, Output<T> shape,
    {Graph graph, String operationName, DataType tshape: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Reshape', operationName ??= graph._scope.uniqueName('Reshape/'));
  op$.addInput(tensor);
  op$.addInput(shape);
  op$.setAttrType('Tshape', tshape);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> maxPoolV2<T>(Output<T> input, Output<int> ksize, Output<int> strides,
    {Graph graph,
    String operationName,
    String padding,
    String dataFormat: 'NHWC'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'MaxPoolV2', operationName ??= graph._scope.uniqueName('MaxPoolV2/'));
  op$.addInput(input);
  op$.addInput(ksize);
  op$.addInput(strides);
  op$.setAttrString('padding', padding);
  op$.setAttrString('data_format', dataFormat);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> realDiv<T>(Output<T> x, Output<T> y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RealDiv', operationName ??= graph._scope.uniqueName('RealDiv/'));
  op$.addInput(x);
  op$.addInput(y);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> resourceCountUpTo<T>(Output resource,
    {Graph graph, String operationName, int limit}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceCountUpTo',
      operationName ??= graph._scope.uniqueName('ResourceCountUpTo/'));
  op$.addInput(resource);
  op$.setAttrInt('limit', limit);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class ReaderReadV2Output {
  ReaderReadV2Output(this._graph, this.op, this.key, this.value);

  final Graph _graph;

  Operation op;

  final Output<String> key;

  final Output<String> value;

  ReaderReadV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var result$ = runner.run();
    return ReaderReadV2(
        (result$[idx$0] as Output<String>), (result$[idx$1] as Output<String>));
  }
}

class ReaderReadV2 {
  ReaderReadV2(this.key, this.value);

  final Output<String> key;

  final Output<String> value;
}

ReaderReadV2Output readerReadV2(Output readerHandle, Output queueHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ReaderReadV2',
      operationName ??= graph._scope.uniqueName('ReaderReadV2/'));
  op$.addInput(readerHandle);
  op$.addInput(queueHandle);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return ReaderReadV2Output(graph, result$, (result$[0] as Output<String>),
      (result$[1] as Output<String>));
}

Output<T> spaceToBatchND<T>(
    Output<T> input, Output<T> blockShape, Output<T> paddings,
    {Graph graph,
    String operationName,
    DataType tblockShape: DataType.DT_INT32,
    DataType tpaddings: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SpaceToBatchND',
      operationName ??= graph._scope.uniqueName('SpaceToBatchND/'));
  op$.addInput(input);
  op$.addInput(blockShape);
  op$.addInput(paddings);
  op$.setAttrType('Tblock_shape', tblockShape);
  op$.setAttrType('Tpaddings', tpaddings);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> prod<T>(Output<T> input, Output<T> reductionIndices,
    {Graph graph,
    String operationName,
    bool keepDims: false,
    DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Prod', operationName ??= graph._scope.uniqueName('Prod/'));
  op$.addInput(input);
  op$.addInput(reductionIndices);
  op$.setAttrBool('keep_dims', keepDims);
  op$.setAttrType('Tidx', tidx);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

class SampleDistortedBoundingBoxV2Output<T> {
  SampleDistortedBoundingBoxV2Output(
      this._graph, this.op, this.begin, this.size, this.bboxes);

  final Graph _graph;

  Operation op;

  final Output<T> begin;

  final Output<T> size;

  final Output<double> bboxes;

  SampleDistortedBoundingBoxV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    feed?.forEach(runner.feed);
    var idx$0 = runner.fetch(op.name, index: 0);
    var idx$1 = runner.fetch(op.name, index: 1);
    var idx$2 = runner.fetch(op.name, index: 2);
    var result$ = runner.run();
    return SampleDistortedBoundingBoxV2<T>((result$[idx$0] as Output<T>),
        (result$[idx$1] as Output<T>), (result$[idx$2] as Output<double>));
  }
}

class SampleDistortedBoundingBoxV2<T> {
  SampleDistortedBoundingBoxV2(this.begin, this.size, this.bboxes);

  final Output<T> begin;

  final Output<T> size;

  final Output<double> bboxes;
}

SampleDistortedBoundingBoxV2Output sampleDistortedBoundingBoxV2<T>(
    Output<T> imageSize,
    Output<double> boundingBoxes,
    Output<double> minObjectCovered,
    {Graph graph,
    String operationName,
    int seed: 0,
    int seed2: 0,
    List<double> aspectRatioRange,
    List<double> areaRange,
    int maxAttempts: 100,
    bool useImageIfNoBoundingBoxes: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SampleDistortedBoundingBoxV2',
      operationName ??=
          graph._scope.uniqueName('SampleDistortedBoundingBoxV2/'));
  op$.addInput(imageSize);
  op$.addInput(boundingBoxes);
  op$.addInput(minObjectCovered);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
  op$.setAttrFloatList('aspect_ratio_range', aspectRatioRange);
  op$.setAttrFloatList('area_range', areaRange);
  op$.setAttrInt('max_attempts', maxAttempts);
  op$.setAttrBool('use_image_if_no_bounding_boxes', useImageIfNoBoundingBoxes);
// ignore: unnecessary_cast
  var result$ = op$.finish();
  return SampleDistortedBoundingBoxV2Output<T>(
      graph,
      result$,
      (result$[0] as Output<T>),
      (result$[1] as Output<T>),
      (result$[2] as Output<double>));
}

/// This operation has no outputs.
Operation accumulatorApplyGradient<T>(
    Output<String> handle, Output<int> localStep, Output<T> gradient,
    {Graph graph, String operationName, DataType dtype}) {
  dtype ??= inferType(handle);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AccumulatorApplyGradient',
      operationName ??= graph._scope.uniqueName('AccumulatorApplyGradient/'));
  op$.addInput(handle);
  op$.addInput(localStep);
  op$.addInput(gradient);
  op$.setAttrType('dtype', dtype);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<bool> approximateEqual<T>(Output<T> x, Output<T> y,
    {Graph graph,
    String operationName,
    double tolerance: 0.000009999999747378752}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ApproximateEqual',
      operationName ??= graph._scope.uniqueName('ApproximateEqual/'));
  op$.addInput(x);
  op$.addInput(y);
  op$.setAttrFloat('tolerance', tolerance);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<bool>();
}

/// This operation has no outputs.
Operation writeGraphSummary(
    Output writer, Output<int> step, Output<String> tensor,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('WriteGraphSummary',
      operationName ??= graph._scope.uniqueName('WriteGraphSummary/'));
  op$.addInput(writer);
  op$.addInput(step);
  op$.addInput(tensor);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

/// This operation has no outputs.
Operation noOp({Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'NoOp', operationName ??= graph._scope.uniqueName('NoOp/'));
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output<double> loadAndRemapMatrix(
    Output<String> ckptPath,
    Output<String> oldTensorName,
    Output<int> rowRemapping,
    Output<int> colRemapping,
    Output<double> initializingValues,
    {Graph graph,
    String operationName,
    int numRows,
    int numCols,
    int maxRowsInMemory: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('LoadAndRemapMatrix',
      operationName ??= graph._scope.uniqueName('LoadAndRemapMatrix/'));
  op$.addInput(ckptPath);
  op$.addInput(oldTensorName);
  op$.addInput(rowRemapping);
  op$.addInput(colRemapping);
  op$.addInput(initializingValues);
  op$.setAttrInt('num_rows', numRows);
  op$.setAttrInt('num_cols', numCols);
  op$.setAttrInt('max_rows_in_memory', maxRowsInMemory);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

Output boostedTreesEnsembleResourceHandleOp(
    {Graph graph, String operationName, String container, String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BoostedTreesEnsembleResourceHandleOp',
      operationName ??=
          graph._scope.uniqueName('BoostedTreesEnsembleResourceHandleOp/'));
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

@Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayWriteV3')
Output<double> tensorArrayWrite<T>(Output<String> handle, Output<int> index,
    Output<T> value, Output<double> flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayWrite',
      operationName ??= graph._scope.uniqueName('TensorArrayWrite/'));
  op$.addInput(handle);
  op$.addInput(index);
  op$.addInput(value);
  op$.addInput(flowIn);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<double>();
}

/// Retrieve multiple values that will be emitted by the computation as an XLA
/// tuple.  This operations will block indefinitely until data is available.
/// Output `i` corresponds to XLA tuple element `i`.
/// This operation has one output: A list of tensors that will be read from the outfeed.
/// attr [dtypes]: The element types of each element in `outputs`.
/// attr [shapes]: The shapes of each tensor in `outputs`.
/// attr [deviceOrdinal]: The TPU device to use. This should be -1 when the Op
/// is running on a TPU device, and >= 0 when the Op is running on the CPU
/// device.
Output<List<T>> outfeedDequeueTuple<T>(
    {Graph graph,
    String operationName,
    List<DataType> dtypes,
    List<Shape> shapes,
    int deviceOrdinal: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('OutfeedDequeueTuple',
      operationName ??= graph._scope.uniqueName('OutfeedDequeueTuple/'));
  op$.setAttrTypeList('dtypes', dtypes);
  op$.setAttrShapeList('shapes', shapes);
  op$.setAttrInt('device_ordinal', deviceOrdinal);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<List<T>>();
}

/// This operation has no outputs.
Operation lookupTableImportV2<T>(
    Output tableHandle, Output<T> keys, Output<T> values,
    {Graph graph, String operationName, DataType tin, DataType tout}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('LookupTableImportV2',
      operationName ??= graph._scope.uniqueName('LookupTableImportV2/'));
  op$.addInput(tableHandle);
  op$.addInput(keys);
  op$.addInput(values);
  op$.setAttrType('Tin', tin);
  op$.setAttrType('Tout', tout);
// ignore: unnecessary_cast
  return (op$.finish() as Operation);
}

Output prependFromQueueAndPaddedBatchDataset<T>(
    Output inputDataset,
    Output<int> batchSize,
    List<Output<int>> paddedShapes,
    List<Output<List<T>>> paddingValues,
    {Graph graph,
    String operationName,
    List<DataType> toutputTypes,
    List<Shape> outputShapes,
    int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'PrependFromQueueAndPaddedBatchDataset',
      operationName ??=
          graph._scope.uniqueName('PrependFromQueueAndPaddedBatchDataset/'));
  op$.addInput(inputDataset);
  op$.addInput(batchSize);
  op$.addInputList(paddedShapes);
  op$.addInputList(paddingValues);
  op$.setAttrTypeList('Toutput_types', toutputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
  op$.setAttrInt('N', n);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<Output>();
}

Output<String> readerSerializeState(Output<String> readerHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ReaderSerializeState',
      operationName ??= graph._scope.uniqueName('ReaderSerializeState/'));
  op$.addInput(readerHandle);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

Output<int> accumulatorNumAccumulated(Output<String> handle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AccumulatorNumAccumulated',
      operationName ??= graph._scope.uniqueName('AccumulatorNumAccumulated/'));
  op$.addInput(handle);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}

Output<T> shape<T>(Output<T> input,
    {Graph graph, String operationName, DataType outType: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Shape', operationName ??= graph._scope.uniqueName('Shape/'));
  op$.addInput(input);
  op$.setAttrType('out_type', outType);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> fusedPadConv2D<T>(
    Output<T> input, Output<int> paddings, Output<T> filter,
    {Graph graph,
    String operationName,
    String mode,
    List<int> strides,
    String padding}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('FusedPadConv2D',
      operationName ??= graph._scope.uniqueName('FusedPadConv2D/'));
  op$.addInput(input);
  op$.addInput(paddings);
  op$.addInput(filter);
  op$.setAttrString('mode', mode);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<T> sparseDenseCwiseMul<T>(Output<int> spIndices, Output<T> spValues,
    Output<int> spShape, Output<T> dense,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseDenseCwiseMul',
      operationName ??= graph._scope.uniqueName('SparseDenseCwiseMul/'));
  op$.addInput(spIndices);
  op$.addInput(spValues);
  op$.addInput(spShape);
  op$.addInput(dense);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<T>();
}

Output<String> getSessionHandle<T>(Output<T> value,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('GetSessionHandle',
      operationName ??= graph._scope.uniqueName('GetSessionHandle/'));
  op$.addInput(value);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<String>();
}

/// Debug NaN Value Counter Op
/// Counts number of NaNs in the input tensor, for debugging.
/// This operation has one output: An integer output tensor that is the number of NaNs in the input.
/// * [input]: Input tensor, non-Reference type.
/// attr [tensorName]: Name of the input tensor.
/// attr [debugUrls]: List of URLs to debug targets, e.g.,
/// file:///foo/tfdbg_dump, grpc:://localhost:11011.
/// attr [gatedGrpc]: Whether this op will be gated. If any of the debug_urls of this
/// debug node is of the grpc:// scheme, when the value of this attribute is set
/// to True, the data will not actually be sent via the grpc stream unless this
/// debug op has been enabled at the debug_url. If all of the debug_urls of this
/// debug node are of the grpc:// scheme and the debug op is enabled at none of
/// them, the output will be an empty Tensor.
Output<int> debugNanCount<T>(Output<T> input,
    {Graph graph,
    String operationName,
    String deviceName,
    String tensorName,
    List<String> debugUrls,
    bool gatedGrpc: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DebugNanCount',
      operationName ??= graph._scope.uniqueName('DebugNanCount/'));
  op$.addInput(input);
  op$.setAttrString('device_name', deviceName);
  op$.setAttrString('tensor_name', tensorName);
  op$.setAttrStringList('debug_urls', debugUrls);
  op$.setAttrBool('gated_grpc', gatedGrpc);
// ignore: unnecessary_cast
  return op$.finish()[0].cast<int>();
}
