// GENERATED CODE. DO NOT MODIFY BY HAND.

part of tensorflow;

Output remoteCall<T>(Output target, List<Output> args,
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
  return op$.finish()[0];
}

Output symbolicGradient<T>(List<Output> input,
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
  return op$.finish()[0];
}

class QuantizedBatchNormWithGlobalNormalizationOutput<T> {
  QuantizedBatchNormWithGlobalNormalizationOutput(
      this._graph, this.op, this.result, this.resultMin, this.resultMax);

  final Graph _graph;

  Operation op;

  final Output<Output> result;

  final Output<Output> resultMin;

  final Output<Output> resultMax;

  QuantizedBatchNormWithGlobalNormalization run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new QuantizedBatchNormWithGlobalNormalization<T>(
        result0, result1, result2);
  }
}

class QuantizedBatchNormWithGlobalNormalization<T> {
  QuantizedBatchNormWithGlobalNormalization(
      this.result, this.resultMin, this.resultMax);

  final Output result;

  final Output resultMin;

  final Output resultMax;
}

QuantizedBatchNormWithGlobalNormalizationOutput
    quantizedBatchNormWithGlobalNormalization<T>(
        Output t,
        Output tMin,
        Output tMax,
        Output m,
        Output mMin,
        Output mMax,
        Output v,
        Output vMin,
        Output vMax,
        Output beta,
        Output betaMin,
        Output betaMax,
        Output gamma,
        Output gammaMin,
        Output gammaMax,
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
  var result$ = op$.finish();
  return new QuantizedBatchNormWithGlobalNormalizationOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

class QuantizedReluXOutput<T> {
  QuantizedReluXOutput(this._graph, this.op, this.activations,
      this.minActivations, this.maxActivations);

  final Graph _graph;

  Operation op;

  final Output<Output> activations;

  final Output<Output> minActivations;

  final Output<Output> maxActivations;

  QuantizedReluX run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new QuantizedReluX<T>(result0, result1, result2);
  }
}

class QuantizedReluX<T> {
  QuantizedReluX(this.activations, this.minActivations, this.maxActivations);

  final Output activations;

  final Output minActivations;

  final Output maxActivations;
}

QuantizedReluXOutput quantizedReluX<T>(
    Output features, Output maxValue, Output minFeatures, Output maxFeatures,
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
  var result$ = op$.finish();
  return new QuantizedReluXOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

class QuantizedReluOutput<T> {
  QuantizedReluOutput(this._graph, this.op, this.activations,
      this.minActivations, this.maxActivations);

  final Graph _graph;

  Operation op;

  final Output<Output> activations;

  final Output<Output> minActivations;

  final Output<Output> maxActivations;

  QuantizedRelu run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new QuantizedRelu<T>(result0, result1, result2);
  }
}

class QuantizedRelu<T> {
  QuantizedRelu(this.activations, this.minActivations, this.maxActivations);

  final Output activations;

  final Output minActivations;

  final Output maxActivations;
}

QuantizedReluOutput quantizedRelu<T>(
    Output features, Output minFeatures, Output maxFeatures,
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
  var result$ = op$.finish();
  return new QuantizedReluOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output fractionalAvgPoolGrad<T>(Output origInputTensorShape, Output outBackprop,
    Output rowPoolingSequence, Output colPoolingSequence,
    {Graph graph, String operationName, bool overlapping: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('FractionalAvgPoolGrad',
      operationName ??= graph._scope.uniqueName('FractionalAvgPoolGrad/'));
  op$.addInput(origInputTensorShape);
  op$.addInput(outBackprop);
  op$.addInput(rowPoolingSequence);
  op$.addInput(colPoolingSequence);
  op$.setAttrBool('overlapping', overlapping);
  return op$.finish()[0];
}

Output nthElement<T>(Output input, Output n,
    {Graph graph, String operationName, bool reverse: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'NthElement', operationName ??= graph._scope.uniqueName('NthElement/'));
  op$.addInput(input);
  op$.addInput(n);
  op$.setAttrBool('reverse', reverse);
  return op$.finish()[0];
}

class TopKV2Output<T> {
  TopKV2Output(this._graph, this.op, this.values, this.indices);

  final Graph _graph;

  Operation op;

  final Output<Output> values;

  final Output<Output> indices;

  TopKV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new TopKV2<T>(result0, result1);
  }
}

class TopKV2<T> {
  TopKV2(this.values, this.indices);

  final Output values;

  final Output indices;
}

TopKV2Output topKV2<T>(Output input, Output k,
    {Graph graph, String operationName, bool sorted: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'TopKV2', operationName ??= graph._scope.uniqueName('TopKV2/'));
  op$.addInput(input);
  op$.addInput(k);
  op$.setAttrBool('sorted', sorted);
  var result$ = op$.finish();
  return new TopKV2Output<T>(graph, result$, result$[0], result$[1]);
}

class TopKOutput<T> {
  TopKOutput(this._graph, this.op, this.values, this.indices);

  final Graph _graph;

  Operation op;

  final Output<Output> values;

  final Output<Output> indices;

  TopK run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new TopK<T>(result0, result1);
  }
}

class TopK<T> {
  TopK(this.values, this.indices);

  final Output values;

  final Output indices;
}

@Deprecated('DEPRECATED at GraphDef version 7: Use TopKV2 instead')
TopKOutput topK<T>(Output input,
    {Graph graph, String operationName, int k, bool sorted: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'TopK', operationName ??= graph._scope.uniqueName('TopK/'));
  op$.addInput(input);
  op$.setAttrInt('k', k);
  op$.setAttrBool('sorted', sorted);
  var result$ = op$.finish();
  return new TopKOutput<T>(graph, result$, result$[0], result$[1]);
}

Output inTopKV2<T>(Output predictions, Output targets, Output k,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'InTopKV2', operationName ??= graph._scope.uniqueName('InTopKV2/'));
  op$.addInput(predictions);
  op$.addInput(targets);
  op$.addInput(k);
  return op$.finish()[0];
}

class SparseSoftmaxCrossEntropyWithLogitsOutput<T> {
  SparseSoftmaxCrossEntropyWithLogitsOutput(
      this._graph, this.op, this.loss, this.backprop);

  final Graph _graph;

  Operation op;

  final Output<Output> loss;

  final Output<Output> backprop;

  SparseSoftmaxCrossEntropyWithLogits run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new SparseSoftmaxCrossEntropyWithLogits<T>(result0, result1);
  }
}

class SparseSoftmaxCrossEntropyWithLogits<T> {
  SparseSoftmaxCrossEntropyWithLogits(this.loss, this.backprop);

  final Output loss;

  final Output backprop;
}

SparseSoftmaxCrossEntropyWithLogitsOutput
    sparseSoftmaxCrossEntropyWithLogits<T>(Output features, Output labels,
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
  var result$ = op$.finish();
  return new SparseSoftmaxCrossEntropyWithLogitsOutput<T>(
      graph, result$, result$[0], result$[1]);
}

Output logSoftmax<T>(Output logits, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'LogSoftmax', operationName ??= graph._scope.uniqueName('LogSoftmax/'));
  op$.addInput(logits);
  return op$.finish()[0];
}

Output softmax<T>(Output logits, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Softmax', operationName ??= graph._scope.uniqueName('Softmax/'));
  op$.addInput(logits);
  return op$.finish()[0];
}

Output softsignGrad<T>(Output gradients, Output features,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SoftsignGrad',
      operationName ??= graph._scope.uniqueName('SoftsignGrad/'));
  op$.addInput(gradients);
  op$.addInput(features);
  return op$.finish()[0];
}

Output softplusGrad<T>(Output gradients, Output features,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SoftplusGrad',
      operationName ??= graph._scope.uniqueName('SoftplusGrad/'));
  op$.addInput(gradients);
  op$.addInput(features);
  return op$.finish()[0];
}

Output seluGrad<T>(Output gradients, Output outputs,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SeluGrad', operationName ??= graph._scope.uniqueName('SeluGrad/'));
  op$.addInput(gradients);
  op$.addInput(outputs);
  return op$.finish()[0];
}

Output selu<T>(Output features, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Selu', operationName ??= graph._scope.uniqueName('Selu/'));
  op$.addInput(features);
  return op$.finish()[0];
}

Output eluGrad<T>(Output gradients, Output outputs,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'EluGrad', operationName ??= graph._scope.uniqueName('EluGrad/'));
  op$.addInput(gradients);
  op$.addInput(outputs);
  return op$.finish()[0];
}

Output relu6Grad<T>(Output gradients, Output features,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Relu6Grad', operationName ??= graph._scope.uniqueName('Relu6Grad/'));
  op$.addInput(gradients);
  op$.addInput(features);
  return op$.finish()[0];
}

Output reluGrad<T>(Output gradients, Output features,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ReluGrad', operationName ??= graph._scope.uniqueName('ReluGrad/'));
  op$.addInput(gradients);
  op$.addInput(features);
  return op$.finish()[0];
}

Output all<T>(Output input, Output reductionIndices,
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
  return op$.finish()[0];
}

Output dilation2DBackpropInput<T>(
    Output input, Output filter, Output outBackprop,
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
  return op$.finish()[0];
}

Output maxPoolGradGradV2<T>(Output origInput, Output origOutput, Output grad,
    Output ksize, Output strides,
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
  return op$.finish()[0];
}

Output maxPoolGradGrad<T>(Output origInput, Output origOutput, Output grad,
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
  return op$.finish()[0];
}

Output maxPoolGradV2<T>(Output origInput, Output origOutput, Output grad,
    Output ksize, Output strides,
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
  return op$.finish()[0];
}

Output roll<T>(Output input, Output shift, Output axis,
    {Graph graph, String operationName, DataType tshift, DataType taxis}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Roll', operationName ??= graph._scope.uniqueName('Roll/'));
  op$.addInput(input);
  op$.addInput(shift);
  op$.addInput(axis);
  op$.setAttrType('Tshift', tshift);
  op$.setAttrType('Taxis', taxis);
  return op$.finish()[0];
}

Output maxPoolGrad<T>(Output origInput, Output origOutput, Output grad,
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
  return op$.finish()[0];
}

Output lRNGrad<T>(Output inputGrads, Output inputImage, Output outputImage,
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
  return op$.finish()[0];
}

Output maxPool3DGradGrad<T>(Output origInput, Output origOutput, Output grad,
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
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 10: Use Conv3DBackpropFilterV2')
Output conv3DBackpropFilter<T>(Output input, Output filter, Output outBackprop,
    {Graph graph, String operationName, List<int> strides, String padding}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('Conv3DBackpropFilter',
      operationName ??= graph._scope.uniqueName('Conv3DBackpropFilter/'));
  op$.addInput(input);
  op$.addInput(filter);
  op$.addInput(outBackprop);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
  return op$.finish()[0];
}

Output conv3D<T>(Output input, Output filter,
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
  return op$.finish()[0];
}

Output cropAndResize<T>(
    Output image, Output boxes, Output boxInd, Output cropSize,
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
  return op$.finish()[0];
}

Output depthwiseConv2dNativeBackpropFilter<T>(
    Output input, Output filterSizes, Output outBackprop,
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
  return op$.finish()[0];
}

Output expm1<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Expm1', operationName ??= graph._scope.uniqueName('Expm1/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output conv2DBackpropInput<T>(
    Output inputSizes, Output filter, Output outBackprop,
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
  return op$.finish()[0];
}

Output conv2D<T>(Output input, Output filter,
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
  return op$.finish()[0];
}

Output biasAdd<T>(Output value, Output bias,
    {Graph graph, String operationName, String dataFormat: 'NHWC'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BiasAdd', operationName ??= graph._scope.uniqueName('BiasAdd/'));
  op$.addInput(value);
  op$.addInput(bias);
  op$.setAttrString('data_format', dataFormat);
  return op$.finish()[0];
}

Output sin<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Sin', operationName ??= graph._scope.uniqueName('Sin/'));
  op$.addInput(x);
  return op$.finish()[0];
}

class FusedBatchNormV2Output<T> {
  FusedBatchNormV2Output(this._graph, this.op, this.y, this.batchMean,
      this.batchVariance, this.reserveSpace1, this.reserveSpace2);

  final Graph _graph;

  Operation op;

  final Output<Output> y;

  final Output<Output> batchMean;

  final Output<Output> batchVariance;

  final Output<Output> reserveSpace1;

  final Output<Output> reserveSpace2;

  FusedBatchNormV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    runner.fetch(op.name, index: 3);
    feed?.forEach(runner.feed);
    var result3 = runner.run()[0];
    runner.fetch(op.name, index: 4);
    feed?.forEach(runner.feed);
    var result4 = runner.run()[0];
    return new FusedBatchNormV2<T>(result0, result1, result2, result3, result4);
  }
}

class FusedBatchNormV2<T> {
  FusedBatchNormV2(this.y, this.batchMean, this.batchVariance,
      this.reserveSpace1, this.reserveSpace2);

  final Output y;

  final Output batchMean;

  final Output batchVariance;

  final Output reserveSpace1;

  final Output reserveSpace2;
}

FusedBatchNormV2Output fusedBatchNormV2<T>(
    Output x, Output scale, Output offset, Output mean, Output variance,
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
  var result$ = op$.finish();
  return new FusedBatchNormV2Output<T>(graph, result$, result$[0], result$[1],
      result$[2], result$[3], result$[4]);
}

Output sparseMatMul<T>(Output a, Output b,
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
  return op$.finish()[0];
}

class FusedBatchNormOutput<T> {
  FusedBatchNormOutput(this._graph, this.op, this.y, this.batchMean,
      this.batchVariance, this.reserveSpace1, this.reserveSpace2);

  final Graph _graph;

  Operation op;

  final Output<Output> y;

  final Output<Output> batchMean;

  final Output<Output> batchVariance;

  final Output<Output> reserveSpace1;

  final Output<Output> reserveSpace2;

  FusedBatchNorm run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    runner.fetch(op.name, index: 3);
    feed?.forEach(runner.feed);
    var result3 = runner.run()[0];
    runner.fetch(op.name, index: 4);
    feed?.forEach(runner.feed);
    var result4 = runner.run()[0];
    return new FusedBatchNorm<T>(result0, result1, result2, result3, result4);
  }
}

class FusedBatchNorm<T> {
  FusedBatchNorm(this.y, this.batchMean, this.batchVariance, this.reserveSpace1,
      this.reserveSpace2);

  final Output y;

  final Output batchMean;

  final Output batchVariance;

  final Output reserveSpace1;

  final Output reserveSpace2;
}

FusedBatchNormOutput fusedBatchNorm<T>(
    Output x, Output scale, Output offset, Output mean, Output variance,
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
  var result$ = op$.finish();
  return new FusedBatchNormOutput<T>(graph, result$, result$[0], result$[1],
      result$[2], result$[3], result$[4]);
}

Output readVariableOp<T>(Output resource,
    {Graph graph, String operationName, DataType dtype}) {
  dtype ??= inferType(resource);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ReadVariableOp',
      operationName ??= graph._scope.uniqueName('ReadVariableOp/'));
  op$.addInput(resource);
  op$.setAttrType('dtype', dtype);
  return op$.finish()[0];
}

Output lgamma<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Lgamma', operationName ??= graph._scope.uniqueName('Lgamma/'));
  op$.addInput(x);
  return op$.finish()[0];
}

class RequantizationRangeOutput<T> {
  RequantizationRangeOutput(
      this._graph, this.op, this.outputMin, this.outputMax);

  final Graph _graph;

  Operation op;

  final Output<Output> outputMin;

  final Output<Output> outputMax;

  RequantizationRange run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new RequantizationRange<T>(result0, result1);
  }
}

class RequantizationRange<T> {
  RequantizationRange(this.outputMin, this.outputMax);

  final Output outputMin;

  final Output outputMax;
}

RequantizationRangeOutput requantizationRange<T>(
    Output input, Output inputMin, Output inputMax,
    {Graph graph, String operationName, DataType tinput}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('RequantizationRange',
      operationName ??= graph._scope.uniqueName('RequantizationRange/'));
  op$.addInput(input);
  op$.addInput(inputMin);
  op$.addInput(inputMax);
  op$.setAttrType('Tinput', tinput);
  var result$ = op$.finish();
  return new RequantizationRangeOutput<T>(
      graph, result$, result$[0], result$[1]);
}

Output compareAndBitpack<T>(Output input, Output threshold,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CompareAndBitpack',
      operationName ??= graph._scope.uniqueName('CompareAndBitpack/'));
  op$.addInput(input);
  op$.addInput(threshold);
  return op$.finish()[0];
}

class QuantizeDownAndShrinkRangeOutput<T> {
  QuantizeDownAndShrinkRangeOutput(
      this._graph, this.op, this.output, this.outputMin, this.outputMax);

  final Graph _graph;

  Operation op;

  final Output<Output> output;

  final Output<Output> outputMin;

  final Output<Output> outputMax;

  QuantizeDownAndShrinkRange run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new QuantizeDownAndShrinkRange<T>(result0, result1, result2);
  }
}

class QuantizeDownAndShrinkRange<T> {
  QuantizeDownAndShrinkRange(this.output, this.outputMin, this.outputMax);

  final Output output;

  final Output outputMin;

  final Output outputMax;
}

QuantizeDownAndShrinkRangeOutput quantizeDownAndShrinkRange<T>(
    Output input, Output inputMin, Output inputMax,
    {Graph graph, String operationName, DataType tinput, DataType outType}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QuantizeDownAndShrinkRange',
      operationName ??= graph._scope.uniqueName('QuantizeDownAndShrinkRange/'));
  op$.addInput(input);
  op$.addInput(inputMin);
  op$.addInput(inputMax);
  op$.setAttrType('Tinput', tinput);
  op$.setAttrType('out_type', outType);
  var result$ = op$.finish();
  return new QuantizeDownAndShrinkRangeOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

class QuantizedMatMulOutput<T> {
  QuantizedMatMulOutput(
      this._graph, this.op, this.out, this.minOut, this.maxOut);

  final Graph _graph;

  Operation op;

  final Output<Output> out;

  final Output<Output> minOut;

  final Output<Output> maxOut;

  QuantizedMatMul run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new QuantizedMatMul<T>(result0, result1, result2);
  }
}

class QuantizedMatMul<T> {
  QuantizedMatMul(this.out, this.minOut, this.maxOut);

  final Output out;

  final Output minOut;

  final Output maxOut;
}

QuantizedMatMulOutput quantizedMatMul<T>(
    Output a, Output b, Output minA, Output maxA, Output minB, Output maxB,
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
  var result$ = op$.finish();
  return new QuantizedMatMulOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output cumsum<T>(Output x, Output axis,
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
  return op$.finish()[0];
}

class BatchNormWithGlobalNormalizationGradOutput<T> {
  BatchNormWithGlobalNormalizationGradOutput(
      this._graph, this.op, this.dx, this.dm, this.dv, this.db, this.dg);

  final Graph _graph;

  Operation op;

  final Output<Output> dx;

  final Output<Output> dm;

  final Output<Output> dv;

  final Output<Output> db;

  final Output<Output> dg;

  BatchNormWithGlobalNormalizationGrad run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    runner.fetch(op.name, index: 3);
    feed?.forEach(runner.feed);
    var result3 = runner.run()[0];
    runner.fetch(op.name, index: 4);
    feed?.forEach(runner.feed);
    var result4 = runner.run()[0];
    return new BatchNormWithGlobalNormalizationGrad<T>(
        result0, result1, result2, result3, result4);
  }
}

class BatchNormWithGlobalNormalizationGrad<T> {
  BatchNormWithGlobalNormalizationGrad(
      this.dx, this.dm, this.dv, this.db, this.dg);

  final Output dx;

  final Output dm;

  final Output dv;

  final Output db;

  final Output dg;
}

@Deprecated('DEPRECATED at GraphDef version 9: Use tf.nn.batch_normalization()')
BatchNormWithGlobalNormalizationGradOutput
    batchNormWithGlobalNormalizationGrad<T>(
        Output t, Output m, Output v, Output gamma, Output backprop,
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
  var result$ = op$.finish();
  return new BatchNormWithGlobalNormalizationGradOutput<T>(graph, result$,
      result$[0], result$[1], result$[2], result$[3], result$[4]);
}

Output bincount<T>(Output arr, Output size, Output weights,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Bincount', operationName ??= graph._scope.uniqueName('Bincount/'));
  op$.addInput(arr);
  op$.addInput(size);
  op$.addInput(weights);
  return op$.finish()[0];
}

Output cross<T>(Output a, Output b, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Cross', operationName ??= graph._scope.uniqueName('Cross/'));
  op$.addInput(a);
  op$.addInput(b);
  return op$.finish()[0];
}

Output conj<T>(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Conj', operationName ??= graph._scope.uniqueName('Conj/'));
  op$.addInput(input);
  return op$.finish()[0];
}

Output real<T>(Output input,
    {Graph graph, String operationName, DataType tout: DataType.DT_FLOAT}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Real', operationName ??= graph._scope.uniqueName('Real/'));
  op$.addInput(input);
  op$.setAttrType('Tout', tout);
  return op$.finish()[0];
}

Output dequantize<T>(Output input, Output minRange, Output maxRange,
    {Graph graph, String operationName, String mode: 'MIN_COMBINED'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Dequantize', operationName ??= graph._scope.uniqueName('Dequantize/'));
  op$.addInput(input);
  op$.addInput(minRange);
  op$.addInput(maxRange);
  op$.setAttrString('mode', mode);
  return op$.finish()[0];
}

Output complex<T>(Output real, Output imag,
    {Graph graph, String operationName, DataType tout: DataType.DT_COMPLEX64}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Complex', operationName ??= graph._scope.uniqueName('Complex/'));
  op$.addInput(real);
  op$.addInput(imag);
  op$.setAttrType('Tout', tout);
  return op$.finish()[0];
}

Output any<T>(Output input, Output reductionIndices,
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
  return op$.finish()[0];
}

Output sparseSegmentMean<T>(Output data, Output indices, Output segmentIds,
    {Graph graph, String operationName, DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseSegmentMean',
      operationName ??= graph._scope.uniqueName('SparseSegmentMean/'));
  op$.addInput(data);
  op$.addInput(indices);
  op$.addInput(segmentIds);
  op$.setAttrType('Tidx', tidx);
  return op$.finish()[0];
}

Output sparseSegmentSumWithNumSegments<T>(
    Output data, Output indices, Output segmentIds, Output numSegments,
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
  return op$.finish()[0];
}

Output unsortedSegmentSum<T>(Output data, Output segmentIds, Output numSegments,
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
  return op$.finish()[0];
}

Output atan2<T>(Output y, Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Atan2', operationName ??= graph._scope.uniqueName('Atan2/'));
  op$.addInput(y);
  op$.addInput(x);
  return op$.finish()[0];
}

Output segmentProd<T>(Output data, Output segmentIds,
    {Graph graph, String operationName, DataType tindices}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SegmentProd', operationName ??= graph._scope.uniqueName('SegmentProd/'));
  op$.addInput(data);
  op$.addInput(segmentIds);
  op$.setAttrType('Tindices', tindices);
  return op$.finish()[0];
}

Output resizeBilinearGrad<T>(Output grads, Output originalImage,
    {Graph graph, String operationName, bool alignCorners: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResizeBilinearGrad',
      operationName ??= graph._scope.uniqueName('ResizeBilinearGrad/'));
  op$.addInput(grads);
  op$.addInput(originalImage);
  op$.setAttrBool('align_corners', alignCorners);
  return op$.finish()[0];
}

Output max<T>(Output input, Output reductionIndices,
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
  return op$.finish()[0];
}

Output getSessionTensor<T>(Output handle,
    {Graph graph, String operationName, DataType dtype}) {
  dtype ??= inferType(handle);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('GetSessionTensor',
      operationName ??= graph._scope.uniqueName('GetSessionTensor/'));
  op$.addInput(handle);
  op$.setAttrType('dtype', dtype);
  return op$.finish()[0];
}

Output min<T>(Output input, Output reductionIndices,
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
  return op$.finish()[0];
}

class SampleDistortedBoundingBoxV2Output<T> {
  SampleDistortedBoundingBoxV2Output(
      this._graph, this.op, this.begin, this.size, this.bboxes);

  final Graph _graph;

  Operation op;

  final Output<Output> begin;

  final Output<Output> size;

  final Output<Output> bboxes;

  SampleDistortedBoundingBoxV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new SampleDistortedBoundingBoxV2<T>(result0, result1, result2);
  }
}

class SampleDistortedBoundingBoxV2<T> {
  SampleDistortedBoundingBoxV2(this.begin, this.size, this.bboxes);

  final Output begin;

  final Output size;

  final Output bboxes;
}

SampleDistortedBoundingBoxV2Output sampleDistortedBoundingBoxV2<T>(
    Output imageSize, Output boundingBoxes, Output minObjectCovered,
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
  var result$ = op$.finish();
  return new SampleDistortedBoundingBoxV2Output<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

/// This operation has no outputs.
Operation accumulatorApplyGradient<T>(
    Output handle, Output localStep, Output gradient,
    {Graph graph, String operationName, DataType dtype}) {
  dtype ??= inferType(handle);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AccumulatorApplyGradient',
      operationName ??= graph._scope.uniqueName('AccumulatorApplyGradient/'));
  op$.addInput(handle);
  op$.addInput(localStep);
  op$.addInput(gradient);
  op$.setAttrType('dtype', dtype);
  return op$.finish();
}

Output prod<T>(Output input, Output reductionIndices,
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
  return op$.finish()[0];
}

Output sum<T>(Output input, Output reductionIndices,
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
  return op$.finish()[0];
}

Output relu<T>(Output features, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Relu', operationName ??= graph._scope.uniqueName('Relu/'));
  op$.addInput(features);
  return op$.finish()[0];
}

class SparseReduceSumSparseOutput<T> {
  SparseReduceSumSparseOutput(this._graph, this.op, this.outputIndices,
      this.outputValues, this.outputShape);

  final Graph _graph;

  Operation op;

  final Output<Output> outputIndices;

  final Output<Output> outputValues;

  final Output<Output> outputShape;

  SparseReduceSumSparse run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new SparseReduceSumSparse<T>(result0, result1, result2);
  }
}

class SparseReduceSumSparse<T> {
  SparseReduceSumSparse(
      this.outputIndices, this.outputValues, this.outputShape);

  final Output outputIndices;

  final Output outputValues;

  final Output outputShape;
}

SparseReduceSumSparseOutput sparseReduceSumSparse<T>(Output inputIndices,
    Output inputValues, Output inputShape, Output reductionAxes,
    {Graph graph, String operationName, bool keepDims: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseReduceSumSparse',
      operationName ??= graph._scope.uniqueName('SparseReduceSumSparse/'));
  op$.addInput(inputIndices);
  op$.addInput(inputValues);
  op$.addInput(inputShape);
  op$.addInput(reductionAxes);
  op$.setAttrBool('keep_dims', keepDims);
  var result$ = op$.finish();
  return new SparseReduceSumSparseOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output matMul<T>(Output a, Output b,
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
  return op$.finish()[0];
}

Output logicalAnd(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'LogicalAnd', operationName ??= graph._scope.uniqueName('LogicalAnd/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

/// Writes a `GraphDef` protocol buffer to a `SummaryWriter`.
/// This operation has no outputs.
/// * [writer]: Handle of `SummaryWriter`.
/// * [step]: The step to write the summary for.
/// * [tensor]: A scalar string of the serialized tf.GraphDef proto.
Operation writeGraphSummary(Output writer, Output step, Output tensor,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('WriteGraphSummary',
      operationName ??= graph._scope.uniqueName('WriteGraphSummary/'));
  op$.addInput(writer);
  op$.addInput(step);
  op$.addInput(tensor);
  return op$.finish();
}

Output approximateEqual<T>(Output x, Output y,
    {Graph graph,
    String operationName,
    double tolerance: 0.000009999999747378752}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ApproximateEqual',
      operationName ??= graph._scope.uniqueName('ApproximateEqual/'));
  op$.addInput(x);
  op$.addInput(y);
  op$.setAttrFloat('tolerance', tolerance);
  return op$.finish()[0];
}

class QuantizeV2Output<T> {
  QuantizeV2Output(
      this._graph, this.op, this.output, this.outputMin, this.outputMax);

  final Graph _graph;

  Operation op;

  final Output<Output> output;

  final Output<Output> outputMin;

  final Output<Output> outputMax;

  QuantizeV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new QuantizeV2<T>(result0, result1, result2);
  }
}

class QuantizeV2<T> {
  QuantizeV2(this.output, this.outputMin, this.outputMax);

  final Output output;

  final Output outputMin;

  final Output outputMax;
}

QuantizeV2Output quantizeV2<T>(Output input, Output minRange, Output maxRange,
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
  var result$ = op$.finish();
  return new QuantizeV2Output<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output greaterEqual<T>(Output x, Output y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('GreaterEqual',
      operationName ??= graph._scope.uniqueName('GreaterEqual/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

Output polygamma<T>(Output a, Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Polygamma', operationName ??= graph._scope.uniqueName('Polygamma/'));
  op$.addInput(a);
  op$.addInput(x);
  return op$.finish()[0];
}

/// Outputs a `tf.Event` protocol buffer.
/// When CreateSummaryDbWriter is being used, this op can be useful for
/// importing data from event logs.
/// This operation has no outputs.
/// * [writer]: A handle to a summary writer.
/// * [event]: A string containing a binary-encoded tf.Event proto.
Operation importEvent(Output writer, Output event,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ImportEvent', operationName ??= graph._scope.uniqueName('ImportEvent/'));
  op$.addInput(writer);
  op$.addInput(event);
  return op$.finish();
}

Output igamma<T>(Output a, Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Igamma', operationName ??= graph._scope.uniqueName('Igamma/'));
  op$.addInput(a);
  op$.addInput(x);
  return op$.finish()[0];
}

Output igammac<T>(Output a, Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Igammac', operationName ??= graph._scope.uniqueName('Igammac/'));
  op$.addInput(a);
  op$.addInput(x);
  return op$.finish()[0];
}

Output mod<T>(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Mod', operationName ??= graph._scope.uniqueName('Mod/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

Output maximum<T>(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Maximum', operationName ??= graph._scope.uniqueName('Maximum/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

Output squaredDifference<T>(Output x, Output y,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SquaredDifference',
      operationName ??= graph._scope.uniqueName('SquaredDifference/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

Output resourceCountUpTo<T>(Output resource,
    {Graph graph, String operationName, int limit}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceCountUpTo',
      operationName ??= graph._scope.uniqueName('ResourceCountUpTo/'));
  op$.addInput(resource);
  op$.setAttrInt('limit', limit);
  return op$.finish()[0];
}

Output realDiv<T>(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RealDiv', operationName ??= graph._scope.uniqueName('RealDiv/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

Output truncateDiv<T>(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'TruncateDiv', operationName ??= graph._scope.uniqueName('TruncateDiv/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

Output conv3DBackpropFilterV2<T>(
    Output input, Output filterSizes, Output outBackprop,
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
  return op$.finish()[0];
}

Output asString<T>(Output input,
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
  return op$.finish()[0];
}

Output addV2<T>(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'AddV2', operationName ??= graph._scope.uniqueName('AddV2/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

class UniformCandidateSamplerOutput {
  UniformCandidateSamplerOutput(this._graph, this.op, this.sampledCandidates,
      this.trueExpectedCount, this.sampledExpectedCount);

  final Graph _graph;

  Operation op;

  final Output<Output> sampledCandidates;

  final Output<Output> trueExpectedCount;

  final Output<Output> sampledExpectedCount;

  UniformCandidateSampler run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new UniformCandidateSampler(result0, result1, result2);
  }
}

class UniformCandidateSampler {
  UniformCandidateSampler(this.sampledCandidates, this.trueExpectedCount,
      this.sampledExpectedCount);

  final Output sampledCandidates;

  final Output trueExpectedCount;

  final Output sampledExpectedCount;
}

UniformCandidateSamplerOutput uniformCandidateSampler(Output trueClasses,
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
  var result$ = op$.finish();
  return new UniformCandidateSamplerOutput(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output resourceGather<T>(Output resource, Output indices,
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
  return op$.finish()[0];
}

Output add<T>(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Add', operationName ??= graph._scope.uniqueName('Add/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

Output floor<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Floor', operationName ??= graph._scope.uniqueName('Floor/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output ceil<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Ceil', operationName ??= graph._scope.uniqueName('Ceil/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output maxPool3D<T>(Output input,
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
  return op$.finish()[0];
}

Output isInf<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'IsInf', operationName ??= graph._scope.uniqueName('IsInf/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output padV2<T>(Output input, Output paddings, Output constantValues,
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
  return op$.finish()[0];
}

Output cos<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Cos', operationName ??= graph._scope.uniqueName('Cos/'));
  op$.addInput(x);
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayV3')
Output tensorArray(Output size,
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
  return op$.finish()[0];
}

Output variable<T>(
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
  return op$.finish()[0];
}

Output sigmoidGrad<T>(Output y, Output dy,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SigmoidGrad', operationName ??= graph._scope.uniqueName('SigmoidGrad/'));
  op$.addInput(y);
  op$.addInput(dy);
  return op$.finish()[0];
}

Output digamma<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Digamma', operationName ??= graph._scope.uniqueName('Digamma/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output acosh<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Acosh', operationName ??= graph._scope.uniqueName('Acosh/'));
  op$.addInput(x);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation resourceApplyProximalAdagrad<T>(
    Output var$, Output accum, Output lr, Output l1, Output l2, Output grad,
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
  return op$.finish();
}

Output asin<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Asin', operationName ??= graph._scope.uniqueName('Asin/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output log1p<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Log1p', operationName ??= graph._scope.uniqueName('Log1p/'));
  op$.addInput(x);
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 16: Use TensorArraySizeV3')
Output tensorArraySize(Output handle, Output flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArraySize',
      operationName ??= graph._scope.uniqueName('TensorArraySize/'));
  op$.addInput(handle);
  op$.addInput(flowIn);
  return op$.finish()[0];
}

class RequantizeOutput<T> {
  RequantizeOutput(
      this._graph, this.op, this.output, this.outputMin, this.outputMax);

  final Graph _graph;

  Operation op;

  final Output<Output> output;

  final Output<Output> outputMin;

  final Output<Output> outputMax;

  Requantize run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new Requantize<T>(result0, result1, result2);
  }
}

class Requantize<T> {
  Requantize(this.output, this.outputMin, this.outputMax);

  final Output output;

  final Output outputMin;

  final Output outputMax;
}

RequantizeOutput requantize<T>(Output input, Output inputMin, Output inputMax,
    Output requestedOutputMin, Output requestedOutputMax,
    {Graph graph, String operationName, DataType tinput, DataType outType}) {
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
  var result$ = op$.finish();
  return new RequantizeOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output exp<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Exp', operationName ??= graph._scope.uniqueName('Exp/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output mutableHashTableOfTensors(
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
  return op$.finish()[0];
}

Output scatterNdAdd<T>(Output ref, Output indices, Output updates,
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
  return op$.finish()[0];
}

Output dilation2D<T>(Output input, Output filter,
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
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation deserializeIterator(Output resourceHandle, Output serialized,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DeserializeIterator',
      operationName ??= graph._scope.uniqueName('DeserializeIterator/'));
  op$.addInput(resourceHandle);
  op$.addInput(serialized);
  return op$.finish();
}

Output rsqrtGrad<T>(Output y, Output dy, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RsqrtGrad', operationName ??= graph._scope.uniqueName('RsqrtGrad/'));
  op$.addInput(y);
  op$.addInput(dy);
  return op$.finish()[0];
}

class QuantizedInstanceNormOutput<T> {
  QuantizedInstanceNormOutput(
      this._graph, this.op, this.y, this.yMin, this.yMax);

  final Graph _graph;

  Operation op;

  final Output<Output> y;

  final Output<Output> yMin;

  final Output<Output> yMax;

  QuantizedInstanceNorm run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new QuantizedInstanceNorm<T>(result0, result1, result2);
  }
}

class QuantizedInstanceNorm<T> {
  QuantizedInstanceNorm(this.y, this.yMin, this.yMax);

  final Output y;

  final Output yMin;

  final Output yMax;
}

QuantizedInstanceNormOutput quantizedInstanceNorm<T>(
    Output x, Output xMin, Output xMax,
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
  var result$ = op$.finish();
  return new QuantizedInstanceNormOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output rsqrt<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Rsqrt', operationName ??= graph._scope.uniqueName('Rsqrt/'));
  op$.addInput(x);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation initializeTableFromTextFile(Output tableHandle, Output filename,
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
  return op$.finish();
}

Output sqrtGrad<T>(Output y, Output dy, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SqrtGrad', operationName ??= graph._scope.uniqueName('SqrtGrad/'));
  op$.addInput(y);
  op$.addInput(dy);
  return op$.finish()[0];
}

Output invGrad<T>(Output y, Output dy, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'InvGrad', operationName ??= graph._scope.uniqueName('InvGrad/'));
  op$.addInput(y);
  op$.addInput(dy);
  return op$.finish()[0];
}

Output inv<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Inv', operationName ??= graph._scope.uniqueName('Inv/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output accumulateNV2<T>(List<Output> inputs,
    {Graph graph, String operationName, int n, Shape shape}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AccumulateNV2',
      operationName ??= graph._scope.uniqueName('AccumulateNV2/'));
  op$.addInputList(inputs);
  op$.setAttrInt('N', n);
  op$.setAttrShape('shape', shape);
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 14: Use MatrixSetDiag')
Output batchMatrixSetDiag<T>(Output input, Output diagonal,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchMatrixSetDiag',
      operationName ??= graph._scope.uniqueName('BatchMatrixSetDiag/'));
  op$.addInput(input);
  op$.addInput(diagonal);
  return op$.finish()[0];
}

Output segmentMean<T>(Output data, Output segmentIds,
    {Graph graph, String operationName, DataType tindices}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SegmentMean', operationName ??= graph._scope.uniqueName('SegmentMean/'));
  op$.addInput(data);
  op$.addInput(segmentIds);
  op$.setAttrType('Tindices', tindices);
  return op$.finish()[0];
}

@Deprecated(
    'DEPRECATED at GraphDef version 22: Replaced by QuantizeAndDequantizeV2')
Output quantizeAndDequantize<T>(Output input,
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
  return op$.finish()[0];
}

Output sparseSegmentSqrtN<T>(Output data, Output indices, Output segmentIds,
    {Graph graph, String operationName, DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseSegmentSqrtN',
      operationName ??= graph._scope.uniqueName('SparseSegmentSqrtN/'));
  op$.addInput(data);
  op$.addInput(indices);
  op$.addInput(segmentIds);
  op$.setAttrType('Tidx', tidx);
  return op$.finish()[0];
}

Output depthToSpace<T>(Output input,
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
  return op$.finish()[0];
}

Output spaceToDepth<T>(Output input,
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
  return op$.finish()[0];
}

Output quantizeAndDequantizeV3<T>(
    Output input, Output inputMin, Output inputMax, Output numBits,
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
  return op$.finish()[0];
}

Output mul<T>(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Mul', operationName ??= graph._scope.uniqueName('Mul/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

Output batchToSpace<T>(Output input, Output crops,
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
  return op$.finish()[0];
}

Output spaceToBatch<T>(Output input, Output paddings,
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
  return op$.finish()[0];
}

Output squeeze<T>(Output input,
    {Graph graph, String operationName, List<int> squeezeDims}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Squeeze', operationName ??= graph._scope.uniqueName('Squeeze/'));
  op$.addInput(input);
  op$.setAttrIntList('squeeze_dims', squeezeDims);
  return op$.finish()[0];
}

Output expandDims<T>(Output input, Output dim,
    {Graph graph, String operationName, DataType tdim: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ExpandDims', operationName ??= graph._scope.uniqueName('ExpandDims/'));
  op$.addInput(input);
  op$.addInput(dim);
  op$.setAttrType('Tdim', tdim);
  return op$.finish()[0];
}

Output placeholderWithDefault<T>(Output input,
    {Graph graph, String operationName, DataType dtype, Shape shape}) {
  dtype ??= inferType(input);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('PlaceholderWithDefault',
      operationName ??= graph._scope.uniqueName('PlaceholderWithDefault/'));
  op$.addInput(input);
  op$.setAttrType('dtype', dtype);
  op$.setAttrShape('shape', shape);
  return op$.finish()[0];
}

Output applyMomentum<T>(
    Output var$, Output accum, Output lr, Output grad, Output momentum,
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
  return op$.finish()[0];
}

Output acos<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Acos', operationName ??= graph._scope.uniqueName('Acos/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output placeholder<T>(
    {Graph graph,
    String operationName,
    @required DataType dtype,
    Shape shape}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Placeholder', operationName ??= graph._scope.uniqueName('Placeholder/'));
  op$.setAttrType('dtype', dtype);
  op$.setAttrShape('shape', shape);
  return op$.finish()[0];
}

class QuantizedMaxPoolOutput<T> {
  QuantizedMaxPoolOutput(
      this._graph, this.op, this.output, this.minOutput, this.maxOutput);

  final Graph _graph;

  Operation op;

  final Output<Output> output;

  final Output<Output> minOutput;

  final Output<Output> maxOutput;

  QuantizedMaxPool run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new QuantizedMaxPool<T>(result0, result1, result2);
  }
}

class QuantizedMaxPool<T> {
  QuantizedMaxPool(this.output, this.minOutput, this.maxOutput);

  final Output output;

  final Output minOutput;

  final Output maxOutput;
}

QuantizedMaxPoolOutput quantizedMaxPool<T>(
    Output input, Output minInput, Output maxInput,
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
  var result$ = op$.finish();
  return new QuantizedMaxPoolOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output mirrorPadGrad<T>(Output input, Output paddings,
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
  return op$.finish()[0];
}

class TensorArrayV3Output {
  TensorArrayV3Output(this._graph, this.op, this.handle, this.flow);

  final Graph _graph;

  Operation op;

  final Output<Output> handle;

  final Output<Output> flow;

  TensorArrayV3 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new TensorArrayV3(result0, result1);
  }
}

class TensorArrayV3 {
  TensorArrayV3(this.handle, this.flow);

  final Output handle;

  final Output flow;
}

TensorArrayV3Output tensorArrayV3(Output size,
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
  var result$ = op$.finish();
  return new TensorArrayV3Output(graph, result$, result$[0], result$[1]);
}

Output matrixSolveLs<T>(Output matrix, Output rhs, Output l2Regularizer,
    {Graph graph, String operationName, bool fast: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MatrixSolveLs',
      operationName ??= graph._scope.uniqueName('MatrixSolveLs/'));
  op$.addInput(matrix);
  op$.addInput(rhs);
  op$.addInput(l2Regularizer);
  op$.setAttrBool('fast', fast);
  return op$.finish()[0];
}

Output mirrorPad<T>(Output input, Output paddings,
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
  return op$.finish()[0];
}

Output pad<T>(Output input, Output paddings,
    {Graph graph,
    String operationName,
    DataType tpaddings: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Pad', operationName ??= graph._scope.uniqueName('Pad/'));
  op$.addInput(input);
  op$.addInput(paddings);
  op$.setAttrType('Tpaddings', tpaddings);
  return op$.finish()[0];
}

class BroadcastGradientArgsOutput<T> {
  BroadcastGradientArgsOutput(this._graph, this.op, this.r0, this.r1);

  final Graph _graph;

  Operation op;

  final Output<Output> r0;

  final Output<Output> r1;

  BroadcastGradientArgs run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new BroadcastGradientArgs<T>(result0, result1);
  }
}

class BroadcastGradientArgs<T> {
  BroadcastGradientArgs(this.r0, this.r1);

  final Output r0;

  final Output r1;
}

BroadcastGradientArgsOutput broadcastGradientArgs<T>(Output s0, Output s1,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BroadcastGradientArgs',
      operationName ??= graph._scope.uniqueName('BroadcastGradientArgs/'));
  op$.addInput(s0);
  op$.addInput(s1);
  var result$ = op$.finish();
  return new BroadcastGradientArgsOutput<T>(
      graph, result$, result$[0], result$[1]);
}

Output broadcastArgs<T>(Output s0, Output s1,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BroadcastArgs',
      operationName ??= graph._scope.uniqueName('BroadcastArgs/'));
  op$.addInput(s0);
  op$.addInput(s1);
  return op$.finish()[0];
}

class QuantizedRelu6Output<T> {
  QuantizedRelu6Output(this._graph, this.op, this.activations,
      this.minActivations, this.maxActivations);

  final Graph _graph;

  Operation op;

  final Output<Output> activations;

  final Output<Output> minActivations;

  final Output<Output> maxActivations;

  QuantizedRelu6 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new QuantizedRelu6<T>(result0, result1, result2);
  }
}

class QuantizedRelu6<T> {
  QuantizedRelu6(this.activations, this.minActivations, this.maxActivations);

  final Output activations;

  final Output minActivations;

  final Output maxActivations;
}

QuantizedRelu6Output quantizedRelu6<T>(
    Output features, Output minFeatures, Output maxFeatures,
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
  var result$ = op$.finish();
  return new QuantizedRelu6Output<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

/// This operation has no outputs.
Operation resourceStridedSliceAssign<T>(
    Output ref, Output begin, Output end, Output strides, Output value,
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
  return op$.finish();
}

Output truncateMod<T>(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'TruncateMod', operationName ??= graph._scope.uniqueName('TruncateMod/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation resourceApplyFtrl<T>(Output var$, Output accum, Output linear,
    Output grad, Output lr, Output l1, Output l2, Output lrPower,
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
  return op$.finish();
}

Output stridedSliceGrad<T>(
    Output shape, Output begin, Output end, Output strides, Output dy,
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
  return op$.finish()[0];
}

Output stridedSlice<T>(Output input, Output begin, Output end, Output strides,
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
  return op$.finish()[0];
}

Output lMDBReader(
    {Graph graph, String operationName, String container, String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'LMDBReader', operationName ??= graph._scope.uniqueName('LMDBReader/'));
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
  return op$.finish()[0];
}

Output slice<T>(Output input, Output begin, Output size,
    {Graph graph, String operationName, DataType index}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Slice', operationName ??= graph._scope.uniqueName('Slice/'));
  op$.addInput(input);
  op$.addInput(begin);
  op$.addInput(size);
  op$.setAttrType('Index', index);
  return op$.finish()[0];
}

class UniqueWithCountsV2Output<T> {
  UniqueWithCountsV2Output(this._graph, this.op, this.y, this.idx, this.count);

  final Graph _graph;

  Operation op;

  final Output<Output> y;

  final Output<Output> idx;

  final Output<Output> count;

  UniqueWithCountsV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new UniqueWithCountsV2<T>(result0, result1, result2);
  }
}

class UniqueWithCountsV2<T> {
  UniqueWithCountsV2(this.y, this.idx, this.count);

  final Output y;

  final Output idx;

  final Output count;
}

UniqueWithCountsV2Output uniqueWithCountsV2<T>(Output x, Output axis,
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
  var result$ = op$.finish();
  return new UniqueWithCountsV2Output<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

class UniqueV2Output<T> {
  UniqueV2Output(this._graph, this.op, this.y, this.idx);

  final Graph _graph;

  Operation op;

  final Output<Output> y;

  final Output<Output> idx;

  UniqueV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new UniqueV2<T>(result0, result1);
  }
}

class UniqueV2<T> {
  UniqueV2(this.y, this.idx);

  final Output y;

  final Output idx;
}

UniqueV2Output uniqueV2<T>(Output x, Output axis,
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
  var result$ = op$.finish();
  return new UniqueV2Output<T>(graph, result$, result$[0], result$[1]);
}

Output scatterNd<T>(Output indices, Output updates, Output shape,
    {Graph graph, String operationName, DataType tindices}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ScatterNd', operationName ??= graph._scope.uniqueName('ScatterNd/'));
  op$.addInput(indices);
  op$.addInput(updates);
  op$.addInput(shape);
  op$.setAttrType('Tindices', tindices);
  return op$.finish()[0];
}

class UniqueOutput<T> {
  UniqueOutput(this._graph, this.op, this.y, this.idx);

  final Graph _graph;

  Operation op;

  final Output<Output> y;

  final Output<Output> idx;

  Unique run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new Unique<T>(result0, result1);
  }
}

class Unique<T> {
  Unique(this.y, this.idx);

  final Output y;

  final Output idx;
}

UniqueOutput unique<T>(Output x,
    {Graph graph, String operationName, DataType outIdx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Unique', operationName ??= graph._scope.uniqueName('Unique/'));
  op$.addInput(x);
  op$.setAttrType('out_idx', outIdx);
  var result$ = op$.finish();
  return new UniqueOutput<T>(graph, result$, result$[0], result$[1]);
}

Output argMax<T>(Output input, Output dimension,
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
  return op$.finish()[0];
}

Output reshape<T>(Output tensor, Output shape,
    {Graph graph, String operationName, DataType tshape: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Reshape', operationName ??= graph._scope.uniqueName('Reshape/'));
  op$.addInput(tensor);
  op$.addInput(shape);
  op$.setAttrType('Tshape', tshape);
  return op$.finish()[0];
}

Output checkNumerics<T>(Output tensor,
    {Graph graph, String operationName, String message}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CheckNumerics',
      operationName ??= graph._scope.uniqueName('CheckNumerics/'));
  op$.addInput(tensor);
  op$.setAttrString('message', message);
  return op$.finish()[0];
}

Output stopGradient<T>(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StopGradient',
      operationName ??= graph._scope.uniqueName('StopGradient/'));
  op$.addInput(input);
  return op$.finish()[0];
}

Output debugGradientIdentity<T>(Output input,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DebugGradientIdentity',
      operationName ??= graph._scope.uniqueName('DebugGradientIdentity/'));
  op$.addInput(input);
  return op$.finish()[0];
}

Output refIdentity<T>(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RefIdentity', operationName ??= graph._scope.uniqueName('RefIdentity/'));
  op$.addInput(input);
  return op$.finish()[0];
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
  return op$.finish()[0];
}

Output round<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Round', operationName ??= graph._scope.uniqueName('Round/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output identityN<T>(List<Output> input,
    {Graph graph, String operationName, List<DataType> t}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'IdentityN', operationName ??= graph._scope.uniqueName('IdentityN/'));
  op$.addInputList(input);
  op$.setAttrTypeList('T', t);
  return op$.finish()[0];
}

Output sparseTensorDenseAdd<T>(
    Output aIndices, Output aValues, Output aShape, Output b,
    {Graph graph, String operationName, DataType tindices}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseTensorDenseAdd',
      operationName ??= graph._scope.uniqueName('SparseTensorDenseAdd/'));
  op$.addInput(aIndices);
  op$.addInput(aValues);
  op$.addInput(aShape);
  op$.addInput(b);
  op$.setAttrType('Tindices', tindices);
  return op$.finish()[0];
}

Output snapshot<T>(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Snapshot', operationName ??= graph._scope.uniqueName('Snapshot/'));
  op$.addInput(input);
  return op$.finish()[0];
}

class FakeQuantWithMinMaxVarsGradientOutput {
  FakeQuantWithMinMaxVarsGradientOutput(this._graph, this.op,
      this.backpropsWrtInput, this.backpropWrtMin, this.backpropWrtMax);

  final Graph _graph;

  Operation op;

  final Output<Output> backpropsWrtInput;

  final Output<Output> backpropWrtMin;

  final Output<Output> backpropWrtMax;

  FakeQuantWithMinMaxVarsGradient run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new FakeQuantWithMinMaxVarsGradient(result0, result1, result2);
  }
}

class FakeQuantWithMinMaxVarsGradient {
  FakeQuantWithMinMaxVarsGradient(
      this.backpropsWrtInput, this.backpropWrtMin, this.backpropWrtMax);

  final Output backpropsWrtInput;

  final Output backpropWrtMin;

  final Output backpropWrtMax;
}

FakeQuantWithMinMaxVarsGradientOutput fakeQuantWithMinMaxVarsGradient(
    Output gradients, Output inputs, Output min, Output max,
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
  var result$ = op$.finish();
  return new FakeQuantWithMinMaxVarsGradientOutput(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output size<T>(Output input,
    {Graph graph, String operationName, DataType outType: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Size', operationName ??= graph._scope.uniqueName('Size/'));
  op$.addInput(input);
  op$.setAttrType('out_type', outType);
  return op$.finish()[0];
}

Output scalarSummary<T>(Output tags, Output values,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ScalarSummary',
      operationName ??= graph._scope.uniqueName('ScalarSummary/'));
  op$.addInput(tags);
  op$.addInput(values);
  return op$.finish()[0];
}

Output identity<T>(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Identity', operationName ??= graph._scope.uniqueName('Identity/'));
  op$.addInput(input);
  return op$.finish()[0];
}

Output reverseV2<T>(Output tensor, Output axis,
    {Graph graph, String operationName, DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ReverseV2', operationName ??= graph._scope.uniqueName('ReverseV2/'));
  op$.addInput(tensor);
  op$.addInput(axis);
  op$.setAttrType('Tidx', tidx);
  return op$.finish()[0];
}

Output reverse<T>(Output tensor, Output dims,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Reverse', operationName ??= graph._scope.uniqueName('Reverse/'));
  op$.addInput(tensor);
  op$.addInput(dims);
  return op$.finish()[0];
}

Output matrixDiagPart<T>(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MatrixDiagPart',
      operationName ??= graph._scope.uniqueName('MatrixDiagPart/'));
  op$.addInput(input);
  return op$.finish()[0];
}

Output matrixSetDiag<T>(Output input, Output diagonal,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MatrixSetDiag',
      operationName ??= graph._scope.uniqueName('MatrixSetDiag/'));
  op$.addInput(input);
  op$.addInput(diagonal);
  return op$.finish()[0];
}

Output statelessTruncatedNormal<T>(Output shape, Output seed,
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
  return op$.finish()[0];
}

Output matrixDiag<T>(Output diagonal, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'MatrixDiag', operationName ??= graph._scope.uniqueName('MatrixDiag/'));
  op$.addInput(diagonal);
  return op$.finish()[0];
}

Output generatorDataset<T>(List<Output> initFuncOtherArgs,
    List<Output> nextFuncOtherArgs, List<Output> finalizeFuncOtherArgs,
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
  return op$.finish()[0];
}

@Deprecated(
    'DEPRECATED at GraphDef version 23: Placeholder now behaves the same as PlaceholderV2.')
Output placeholderV2<T>(
    {Graph graph,
    String operationName,
    @required DataType dtype,
    Shape shape}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('PlaceholderV2',
      operationName ??= graph._scope.uniqueName('PlaceholderV2/'));
  op$.setAttrType('dtype', dtype);
  op$.setAttrShape('shape', shape);
  return op$.finish()[0];
}

Output diagPart<T>(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'DiagPart', operationName ??= graph._scope.uniqueName('DiagPart/'));
  op$.addInput(input);
  return op$.finish()[0];
}

class FakeQuantWithMinMaxVarsPerChannelGradientOutput {
  FakeQuantWithMinMaxVarsPerChannelGradientOutput(this._graph, this.op,
      this.backpropsWrtInput, this.backpropWrtMin, this.backpropWrtMax);

  final Graph _graph;

  Operation op;

  final Output<Output> backpropsWrtInput;

  final Output<Output> backpropWrtMin;

  final Output<Output> backpropWrtMax;

  FakeQuantWithMinMaxVarsPerChannelGradient run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new FakeQuantWithMinMaxVarsPerChannelGradient(
        result0, result1, result2);
  }
}

class FakeQuantWithMinMaxVarsPerChannelGradient {
  FakeQuantWithMinMaxVarsPerChannelGradient(
      this.backpropsWrtInput, this.backpropWrtMin, this.backpropWrtMax);

  final Output backpropsWrtInput;

  final Output backpropWrtMin;

  final Output backpropWrtMax;
}

FakeQuantWithMinMaxVarsPerChannelGradientOutput
    fakeQuantWithMinMaxVarsPerChannelGradient(
        Output gradients, Output inputs, Output min, Output max,
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
  var result$ = op$.finish();
  return new FakeQuantWithMinMaxVarsPerChannelGradientOutput(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output onesLike<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'OnesLike', operationName ??= graph._scope.uniqueName('OnesLike/'));
  op$.addInput(x);
  return op$.finish()[0];
}

class ParseSingleExampleOutput<T> {
  ParseSingleExampleOutput(this._graph, this.op, this.sparseIndices,
      this.sparseValues, this.sparseShapes, this.denseValues);

  final Graph _graph;

  Operation op;

  final Output<Output> sparseIndices;

  final Output<Output> sparseValues;

  final Output<Output> sparseShapes;

  final Output<Output> denseValues;

  ParseSingleExample run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    runner.fetch(op.name, index: 3);
    feed?.forEach(runner.feed);
    var result3 = runner.run()[0];
    return new ParseSingleExample<T>(result0, result1, result2, result3);
  }
}

class ParseSingleExample<T> {
  ParseSingleExample(this.sparseIndices, this.sparseValues, this.sparseShapes,
      this.denseValues);

  final Output sparseIndices;

  final Output sparseValues;

  final Output sparseShapes;

  final Output denseValues;
}

ParseSingleExampleOutput parseSingleExample<T>(
    Output serialized, List<Output> denseDefaults,
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
  var result$ = op$.finish();
  return new ParseSingleExampleOutput<T>(
      graph, result$, result$[0], result$[1], result$[2], result$[3]);
}

Output guaranteeConst<T>(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('GuaranteeConst',
      operationName ??= graph._scope.uniqueName('GuaranteeConst/'));
  op$.addInput(input);
  return op$.finish()[0];
}

Output immutableConst<T>(
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
  return op$.finish()[0];
}

Output fill<T>(Output dims, Output value,
    {Graph graph,
    String operationName,
    DataType indexType: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Fill', operationName ??= graph._scope.uniqueName('Fill/'));
  op$.addInput(dims);
  op$.addInput(value);
  op$.setAttrType('index_type', indexType);
  return op$.finish()[0];
}

Output applyCenteredRMSProp<T>(Output var$, Output mg, Output ms, Output mom,
    Output lr, Output rho, Output momentum, Output epsilon, Output grad,
    {Graph graph, String operationName, bool useLocking: false}) {
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
  return op$.finish()[0];
}

Output const$<T>(
    {Graph graph,
    String operationName,
    Tensor value,
    @required DataType dtype}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Const', operationName ??= graph._scope.uniqueName('Const/'));
  op$.setAttrTensor('value', value);
  op$.setAttrType('dtype', dtype);
  return op$.finish()[0];
}

Output splitV<T>(Output value, Output sizeSplits, Output splitDim,
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
  return op$.finish()[0];
}

Output split<T>(Output splitDim, Output value,
    {Graph graph, String operationName, int numSplit}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Split', operationName ??= graph._scope.uniqueName('Split/'));
  op$.addInput(splitDim);
  op$.addInput(value);
  op$.setAttrInt('num_split', numSplit);
  return op$.finish()[0];
}

/// This operation has no outputs.
@Deprecated(
    'DEPRECATED at GraphDef version 19: Moving word2vec into tensorflow_models/tutorials and deprecating its ops here as a result')
Operation negTrain(
    Output wIn, Output wOut, Output examples, Output labels, Output lr,
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
  return op$.finish();
}

Output concatV2<T>(List<Output> values, Output axis,
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
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation resourceApplyPowerSign<T>(Output var$, Output m, Output lr,
    Output logbase, Output signDecay, Output beta, Output grad,
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
  return op$.finish();
}

Output concat<T>(Output concatDim, List<Output> values,
    {Graph graph, String operationName, int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Concat', operationName ??= graph._scope.uniqueName('Concat/'));
  op$.addInput(concatDim);
  op$.addInputList(values);
  op$.setAttrInt('N', n);
  return op$.finish()[0];
}

Output leftShift<T>(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'LeftShift', operationName ??= graph._scope.uniqueName('LeftShift/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 19: Use TensorArrayGradV3')
Output tensorArrayScatter<T>(
    Output handle, Output indices, Output value, Output flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayScatter',
      operationName ??= graph._scope.uniqueName('TensorArrayScatter/'));
  op$.addInput(handle);
  op$.addInput(indices);
  op$.addInput(value);
  op$.addInput(flowIn);
  return op$.finish()[0];
}

Output bitwiseOr<T>(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BitwiseOr', operationName ??= graph._scope.uniqueName('BitwiseOr/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

Output applyAddSign<T>(Output var$, Output m, Output lr, Output alpha,
    Output signDecay, Output beta, Output grad,
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
  return op$.finish()[0];
}

Output bitwiseAnd<T>(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BitwiseAnd', operationName ??= graph._scope.uniqueName('BitwiseAnd/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

Output populationCount<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('PopulationCount',
      operationName ??= graph._scope.uniqueName('PopulationCount/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output decodePng<T>(Output contents,
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
  return op$.finish()[0];
}

Output invert<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Invert', operationName ??= graph._scope.uniqueName('Invert/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output fact({Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Fact', operationName ??= graph._scope.uniqueName('Fact/'));
  return op$.finish()[0];
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

  final Output<Output> vocabWord;

  final Output<Output> vocabFreq;

  final Output<Output> wordsPerEpoch;

  final Output<Output> currentEpoch;

  final Output<Output> totalWordsProcessed;

  final Output<Output> examples;

  final Output<Output> labels;

  Skipgram run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    runner.fetch(op.name, index: 3);
    feed?.forEach(runner.feed);
    var result3 = runner.run()[0];
    runner.fetch(op.name, index: 4);
    feed?.forEach(runner.feed);
    var result4 = runner.run()[0];
    runner.fetch(op.name, index: 5);
    feed?.forEach(runner.feed);
    var result5 = runner.run()[0];
    runner.fetch(op.name, index: 6);
    feed?.forEach(runner.feed);
    var result6 = runner.run()[0];
    return new Skipgram(
        result0, result1, result2, result3, result4, result5, result6);
  }
}

class Skipgram {
  Skipgram(this.vocabWord, this.vocabFreq, this.wordsPerEpoch,
      this.currentEpoch, this.totalWordsProcessed, this.examples, this.labels);

  final Output vocabWord;

  final Output vocabFreq;

  final Output wordsPerEpoch;

  final Output currentEpoch;

  final Output totalWordsProcessed;

  final Output examples;

  final Output labels;
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
  var result$ = op$.finish();
  return new SkipgramOutput(graph, result$, result$[0], result$[1], result$[2],
      result$[3], result$[4], result$[5], result$[6]);
}

Output resizeBicubicGrad<T>(Output grads, Output originalImage,
    {Graph graph, String operationName, bool alignCorners: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResizeBicubicGrad',
      operationName ??= graph._scope.uniqueName('ResizeBicubicGrad/'));
  op$.addInput(grads);
  op$.addInput(originalImage);
  op$.setAttrBool('align_corners', alignCorners);
  return op$.finish()[0];
}

Output sparseApplyMomentum<T>(Output var$, Output accum, Output lr, Output grad,
    Output indices, Output momentum,
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
  return op$.finish()[0];
}

class UniqueWithCountsOutput<T> {
  UniqueWithCountsOutput(this._graph, this.op, this.y, this.idx, this.count);

  final Graph _graph;

  Operation op;

  final Output<Output> y;

  final Output<Output> idx;

  final Output<Output> count;

  UniqueWithCounts run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new UniqueWithCounts<T>(result0, result1, result2);
  }
}

class UniqueWithCounts<T> {
  UniqueWithCounts(this.y, this.idx, this.count);

  final Output y;

  final Output idx;

  final Output count;
}

UniqueWithCountsOutput uniqueWithCounts<T>(Output x,
    {Graph graph, String operationName, DataType outIdx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('UniqueWithCounts',
      operationName ??= graph._scope.uniqueName('UniqueWithCounts/'));
  op$.addInput(x);
  op$.setAttrType('out_idx', outIdx);
  var result$ = op$.finish();
  return new UniqueWithCountsOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output serializeIterator(Output resourceHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SerializeIterator',
      operationName ??= graph._scope.uniqueName('SerializeIterator/'));
  op$.addInput(resourceHandle);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation resourceApplyCenteredRMSProp<T>(
    Output var$,
    Output mg,
    Output ms,
    Output mom,
    Output lr,
    Output rho,
    Output momentum,
    Output epsilon,
    Output grad,
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
  return op$.finish();
}

Output maxPool3DGrad<T>(Output origInput, Output origOutput, Output grad,
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
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation resourceApplyRMSProp<T>(Output var$, Output ms, Output mom, Output lr,
    Output rho, Output momentum, Output epsilon, Output grad,
    {Graph graph, String operationName, bool useLocking: false}) {
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
  return op$.finish();
}

Output zerosLike<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ZerosLike', operationName ??= graph._scope.uniqueName('ZerosLike/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output concatOffset(Output concatDim, List<Output> shape,
    {Graph graph, String operationName, int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ConcatOffset',
      operationName ??= graph._scope.uniqueName('ConcatOffset/'));
  op$.addInput(concatDim);
  op$.addInputList(shape);
  op$.setAttrInt('N', n);
  return op$.finish()[0];
}

Output sigmoid<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Sigmoid', operationName ??= graph._scope.uniqueName('Sigmoid/'));
  op$.addInput(x);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation resourceSparseApplyAdadelta<T>(
    Output var$,
    Output accum,
    Output accumUpdate,
    Output lr,
    Output rho,
    Output epsilon,
    Output grad,
    Output indices,
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
  return op$.finish();
}

/// This operation has no outputs.
Operation resourceApplyAdam<T>(
    Output var$,
    Output m,
    Output v,
    Output beta1Power,
    Output beta2Power,
    Output lr,
    Output beta1,
    Output beta2,
    Output epsilon,
    Output grad,
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
  return op$.finish();
}

/// This operation has no outputs.
Operation resourceSparseApplyMomentum<T>(Output var$, Output accum, Output lr,
    Output grad, Output indices, Output momentum,
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
  return op$.finish();
}

/// This operation has no outputs.
Operation resourceApplyMomentum<T>(
    Output var$, Output accum, Output lr, Output grad, Output momentum,
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
  return op$.finish();
}

Output parallelConcat<T>(List<Output> values,
    {Graph graph, String operationName, int n, Shape shape}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ParallelConcat',
      operationName ??= graph._scope.uniqueName('ParallelConcat/'));
  op$.addInputList(values);
  op$.setAttrInt('N', n);
  op$.setAttrShape('shape', shape);
  return op$.finish()[0];
}

Output avgPoolGrad<T>(Output origInputShape, Output grad,
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
  return op$.finish()[0];
}

Output editDistance<T>(
    Output hypothesisIndices,
    Output hypothesisValues,
    Output hypothesisShape,
    Output truthIndices,
    Output truthValues,
    Output truthShape,
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
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation resourceApplyFtrlV2<T>(
    Output var$,
    Output accum,
    Output linear,
    Output grad,
    Output lr,
    Output l1,
    Output l2,
    Output l2Shrinkage,
    Output lrPower,
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
  return op$.finish();
}

Output stackPop<T>(Output handle,
    {Graph graph, String operationName, DataType elemType}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'StackPop', operationName ??= graph._scope.uniqueName('StackPop/'));
  op$.addInput(handle);
  op$.setAttrType('elem_type', elemType);
  return op$.finish()[0];
}

Output sparseApplyFtrlV2<T>(
    Output var$,
    Output accum,
    Output linear,
    Output grad,
    Output indices,
    Output lr,
    Output l1,
    Output l2,
    Output l2Shrinkage,
    Output lrPower,
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
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation resourceSparseApplyFtrl<T>(
    Output var$,
    Output accum,
    Output linear,
    Output grad,
    Output indices,
    Output lr,
    Output l1,
    Output l2,
    Output lrPower,
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
  return op$.finish();
}

Output sign<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Sign', operationName ??= graph._scope.uniqueName('Sign/'));
  op$.addInput(x);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation resourceApplyAddSign<T>(Output var$, Output m, Output lr,
    Output alpha, Output signDecay, Output beta, Output grad,
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
  return op$.finish();
}

Output neg<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Neg', operationName ??= graph._scope.uniqueName('Neg/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output barrier(
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
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation resourceSparseApplyProximalAdagrad<T>(Output var$, Output accum,
    Output lr, Output l1, Output l2, Output grad, Output indices,
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
  return op$.finish();
}

Output bitcast<T>(Output input,
    {Graph graph, String operationName, DataType type}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Bitcast', operationName ??= graph._scope.uniqueName('Bitcast/'));
  op$.addInput(input);
  op$.setAttrType('type', type);
  return op$.finish()[0];
}

Output sparseToDense<T>(Output sparseIndices, Output outputShape,
    Output sparseValues, Output defaultValue,
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
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation resourceApplyAdagradDA<T>(
    Output var$,
    Output gradientAccumulator,
    Output gradientSquaredAccumulator,
    Output grad,
    Output lr,
    Output l1,
    Output l2,
    Output globalStep,
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
  return op$.finish();
}

Output sparseApplyAdagradDA<T>(
    Output var$,
    Output gradientAccumulator,
    Output gradientSquaredAccumulator,
    Output grad,
    Output indices,
    Output lr,
    Output l1,
    Output l2,
    Output globalStep,
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
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation resourceSparseApplyAdagrad<T>(
    Output var$, Output accum, Output lr, Output grad, Output indices,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
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
  return op$.finish();
}

Output sqrt<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Sqrt', operationName ??= graph._scope.uniqueName('Sqrt/'));
  op$.addInput(x);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation resourceApplyAdagrad<T>(
    Output var$, Output accum, Output lr, Output grad,
    {Graph graph, String operationName, bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResourceApplyAdagrad',
      operationName ??= graph._scope.uniqueName('ResourceApplyAdagrad/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(lr);
  op$.addInput(grad);
  op$.setAttrBool('use_locking', useLocking);
  return op$.finish();
}

Output applyAdadelta<T>(Output var$, Output accum, Output accumUpdate,
    Output lr, Output rho, Output epsilon, Output grad,
    {Graph graph, String operationName, bool useLocking: false}) {
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
  return op$.finish()[0];
}

Output cholesky<T>(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Cholesky', operationName ??= graph._scope.uniqueName('Cholesky/'));
  op$.addInput(input);
  return op$.finish()[0];
}

Output sparseSegmentSqrtNWithNumSegments<T>(
    Output data, Output indices, Output segmentIds, Output numSegments,
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
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation resourceApplyProximalGradientDescent<T>(
    Output var$, Output alpha, Output l1, Output l2, Output delta,
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
  return op$.finish();
}

Output tile<T>(Output input, Output multiples,
    {Graph graph,
    String operationName,
    DataType tmultiples: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Tile', operationName ??= graph._scope.uniqueName('Tile/'));
  op$.addInput(input);
  op$.addInput(multiples);
  op$.setAttrType('Tmultiples', tmultiples);
  return op$.finish()[0];
}

Output sparseApplyProximalGradientDescent<T>(Output var$, Output alpha,
    Output l1, Output l2, Output grad, Output indices,
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
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation queueEnqueue<T>(Output handle, List<Output> components,
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
  return op$.finish();
}

Output stringToHashBucketStrong(Output input,
    {Graph graph, String operationName, int numBuckets, List<int> key}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StringToHashBucketStrong',
      operationName ??= graph._scope.uniqueName('StringToHashBucketStrong/'));
  op$.addInput(input);
  op$.setAttrInt('num_buckets', numBuckets);
  op$.setAttrIntList('key', key);
  return op$.finish()[0];
}

Output applyProximalGradientDescent<T>(
    Output var$, Output alpha, Output l1, Output l2, Output delta,
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
  return op$.finish()[0];
}

class BarrierTakeManyOutput<T> {
  BarrierTakeManyOutput(
      this._graph, this.op, this.indices, this.keys, this.values);

  final Graph _graph;

  Operation op;

  final Output<Output> indices;

  final Output<Output> keys;

  final Output<Output> values;

  BarrierTakeMany run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new BarrierTakeMany<T>(result0, result1, result2);
  }
}

class BarrierTakeMany<T> {
  BarrierTakeMany(this.indices, this.keys, this.values);

  final Output indices;

  final Output keys;

  final Output values;
}

BarrierTakeManyOutput barrierTakeMany<T>(Output handle, Output numElements,
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
  var result$ = op$.finish();
  return new BarrierTakeManyOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output matrixLogarithm<T>(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MatrixLogarithm',
      operationName ??= graph._scope.uniqueName('MatrixLogarithm/'));
  op$.addInput(input);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation resourceApplyGradientDescent<T>(
    Output var$, Output alpha, Output delta,
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
  return op$.finish();
}

Output cosh<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Cosh', operationName ??= graph._scope.uniqueName('Cosh/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output applyGradientDescent<T>(Output var$, Output alpha, Output delta,
    {Graph graph, String operationName, bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ApplyGradientDescent',
      operationName ??= graph._scope.uniqueName('ApplyGradientDescent/'));
  op$.addInput(var$);
  op$.addInput(alpha);
  op$.addInput(delta);
  op$.setAttrBool('use_locking', useLocking);
  return op$.finish()[0];
}

Output l2Loss<T>(Output t, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'L2Loss', operationName ??= graph._scope.uniqueName('L2Loss/'));
  op$.addInput(t);
  return op$.finish()[0];
}

Output cast<T>(Output x,
    {Graph graph, String operationName, DataType srcT, DataType dstT}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Cast', operationName ??= graph._scope.uniqueName('Cast/'));
  op$.addInput(x);
  op$.setAttrType('SrcT', srcT);
  op$.setAttrType('DstT', dstT);
  return op$.finish()[0];
}

Output segmentMax<T>(Output data, Output segmentIds,
    {Graph graph, String operationName, DataType tindices}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SegmentMax', operationName ??= graph._scope.uniqueName('SegmentMax/'));
  op$.addInput(data);
  op$.addInput(segmentIds);
  op$.setAttrType('Tindices', tindices);
  return op$.finish()[0];
}

Output countUpTo<T>(Output ref,
    {Graph graph, String operationName, int limit}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'CountUpTo', operationName ??= graph._scope.uniqueName('CountUpTo/'));
  op$.addInput(ref);
  op$.setAttrInt('limit', limit);
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 9: Use tf.nn.batch_normalization()')
Output batchNormWithGlobalNormalization<T>(
    Output t, Output m, Output v, Output beta, Output gamma,
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
  return op$.finish()[0];
}

Output fakeQuantWithMinMaxArgs(Output inputs,
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
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation resourceScatterNdUpdate<T>(Output ref, Output indices, Output updates,
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
  return op$.finish();
}

Output scatterNdUpdate<T>(Output ref, Output indices, Output updates,
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
  return op$.finish()[0];
}

Output scatterMul<T>(Output ref, Output indices, Output updates,
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
  return op$.finish()[0];
}

Output scatterSub<T>(Output ref, Output indices, Output updates,
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
  return op$.finish()[0];
}

@Deprecated(
    'DEPRECATED at GraphDef version 13: Use MatrixTriangularSolve instead.')
Output batchMatrixTriangularSolve<T>(Output matrix, Output rhs,
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
  return op$.finish()[0];
}

Output mean<T>(Output input, Output reductionIndices,
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
  return op$.finish()[0];
}

Output scatterAdd<T>(Output ref, Output indices, Output updates,
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
  return op$.finish()[0];
}

Output scatterUpdate<T>(Output ref, Output indices, Output updates,
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
  return op$.finish()[0];
}

Output assignSub<T>(Output ref, Output value,
    {Graph graph, String operationName, bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'AssignSub', operationName ??= graph._scope.uniqueName('AssignSub/'));
  op$.addInput(ref);
  op$.addInput(value);
  op$.setAttrBool('use_locking', useLocking);
  return op$.finish()[0];
}

Output assignAdd<T>(Output ref, Output value,
    {Graph graph, String operationName, bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'AssignAdd', operationName ??= graph._scope.uniqueName('AssignAdd/'));
  op$.addInput(ref);
  op$.addInput(value);
  op$.setAttrBool('use_locking', useLocking);
  return op$.finish()[0];
}

Output betainc<T>(Output a, Output b, Output x,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Betainc', operationName ??= graph._scope.uniqueName('Betainc/'));
  op$.addInput(a);
  op$.addInput(b);
  op$.addInput(x);
  return op$.finish()[0];
}

Output assign<T>(Output ref, Output value,
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
  return op$.finish()[0];
}

Output isVariableInitialized<T>(Output ref,
    {Graph graph, String operationName, DataType dtype}) {
  dtype ??= inferType(ref);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('IsVariableInitialized',
      operationName ??= graph._scope.uniqueName('IsVariableInitialized/'));
  op$.addInput(ref);
  op$.setAttrType('dtype', dtype);
  return op$.finish()[0];
}

Output variableV2<T>(
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
  return op$.finish()[0];
}

Output iteratorFromStringHandle(Output stringHandle,
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
  return op$.finish()[0];
}

/// Writes a `Summary` protocol buffer with audio.
/// The summary has up to `max_outputs` summary values containing audio. The
/// audio is built from `tensor` which must be 3-D with shape `[batch_size,
/// frames, channels]` or 2-D with shape `[batch_size, frames]`. The values are
/// assumed to be in the range of `[-1.0, 1.0]` with a sample rate of `sample_rate`.
/// The `tag` argument is a scalar `Tensor` of type `string`.  It is used to
/// build the `tag` of the summary values:
/// *  If `max_outputs` is 1, the summary value tag is '*tag*/audio'.
/// *  If `max_outputs` is greater than 1, the summary value tags are
/// generated sequentially as '*tag*/audio/0', '*tag*/audio/1', etc.
/// This operation has no outputs.
/// * [writer]: A handle to a summary writer.
/// * [step]: The step to write the summary for.
/// * [tag]: Scalar. Used to build the `tag` attribute of the summary values.
/// * [tensor]: 2-D of shape `[batch_size, frames]`.
/// * [sampleRate]: The sample rate of the signal in hertz.
/// attr [maxOutputs]: Max number of batch elements to generate audio for.
Operation writeAudioSummary(
    Output writer, Output step, Output tag, Output tensor, Output sampleRate,
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
  return op$.finish();
}

/// This operation has no outputs.
@Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayCloseV3')
Operation tensorArrayClose(Output handle, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayClose',
      operationName ??= graph._scope.uniqueName('TensorArrayClose/'));
  op$.addInput(handle);
  return op$.finish();
}

Output matrixBandPart<T>(Output input, Output numLower, Output numUpper,
    {Graph graph, String operationName, DataType tindex: DataType.DT_INT64}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MatrixBandPart',
      operationName ??= graph._scope.uniqueName('MatrixBandPart/'));
  op$.addInput(input);
  op$.addInput(numLower);
  op$.addInput(numUpper);
  op$.setAttrType('Tindex', tindex);
  return op$.finish()[0];
}

class TensorArrayConcatV2Output<T> {
  TensorArrayConcatV2Output(this._graph, this.op, this.value, this.lengths);

  final Graph _graph;

  Operation op;

  final Output<Output> value;

  final Output<Output> lengths;

  TensorArrayConcatV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new TensorArrayConcatV2<T>(result0, result1);
  }
}

class TensorArrayConcatV2<T> {
  TensorArrayConcatV2(this.value, this.lengths);

  final Output value;

  final Output lengths;
}

TensorArrayConcatV2Output tensorArrayConcatV2<T>(Output handle, Output flowIn,
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
  var result$ = op$.finish();
  return new TensorArrayConcatV2Output<T>(
      graph, result$, result$[0], result$[1]);
}

Output matrixSolve<T>(Output matrix, Output rhs,
    {Graph graph, String operationName, bool adjoint: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'MatrixSolve', operationName ??= graph._scope.uniqueName('MatrixSolve/'));
  op$.addInput(matrix);
  op$.addInput(rhs);
  op$.setAttrBool('adjoint', adjoint);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation writeFile(Output filename, Output contents,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'WriteFile', operationName ??= graph._scope.uniqueName('WriteFile/'));
  op$.addInput(filename);
  op$.addInput(contents);
  return op$.finish();
}

/// Writes a `Summary` protocol buffer with images.
/// The summary has up to `max_images` summary values containing images. The
/// images are built from `tensor` which must be 4-D with shape `[batch_size,
/// height, width, channels]` and where `channels` can be:
/// *  1: `tensor` is interpreted as Grayscale.
/// *  3: `tensor` is interpreted as RGB.
/// *  4: `tensor` is interpreted as RGBA.
/// The images have the same number of channels as the input tensor. For float
/// input, the values are normalized one image at a time to fit in the range
/// `[0, 255]`.  `uint8` values are unchanged.  The op uses two different
/// normalization algorithms:
/// *  If the input values are all positive, they are rescaled so the largest one
/// is 255.
/// *  If any input value is negative, the values are shifted so input value 0.0
/// is at 127.  They are then rescaled so that either the smallest value is 0,
/// or the largest one is 255.
/// The `tag` argument is a scalar `Tensor` of type `string`.  It is used to
/// build the `tag` of the summary values:
/// *  If `max_images` is 1, the summary value tag is '*tag*/image'.
/// *  If `max_images` is greater than 1, the summary value tags are
/// generated sequentially as '*tag*/image/0', '*tag*/image/1', etc.
/// The `bad_color` argument is the color to use in the generated images for
/// non-finite input values.  It is a `unit8` 1-D tensor of length `channels`.
/// Each element must be in the range `[0, 255]` (It represents the value of a
/// pixel in the output image).  Non-finite values in the input tensor are
/// replaced by this tensor in the output image.  The default value is the color
/// red.
/// This operation has no outputs.
/// * [writer]: A handle to a summary writer.
/// * [step]: The step to write the summary for.
/// * [tag]: Scalar. Used to build the `tag` attribute of the summary values.
/// * [tensor]: 4-D of shape `[batch_size, height, width, channels]` where
/// `channels` is 1, 3, or 4.
/// * [badColor]: Color to use for pixels with non-finite values.
/// attr [maxImages]: Max number of batch elements to generate images for.
Operation writeImageSummary<T>(
    Output writer, Output step, Output tag, Output tensor, Output badColor,
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
  return op$.finish();
}

Output tan<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Tan', operationName ??= graph._scope.uniqueName('Tan/'));
  op$.addInput(x);
  return op$.finish()[0];
}

/// Writes a `Summary` protocol buffer with a histogram.
/// The generated
/// [`Summary`](https://www.tensorflow.org/code/tensorflow/core/framework/summary.proto)
/// has one summary value containing a histogram for `values`.
/// This op reports an `InvalidArgument` error if any value is not finite.
/// This operation has no outputs.
/// * [writer]: A handle to a summary writer.
/// * [step]: The step to write the summary for.
/// * [tag]: Scalar.  Tag to use for the `Summary.Value`.
/// * [values]: Any shape. Values to use to build the histogram.
Operation writeHistogramSummary<T>(
    Output writer, Output step, Output tag, Output values,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('WriteHistogramSummary',
      operationName ??= graph._scope.uniqueName('WriteHistogramSummary/'));
  op$.addInput(writer);
  op$.addInput(step);
  op$.addInput(tag);
  op$.addInput(values);
  return op$.finish();
}

Output batchMatMul<T>(Output x, Output y,
    {Graph graph, String operationName, bool adjX: false, bool adjY: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BatchMatMul', operationName ??= graph._scope.uniqueName('BatchMatMul/'));
  op$.addInput(x);
  op$.addInput(y);
  op$.setAttrBool('adj_x', adjX);
  op$.setAttrBool('adj_y', adjY);
  return op$.finish()[0];
}

class BatchOutput<T> {
  BatchOutput(
      this._graph, this.op, this.batchedTensors, this.batchIndex, this.id);

  final Graph _graph;

  Operation op;

  final Output<Output> batchedTensors;

  final Output<Output> batchIndex;

  final Output<Output> id;

  Batch run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new Batch<T>(result0, result1, result2);
  }
}

class Batch<T> {
  Batch(this.batchedTensors, this.batchIndex, this.id);

  final Output batchedTensors;

  final Output batchIndex;

  final Output id;
}

BatchOutput batch<T>(List<Output> inTensors,
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
  var result$ = op$.finish();
  return new BatchOutput<T>(graph, result$, result$[0], result$[1], result$[2]);
}

/// Outputs a `Summary` protocol buffer with a tensor.
/// This operation has no outputs.
/// * [writer]: A handle to a summary writer.
/// * [step]: The step to write the summary for.
/// * [tensor]: A tensor to serialize.
/// * [tag]: The summary's tag.
/// * [summaryMetadata]: Serialized SummaryMetadata protocol buffer containing
/// plugin-related metadata for this summary.
Operation writeSummary<T>(Output writer, Output step, Output tensor, Output tag,
    Output summaryMetadata,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('WriteSummary',
      operationName ??= graph._scope.uniqueName('WriteSummary/'));
  op$.addInput(writer);
  op$.addInput(step);
  op$.addInput(tensor);
  op$.addInput(tag);
  op$.addInput(summaryMetadata);
  return op$.finish();
}

/// Flushes the writer's unwritten events.
/// This operation has no outputs.
/// * [writer]: A handle to the summary writer resource.
Operation flushSummaryWriter(Output writer,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('FlushSummaryWriter',
      operationName ??= graph._scope.uniqueName('FlushSummaryWriter/'));
  op$.addInput(writer);
  return op$.finish();
}

/// Creates summary database writer accessible by given resource handle.
/// This can be used to write tensors from the execution graph directly
/// to a database. Only SQLite is supported right now. This function
/// will create the schema if it doesn't exist. Entries in the Users,
/// Experiments, and Runs tables will be created automatically if they
/// don't already exist.
/// This operation has no outputs.
/// * [writer]: Handle to SummaryWriter resource to overwrite.
/// * [dbUri]: For example "file:/tmp/foo.sqlite".
/// * [experimentName]: Can't contain ASCII control characters or <>. Case
/// sensitive. If empty, then the Run will not be associated with any
/// Experiment.
/// * [runName]: Can't contain ASCII control characters or <>. Case sensitive.
/// If empty, then each Tag will not be associated with any Run.
/// * [userName]: Must be valid as both a DNS label and Linux username. If
/// empty, then the Experiment will not be associated with any User.
Operation createSummaryDbWriter(Output writer, Output dbUri,
    Output experimentName, Output runName, Output userName,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CreateSummaryDbWriter',
      operationName ??= graph._scope.uniqueName('CreateSummaryDbWriter/'));
  op$.addInput(writer);
  op$.addInput(dbUri);
  op$.addInput(experimentName);
  op$.addInput(runName);
  op$.addInput(userName);
  return op$.finish();
}

Output sparseApplyRMSProp<T>(Output var$, Output ms, Output mom, Output lr,
    Output rho, Output momentum, Output epsilon, Output grad, Output indices,
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
  return op$.finish()[0];
}

/// Returns a handle to be used to access a summary writer.
/// The summary writer is an in-graph resource which can be used by ops to write
/// summaries to event files.
/// This operation has one output: the summary writer resource. Scalar handle.
Output summaryWriter(
    {Graph graph, String operationName, String sharedName, String container}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SummaryWriter',
      operationName ??= graph._scope.uniqueName('SummaryWriter/'));
  op$.setAttrString('shared_name', sharedName);
  op$.setAttrString('container', container);
  return op$.finish()[0];
}

Output substr<T>(Output input, Output pos, Output len,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Substr', operationName ??= graph._scope.uniqueName('Substr/'));
  op$.addInput(input);
  op$.addInput(pos);
  op$.addInput(len);
  return op$.finish()[0];
}

Output decodeBase64(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DecodeBase64',
      operationName ??= graph._scope.uniqueName('DecodeBase64/'));
  op$.addInput(input);
  return op$.finish()[0];
}

Output encodeBase64(Output input,
    {Graph graph, String operationName, bool pad: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('EncodeBase64',
      operationName ??= graph._scope.uniqueName('EncodeBase64/'));
  op$.addInput(input);
  op$.setAttrBool('pad', pad);
  return op$.finish()[0];
}

Output stringJoin(List<Output> inputs,
    {Graph graph, String operationName, int n, String separator}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'StringJoin', operationName ??= graph._scope.uniqueName('StringJoin/'));
  op$.addInputList(inputs);
  op$.setAttrInt('N', n);
  op$.setAttrString('separator', separator);
  return op$.finish()[0];
}

Output softsign<T>(Output features, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Softsign', operationName ??= graph._scope.uniqueName('Softsign/'));
  op$.addInput(features);
  return op$.finish()[0];
}

class QuantizedAddOutput<T> {
  QuantizedAddOutput(this._graph, this.op, this.z, this.minZ, this.maxZ);

  final Graph _graph;

  Operation op;

  final Output<Output> z;

  final Output<Output> minZ;

  final Output<Output> maxZ;

  QuantizedAdd run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new QuantizedAdd<T>(result0, result1, result2);
  }
}

class QuantizedAdd<T> {
  QuantizedAdd(this.z, this.minZ, this.maxZ);

  final Output z;

  final Output minZ;

  final Output maxZ;
}

QuantizedAddOutput quantizedAdd<T>(
    Output x, Output y, Output minX, Output maxX, Output minY, Output maxY,
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
  var result$ = op$.finish();
  return new QuantizedAddOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output stringToHashBucket(Output stringTensor,
    {Graph graph, String operationName, int numBuckets}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StringToHashBucket',
      operationName ??= graph._scope.uniqueName('StringToHashBucket/'));
  op$.addInput(stringTensor);
  op$.setAttrInt('num_buckets', numBuckets);
  return op$.finish()[0];
}

Output isFinite<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'IsFinite', operationName ??= graph._scope.uniqueName('IsFinite/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output regexReplace(Output input, Output pattern, Output rewrite,
    {Graph graph, String operationName, bool replaceGlobal: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('RegexReplace',
      operationName ??= graph._scope.uniqueName('RegexReplace/'));
  op$.addInput(input);
  op$.addInput(pattern);
  op$.addInput(rewrite);
  op$.setAttrBool('replace_global', replaceGlobal);
  return op$.finish()[0];
}

Output applyAdagrad<T>(Output var$, Output accum, Output lr, Output grad,
    {Graph graph, String operationName, bool useLocking: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ApplyAdagrad',
      operationName ??= graph._scope.uniqueName('ApplyAdagrad/'));
  op$.addInput(var$);
  op$.addInput(accum);
  op$.addInput(lr);
  op$.addInput(grad);
  op$.setAttrBool('use_locking', useLocking);
  return op$.finish()[0];
}

Output statelessRandomNormal<T>(Output shape, Output seed,
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
  return op$.finish()[0];
}

Output statelessRandomUniform<T>(Output shape, Output seed,
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
  return op$.finish()[0];
}

class QuantizedResizeBilinearOutput<T> {
  QuantizedResizeBilinearOutput(
      this._graph, this.op, this.resizedImages, this.outMin, this.outMax);

  final Graph _graph;

  Operation op;

  final Output<Output> resizedImages;

  final Output<Output> outMin;

  final Output<Output> outMax;

  QuantizedResizeBilinear run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new QuantizedResizeBilinear<T>(result0, result1, result2);
  }
}

class QuantizedResizeBilinear<T> {
  QuantizedResizeBilinear(this.resizedImages, this.outMin, this.outMax);

  final Output resizedImages;

  final Output outMin;

  final Output outMax;
}

QuantizedResizeBilinearOutput quantizedResizeBilinear<T>(
    Output images, Output size, Output min, Output max,
    {Graph graph, String operationName, bool alignCorners: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QuantizedResizeBilinear',
      operationName ??= graph._scope.uniqueName('QuantizedResizeBilinear/'));
  op$.addInput(images);
  op$.addInput(size);
  op$.addInput(min);
  op$.addInput(max);
  op$.setAttrBool('align_corners', alignCorners);
  var result$ = op$.finish();
  return new QuantizedResizeBilinearOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output randomGamma<T>(Output shape, Output alpha,
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
  return op$.finish()[0];
}

Output randomShuffle<T>(Output value,
    {Graph graph, String operationName, int seed: 0, int seed2: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('RandomShuffle',
      operationName ??= graph._scope.uniqueName('RandomShuffle/'));
  op$.addInput(value);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
  return op$.finish()[0];
}

Output invertPermutation<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('InvertPermutation',
      operationName ??= graph._scope.uniqueName('InvertPermutation/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output readFile(Output filename, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ReadFile', operationName ??= graph._scope.uniqueName('ReadFile/'));
  op$.addInput(filename);
  return op$.finish()[0];
}

Output truncatedNormal<T>(Output shape,
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
  return op$.finish()[0];
}

Output erf<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Erf', operationName ??= graph._scope.uniqueName('Erf/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output randomStandardNormal<T>(Output shape,
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
  return op$.finish()[0];
}

Output erfc<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Erfc', operationName ??= graph._scope.uniqueName('Erfc/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output randomUniformInt<T>(Output shape, Output minval, Output maxval,
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
  return op$.finish()[0];
}

Output randomUniform<T>(Output shape,
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
  return op$.finish()[0];
}

class SparseFillEmptyRowsGradOutput<T> {
  SparseFillEmptyRowsGradOutput(
      this._graph, this.op, this.dValues, this.dDefaultValue);

  final Graph _graph;

  Operation op;

  final Output<Output> dValues;

  final Output<Output> dDefaultValue;

  SparseFillEmptyRowsGrad run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new SparseFillEmptyRowsGrad<T>(result0, result1);
  }
}

class SparseFillEmptyRowsGrad<T> {
  SparseFillEmptyRowsGrad(this.dValues, this.dDefaultValue);

  final Output dValues;

  final Output dDefaultValue;
}

SparseFillEmptyRowsGradOutput sparseFillEmptyRowsGrad<T>(
    Output reverseIndexMap, Output gradValues,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseFillEmptyRowsGrad',
      operationName ??= graph._scope.uniqueName('SparseFillEmptyRowsGrad/'));
  op$.addInput(reverseIndexMap);
  op$.addInput(gradValues);
  var result$ = op$.finish();
  return new SparseFillEmptyRowsGradOutput<T>(
      graph, result$, result$[0], result$[1]);
}

class QuantizedConv2DOutput<T> {
  QuantizedConv2DOutput(
      this._graph, this.op, this.output, this.minOutput, this.maxOutput);

  final Graph _graph;

  Operation op;

  final Output<Output> output;

  final Output<Output> minOutput;

  final Output<Output> maxOutput;

  QuantizedConv2D run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new QuantizedConv2D<T>(result0, result1, result2);
  }
}

class QuantizedConv2D<T> {
  QuantizedConv2D(this.output, this.minOutput, this.maxOutput);

  final Output output;

  final Output minOutput;

  final Output maxOutput;
}

QuantizedConv2DOutput quantizedConv2D<T>(Output input, Output filter,
    Output minInput, Output maxInput, Output minFilter, Output maxFilter,
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
  var result$ = op$.finish();
  return new QuantizedConv2DOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output scatterNdSub<T>(Output ref, Output indices, Output updates,
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
  return op$.finish()[0];
}

class SparseFillEmptyRowsOutput<T> {
  SparseFillEmptyRowsOutput(this._graph, this.op, this.outputIndices,
      this.outputValues, this.emptyRowIndicator, this.reverseIndexMap);

  final Graph _graph;

  Operation op;

  final Output<Output> outputIndices;

  final Output<Output> outputValues;

  final Output<Output> emptyRowIndicator;

  final Output<Output> reverseIndexMap;

  SparseFillEmptyRows run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    runner.fetch(op.name, index: 3);
    feed?.forEach(runner.feed);
    var result3 = runner.run()[0];
    return new SparseFillEmptyRows<T>(result0, result1, result2, result3);
  }
}

class SparseFillEmptyRows<T> {
  SparseFillEmptyRows(this.outputIndices, this.outputValues,
      this.emptyRowIndicator, this.reverseIndexMap);

  final Output outputIndices;

  final Output outputValues;

  final Output emptyRowIndicator;

  final Output reverseIndexMap;
}

SparseFillEmptyRowsOutput sparseFillEmptyRows<T>(
    Output indices, Output values, Output denseShape, Output defaultValue,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseFillEmptyRows',
      operationName ??= graph._scope.uniqueName('SparseFillEmptyRows/'));
  op$.addInput(indices);
  op$.addInput(values);
  op$.addInput(denseShape);
  op$.addInput(defaultValue);
  var result$ = op$.finish();
  return new SparseFillEmptyRowsOutput<T>(
      graph, result$, result$[0], result$[1], result$[2], result$[3]);
}

Output flatMapDataset<T>(Output inputDataset, List<Output> otherArguments,
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
  return op$.finish()[0];
}

Output addManySparseToTensorsMap<T>(
    Output sparseIndices, Output sparseValues, Output sparseShape,
    {Graph graph, String operationName, String container, String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AddManySparseToTensorsMap',
      operationName ??= graph._scope.uniqueName('AddManySparseToTensorsMap/'));
  op$.addInput(sparseIndices);
  op$.addInput(sparseValues);
  op$.addInput(sparseShape);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
  return op$.finish()[0];
}

Output biasAddGrad<T>(Output outBackprop,
    {Graph graph, String operationName, String dataFormat: 'NHWC'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BiasAddGrad', operationName ??= graph._scope.uniqueName('BiasAddGrad/'));
  op$.addInput(outBackprop);
  op$.setAttrString('data_format', dataFormat);
  return op$.finish()[0];
}

Output elu<T>(Output features, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Elu', operationName ??= graph._scope.uniqueName('Elu/'));
  op$.addInput(features);
  return op$.finish()[0];
}

Output addSparseToTensorsMap<T>(
    Output sparseIndices, Output sparseValues, Output sparseShape,
    {Graph graph, String operationName, String container, String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AddSparseToTensorsMap',
      operationName ??= graph._scope.uniqueName('AddSparseToTensorsMap/'));
  op$.addInput(sparseIndices);
  op$.addInput(sparseValues);
  op$.addInput(sparseShape);
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
  return op$.finish()[0];
}

class SparseSparseMaximumOutput<T> {
  SparseSparseMaximumOutput(
      this._graph, this.op, this.outputIndices, this.outputValues);

  final Graph _graph;

  Operation op;

  final Output<Output> outputIndices;

  final Output<Output> outputValues;

  SparseSparseMaximum run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new SparseSparseMaximum<T>(result0, result1);
  }
}

class SparseSparseMaximum<T> {
  SparseSparseMaximum(this.outputIndices, this.outputValues);

  final Output outputIndices;

  final Output outputValues;
}

SparseSparseMaximumOutput sparseSparseMaximum<T>(
    Output aIndices,
    Output aValues,
    Output aShape,
    Output bIndices,
    Output bValues,
    Output bShape,
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
  var result$ = op$.finish();
  return new SparseSparseMaximumOutput<T>(
      graph, result$, result$[0], result$[1]);
}

Output preventGradient<T>(Output input,
    {Graph graph, String operationName, String message}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('PreventGradient',
      operationName ??= graph._scope.uniqueName('PreventGradient/'));
  op$.addInput(input);
  op$.setAttrString('message', message);
  return op$.finish()[0];
}

Output sparseSoftmax<T>(Output spIndices, Output spValues, Output spShape,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseSoftmax',
      operationName ??= graph._scope.uniqueName('SparseSoftmax/'));
  op$.addInput(spIndices);
  op$.addInput(spValues);
  op$.addInput(spShape);
  return op$.finish()[0];
}

Output sparseDenseCwiseAdd<T>(
    Output spIndices, Output spValues, Output spShape, Output dense,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseDenseCwiseAdd',
      operationName ??= graph._scope.uniqueName('SparseDenseCwiseAdd/'));
  op$.addInput(spIndices);
  op$.addInput(spValues);
  op$.addInput(spShape);
  op$.addInput(dense);
  return op$.finish()[0];
}

Output getSessionHandle<T>(Output value, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('GetSessionHandle',
      operationName ??= graph._scope.uniqueName('GetSessionHandle/'));
  op$.addInput(value);
  return op$.finish()[0];
}

Output fusedPadConv2D<T>(Output input, Output paddings, Output filter,
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
  return op$.finish()[0];
}

Output sparseDenseCwiseMul<T>(
    Output spIndices, Output spValues, Output spShape, Output dense,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseDenseCwiseMul',
      operationName ??= graph._scope.uniqueName('SparseDenseCwiseMul/'));
  op$.addInput(spIndices);
  op$.addInput(spValues);
  op$.addInput(spShape);
  op$.addInput(dense);
  return op$.finish()[0];
}

class SparseReorderOutput<T> {
  SparseReorderOutput(
      this._graph, this.op, this.outputIndices, this.outputValues);

  final Graph _graph;

  Operation op;

  final Output<Output> outputIndices;

  final Output<Output> outputValues;

  SparseReorder run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new SparseReorder<T>(result0, result1);
  }
}

class SparseReorder<T> {
  SparseReorder(this.outputIndices, this.outputValues);

  final Output outputIndices;

  final Output outputValues;
}

SparseReorderOutput sparseReorder<T>(
    Output inputIndices, Output inputValues, Output inputShape,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseReorder',
      operationName ??= graph._scope.uniqueName('SparseReorder/'));
  op$.addInput(inputIndices);
  op$.addInput(inputValues);
  op$.addInput(inputShape);
  var result$ = op$.finish();
  return new SparseReorderOutput<T>(graph, result$, result$[0], result$[1]);
}

Output relu6<T>(Output features, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Relu6', operationName ??= graph._scope.uniqueName('Relu6/'));
  op$.addInput(features);
  return op$.finish()[0];
}

Output readerSerializeStateV2(Output readerHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ReaderSerializeStateV2',
      operationName ??= graph._scope.uniqueName('ReaderSerializeStateV2/'));
  op$.addInput(readerHandle);
  return op$.finish()[0];
}

class SparseSplitOutput<T> {
  SparseSplitOutput(this._graph, this.op, this.outputIndices, this.outputValues,
      this.outputShape);

  final Graph _graph;

  Operation op;

  final Output<Output> outputIndices;

  final Output<Output> outputValues;

  final Output<Output> outputShape;

  SparseSplit run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new SparseSplit<T>(result0, result1, result2);
  }
}

class SparseSplit<T> {
  SparseSplit(this.outputIndices, this.outputValues, this.outputShape);

  final Output outputIndices;

  final Output outputValues;

  final Output outputShape;
}

SparseSplitOutput sparseSplit<T>(
    Output splitDim, Output indices, Output values, Output shape,
    {Graph graph, String operationName, int numSplit}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SparseSplit', operationName ??= graph._scope.uniqueName('SparseSplit/'));
  op$.addInput(splitDim);
  op$.addInput(indices);
  op$.addInput(values);
  op$.addInput(shape);
  op$.setAttrInt('num_split', numSplit);
  var result$ = op$.finish();
  return new SparseSplitOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

/// This operation has no outputs.
Operation destroyResourceOp(Output resource,
    {Graph graph, String operationName, bool ignoreLookupError: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DestroyResourceOp',
      operationName ??= graph._scope.uniqueName('DestroyResourceOp/'));
  op$.addInput(resource);
  op$.setAttrBool('ignore_lookup_error', ignoreLookupError);
  return op$.finish();
}

Output histogramFixedWidth<T>(Output values, Output valueRange, Output nbins,
    {Graph graph, String operationName, DataType dtype: DataType.DT_INT32}) {
  dtype ??= inferType(values);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('HistogramFixedWidth',
      operationName ??= graph._scope.uniqueName('HistogramFixedWidth/'));
  op$.addInput(values);
  op$.addInput(valueRange);
  op$.addInput(nbins);
  op$.setAttrType('dtype', dtype);
  return op$.finish()[0];
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
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayWriteV3')
Output tensorArrayWriteV2<T>(
    Output handle, Output index, Output value, Output flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayWriteV2',
      operationName ??= graph._scope.uniqueName('TensorArrayWriteV2/'));
  op$.addInput(handle);
  op$.addInput(index);
  op$.addInput(value);
  op$.addInput(flowIn);
  return op$.finish()[0];
}

class DenseToSparseSetOperationOutput<T> {
  DenseToSparseSetOperationOutput(this._graph, this.op, this.resultIndices,
      this.resultValues, this.resultShape);

  final Graph _graph;

  Operation op;

  final Output<Output> resultIndices;

  final Output<Output> resultValues;

  final Output<Output> resultShape;

  DenseToSparseSetOperation run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new DenseToSparseSetOperation<T>(result0, result1, result2);
  }
}

class DenseToSparseSetOperation<T> {
  DenseToSparseSetOperation(
      this.resultIndices, this.resultValues, this.resultShape);

  final Output resultIndices;

  final Output resultValues;

  final Output resultShape;
}

DenseToSparseSetOperationOutput denseToSparseSetOperation<T>(
    Output set1, Output set2Indices, Output set2Values, Output set2Shape,
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
  var result$ = op$.finish();
  return new DenseToSparseSetOperationOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

/// This operation has no outputs.
Operation sdcaShrinkL1(List<Output> weights,
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
  return op$.finish();
}

/// This operation has no outputs.
Operation consumeMutexLock(Output mutexLock,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ConsumeMutexLock',
      operationName ??= graph._scope.uniqueName('ConsumeMutexLock/'));
  op$.addInput(mutexLock);
  return op$.finish();
}

class QuantizedBiasAddOutput<T> {
  QuantizedBiasAddOutput(
      this._graph, this.op, this.output, this.minOut, this.maxOut);

  final Graph _graph;

  Operation op;

  final Output<Output> output;

  final Output<Output> minOut;

  final Output<Output> maxOut;

  QuantizedBiasAdd run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new QuantizedBiasAdd<T>(result0, result1, result2);
  }
}

class QuantizedBiasAdd<T> {
  QuantizedBiasAdd(this.output, this.minOut, this.maxOut);

  final Output output;

  final Output minOut;

  final Output maxOut;
}

QuantizedBiasAddOutput quantizedBiasAdd<T>(Output input, Output bias,
    Output minInput, Output maxInput, Output minBias, Output maxBias,
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
  var result$ = op$.finish();
  return new QuantizedBiasAddOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output dataFormatVecPermute<T>(Output x,
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
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 13: Use CholeskyGrad instead.')
Output batchCholeskyGrad<T>(Output l, Output grad,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchCholeskyGrad',
      operationName ??= graph._scope.uniqueName('BatchCholeskyGrad/'));
  op$.addInput(l);
  op$.addInput(grad);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation resourceScatterAdd<T>(Output resource, Output indices, Output updates,
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
  return op$.finish();
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

  final Output<Output> xBackprop;

  final Output<Output> scaleBackprop;

  final Output<Output> offsetBackprop;

  final Output<Output> reserveSpace3;

  final Output<Output> reserveSpace4;

  FusedBatchNormGradV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    runner.fetch(op.name, index: 3);
    feed?.forEach(runner.feed);
    var result3 = runner.run()[0];
    runner.fetch(op.name, index: 4);
    feed?.forEach(runner.feed);
    var result4 = runner.run()[0];
    return new FusedBatchNormGradV2<T>(
        result0, result1, result2, result3, result4);
  }
}

class FusedBatchNormGradV2<T> {
  FusedBatchNormGradV2(this.xBackprop, this.scaleBackprop, this.offsetBackprop,
      this.reserveSpace3, this.reserveSpace4);

  final Output xBackprop;

  final Output scaleBackprop;

  final Output offsetBackprop;

  final Output reserveSpace3;

  final Output reserveSpace4;
}

FusedBatchNormGradV2Output fusedBatchNormGradV2<T>(Output yBackprop, Output x,
    Output scale, Output reserveSpace1, Output reserveSpace2,
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
  var result$ = op$.finish();
  return new FusedBatchNormGradV2Output<T>(graph, result$, result$[0],
      result$[1], result$[2], result$[3], result$[4]);
}

Output barrierReadySize(Output handle, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BarrierReadySize',
      operationName ??= graph._scope.uniqueName('BarrierReadySize/'));
  op$.addInput(handle);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation mapStage<T>(Output key, Output indices, List<Output> values,
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
  return op$.finish();
}

Output sparseTensorDenseMatMul<T>(
    Output aIndices, Output aValues, Output aShape, Output b,
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
  return op$.finish()[0];
}

Output unsortedSegmentMin<T>(Output data, Output segmentIds, Output numSegments,
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
  return op$.finish()[0];
}

Output segmentMin<T>(Output data, Output segmentIds,
    {Graph graph, String operationName, DataType tindices}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SegmentMin', operationName ??= graph._scope.uniqueName('SegmentMin/'));
  op$.addInput(data);
  op$.addInput(segmentIds);
  op$.setAttrType('Tindices', tindices);
  return op$.finish()[0];
}

Output remoteFusedGraphExecute<T>(List<Output> inputs,
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
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation resourceSparseApplyRMSProp<T>(
    Output var$,
    Output ms,
    Output mom,
    Output lr,
    Output rho,
    Output momentum,
    Output epsilon,
    Output grad,
    Output indices,
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
  return op$.finish();
}

@Deprecated('DEPRECATED at GraphDef version 15: Use IFFT2D')
Output batchIFFT2D(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BatchIFFT2D', operationName ??= graph._scope.uniqueName('BatchIFFT2D/'));
  op$.addInput(input);
  return op$.finish()[0];
}

Output stringToNumber<T>(Output stringTensor,
    {Graph graph, String operationName, DataType outType: DataType.DT_FLOAT}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StringToNumber',
      operationName ??= graph._scope.uniqueName('StringToNumber/'));
  op$.addInput(stringTensor);
  op$.setAttrType('out_type', outType);
  return op$.finish()[0];
}

Output decodeJSONExample(Output jsonExamples,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DecodeJSONExample',
      operationName ??= graph._scope.uniqueName('DecodeJSONExample/'));
  op$.addInput(jsonExamples);
  return op$.finish()[0];
}

Output tensorSummary<T>(Output tensor,
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
  return op$.finish()[0];
}

Output scatterDiv<T>(Output ref, Output indices, Output updates,
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
  return op$.finish()[0];
}

Output serializeTensor<T>(Output tensor, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SerializeTensor',
      operationName ??= graph._scope.uniqueName('SerializeTensor/'));
  op$.addInput(tensor);
  return op$.finish()[0];
}

class CTCBeamSearchDecoderOutput {
  CTCBeamSearchDecoderOutput(this._graph, this.op, this.decodedIndices,
      this.decodedValues, this.decodedShape, this.logProbability);

  final Graph _graph;

  Operation op;

  final Output<Output> decodedIndices;

  final Output<Output> decodedValues;

  final Output<Output> decodedShape;

  final Output<Output> logProbability;

  CTCBeamSearchDecoder run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    runner.fetch(op.name, index: 3);
    feed?.forEach(runner.feed);
    var result3 = runner.run()[0];
    return new CTCBeamSearchDecoder(result0, result1, result2, result3);
  }
}

class CTCBeamSearchDecoder {
  CTCBeamSearchDecoder(this.decodedIndices, this.decodedValues,
      this.decodedShape, this.logProbability);

  final Output decodedIndices;

  final Output decodedValues;

  final Output decodedShape;

  final Output logProbability;
}

CTCBeamSearchDecoderOutput cTCBeamSearchDecoder(
    Output inputs, Output sequenceLength,
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
  var result$ = op$.finish();
  return new CTCBeamSearchDecoderOutput(
      graph, result$, result$[0], result$[1], result$[2], result$[3]);
}

Output parseTensor<T>(Output serialized,
    {Graph graph, String operationName, DataType outType}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ParseTensor', operationName ??= graph._scope.uniqueName('ParseTensor/'));
  op$.addInput(serialized);
  op$.setAttrType('out_type', outType);
  return op$.finish()[0];
}

Output scatterNdNonAliasingAdd<T>(Output input, Output indices, Output updates,
    {Graph graph, String operationName, DataType tindices}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ScatterNdNonAliasingAdd',
      operationName ??= graph._scope.uniqueName('ScatterNdNonAliasingAdd/'));
  op$.addInput(input);
  op$.addInput(indices);
  op$.addInput(updates);
  op$.setAttrType('Tindices', tindices);
  return op$.finish()[0];
}

Output multinomial<T>(Output logits, Output numSamples,
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
  return op$.finish()[0];
}

Output decodeCompressed(Output bytes,
    {Graph graph, String operationName, String compressionType}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DecodeCompressed',
      operationName ??= graph._scope.uniqueName('DecodeCompressed/'));
  op$.addInput(bytes);
  op$.setAttrString('compression_type', compressionType);
  return op$.finish()[0];
}

Output sdcaFprint(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SdcaFprint', operationName ??= graph._scope.uniqueName('SdcaFprint/'));
  op$.addInput(input);
  return op$.finish()[0];
}

Output readerNumRecordsProducedV2(Output readerHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ReaderNumRecordsProducedV2',
      operationName ??= graph._scope.uniqueName('ReaderNumRecordsProducedV2/'));
  op$.addInput(readerHandle);
  return op$.finish()[0];
}

Output decodeRaw<T>(Output bytes,
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
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation saveSlices<T>(Output filename, Output tensorNames,
    Output shapesAndSlices, List<Output> data,
    {Graph graph, String operationName, List<DataType> t}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SaveSlices', operationName ??= graph._scope.uniqueName('SaveSlices/'));
  op$.addInput(filename);
  op$.addInput(tensorNames);
  op$.addInput(shapesAndSlices);
  op$.addInputList(data);
  op$.setAttrTypeList('T', t);
  return op$.finish();
}

Output avgPool3D<T>(Output input,
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
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 15: Use IFFT3D')
Output batchIFFT3D(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BatchIFFT3D', operationName ??= graph._scope.uniqueName('BatchIFFT3D/'));
  op$.addInput(input);
  return op$.finish()[0];
}

Output adjustHue(Output images, Output delta,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'AdjustHue', operationName ??= graph._scope.uniqueName('AdjustHue/'));
  op$.addInput(images);
  op$.addInput(delta);
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 15: Use FFT3D')
Output batchFFT3D(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BatchFFT3D', operationName ??= graph._scope.uniqueName('BatchFFT3D/'));
  op$.addInput(input);
  return op$.finish()[0];
}

class SparseSparseMinimumOutput<T> {
  SparseSparseMinimumOutput(
      this._graph, this.op, this.outputIndices, this.outputValues);

  final Graph _graph;

  Operation op;

  final Output<Output> outputIndices;

  final Output<Output> outputValues;

  SparseSparseMinimum run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new SparseSparseMinimum<T>(result0, result1);
  }
}

class SparseSparseMinimum<T> {
  SparseSparseMinimum(this.outputIndices, this.outputValues);

  final Output outputIndices;

  final Output outputValues;
}

SparseSparseMinimumOutput sparseSparseMinimum<T>(
    Output aIndices,
    Output aValues,
    Output aShape,
    Output bIndices,
    Output bValues,
    Output bShape,
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
  var result$ = op$.finish();
  return new SparseSparseMinimumOutput<T>(
      graph, result$, result$[0], result$[1]);
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
  return op$.finish()[0];
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
  return op$.finish()[0];
}

Output identityReaderV2(
    {Graph graph, String operationName, String container, String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('IdentityReaderV2',
      operationName ??= graph._scope.uniqueName('IdentityReaderV2/'));
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
  return op$.finish()[0];
}

Output iRFFT3D(Output input, Output fftLength,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'IRFFT3D', operationName ??= graph._scope.uniqueName('IRFFT3D/'));
  op$.addInput(input);
  op$.addInput(fftLength);
  return op$.finish()[0];
}

Output applyFtrl<T>(Output var$, Output accum, Output linear, Output grad,
    Output lr, Output l1, Output l2, Output lrPower,
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
  return op$.finish()[0];
}

Output iRFFT(Output input, Output fftLength,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'IRFFT', operationName ??= graph._scope.uniqueName('IRFFT/'));
  op$.addInput(input);
  op$.addInput(fftLength);
  return op$.finish()[0];
}

Output rFFT(Output input, Output fftLength,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RFFT', operationName ??= graph._scope.uniqueName('RFFT/'));
  op$.addInput(input);
  op$.addInput(fftLength);
  return op$.finish()[0];
}

Output iFFT3D(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'IFFT3D', operationName ??= graph._scope.uniqueName('IFFT3D/'));
  op$.addInput(input);
  return op$.finish()[0];
}

Output fFT3D(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'FFT3D', operationName ??= graph._scope.uniqueName('FFT3D/'));
  op$.addInput(input);
  return op$.finish()[0];
}

Output lessEqual<T>(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'LessEqual', operationName ??= graph._scope.uniqueName('LessEqual/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

Output timestamp({Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Timestamp', operationName ??= graph._scope.uniqueName('Timestamp/'));
  return op$.finish()[0];
}

Output paddedBatchDataset<T>(Output inputDataset, Output batchSize,
    List<Output> paddedShapes, List<Output> paddingValues,
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
  return op$.finish()[0];
}

Output stackV2(Output maxSize,
    {Graph graph, String operationName, DataType elemType, String stackName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'StackV2', operationName ??= graph._scope.uniqueName('StackV2/'));
  op$.addInput(maxSize);
  op$.setAttrType('elem_type', elemType);
  op$.setAttrString('stack_name', stackName);
  return op$.finish()[0];
}

Output queueDequeueUpTo<T>(Output handle, Output n,
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
  return op$.finish()[0];
}

@Deprecated(
    'DEPRECATED at GraphDef version 3: TileGrad has been replaced with reduce_sum')
Output tileGrad<T>(Output input, Output multiples,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'TileGrad', operationName ??= graph._scope.uniqueName('TileGrad/'));
  op$.addInput(input);
  op$.addInput(multiples);
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 15: Use AudioSummaryV2.')
Output audioSummary(Output tag, Output tensor,
    {Graph graph, String operationName, double sampleRate, int maxOutputs: 3}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AudioSummary',
      operationName ??= graph._scope.uniqueName('AudioSummary/'));
  op$.addInput(tag);
  op$.addInput(tensor);
  op$.setAttrFloat('sample_rate', sampleRate);
  op$.setAttrInt('max_outputs', maxOutputs);
  return op$.finish()[0];
}

Output unbatch<T>(Output batchedTensor, Output batchIndex, Output id,
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
  return op$.finish()[0];
}

Output mapUnstage<T>(Output key, Output indices,
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
  return op$.finish()[0];
}

Output tensorSummaryV2<T>(
    Output tag, Output tensor, Output serializedSummaryMetadata,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorSummaryV2',
      operationName ??= graph._scope.uniqueName('TensorSummaryV2/'));
  op$.addInput(tag);
  op$.addInput(tensor);
  op$.addInput(serializedSummaryMetadata);
  return op$.finish()[0];
}

Output quantizeAndDequantizeV2<T>(
    Output input, Output inputMin, Output inputMax,
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
  return op$.finish()[0];
}

Output slideDataset(Output inputDataset, Output windowSize, Output stride,
    {Graph graph,
    String operationName,
    List<DataType> outputTypes,
    List<Shape> outputShapes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SlideDataset',
      operationName ??= graph._scope.uniqueName('SlideDataset/'));
  op$.addInput(inputDataset);
  op$.addInput(windowSize);
  op$.addInput(stride);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
  return op$.finish()[0];
}

Output print<T>(Output input, List<Output> data,
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
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayWriteV3')
Output tensorArrayWrite<T>(
    Output handle, Output index, Output value, Output flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayWrite',
      operationName ??= graph._scope.uniqueName('TensorArrayWrite/'));
  op$.addInput(handle);
  op$.addInput(index);
  op$.addInput(value);
  op$.addInput(flowIn);
  return op$.finish()[0];
}

Output transpose<T>(Output x, Output perm,
    {Graph graph, String operationName, DataType tperm: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Transpose', operationName ??= graph._scope.uniqueName('Transpose/'));
  op$.addInput(x);
  op$.addInput(perm);
  op$.setAttrType('Tperm', tperm);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation assert$<T>(Output condition, List<Output> data,
    {Graph graph, String operationName, List<DataType> t, int summarize: 3}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Assert', operationName ??= graph._scope.uniqueName('Assert/'));
  op$.addInput(condition);
  op$.addInputList(data);
  op$.setAttrTypeList('T', t);
  op$.setAttrInt('summarize', summarize);
  return op$.finish();
}

/// This operation has no outputs.
Operation controlTrigger({Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ControlTrigger',
      operationName ??= graph._scope.uniqueName('ControlTrigger/'));
  return op$.finish();
}

Output parallelDynamicStitch<T>(List<Output> indices, List<Output> data,
    {Graph graph, String operationName, int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ParallelDynamicStitch',
      operationName ??= graph._scope.uniqueName('ParallelDynamicStitch/'));
  op$.addInputList(indices);
  op$.addInputList(data);
  op$.setAttrInt('N', n);
  return op$.finish()[0];
}

Output nextIteration<T>(Output data, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('NextIteration',
      operationName ??= graph._scope.uniqueName('NextIteration/'));
  op$.addInput(data);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation initializeTableV2<T>(Output tableHandle, Output keys, Output values,
    {Graph graph, String operationName, DataType tkey, DataType tval}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('InitializeTableV2',
      operationName ??= graph._scope.uniqueName('InitializeTableV2/'));
  op$.addInput(tableHandle);
  op$.addInput(keys);
  op$.addInput(values);
  op$.setAttrType('Tkey', tkey);
  op$.setAttrType('Tval', tval);
  return op$.finish();
}

Output imag<T>(Output input,
    {Graph graph, String operationName, DataType tout: DataType.DT_FLOAT}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Imag', operationName ??= graph._scope.uniqueName('Imag/'));
  op$.addInput(input);
  op$.setAttrType('Tout', tout);
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayGradV3')
Output tensorArrayGrad(Output handle, Output flowIn,
    {Graph graph, String operationName, String source}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayGrad',
      operationName ??= graph._scope.uniqueName('TensorArrayGrad/'));
  op$.addInput(handle);
  op$.addInput(flowIn);
  op$.setAttrString('source', source);
  return op$.finish()[0];
}

Output mutableDenseHashTable<T>(Output emptyKey,
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
  return op$.finish()[0];
}

Output oneHot<T>(Output indices, Output depth, Output onValue, Output offValue,
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
  return op$.finish()[0];
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
  return op$.finish()[0];
}

Output softplus<T>(Output features, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Softplus', operationName ??= graph._scope.uniqueName('Softplus/'));
  op$.addInput(features);
  return op$.finish()[0];
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
  return op$.finish()[0];
}

/// Writes a `Summary` protocol buffer with scalar values.
/// The input `tag` and `value` must have the scalars.
/// This operation has no outputs.
/// * [writer]: A handle to a summary writer.
/// * [step]: The step to write the summary for.
/// * [tag]: Tag for the summary.
/// * [value]: Value for the summary.
Operation writeScalarSummary<T>(
    Output writer, Output step, Output tag, Output value,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('WriteScalarSummary',
      operationName ??= graph._scope.uniqueName('WriteScalarSummary/'));
  op$.addInput(writer);
  op$.addInput(step);
  op$.addInput(tag);
  op$.addInput(value);
  return op$.finish();
}

Output reduceJoin(Output inputs, Output reductionIndices,
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
  return op$.finish()[0];
}

class SparseConcatOutput<T> {
  SparseConcatOutput(this._graph, this.op, this.outputIndices,
      this.outputValues, this.outputShape);

  final Graph _graph;

  Operation op;

  final Output<Output> outputIndices;

  final Output<Output> outputValues;

  final Output<Output> outputShape;

  SparseConcat run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new SparseConcat<T>(result0, result1, result2);
  }
}

class SparseConcat<T> {
  SparseConcat(this.outputIndices, this.outputValues, this.outputShape);

  final Output outputIndices;

  final Output outputValues;

  final Output outputShape;
}

SparseConcatOutput sparseConcat<T>(
    List<Output> indices, List<Output> values, List<Output> shapes,
    {Graph graph, String operationName, int concatDim, int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseConcat',
      operationName ??= graph._scope.uniqueName('SparseConcat/'));
  op$.addInputList(indices);
  op$.addInputList(values);
  op$.addInputList(shapes);
  op$.setAttrInt('concat_dim', concatDim);
  op$.setAttrInt('N', n);
  var result$ = op$.finish();
  return new SparseConcatOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output shardedFilespec(Output basename, Output numShards,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ShardedFilespec',
      operationName ??= graph._scope.uniqueName('ShardedFilespec/'));
  op$.addInput(basename);
  op$.addInput(numShards);
  return op$.finish()[0];
}

Output iFFT2D(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'IFFT2D', operationName ??= graph._scope.uniqueName('IFFT2D/'));
  op$.addInput(input);
  return op$.finish()[0];
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
  return op$.finish()[0];
}

Output hashTable(
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
  return op$.finish()[0];
}

Output sparseDenseCwiseDiv<T>(
    Output spIndices, Output spValues, Output spShape, Output dense,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseDenseCwiseDiv',
      operationName ??= graph._scope.uniqueName('SparseDenseCwiseDiv/'));
  op$.addInput(spIndices);
  op$.addInput(spValues);
  op$.addInput(spShape);
  op$.addInput(dense);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation lookupTableImport<T>(Output tableHandle, Output keys, Output values,
    {Graph graph, String operationName, DataType tin, DataType tout}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('LookupTableImport',
      operationName ??= graph._scope.uniqueName('LookupTableImport/'));
  op$.addInput(tableHandle);
  op$.addInput(keys);
  op$.addInput(values);
  op$.setAttrType('Tin', tin);
  op$.setAttrType('Tout', tout);
  return op$.finish();
}

class LookupTableExportV2Output<T> {
  LookupTableExportV2Output(this._graph, this.op, this.keys, this.values);

  final Graph _graph;

  Operation op;

  final Output<Output> keys;

  final Output<Output> values;

  LookupTableExportV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new LookupTableExportV2<T>(result0, result1);
  }
}

class LookupTableExportV2<T> {
  LookupTableExportV2(this.keys, this.values);

  final Output keys;

  final Output values;
}

LookupTableExportV2Output lookupTableExportV2<T>(Output tableHandle,
    {Graph graph, String operationName, DataType tkeys, DataType tvalues}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('LookupTableExportV2',
      operationName ??= graph._scope.uniqueName('LookupTableExportV2/'));
  op$.addInput(tableHandle);
  op$.setAttrType('Tkeys', tkeys);
  op$.setAttrType('Tvalues', tvalues);
  var result$ = op$.finish();
  return new LookupTableExportV2Output<T>(
      graph, result$, result$[0], result$[1]);
}

/// This operation has no outputs.
Operation assignVariableOp<T>(Output resource, Output value,
    {Graph graph, String operationName, DataType dtype}) {
  dtype ??= inferType(resource);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AssignVariableOp',
      operationName ??= graph._scope.uniqueName('AssignVariableOp/'));
  op$.addInput(resource);
  op$.addInput(value);
  op$.setAttrType('dtype', dtype);
  return op$.finish();
}

Output lookupTableSize(Output tableHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('LookupTableSize',
      operationName ??= graph._scope.uniqueName('LookupTableSize/'));
  op$.addInput(tableHandle);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation lookupTableInsert<T>(Output tableHandle, Output keys, Output values,
    {Graph graph, String operationName, DataType tin, DataType tout}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('LookupTableInsert',
      operationName ??= graph._scope.uniqueName('LookupTableInsert/'));
  op$.addInput(tableHandle);
  op$.addInput(keys);
  op$.addInput(values);
  op$.setAttrType('Tin', tin);
  op$.setAttrType('Tout', tout);
  return op$.finish();
}

/// This operation has no outputs.
Operation initializeTable<T>(Output tableHandle, Output keys, Output values,
    {Graph graph, String operationName, DataType tkey, DataType tval}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('InitializeTable',
      operationName ??= graph._scope.uniqueName('InitializeTable/'));
  op$.addInput(tableHandle);
  op$.addInput(keys);
  op$.addInput(values);
  op$.setAttrType('Tkey', tkey);
  op$.setAttrType('Tval', tval);
  return op$.finish();
}

Output variableShape<T>(Output input,
    {Graph graph, String operationName, DataType outType: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('VariableShape',
      operationName ??= graph._scope.uniqueName('VariableShape/'));
  op$.addInput(input);
  op$.setAttrType('out_type', outType);
  return op$.finish()[0];
}

Output tensorListReserve<T>(Output elementShape, Output numElements,
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
  return op$.finish()[0];
}

Output tensorListElementShape<T>(Output inputHandle,
    {Graph graph, String operationName, DataType shapeType}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorListElementShape',
      operationName ??= graph._scope.uniqueName('TensorListElementShape/'));
  op$.addInput(inputHandle);
  op$.setAttrType('shape_type', shapeType);
  return op$.finish()[0];
}

Output tensorListStack<T>(Output inputHandle,
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
  return op$.finish()[0];
}

Output emptyTensorList<T>(Output elementShape,
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
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 13: Use MatrixSolveLs instead.')
Output batchMatrixSolveLs<T>(Output matrix, Output rhs, Output l2Regularizer,
    {Graph graph, String operationName, bool fast: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchMatrixSolveLs',
      operationName ??= graph._scope.uniqueName('BatchMatrixSolveLs/'));
  op$.addInput(matrix);
  op$.addInput(rhs);
  op$.addInput(l2Regularizer);
  op$.setAttrBool('fast', fast);
  return op$.finish()[0];
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

  final Output<Output> contextSparseIndices;

  final Output<Output> contextSparseValues;

  final Output<Output> contextSparseShapes;

  final Output<Output> contextDenseValues;

  final Output<Output> featureListSparseIndices;

  final Output<Output> featureListSparseValues;

  final Output<Output> featureListSparseShapes;

  final Output<Output> featureListDenseValues;

  ParseSingleSequenceExample run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    runner.fetch(op.name, index: 3);
    feed?.forEach(runner.feed);
    var result3 = runner.run()[0];
    runner.fetch(op.name, index: 4);
    feed?.forEach(runner.feed);
    var result4 = runner.run()[0];
    runner.fetch(op.name, index: 5);
    feed?.forEach(runner.feed);
    var result5 = runner.run()[0];
    runner.fetch(op.name, index: 6);
    feed?.forEach(runner.feed);
    var result6 = runner.run()[0];
    runner.fetch(op.name, index: 7);
    feed?.forEach(runner.feed);
    var result7 = runner.run()[0];
    return new ParseSingleSequenceExample<T>(
        result0, result1, result2, result3, result4, result5, result6, result7);
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

  final Output contextSparseIndices;

  final Output contextSparseValues;

  final Output contextSparseShapes;

  final Output contextDenseValues;

  final Output featureListSparseIndices;

  final Output featureListSparseValues;

  final Output featureListSparseShapes;

  final Output featureListDenseValues;
}

ParseSingleSequenceExampleOutput parseSingleSequenceExample<T>(
    Output serialized,
    Output featureListDenseMissingAssumedEmpty,
    List<Output> contextSparseKeys,
    List<Output> contextDenseKeys,
    List<Output> featureListSparseKeys,
    List<Output> featureListDenseKeys,
    List<Output> contextDenseDefaults,
    Output debugName,
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
  var result$ = op$.finish();
  return new ParseSingleSequenceExampleOutput<T>(
      graph,
      result$,
      result$[0],
      result$[1],
      result$[2],
      result$[3],
      result$[4],
      result$[5],
      result$[6],
      result$[7]);
}

class LookupTableExportOutput<T> {
  LookupTableExportOutput(this._graph, this.op, this.keys, this.values);

  final Graph _graph;

  Operation op;

  final Output<Output> keys;

  final Output<Output> values;

  LookupTableExport run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new LookupTableExport<T>(result0, result1);
  }
}

class LookupTableExport<T> {
  LookupTableExport(this.keys, this.values);

  final Output keys;

  final Output values;
}

LookupTableExportOutput lookupTableExport<T>(Output tableHandle,
    {Graph graph, String operationName, DataType tkeys, DataType tvalues}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('LookupTableExport',
      operationName ??= graph._scope.uniqueName('LookupTableExport/'));
  op$.addInput(tableHandle);
  op$.setAttrType('Tkeys', tkeys);
  op$.setAttrType('Tvalues', tvalues);
  var result$ = op$.finish();
  return new LookupTableExportOutput<T>(graph, result$, result$[0], result$[1]);
}

Output gatherV2<T>(Output params, Output indices, Output axis,
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
  return op$.finish()[0];
}

class BatchSvdOutput<T> {
  BatchSvdOutput(this._graph, this.op, this.s, this.u, this.v);

  final Graph _graph;

  Operation op;

  final Output<Output> s;

  final Output<Output> u;

  final Output<Output> v;

  BatchSvd run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new BatchSvd<T>(result0, result1, result2);
  }
}

class BatchSvd<T> {
  BatchSvd(this.s, this.u, this.v);

  final Output s;

  final Output u;

  final Output v;
}

@Deprecated('DEPRECATED at GraphDef version 13: Use Svd instead.')
BatchSvdOutput batchSvd<T>(Output input,
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
  var result$ = op$.finish();
  return new BatchSvdOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

@Deprecated('DEPRECATED at GraphDef version 13: Use MatrixSolve instead.')
Output batchMatrixSolve<T>(Output matrix, Output rhs,
    {Graph graph, String operationName, bool adjoint: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchMatrixSolve',
      operationName ??= graph._scope.uniqueName('BatchMatrixSolve/'));
  op$.addInput(matrix);
  op$.addInput(rhs);
  op$.setAttrBool('adjoint', adjoint);
  return op$.finish()[0];
}

Output applyProximalAdagrad<T>(
    Output var$, Output accum, Output lr, Output l1, Output l2, Output grad,
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
  return op$.finish()[0];
}

Output sparseSegmentMeanGrad<T>(
    Output grad, Output indices, Output segmentIds, Output outputDim0,
    {Graph graph, String operationName, DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseSegmentMeanGrad',
      operationName ??= graph._scope.uniqueName('SparseSegmentMeanGrad/'));
  op$.addInput(grad);
  op$.addInput(indices);
  op$.addInput(segmentIds);
  op$.addInput(outputDim0);
  op$.setAttrType('Tidx', tidx);
  return op$.finish()[0];
}

class SvdOutput<T> {
  SvdOutput(this._graph, this.op, this.s, this.u, this.v);

  final Graph _graph;

  Operation op;

  final Output<Output> s;

  final Output<Output> u;

  final Output<Output> v;

  Svd run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new Svd<T>(result0, result1, result2);
  }
}

class Svd<T> {
  Svd(this.s, this.u, this.v);

  final Output s;

  final Output u;

  final Output v;
}

SvdOutput svd<T>(Output input,
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
  var result$ = op$.finish();
  return new SvdOutput<T>(graph, result$, result$[0], result$[1], result$[2]);
}

class QrOutput<T> {
  QrOutput(this._graph, this.op, this.q, this.r);

  final Graph _graph;

  Operation op;

  final Output<Output> q;

  final Output<Output> r;

  Qr run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new Qr<T>(result0, result1);
  }
}

class Qr<T> {
  Qr(this.q, this.r);

  final Output q;

  final Output r;
}

QrOutput qr<T>(Output input,
    {Graph graph, String operationName, bool fullMatrices: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Qr', operationName ??= graph._scope.uniqueName('Qr/'));
  op$.addInput(input);
  op$.setAttrBool('full_matrices', fullMatrices);
  var result$ = op$.finish();
  return new QrOutput<T>(graph, result$, result$[0], result$[1]);
}

class SparseCrossOutput<T> {
  SparseCrossOutput(this._graph, this.op, this.outputIndices, this.outputValues,
      this.outputShape);

  final Graph _graph;

  Operation op;

  final Output<Output> outputIndices;

  final Output<Output> outputValues;

  final Output<Output> outputShape;

  SparseCross run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new SparseCross<T>(result0, result1, result2);
  }
}

class SparseCross<T> {
  SparseCross(this.outputIndices, this.outputValues, this.outputShape);

  final Output outputIndices;

  final Output outputValues;

  final Output outputShape;
}

SparseCrossOutput sparseCross<T>(List<Output> indices, List<Output> values,
    List<Output> shapes, List<Output> denseInputs,
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
  var result$ = op$.finish();
  return new SparseCrossOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output pack<T>(List<Output> values,
    {Graph graph, String operationName, int n, int axis: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Pack', operationName ??= graph._scope.uniqueName('Pack/'));
  op$.addInputList(values);
  op$.setAttrInt('N', n);
  op$.setAttrInt('axis', axis);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation barrierClose(Output handle,
    {Graph graph, String operationName, bool cancelPendingEnqueues: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BarrierClose',
      operationName ??= graph._scope.uniqueName('BarrierClose/'));
  op$.addInput(handle);
  op$.setAttrBool('cancel_pending_enqueues', cancelPendingEnqueues);
  return op$.finish();
}

class SelfAdjointEigV2Output<T> {
  SelfAdjointEigV2Output(this._graph, this.op, this.e, this.v);

  final Graph _graph;

  Operation op;

  final Output<Output> e;

  final Output<Output> v;

  SelfAdjointEigV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new SelfAdjointEigV2<T>(result0, result1);
  }
}

class SelfAdjointEigV2<T> {
  SelfAdjointEigV2(this.e, this.v);

  final Output e;

  final Output v;
}

SelfAdjointEigV2Output selfAdjointEigV2<T>(Output input,
    {Graph graph, String operationName, bool computeV: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SelfAdjointEigV2',
      operationName ??= graph._scope.uniqueName('SelfAdjointEigV2/'));
  op$.addInput(input);
  op$.setAttrBool('compute_v', computeV);
  var result$ = op$.finish();
  return new SelfAdjointEigV2Output<T>(graph, result$, result$[0], result$[1]);
}

Output choleskyGrad<T>(Output l, Output grad,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CholeskyGrad',
      operationName ??= graph._scope.uniqueName('CholeskyGrad/'));
  op$.addInput(l);
  op$.addInput(grad);
  return op$.finish()[0];
}

class QuantizedConcatOutput<T> {
  QuantizedConcatOutput(
      this._graph, this.op, this.output, this.outputMin, this.outputMax);

  final Graph _graph;

  Operation op;

  final Output<Output> output;

  final Output<Output> outputMin;

  final Output<Output> outputMax;

  QuantizedConcat run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new QuantizedConcat<T>(result0, result1, result2);
  }
}

class QuantizedConcat<T> {
  QuantizedConcat(this.output, this.outputMin, this.outputMax);

  final Output output;

  final Output outputMin;

  final Output outputMax;
}

QuantizedConcatOutput quantizedConcat<T>(Output concatDim, List<Output> values,
    List<Output> inputMins, List<Output> inputMaxes,
    {Graph graph, String operationName, int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QuantizedConcat',
      operationName ??= graph._scope.uniqueName('QuantizedConcat/'));
  op$.addInput(concatDim);
  op$.addInputList(values);
  op$.addInputList(inputMins);
  op$.addInputList(inputMaxes);
  op$.setAttrInt('N', n);
  var result$ = op$.finish();
  return new QuantizedConcatOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output gatherNd<T>(Output params, Output indices,
    {Graph graph, String operationName, DataType tparams, DataType tindices}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'GatherNd', operationName ??= graph._scope.uniqueName('GatherNd/'));
  op$.addInput(params);
  op$.addInput(indices);
  op$.setAttrType('Tparams', tparams);
  op$.setAttrType('Tindices', tindices);
  return op$.finish()[0];
}

Output maxPool<T>(Output input,
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
  return op$.finish()[0];
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
  return op$.finish();
}

/// This operation has no outputs.
Operation queueCloseV2(Output handle,
    {Graph graph, String operationName, bool cancelPendingEnqueues: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QueueCloseV2',
      operationName ??= graph._scope.uniqueName('QueueCloseV2/'));
  op$.addInput(handle);
  op$.setAttrBool('cancel_pending_enqueues', cancelPendingEnqueues);
  return op$.finish();
}

Output matrixExponential<T>(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MatrixExponential',
      operationName ??= graph._scope.uniqueName('MatrixExponential/'));
  op$.addInput(input);
  return op$.finish()[0];
}

Output matrixDeterminant<T>(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MatrixDeterminant',
      operationName ??= graph._scope.uniqueName('MatrixDeterminant/'));
  op$.addInput(input);
  return op$.finish()[0];
}

Output shape<T>(Output input,
    {Graph graph, String operationName, DataType outType: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Shape', operationName ??= graph._scope.uniqueName('Shape/'));
  op$.addInput(input);
  op$.setAttrType('out_type', outType);
  return op$.finish()[0];
}

Output asinh<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Asinh', operationName ??= graph._scope.uniqueName('Asinh/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output lookupTableFindV2<T>(
    Output tableHandle, Output keys, Output defaultValue,
    {Graph graph, String operationName, DataType tin, DataType tout}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('LookupTableFindV2',
      operationName ??= graph._scope.uniqueName('LookupTableFindV2/'));
  op$.addInput(tableHandle);
  op$.addInput(keys);
  op$.addInput(defaultValue);
  op$.setAttrType('Tin', tin);
  op$.setAttrType('Tout', tout);
  return op$.finish()[0];
}

Output where<T>(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Where', operationName ??= graph._scope.uniqueName('Where/'));
  op$.addInput(input);
  return op$.finish()[0];
}

Output applyFtrlV2<T>(Output var$, Output accum, Output linear, Output grad,
    Output lr, Output l1, Output l2, Output l2Shrinkage, Output lrPower,
    {Graph graph, String operationName, bool useLocking: false}) {
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
  return op$.finish()[0];
}

/// This operation has no outputs.
@Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayCloseV3')
Operation tensorArrayCloseV2(Output handle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayCloseV2',
      operationName ??= graph._scope.uniqueName('TensorArrayCloseV2/'));
  op$.addInput(handle);
  return op$.finish();
}

Output avgPool3DGrad<T>(Output origInputShape, Output grad,
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
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation readerReset(Output readerHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ReaderReset', operationName ??= graph._scope.uniqueName('ReaderReset/'));
  op$.addInput(readerHandle);
  return op$.finish();
}

class SparseSliceOutput<T> {
  SparseSliceOutput(this._graph, this.op, this.outputIndices, this.outputValues,
      this.outputShape);

  final Graph _graph;

  Operation op;

  final Output<Output> outputIndices;

  final Output<Output> outputValues;

  final Output<Output> outputShape;

  SparseSlice run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new SparseSlice<T>(result0, result1, result2);
  }
}

class SparseSlice<T> {
  SparseSlice(this.outputIndices, this.outputValues, this.outputShape);

  final Output outputIndices;

  final Output outputValues;

  final Output outputShape;
}

SparseSliceOutput sparseSlice<T>(
    Output indices, Output values, Output shape, Output start, Output size,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SparseSlice', operationName ??= graph._scope.uniqueName('SparseSlice/'));
  op$.addInput(indices);
  op$.addInput(values);
  op$.addInput(shape);
  op$.addInput(start);
  op$.addInput(size);
  var result$ = op$.finish();
  return new SparseSliceOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output avgPool<T>(Output value,
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
  return op$.finish()[0];
}

Output audioSummaryV2(Output tag, Output tensor, Output sampleRate,
    {Graph graph, String operationName, int maxOutputs: 3}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AudioSummaryV2',
      operationName ??= graph._scope.uniqueName('AudioSummaryV2/'));
  op$.addInput(tag);
  op$.addInput(tensor);
  op$.addInput(sampleRate);
  op$.setAttrInt('max_outputs', maxOutputs);
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayReadV3')
Output tensorArrayReadV2<T>(Output handle, Output index, Output flowIn,
    {Graph graph, String operationName, DataType dtype}) {
  dtype ??= inferType(handle);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayReadV2',
      operationName ??= graph._scope.uniqueName('TensorArrayReadV2/'));
  op$.addInput(handle);
  op$.addInput(index);
  op$.addInput(flowIn);
  op$.setAttrType('dtype', dtype);
  return op$.finish()[0];
}

Output stagePeek<T>(Output index,
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
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation readerRestoreStateV2(Output readerHandle, Output state,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ReaderRestoreStateV2',
      operationName ??= graph._scope.uniqueName('ReaderRestoreStateV2/'));
  op$.addInput(readerHandle);
  op$.addInput(state);
  return op$.finish();
}

Output setSize<T>(Output setIndices, Output setValues, Output setShape,
    {Graph graph, String operationName, bool validateIndices: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SetSize', operationName ??= graph._scope.uniqueName('SetSize/'));
  op$.addInput(setIndices);
  op$.addInput(setValues);
  op$.addInput(setShape);
  op$.setAttrBool('validate_indices', validateIndices);
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 13: Use Cholesky instead.')
Output batchCholesky<T>(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchCholesky',
      operationName ??= graph._scope.uniqueName('BatchCholesky/'));
  op$.addInput(input);
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayGatherV3')
Output tensorArrayGather<T>(Output handle, Output indices, Output flowIn,
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
  return op$.finish()[0];
}

Output resizeArea<T>(Output images, Output size,
    {Graph graph, String operationName, bool alignCorners: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ResizeArea', operationName ??= graph._scope.uniqueName('ResizeArea/'));
  op$.addInput(images);
  op$.addInput(size);
  op$.setAttrBool('align_corners', alignCorners);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation readerRestoreState(Output readerHandle, Output state,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ReaderRestoreState',
      operationName ??= graph._scope.uniqueName('ReaderRestoreState/'));
  op$.addInput(readerHandle);
  op$.addInput(state);
  return op$.finish();
}

Output readerSerializeState(Output readerHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ReaderSerializeState',
      operationName ??= graph._scope.uniqueName('ReaderSerializeState/'));
  op$.addInput(readerHandle);
  return op$.finish()[0];
}

Output matrixTriangularSolve<T>(Output matrix, Output rhs,
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
  return op$.finish()[0];
}

class ReaderReadOutput {
  ReaderReadOutput(this._graph, this.op, this.key, this.value);

  final Graph _graph;

  Operation op;

  final Output<Output> key;

  final Output<Output> value;

  ReaderRead run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new ReaderRead(result0, result1);
  }
}

class ReaderRead {
  ReaderRead(this.key, this.value);

  final Output key;

  final Output value;
}

ReaderReadOutput readerRead(Output readerHandle, Output queueHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ReaderRead', operationName ??= graph._scope.uniqueName('ReaderRead/'));
  op$.addInput(readerHandle);
  op$.addInput(queueHandle);
  var result$ = op$.finish();
  return new ReaderReadOutput(graph, result$, result$[0], result$[1]);
}

Output select<T>(Output condition, Output t, Output e,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Select', operationName ??= graph._scope.uniqueName('Select/'));
  op$.addInput(condition);
  op$.addInput(t);
  op$.addInput(e);
  return op$.finish()[0];
}

class SparseAddGradOutput<T> {
  SparseAddGradOutput(this._graph, this.op, this.aValGrad, this.bValGrad);

  final Graph _graph;

  Operation op;

  final Output<Output> aValGrad;

  final Output<Output> bValGrad;

  SparseAddGrad run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new SparseAddGrad<T>(result0, result1);
  }
}

class SparseAddGrad<T> {
  SparseAddGrad(this.aValGrad, this.bValGrad);

  final Output aValGrad;

  final Output bValGrad;
}

SparseAddGradOutput sparseAddGrad<T>(
    Output backpropValGrad, Output aIndices, Output bIndices, Output sumIndices,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseAddGrad',
      operationName ??= graph._scope.uniqueName('SparseAddGrad/'));
  op$.addInput(backpropValGrad);
  op$.addInput(aIndices);
  op$.addInput(bIndices);
  op$.addInput(sumIndices);
  var result$ = op$.finish();
  return new SparseAddGradOutput<T>(graph, result$, result$[0], result$[1]);
}

Output log<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Log', operationName ??= graph._scope.uniqueName('Log/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output iRFFT2D(Output input, Output fftLength,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'IRFFT2D', operationName ??= graph._scope.uniqueName('IRFFT2D/'));
  op$.addInput(input);
  op$.addInput(fftLength);
  return op$.finish()[0];
}

Output mutableDenseHashTableV2<T>(Output emptyKey,
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
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 26: Use FixedLengthRecordReaderV2')
Output fixedLengthRecordReader(
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
  return op$.finish()[0];
}

Output recordInput(
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
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 26: Use TextLineReaderV2')
Output textLineReader(
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
  return op$.finish()[0];
}

Output restoreSlice<T>(
    Output filePattern, Output tensorName, Output shapeAndSlice,
    {Graph graph, String operationName, DataType dt, int preferredShard: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('RestoreSlice',
      operationName ??= graph._scope.uniqueName('RestoreSlice/'));
  op$.addInput(filePattern);
  op$.addInput(tensorName);
  op$.addInput(shapeAndSlice);
  op$.setAttrType('dt', dt);
  op$.setAttrInt('preferred_shard', preferredShard);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation save<T>(Output filename, Output tensorNames, List<Output> data,
    {Graph graph, String operationName, List<DataType> t}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Save', operationName ??= graph._scope.uniqueName('Save/'));
  op$.addInput(filename);
  op$.addInput(tensorNames);
  op$.addInputList(data);
  op$.setAttrTypeList('T', t);
  return op$.finish();
}

Output refExit<T>(Output data, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RefExit', operationName ??= graph._scope.uniqueName('RefExit/'));
  op$.addInput(data);
  return op$.finish()[0];
}

Output notEqual<T>(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'NotEqual', operationName ??= graph._scope.uniqueName('NotEqual/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

Output nonMaxSuppression(Output boxes, Output scores, Output maxOutputSize,
    {Graph graph, String operationName, double iouThreshold: 0.5}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('NonMaxSuppression',
      operationName ??= graph._scope.uniqueName('NonMaxSuppression/'));
  op$.addInput(boxes);
  op$.addInput(scores);
  op$.addInput(maxOutputSize);
  op$.setAttrFloat('iou_threshold', iouThreshold);
  return op$.finish()[0];
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
  return op$.finish()[0];
}

Output batchToSpaceND<T>(Output input, Output blockShape, Output crops,
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
  return op$.finish()[0];
}

Output cropAndResizeGradBoxes<T>(
    Output grads, Output image, Output boxes, Output boxInd,
    {Graph graph, String operationName, String method: 'bilinear'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CropAndResizeGradBoxes',
      operationName ??= graph._scope.uniqueName('CropAndResizeGradBoxes/'));
  op$.addInput(grads);
  op$.addInput(image);
  op$.addInput(boxes);
  op$.addInput(boxInd);
  op$.setAttrString('method', method);
  return op$.finish()[0];
}

Output extractGlimpse(Output input, Output size, Output offsets,
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
  return op$.finish()[0];
}

Output rightShift<T>(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RightShift', operationName ??= graph._scope.uniqueName('RightShift/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

Output decodeBmp(Output contents,
    {Graph graph, String operationName, int channels: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'DecodeBmp', operationName ??= graph._scope.uniqueName('DecodeBmp/'));
  op$.addInput(contents);
  op$.setAttrInt('channels', channels);
  return op$.finish()[0];
}

class SampleDistortedBoundingBoxOutput<T> {
  SampleDistortedBoundingBoxOutput(
      this._graph, this.op, this.begin, this.size, this.bboxes);

  final Graph _graph;

  Operation op;

  final Output<Output> begin;

  final Output<Output> size;

  final Output<Output> bboxes;

  SampleDistortedBoundingBox run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new SampleDistortedBoundingBox<T>(result0, result1, result2);
  }
}

class SampleDistortedBoundingBox<T> {
  SampleDistortedBoundingBox(this.begin, this.size, this.bboxes);

  final Output begin;

  final Output size;

  final Output bboxes;
}

SampleDistortedBoundingBoxOutput sampleDistortedBoundingBox<T>(
    Output imageSize, Output boundingBoxes,
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
  var result$ = op$.finish();
  return new SampleDistortedBoundingBoxOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

@Deprecated('DEPRECATED at GraphDef version 13: Use MatrixDeterminant instead.')
Output batchMatrixDeterminant<T>(Output input,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchMatrixDeterminant',
      operationName ??= graph._scope.uniqueName('BatchMatrixDeterminant/'));
  op$.addInput(input);
  return op$.finish()[0];
}

Output queueDequeueUpToV2<T>(Output handle, Output n,
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
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 15: Use IFFT')
Output batchIFFT(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BatchIFFT', operationName ??= graph._scope.uniqueName('BatchIFFT/'));
  op$.addInput(input);
  return op$.finish()[0];
}

class ListDiffOutput<T> {
  ListDiffOutput(this._graph, this.op, this.out, this.idx);

  final Graph _graph;

  Operation op;

  final Output<Output> out;

  final Output<Output> idx;

  ListDiff run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new ListDiff<T>(result0, result1);
  }
}

class ListDiff<T> {
  ListDiff(this.out, this.idx);

  final Output out;

  final Output idx;
}

ListDiffOutput listDiff<T>(Output x, Output y,
    {Graph graph, String operationName, DataType outIdx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ListDiff', operationName ??= graph._scope.uniqueName('ListDiff/'));
  op$.addInput(x);
  op$.addInput(y);
  op$.setAttrType('out_idx', outIdx);
  var result$ = op$.finish();
  return new ListDiffOutput<T>(graph, result$, result$[0], result$[1]);
}

@Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayScatterV3')
Output tensorArrayScatterV2<T>(
    Output handle, Output indices, Output value, Output flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayScatterV2',
      operationName ??= graph._scope.uniqueName('TensorArrayScatterV2/'));
  op$.addInput(handle);
  op$.addInput(indices);
  op$.addInput(value);
  op$.addInput(flowIn);
  return op$.finish()[0];
}

Output rGBToHSV<T>(Output images, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RGBToHSV', operationName ??= graph._scope.uniqueName('RGBToHSV/'));
  op$.addInput(images);
  return op$.finish()[0];
}

Output decodeGif(Output contents, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'DecodeGif', operationName ??= graph._scope.uniqueName('DecodeGif/'));
  op$.addInput(contents);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation assignSubVariableOp<T>(Output resource, Output value,
    {Graph graph, String operationName, DataType dtype}) {
  dtype ??= inferType(resource);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AssignSubVariableOp',
      operationName ??= graph._scope.uniqueName('AssignSubVariableOp/'));
  op$.addInput(resource);
  op$.addInput(value);
  op$.setAttrType('dtype', dtype);
  return op$.finish();
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

  final Output<Output> xBackprop;

  final Output<Output> scaleBackprop;

  final Output<Output> offsetBackprop;

  final Output<Output> reserveSpace3;

  final Output<Output> reserveSpace4;

  FusedBatchNormGrad run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    runner.fetch(op.name, index: 3);
    feed?.forEach(runner.feed);
    var result3 = runner.run()[0];
    runner.fetch(op.name, index: 4);
    feed?.forEach(runner.feed);
    var result4 = runner.run()[0];
    return new FusedBatchNormGrad<T>(
        result0, result1, result2, result3, result4);
  }
}

class FusedBatchNormGrad<T> {
  FusedBatchNormGrad(this.xBackprop, this.scaleBackprop, this.offsetBackprop,
      this.reserveSpace3, this.reserveSpace4);

  final Output xBackprop;

  final Output scaleBackprop;

  final Output offsetBackprop;

  final Output reserveSpace3;

  final Output reserveSpace4;
}

FusedBatchNormGradOutput fusedBatchNormGrad<T>(Output yBackprop, Output x,
    Output scale, Output reserveSpace1, Output reserveSpace2,
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
  var result$ = op$.finish();
  return new FusedBatchNormGradOutput<T>(graph, result$, result$[0], result$[1],
      result$[2], result$[3], result$[4]);
}

Output unravelIndex<T>(Output indices, Output dims,
    {Graph graph, String operationName, DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('UnravelIndex',
      operationName ??= graph._scope.uniqueName('UnravelIndex/'));
  op$.addInput(indices);
  op$.addInput(dims);
  op$.setAttrType('Tidx', tidx);
  return op$.finish()[0];
}

Output decodeCSV<T>(Output records, List<Output> recordDefaults,
    {Graph graph,
    String operationName,
    List<DataType> oUTTYPE,
    String fieldDelim: ',',
    bool useQuoteDelim: true,
    String naValue}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'DecodeCSV', operationName ??= graph._scope.uniqueName('DecodeCSV/'));
  op$.addInput(records);
  op$.addInputList(recordDefaults);
  op$.setAttrTypeList('OUT_TYPE', oUTTYPE);
  op$.setAttrString('field_delim', fieldDelim);
  op$.setAttrBool('use_quote_delim', useQuoteDelim);
  op$.setAttrString('na_value', naValue);
  return op$.finish()[0];
}

Output enter<T>(Output data,
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
  return op$.finish()[0];
}

Output encodePng<T>(Output image,
    {Graph graph, String operationName, int compression: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'EncodePng', operationName ??= graph._scope.uniqueName('EncodePng/'));
  op$.addInput(image);
  op$.setAttrInt('compression', compression);
  return op$.finish()[0];
}

Output serializeManySparse<T>(
    Output sparseIndices, Output sparseValues, Output sparseShape,
    {Graph graph, String operationName, DataType outType: DataType.DT_STRING}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SerializeManySparse',
      operationName ??= graph._scope.uniqueName('SerializeManySparse/'));
  op$.addInput(sparseIndices);
  op$.addInput(sparseValues);
  op$.addInput(sparseShape);
  op$.setAttrType('out_type', outType);
  return op$.finish()[0];
}

Output tensorListFromTensor<T>(Output tensor, Output elementShape,
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
  return op$.finish()[0];
}

Output adjustSaturation(Output images, Output scale,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AdjustSaturation',
      operationName ??= graph._scope.uniqueName('AdjustSaturation/'));
  op$.addInput(images);
  op$.addInput(scale);
  return op$.finish()[0];
}

Output adjustContrastv2(Output images, Output contrastFactor,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AdjustContrastv2',
      operationName ??= graph._scope.uniqueName('AdjustContrastv2/'));
  op$.addInput(images);
  op$.addInput(contrastFactor);
  return op$.finish()[0];
}

Output extractJpegShape<T>(Output contents,
    {Graph graph,
    String operationName,
    DataType outputType: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ExtractJpegShape',
      operationName ??= graph._scope.uniqueName('ExtractJpegShape/'));
  op$.addInput(contents);
  op$.setAttrType('output_type', outputType);
  return op$.finish()[0];
}

class TensorArrayConcatOutput<T> {
  TensorArrayConcatOutput(this._graph, this.op, this.value, this.lengths);

  final Graph _graph;

  Operation op;

  final Output<Output> value;

  final Output<Output> lengths;

  TensorArrayConcat run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new TensorArrayConcat<T>(result0, result1);
  }
}

class TensorArrayConcat<T> {
  TensorArrayConcat(this.value, this.lengths);

  final Output value;

  final Output lengths;
}

@Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayGradV3')
TensorArrayConcatOutput tensorArrayConcat<T>(Output handle, Output flowIn,
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
  var result$ = op$.finish();
  return new TensorArrayConcatOutput<T>(graph, result$, result$[0], result$[1]);
}

Output decodeAndCropJpeg(Output contents, Output cropWindow,
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
  return op$.finish()[0];
}

Output decodeJpeg(Output contents,
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
  return op$.finish()[0];
}

Output orderedMapIncompleteSize(
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
  return op$.finish()[0];
}

Output lookupTableSizeV2(Output tableHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('LookupTableSizeV2',
      operationName ??= graph._scope.uniqueName('LookupTableSizeV2/'));
  op$.addInput(tableHandle);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation enqueueInQueueDataset<T>(Output queue, List<Output> components,
    {Graph graph, String operationName, List<DataType> tcomponents}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('EnqueueInQueueDataset',
      operationName ??= graph._scope.uniqueName('EnqueueInQueueDataset/'));
  op$.addInput(queue);
  op$.addInputList(components);
  op$.setAttrTypeList('Tcomponents', tcomponents);
  return op$.finish();
}

/// This operation has no outputs.
Operation lookupTableImportV2<T>(Output tableHandle, Output keys, Output values,
    {Graph graph, String operationName, DataType tin, DataType tout}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('LookupTableImportV2',
      operationName ??= graph._scope.uniqueName('LookupTableImportV2/'));
  op$.addInput(tableHandle);
  op$.addInput(keys);
  op$.addInput(values);
  op$.setAttrType('Tin', tin);
  op$.setAttrType('Tout', tout);
  return op$.finish();
}

/// This operation has no outputs.
Operation tensorArrayCloseV3(Output handle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayCloseV3',
      operationName ??= graph._scope.uniqueName('TensorArrayCloseV3/'));
  op$.addInput(handle);
  return op$.finish();
}

/// This operation has no outputs.
Operation saveV2<T>(Output prefix, Output tensorNames, Output shapeAndSlices,
    List<Output> tensors,
    {Graph graph, String operationName, List<DataType> dtypes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SaveV2', operationName ??= graph._scope.uniqueName('SaveV2/'));
  op$.addInput(prefix);
  op$.addInput(tensorNames);
  op$.addInput(shapeAndSlices);
  op$.addInputList(tensors);
  op$.setAttrTypeList('dtypes', dtypes);
  return op$.finish();
}

/// This operation has no outputs.
Operation orderedMapStage<T>(Output key, Output indices, List<Output> values,
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
  return op$.finish();
}

Output prependFromQueueAndPaddedBatchDataset<T>(Output inputDataset,
    Output batchSize, List<Output> paddedShapes, List<Output> paddingValues,
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
  return op$.finish()[0];
}

Output fractionalMaxPoolGrad<T>(Output origInput, Output origOutput,
    Output outBackprop, Output rowPoolingSequence, Output colPoolingSequence,
    {Graph graph, String operationName, bool overlapping: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('FractionalMaxPoolGrad',
      operationName ??= graph._scope.uniqueName('FractionalMaxPoolGrad/'));
  op$.addInput(origInput);
  op$.addInput(origOutput);
  op$.addInput(outBackprop);
  op$.addInput(rowPoolingSequence);
  op$.addInput(colPoolingSequence);
  op$.setAttrBool('overlapping', overlapping);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation iteratorSetStatsAggregator(
    Output iteratorHandle, Output statsAggregatorHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('IteratorSetStatsAggregator',
      operationName ??= graph._scope.uniqueName('IteratorSetStatsAggregator/'));
  op$.addInput(iteratorHandle);
  op$.addInput(statsAggregatorHandle);
  return op$.finish();
}

Output encodeJpeg(Output image,
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
  return op$.finish()[0];
}

Output rank<T>(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Rank', operationName ??= graph._scope.uniqueName('Rank/'));
  op$.addInput(input);
  return op$.finish()[0];
}

class StringSplitOutput {
  StringSplitOutput(
      this._graph, this.op, this.indices, this.values, this.shape);

  final Graph _graph;

  Operation op;

  final Output<Output> indices;

  final Output<Output> values;

  final Output<Output> shape;

  StringSplit run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new StringSplit(result0, result1, result2);
  }
}

class StringSplit {
  StringSplit(this.indices, this.values, this.shape);

  final Output indices;

  final Output values;

  final Output shape;
}

StringSplitOutput stringSplit(Output input, Output delimiter,
    {Graph graph, String operationName, bool skipEmpty: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'StringSplit', operationName ??= graph._scope.uniqueName('StringSplit/'));
  op$.addInput(input);
  op$.addInput(delimiter);
  op$.setAttrBool('skip_empty', skipEmpty);
  var result$ = op$.finish();
  return new StringSplitOutput(
      graph, result$, result$[0], result$[1], result$[2]);
}

/// This operation has no outputs.
Operation resourceScatterUpdate<T>(
    Output resource, Output indices, Output updates,
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
  return op$.finish();
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

  final Output<Output> sampledCandidates;

  final Output<Output> trueExpectedCount;

  final Output<Output> sampledExpectedCount;

  ThreadUnsafeUnigramCandidateSampler run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new ThreadUnsafeUnigramCandidateSampler(result0, result1, result2);
  }
}

class ThreadUnsafeUnigramCandidateSampler {
  ThreadUnsafeUnigramCandidateSampler(this.sampledCandidates,
      this.trueExpectedCount, this.sampledExpectedCount);

  final Output sampledCandidates;

  final Output trueExpectedCount;

  final Output sampledExpectedCount;
}

ThreadUnsafeUnigramCandidateSamplerOutput threadUnsafeUnigramCandidateSampler(
    Output trueClasses,
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
  var result$ = op$.finish();
  return new ThreadUnsafeUnigramCandidateSamplerOutput(
      graph, result$, result$[0], result$[1], result$[2]);
}

/// This operation has no outputs.
Operation stackCloseV2(Output handle, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StackCloseV2',
      operationName ??= graph._scope.uniqueName('StackCloseV2/'));
  op$.addInput(handle);
  return op$.finish();
}

Output abs<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Abs', operationName ??= graph._scope.uniqueName('Abs/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output gather<T>(Output params, Output indices,
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
  return op$.finish()[0];
}

Output tensorArrayReadV3<T>(Output handle, Output index, Output flowIn,
    {Graph graph, String operationName, DataType dtype}) {
  dtype ??= inferType(handle);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayReadV3',
      operationName ??= graph._scope.uniqueName('TensorArrayReadV3/'));
  op$.addInput(handle);
  op$.addInput(index);
  op$.addInput(flowIn);
  op$.setAttrType('dtype', dtype);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation resourceSparseApplyFtrlV2<T>(
    Output var$,
    Output accum,
    Output linear,
    Output grad,
    Output indices,
    Output lr,
    Output l1,
    Output l2,
    Output l2Shrinkage,
    Output lrPower,
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
  return op$.finish();
}

Output encodeWav(Output audio, Output sampleRate,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'EncodeWav', operationName ??= graph._scope.uniqueName('EncodeWav/'));
  op$.addInput(audio);
  op$.addInput(sampleRate);
  return op$.finish()[0];
}

Output statsAggregatorHandle(
    {Graph graph, String operationName, String container, String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StatsAggregatorHandle',
      operationName ??= graph._scope.uniqueName('StatsAggregatorHandle/'));
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 8: Random crop is now pure Python')
Output randomCrop<T>(Output image, Output size,
    {Graph graph, String operationName, int seed: 0, int seed2: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RandomCrop', operationName ??= graph._scope.uniqueName('RandomCrop/'));
  op$.addInput(image);
  op$.addInput(size);
  op$.setAttrInt('seed', seed);
  op$.setAttrInt('seed2', seed2);
  return op$.finish()[0];
}

Output diag<T>(Output diagonal, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Diag', operationName ??= graph._scope.uniqueName('Diag/'));
  op$.addInput(diagonal);
  return op$.finish()[0];
}

Output tensorListGetItem<T>(Output inputHandle, Output index,
    {Graph graph, String operationName, DataType elementDtype}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorListGetItem',
      operationName ??= graph._scope.uniqueName('TensorListGetItem/'));
  op$.addInput(inputHandle);
  op$.addInput(index);
  op$.setAttrType('element_dtype', elementDtype);
  return op$.finish()[0];
}

Output sparseSegmentSqrtNGrad<T>(
    Output grad, Output indices, Output segmentIds, Output outputDim0,
    {Graph graph, String operationName, DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseSegmentSqrtNGrad',
      operationName ??= graph._scope.uniqueName('SparseSegmentSqrtNGrad/'));
  op$.addInput(grad);
  op$.addInput(indices);
  op$.addInput(segmentIds);
  op$.addInput(outputDim0);
  op$.setAttrType('Tidx', tidx);
  return op$.finish()[0];
}

Output varIsInitializedOp(Output resource,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('VarIsInitializedOp',
      operationName ??= graph._scope.uniqueName('VarIsInitializedOp/'));
  op$.addInput(resource);
  return op$.finish()[0];
}

Output fakeQuantWithMinMaxVarsPerChannel(Output inputs, Output min, Output max,
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
  return op$.finish()[0];
}

Output iteratorGetNext<T>(Output iterator,
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
  return op$.finish()[0];
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
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation resourceSparseApplyAdagradDA<T>(
    Output var$,
    Output gradientAccumulator,
    Output gradientSquaredAccumulator,
    Output grad,
    Output indices,
    Output lr,
    Output l1,
    Output l2,
    Output globalStep,
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
  return op$.finish();
}

Output tFRecordDataset(
    Output filenames, Output compressionType, Output bufferSize,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TFRecordDataset',
      operationName ??= graph._scope.uniqueName('TFRecordDataset/'));
  op$.addInput(filenames);
  op$.addInput(compressionType);
  op$.addInput(bufferSize);
  return op$.finish()[0];
}

class SwitchOutput<T> {
  SwitchOutput(this._graph, this.op, this.outputFalse, this.outputTrue);

  final Graph _graph;

  Operation op;

  final Output<Output> outputFalse;

  final Output<Output> outputTrue;

  Switch run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new Switch<T>(result0, result1);
  }
}

class Switch<T> {
  Switch(this.outputFalse, this.outputTrue);

  final Output outputFalse;

  final Output outputTrue;
}

SwitchOutput switch$<T>(Output data, Output pred,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Switch', operationName ??= graph._scope.uniqueName('Switch/'));
  op$.addInput(data);
  op$.addInput(pred);
  var result$ = op$.finish();
  return new SwitchOutput<T>(graph, result$, result$[0], result$[1]);
}

Output linSpace<T>(Output start, Output stop, Output num,
    {Graph graph, String operationName, DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'LinSpace', operationName ??= graph._scope.uniqueName('LinSpace/'));
  op$.addInput(start);
  op$.addInput(stop);
  op$.addInput(num);
  op$.setAttrType('Tidx', tidx);
  return op$.finish()[0];
}

class CTCLossOutput {
  CTCLossOutput(this._graph, this.op, this.loss, this.gradient);

  final Graph _graph;

  Operation op;

  final Output<Output> loss;

  final Output<Output> gradient;

  CTCLoss run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new CTCLoss(result0, result1);
  }
}

class CTCLoss {
  CTCLoss(this.loss, this.gradient);

  final Output loss;

  final Output gradient;
}

CTCLossOutput cTCLoss(Output inputs, Output labelsIndices, Output labelsValues,
    Output sequenceLength,
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
  var result$ = op$.finish();
  return new CTCLossOutput(graph, result$, result$[0], result$[1]);
}

Output fixedLengthRecordDataset(Output filenames, Output headerBytes,
    Output recordBytes, Output footerBytes, Output bufferSize,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('FixedLengthRecordDataset',
      operationName ??= graph._scope.uniqueName('FixedLengthRecordDataset/'));
  op$.addInput(filenames);
  op$.addInput(headerBytes);
  op$.addInput(recordBytes);
  op$.addInput(footerBytes);
  op$.addInput(bufferSize);
  return op$.finish()[0];
}

Output sparseApplyProximalAdagrad<T>(Output var$, Output accum, Output lr,
    Output l1, Output l2, Output grad, Output indices,
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
  return op$.finish()[0];
}

Output mapSize(
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
  return op$.finish()[0];
}

Output sinh<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Sinh', operationName ??= graph._scope.uniqueName('Sinh/'));
  op$.addInput(x);
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 14: Use MatrixDiag')
Output batchMatrixDiag<T>(Output diagonal,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchMatrixDiag',
      operationName ??= graph._scope.uniqueName('BatchMatrixDiag/'));
  op$.addInput(diagonal);
  return op$.finish()[0];
}

Output sqlDataset(Output driverName, Output dataSourceName, Output query,
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
  return op$.finish()[0];
}

Output segmentSum<T>(Output data, Output segmentIds,
    {Graph graph, String operationName, DataType tindices}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SegmentSum', operationName ??= graph._scope.uniqueName('SegmentSum/'));
  op$.addInput(data);
  op$.addInput(segmentIds);
  op$.setAttrType('Tindices', tindices);
  return op$.finish()[0];
}

Output textLineDataset(
    Output filenames, Output compressionType, Output bufferSize,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TextLineDataset',
      operationName ??= graph._scope.uniqueName('TextLineDataset/'));
  op$.addInput(filenames);
  op$.addInput(compressionType);
  op$.addInput(bufferSize);
  return op$.finish()[0];
}

Output dataFormatDimMap<T>(Output x,
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
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation stackClose(Output handle, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'StackClose', operationName ??= graph._scope.uniqueName('StackClose/'));
  op$.addInput(handle);
  return op$.finish();
}

Output sparseSegmentMeanWithNumSegments<T>(
    Output data, Output indices, Output segmentIds, Output numSegments,
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
  return op$.finish()[0];
}

Output resizeBicubic<T>(Output images, Output size,
    {Graph graph, String operationName, bool alignCorners: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResizeBicubic',
      operationName ??= graph._scope.uniqueName('ResizeBicubic/'));
  op$.addInput(images);
  op$.addInput(size);
  op$.setAttrBool('align_corners', alignCorners);
  return op$.finish()[0];
}

Output hSVToRGB<T>(Output images, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'HSVToRGB', operationName ??= graph._scope.uniqueName('HSVToRGB/'));
  op$.addInput(images);
  return op$.finish()[0];
}

class SparseReduceMaxSparseOutput<T> {
  SparseReduceMaxSparseOutput(this._graph, this.op, this.outputIndices,
      this.outputValues, this.outputShape);

  final Graph _graph;

  Operation op;

  final Output<Output> outputIndices;

  final Output<Output> outputValues;

  final Output<Output> outputShape;

  SparseReduceMaxSparse run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new SparseReduceMaxSparse<T>(result0, result1, result2);
  }
}

class SparseReduceMaxSparse<T> {
  SparseReduceMaxSparse(
      this.outputIndices, this.outputValues, this.outputShape);

  final Output outputIndices;

  final Output outputValues;

  final Output outputShape;
}

SparseReduceMaxSparseOutput sparseReduceMaxSparse<T>(Output inputIndices,
    Output inputValues, Output inputShape, Output reductionAxes,
    {Graph graph, String operationName, bool keepDims: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseReduceMaxSparse',
      operationName ??= graph._scope.uniqueName('SparseReduceMaxSparse/'));
  op$.addInput(inputIndices);
  op$.addInput(inputValues);
  op$.addInput(inputShape);
  op$.addInput(reductionAxes);
  op$.setAttrBool('keep_dims', keepDims);
  var result$ = op$.finish();
  return new SparseReduceMaxSparseOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output cacheDataset(Output inputDataset, Output filename,
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
  return op$.finish()[0];
}

Output maxPoolV2<T>(Output input, Output ksize, Output strides,
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
  return op$.finish()[0];
}

class QuantizedMulOutput<T> {
  QuantizedMulOutput(this._graph, this.op, this.z, this.minZ, this.maxZ);

  final Graph _graph;

  Operation op;

  final Output<Output> z;

  final Output<Output> minZ;

  final Output<Output> maxZ;

  QuantizedMul run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new QuantizedMul<T>(result0, result1, result2);
  }
}

class QuantizedMul<T> {
  QuantizedMul(this.z, this.minZ, this.maxZ);

  final Output z;

  final Output minZ;

  final Output maxZ;
}

QuantizedMulOutput quantizedMul<T>(
    Output x, Output y, Output minX, Output maxX, Output minY, Output maxY,
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
  var result$ = op$.finish();
  return new QuantizedMulOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output shuffleAndRepeatDataset(Output inputDataset, Output bufferSize,
    Output seed, Output seed2, Output count,
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
  return op$.finish()[0];
}

Output rangeDataset(Output start, Output stop, Output step,
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
  return op$.finish()[0];
}

Output randomPoissonV2<T>(Output shape, Output rate,
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
  return op$.finish()[0];
}

Output shuffleDataset(
    Output inputDataset, Output bufferSize, Output seed, Output seed2,
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
  return op$.finish()[0];
}

Output readerNumRecordsProduced(Output readerHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ReaderNumRecordsProduced',
      operationName ??= graph._scope.uniqueName('ReaderNumRecordsProduced/'));
  op$.addInput(readerHandle);
  return op$.finish()[0];
}

class TensorListPopBackOutput<T> {
  TensorListPopBackOutput(this._graph, this.op, this.outputHandle, this.tensor);

  final Graph _graph;

  Operation op;

  final Output<Output> outputHandle;

  final Output<Output> tensor;

  TensorListPopBack run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new TensorListPopBack<T>(result0, result1);
  }
}

class TensorListPopBack<T> {
  TensorListPopBack(this.outputHandle, this.tensor);

  final Output outputHandle;

  final Output tensor;
}

TensorListPopBackOutput tensorListPopBack<T>(Output inputHandle,
    {Graph graph, String operationName, DataType elementDtype}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorListPopBack',
      operationName ??= graph._scope.uniqueName('TensorListPopBack/'));
  op$.addInput(inputHandle);
  op$.setAttrType('element_dtype', elementDtype);
  var result$ = op$.finish();
  return new TensorListPopBackOutput<T>(graph, result$, result$[0], result$[1]);
}

Output takeDataset(Output inputDataset, Output count,
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
  return op$.finish()[0];
}

class ReaderReadUpToV2Output {
  ReaderReadUpToV2Output(this._graph, this.op, this.keys, this.values);

  final Graph _graph;

  Operation op;

  final Output<Output> keys;

  final Output<Output> values;

  ReaderReadUpToV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new ReaderReadUpToV2(result0, result1);
  }
}

class ReaderReadUpToV2 {
  ReaderReadUpToV2(this.keys, this.values);

  final Output keys;

  final Output values;
}

ReaderReadUpToV2Output readerReadUpToV2(
    Output readerHandle, Output queueHandle, Output numRecords,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ReaderReadUpToV2',
      operationName ??= graph._scope.uniqueName('ReaderReadUpToV2/'));
  op$.addInput(readerHandle);
  op$.addInput(queueHandle);
  op$.addInput(numRecords);
  var result$ = op$.finish();
  return new ReaderReadUpToV2Output(graph, result$, result$[0], result$[1]);
}

Output queueDequeueV2<T>(Output handle,
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
  return op$.finish()[0];
}

class ReaderReadUpToOutput {
  ReaderReadUpToOutput(this._graph, this.op, this.keys, this.values);

  final Graph _graph;

  Operation op;

  final Output<Output> keys;

  final Output<Output> values;

  ReaderReadUpTo run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new ReaderReadUpTo(result0, result1);
  }
}

class ReaderReadUpTo {
  ReaderReadUpTo(this.keys, this.values);

  final Output keys;

  final Output values;
}

ReaderReadUpToOutput readerReadUpTo(
    Output readerHandle, Output queueHandle, Output numRecords,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ReaderReadUpTo',
      operationName ??= graph._scope.uniqueName('ReaderReadUpTo/'));
  op$.addInput(readerHandle);
  op$.addInput(queueHandle);
  op$.addInput(numRecords);
  var result$ = op$.finish();
  return new ReaderReadUpToOutput(graph, result$, result$[0], result$[1]);
}

Output unpack<T>(Output value,
    {Graph graph, String operationName, int num, int axis: 0}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Unpack', operationName ??= graph._scope.uniqueName('Unpack/'));
  op$.addInput(value);
  op$.setAttrInt('num', num);
  op$.setAttrInt('axis', axis);
  return op$.finish()[0];
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
  return op$.finish()[0];
}

Output conv2DBackpropFilter<T>(
    Output input, Output filterSizes, Output outBackprop,
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
  return op$.finish()[0];
}

Output iteratorGetNextSync<T>(Output iterator,
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
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 13: Use MatrixInverse instead.')
Output batchMatrixInverse<T>(Output input,
    {Graph graph, String operationName, bool adjoint: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchMatrixInverse',
      operationName ??= graph._scope.uniqueName('BatchMatrixInverse/'));
  op$.addInput(input);
  op$.setAttrBool('adjoint', adjoint);
  return op$.finish()[0];
}

Output sparseApplyCenteredRMSProp<T>(
    Output var$,
    Output mg,
    Output ms,
    Output mom,
    Output lr,
    Output rho,
    Output momentum,
    Output epsilon,
    Output grad,
    Output indices,
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
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation resourceSparseApplyCenteredRMSProp<T>(
    Output var$,
    Output mg,
    Output ms,
    Output mom,
    Output lr,
    Output rho,
    Output momentum,
    Output epsilon,
    Output grad,
    Output indices,
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
  return op$.finish();
}

Output queueSizeV2(Output handle, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'QueueSizeV2', operationName ??= graph._scope.uniqueName('QueueSizeV2/'));
  op$.addInput(handle);
  return op$.finish()[0];
}

class FractionalAvgPoolOutput<T> {
  FractionalAvgPoolOutput(this._graph, this.op, this.output,
      this.rowPoolingSequence, this.colPoolingSequence);

  final Graph _graph;

  Operation op;

  final Output<Output> output;

  final Output<Output> rowPoolingSequence;

  final Output<Output> colPoolingSequence;

  FractionalAvgPool run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new FractionalAvgPool<T>(result0, result1, result2);
  }
}

class FractionalAvgPool<T> {
  FractionalAvgPool(
      this.output, this.rowPoolingSequence, this.colPoolingSequence);

  final Output output;

  final Output rowPoolingSequence;

  final Output colPoolingSequence;
}

FractionalAvgPoolOutput fractionalAvgPool<T>(Output value,
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
  var result$ = op$.finish();
  return new FractionalAvgPoolOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output randomDataset(Output seed, Output seed2,
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
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation mergeV2Checkpoints(
    Output checkpointPrefixes, Output destinationPrefix,
    {Graph graph, String operationName, bool deleteOldDirs: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MergeV2Checkpoints',
      operationName ??= graph._scope.uniqueName('MergeV2Checkpoints/'));
  op$.addInput(checkpointPrefixes);
  op$.addInput(destinationPrefix);
  op$.setAttrBool('delete_old_dirs', deleteOldDirs);
  return op$.finish();
}

/// This operation has no outputs.
Operation queueClose(Output handle,
    {Graph graph, String operationName, bool cancelPendingEnqueues: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'QueueClose', operationName ??= graph._scope.uniqueName('QueueClose/'));
  op$.addInput(handle);
  op$.setAttrBool('cancel_pending_enqueues', cancelPendingEnqueues);
  return op$.finish();
}

Output randomShuffleQueue(
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
  return op$.finish()[0];
}

Output restoreV2<T>(Output prefix, Output tensorNames, Output shapeAndSlices,
    {Graph graph, String operationName, List<DataType> dtypes}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RestoreV2', operationName ??= graph._scope.uniqueName('RestoreV2/'));
  op$.addInput(prefix);
  op$.addInput(tensorNames);
  op$.addInput(shapeAndSlices);
  op$.setAttrTypeList('dtypes', dtypes);
  return op$.finish()[0];
}

Output denseToSparseBatchDataset(
    Output inputDataset, Output batchSize, Output rowShape,
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
  return op$.finish()[0];
}

Output addN<T>(List<Output> inputs,
    {Graph graph, String operationName, int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'AddN', operationName ??= graph._scope.uniqueName('AddN/'));
  op$.addInputList(inputs);
  op$.setAttrInt('N', n);
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayV3')
Output tensorArrayV2(Output size,
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
  return op$.finish()[0];
}

Output filterDataset<T>(Output inputDataset, List<Output> otherArguments,
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
  return op$.finish()[0];
}

Output interleaveDataset<T>(Output inputDataset, List<Output> otherArguments,
    Output cycleLength, Output blockLength,
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
  return op$.finish()[0];
}

Output prefetchDataset(Output inputDataset, Output bufferSize,
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
  return op$.finish()[0];
}

Output range<T>(Output start, Output limit, Output delta,
    {Graph graph, String operationName, DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Range', operationName ??= graph._scope.uniqueName('Range/'));
  op$.addInput(start);
  op$.addInput(limit);
  op$.addInput(delta);
  op$.setAttrType('Tidx', tidx);
  return op$.finish()[0];
}

Output sparseTensorSliceDataset<T>(
    Output indices, Output values, Output denseShape,
    {Graph graph, String operationName, DataType tvalues}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseTensorSliceDataset',
      operationName ??= graph._scope.uniqueName('SparseTensorSliceDataset/'));
  op$.addInput(indices);
  op$.addInput(values);
  op$.addInput(denseShape);
  op$.setAttrType('Tvalues', tvalues);
  return op$.finish()[0];
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
  return op$.finish()[0];
}

Output tensorArrayWriteV3<T>(
    Output handle, Output index, Output value, Output flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayWriteV3',
      operationName ??= graph._scope.uniqueName('TensorArrayWriteV3/'));
  op$.addInput(handle);
  op$.addInput(index);
  op$.addInput(value);
  op$.addInput(flowIn);
  return op$.finish()[0];
}

class RefMergeOutput<T> {
  RefMergeOutput(this._graph, this.op, this.output, this.valueIndex);

  final Graph _graph;

  Operation op;

  final Output<Output> output;

  final Output<Output> valueIndex;

  RefMerge run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new RefMerge<T>(result0, result1);
  }
}

class RefMerge<T> {
  RefMerge(this.output, this.valueIndex);

  final Output output;

  final Output valueIndex;
}

RefMergeOutput refMerge<T>(List<Output> inputs,
    {Graph graph, String operationName, int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RefMerge', operationName ??= graph._scope.uniqueName('RefMerge/'));
  op$.addInputList(inputs);
  op$.setAttrInt('N', n);
  var result$ = op$.finish();
  return new RefMergeOutput<T>(graph, result$, result$[0], result$[1]);
}

Output bytesProducedStatsDataset(Output inputDataset, Output tag,
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
  return op$.finish()[0];
}

Output histogramSummary<T>(Output tag, Output values,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('HistogramSummary',
      operationName ??= graph._scope.uniqueName('HistogramSummary/'));
  op$.addInput(tag);
  op$.addInput(values);
  return op$.finish()[0];
}

Output stackPopV2<T>(Output handle,
    {Graph graph, String operationName, DataType elemType}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'StackPopV2', operationName ??= graph._scope.uniqueName('StackPopV2/'));
  op$.addInput(handle);
  op$.setAttrType('elem_type', elemType);
  return op$.finish()[0];
}

Output lRN<T>(Output input,
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
  return op$.finish()[0];
}

Output conv3DBackpropInputV2<T>(
    Output inputSizes, Output filter, Output outBackprop,
    {Graph graph,
    String operationName,
    List<int> strides,
    String padding,
    String dataFormat: 'NDHWC',
    List<int> dilations}) {
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
  return op$.finish()[0];
}

Output skipDataset(Output inputDataset, Output count,
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
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation sparseAccumulatorApplyGradient<T>(Output handle, Output localStep,
    Output gradientIndices, Output gradientValues, Output gradientShape,
    {Graph graph, String operationName, DataType dtype, bool hasKnownShape}) {
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
  return op$.finish();
}

Output statsAggregatorSummary(Output iterator,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StatsAggregatorSummary',
      operationName ??= graph._scope.uniqueName('StatsAggregatorSummary/'));
  op$.addInput(iterator);
  return op$.finish()[0];
}

Output equal<T>(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Equal', operationName ??= graph._scope.uniqueName('Equal/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

class SparseToSparseSetOperationOutput<T> {
  SparseToSparseSetOperationOutput(this._graph, this.op, this.resultIndices,
      this.resultValues, this.resultShape);

  final Graph _graph;

  Operation op;

  final Output<Output> resultIndices;

  final Output<Output> resultValues;

  final Output<Output> resultShape;

  SparseToSparseSetOperation run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new SparseToSparseSetOperation<T>(result0, result1, result2);
  }
}

class SparseToSparseSetOperation<T> {
  SparseToSparseSetOperation(
      this.resultIndices, this.resultValues, this.resultShape);

  final Output resultIndices;

  final Output resultValues;

  final Output resultShape;
}

SparseToSparseSetOperationOutput sparseToSparseSetOperation<T>(
    Output set1Indices,
    Output set1Values,
    Output set1Shape,
    Output set2Indices,
    Output set2Values,
    Output set2Shape,
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
  var result$ = op$.finish();
  return new SparseToSparseSetOperationOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

/// This operation has no outputs.
Operation lookupTableInsertV2<T>(Output tableHandle, Output keys, Output values,
    {Graph graph, String operationName, DataType tin, DataType tout}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('LookupTableInsertV2',
      operationName ??= graph._scope.uniqueName('LookupTableInsertV2/'));
  op$.addInput(tableHandle);
  op$.addInput(keys);
  op$.addInput(values);
  op$.setAttrType('Tin', tin);
  op$.setAttrType('Tout', tout);
  return op$.finish();
}

/// This operation has no outputs.
Operation barrierInsertMany<T>(Output handle, Output keys, Output values,
    {Graph graph, String operationName, int componentIndex}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BarrierInsertMany',
      operationName ??= graph._scope.uniqueName('BarrierInsertMany/'));
  op$.addInput(handle);
  op$.addInput(keys);
  op$.addInput(values);
  op$.setAttrInt('component_index', componentIndex);
  return op$.finish();
}

@Deprecated('DEPRECATED at GraphDef version 26: Use TensorArraySplitV3')
Output tensorArraySplitV2<T>(
    Output handle, Output value, Output lengths, Output flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArraySplitV2',
      operationName ??= graph._scope.uniqueName('TensorArraySplitV2/'));
  op$.addInput(handle);
  op$.addInput(value);
  op$.addInput(lengths);
  op$.addInput(flowIn);
  return op$.finish()[0];
}

Output orderedMapUnstage<T>(Output key, Output indices,
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
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 15: Use FFT2D')
Output batchFFT2D(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BatchFFT2D', operationName ??= graph._scope.uniqueName('BatchFFT2D/'));
  op$.addInput(input);
  return op$.finish()[0];
}

Output mapIncompleteSize(
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
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 11: Use SelfAdjointEigV2 instead.')
Output selfAdjointEig<T>(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SelfAdjointEig',
      operationName ??= graph._scope.uniqueName('SelfAdjointEig/'));
  op$.addInput(input);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation readerResetV2(Output readerHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ReaderResetV2',
      operationName ??= graph._scope.uniqueName('ReaderResetV2/'));
  op$.addInput(readerHandle);
  return op$.finish();
}

Output orderedMapSize(
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
  return op$.finish()[0];
}

Output refNextIteration<T>(Output data, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('RefNextIteration',
      operationName ??= graph._scope.uniqueName('RefNextIteration/'));
  op$.addInput(data);
  return op$.finish()[0];
}

Output orderedMapPeek<T>(Output key, Output indices,
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
  return op$.finish()[0];
}

class DeserializeSparseOutput<T> {
  DeserializeSparseOutput(this._graph, this.op, this.sparseIndices,
      this.sparseValues, this.sparseShape);

  final Graph _graph;

  Operation op;

  final Output<Output> sparseIndices;

  final Output<Output> sparseValues;

  final Output<Output> sparseShape;

  DeserializeSparse run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new DeserializeSparse<T>(result0, result1, result2);
  }
}

class DeserializeSparse<T> {
  DeserializeSparse(this.sparseIndices, this.sparseValues, this.sparseShape);

  final Output sparseIndices;

  final Output sparseValues;

  final Output sparseShape;
}

DeserializeSparseOutput deserializeSparse<T>(Output serializedSparse,
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
  var result$ = op$.finish();
  return new DeserializeSparseOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
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
  return op$.finish();
}

Output queueDequeue<T>(Output handle,
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
  return op$.finish()[0];
}

Output rFFT2D(Output input, Output fftLength,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RFFT2D', operationName ??= graph._scope.uniqueName('RFFT2D/'));
  op$.addInput(input);
  op$.addInput(fftLength);
  return op$.finish()[0];
}

Output maxPoolGradGradWithArgmax<T>(Output input, Output grad, Output argmax,
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
  return op$.finish()[0];
}

Output less<T>(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Less', operationName ??= graph._scope.uniqueName('Less/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

class DenseToDenseSetOperationOutput<T> {
  DenseToDenseSetOperationOutput(this._graph, this.op, this.resultIndices,
      this.resultValues, this.resultShape);

  final Graph _graph;

  Operation op;

  final Output<Output> resultIndices;

  final Output<Output> resultValues;

  final Output<Output> resultShape;

  DenseToDenseSetOperation run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new DenseToDenseSetOperation<T>(result0, result1, result2);
  }
}

class DenseToDenseSetOperation<T> {
  DenseToDenseSetOperation(
      this.resultIndices, this.resultValues, this.resultShape);

  final Output resultIndices;

  final Output resultValues;

  final Output resultShape;
}

DenseToDenseSetOperationOutput denseToDenseSetOperation<T>(
    Output set1, Output set2,
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
  var result$ = op$.finish();
  return new DenseToDenseSetOperationOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

class SoftmaxCrossEntropyWithLogitsOutput<T> {
  SoftmaxCrossEntropyWithLogitsOutput(
      this._graph, this.op, this.loss, this.backprop);

  final Graph _graph;

  Operation op;

  final Output<Output> loss;

  final Output<Output> backprop;

  SoftmaxCrossEntropyWithLogits run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new SoftmaxCrossEntropyWithLogits<T>(result0, result1);
  }
}

class SoftmaxCrossEntropyWithLogits<T> {
  SoftmaxCrossEntropyWithLogits(this.loss, this.backprop);

  final Output loss;

  final Output backprop;
}

SoftmaxCrossEntropyWithLogitsOutput softmaxCrossEntropyWithLogits<T>(
    Output features, Output labels,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'SoftmaxCrossEntropyWithLogits',
      operationName ??=
          graph._scope.uniqueName('SoftmaxCrossEntropyWithLogits/'));
  op$.addInput(features);
  op$.addInput(labels);
  var result$ = op$.finish();
  return new SoftmaxCrossEntropyWithLogitsOutput<T>(
      graph, result$, result$[0], result$[1]);
}

Output datasetToSingleElement<T>(Output dataset,
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
  return op$.finish()[0];
}

/// Creates a summary file writer accessible by the given resource handle.
/// This operation has no outputs.
/// * [writer]: A handle to the summary writer resource
/// * [logdir]: Directory where the event file will be written.
/// * [maxQueue]: Size of the queue of pending events and summaries.
/// * [flushMillis]: How often, in milliseconds, to flush the pending events and
/// summaries to disk.
/// * [filenameSuffix]: Every event file's name is suffixed with this suffix.
Operation createSummaryFileWriter(Output writer, Output logdir, Output maxQueue,
    Output flushMillis, Output filenameSuffix,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CreateSummaryFileWriter',
      operationName ??= graph._scope.uniqueName('CreateSummaryFileWriter/'));
  op$.addInput(writer);
  op$.addInput(logdir);
  op$.addInput(maxQueue);
  op$.addInput(flushMillis);
  op$.addInput(filenameSuffix);
  return op$.finish();
}

Output queueIsClosedV2(Output handle, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QueueIsClosedV2',
      operationName ??= graph._scope.uniqueName('QueueIsClosedV2/'));
  op$.addInput(handle);
  return op$.finish()[0];
}

Output sparseReduceSum<T>(Output inputIndices, Output inputValues,
    Output inputShape, Output reductionAxes,
    {Graph graph, String operationName, bool keepDims: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseReduceSum',
      operationName ??= graph._scope.uniqueName('SparseReduceSum/'));
  op$.addInput(inputIndices);
  op$.addInput(inputValues);
  op$.addInput(inputShape);
  op$.addInput(reductionAxes);
  op$.setAttrBool('keep_dims', keepDims);
  return op$.finish()[0];
}

Output zeta<T>(Output x, Output q, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Zeta', operationName ??= graph._scope.uniqueName('Zeta/'));
  op$.addInput(x);
  op$.addInput(q);
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayGradV3')
Output tensorArrayGradV2(Output handle, Output flowIn,
    {Graph graph, String operationName, String source}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayGradV2',
      operationName ??= graph._scope.uniqueName('TensorArrayGradV2/'));
  op$.addInput(handle);
  op$.addInput(flowIn);
  op$.setAttrString('source', source);
  return op$.finish()[0];
}

Output shapeN<T>(List<Output> input,
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
  return op$.finish()[0];
}

Output imageSummary<T>(Output tag, Output tensor,
    {Graph graph, String operationName, int maxImages: 3, Tensor badColor}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ImageSummary',
      operationName ??= graph._scope.uniqueName('ImageSummary/'));
  op$.addInput(tag);
  op$.addInput(tensor);
  op$.setAttrInt('max_images', maxImages);
  op$.setAttrTensor('bad_color', badColor);
  return op$.finish()[0];
}

Output wholeFileReaderV2(
    {Graph graph, String operationName, String container, String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('WholeFileReaderV2',
      operationName ??= graph._scope.uniqueName('WholeFileReaderV2/'));
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
  return op$.finish()[0];
}

class MapUnstageNoKeyOutput<T> {
  MapUnstageNoKeyOutput(this._graph, this.op, this.key, this.values);

  final Graph _graph;

  Operation op;

  final Output<Output> key;

  final Output<Output> values;

  MapUnstageNoKey run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new MapUnstageNoKey<T>(result0, result1);
  }
}

class MapUnstageNoKey<T> {
  MapUnstageNoKey(this.key, this.values);

  final Output key;

  final Output values;
}

MapUnstageNoKeyOutput mapUnstageNoKey<T>(Output indices,
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
  var result$ = op$.finish();
  return new MapUnstageNoKeyOutput<T>(graph, result$, result$[0], result$[1]);
}

Output mfcc(Output spectrogram, Output sampleRate,
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
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 14: Use MatrixDiagPart')
Output batchMatrixDiagPart<T>(Output input,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchMatrixDiagPart',
      operationName ??= graph._scope.uniqueName('BatchMatrixDiagPart/'));
  op$.addInput(input);
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 2: Use AdjustContrastv2 instead')
Output adjustContrast<T>(
    Output images, Output contrastFactor, Output minValue, Output maxValue,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AdjustContrast',
      operationName ??= graph._scope.uniqueName('AdjustContrast/'));
  op$.addInput(images);
  op$.addInput(contrastFactor);
  op$.addInput(minValue);
  op$.addInput(maxValue);
  return op$.finish()[0];
}

Output resizeNearestNeighbor<T>(Output images, Output size,
    {Graph graph, String operationName, bool alignCorners: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResizeNearestNeighbor',
      operationName ??= graph._scope.uniqueName('ResizeNearestNeighbor/'));
  op$.addInput(images);
  op$.addInput(size);
  op$.setAttrBool('align_corners', alignCorners);
  return op$.finish()[0];
}

class ParseExampleOutput<T> {
  ParseExampleOutput(this._graph, this.op, this.sparseIndices,
      this.sparseValues, this.sparseShapes, this.denseValues);

  final Graph _graph;

  Operation op;

  final Output<Output> sparseIndices;

  final Output<Output> sparseValues;

  final Output<Output> sparseShapes;

  final Output<Output> denseValues;

  ParseExample run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    runner.fetch(op.name, index: 3);
    feed?.forEach(runner.feed);
    var result3 = runner.run()[0];
    return new ParseExample<T>(result0, result1, result2, result3);
  }
}

class ParseExample<T> {
  ParseExample(this.sparseIndices, this.sparseValues, this.sparseShapes,
      this.denseValues);

  final Output sparseIndices;

  final Output sparseValues;

  final Output sparseShapes;

  final Output denseValues;
}

ParseExampleOutput parseExample<T>(Output serialized, Output names,
    List<Output> sparseKeys, List<Output> denseKeys, List<Output> denseDefaults,
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
  var result$ = op$.finish();
  return new ParseExampleOutput<T>(
      graph, result$, result$[0], result$[1], result$[2], result$[3]);
}

Output atanh<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Atanh', operationName ??= graph._scope.uniqueName('Atanh/'));
  op$.addInput(x);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation makeIterator(Output dataset, Output iterator,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MakeIterator',
      operationName ??= graph._scope.uniqueName('MakeIterator/'));
  op$.addInput(dataset);
  op$.addInput(iterator);
  return op$.finish();
}

Output parameterizedTruncatedNormal<T>(
    Output shape, Output means, Output stdevs, Output minvals, Output maxvals,
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
  return op$.finish()[0];
}

Output parallelInterleaveDataset<T>(
    Output inputDataset,
    List<Output> otherArguments,
    Output cycleLength,
    Output blockLength,
    Output sloppy,
    Output bufferOutputElements,
    Output prefetchInputElements,
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
  return op$.finish()[0];
}

class CTCGreedyDecoderOutput {
  CTCGreedyDecoderOutput(this._graph, this.op, this.decodedIndices,
      this.decodedValues, this.decodedShape, this.logProbability);

  final Graph _graph;

  Operation op;

  final Output<Output> decodedIndices;

  final Output<Output> decodedValues;

  final Output<Output> decodedShape;

  final Output<Output> logProbability;

  CTCGreedyDecoder run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    runner.fetch(op.name, index: 3);
    feed?.forEach(runner.feed);
    var result3 = runner.run()[0];
    return new CTCGreedyDecoder(result0, result1, result2, result3);
  }
}

class CTCGreedyDecoder {
  CTCGreedyDecoder(this.decodedIndices, this.decodedValues, this.decodedShape,
      this.logProbability);

  final Output decodedIndices;

  final Output decodedValues;

  final Output decodedShape;

  final Output logProbability;
}

CTCGreedyDecoderOutput cTCGreedyDecoder(Output inputs, Output sequenceLength,
    {Graph graph, String operationName, bool mergeRepeated: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CTCGreedyDecoder',
      operationName ??= graph._scope.uniqueName('CTCGreedyDecoder/'));
  op$.addInput(inputs);
  op$.addInput(sequenceLength);
  op$.setAttrBool('merge_repeated', mergeRepeated);
  var result$ = op$.finish();
  return new CTCGreedyDecoderOutput(
      graph, result$, result$[0], result$[1], result$[2], result$[3]);
}

Output stageSize(
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
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation assignAddVariableOp<T>(Output resource, Output value,
    {Graph graph, String operationName, DataType dtype}) {
  dtype ??= inferType(resource);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AssignAddVariableOp',
      operationName ??= graph._scope.uniqueName('AssignAddVariableOp/'));
  op$.addInput(resource);
  op$.addInput(value);
  op$.setAttrType('dtype', dtype);
  return op$.finish();
}

Output depthwiseConv2dNativeBackpropInput<T>(
    Output inputSizes, Output filter, Output outBackprop,
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
  return op$.finish()[0];
}

Output isNan<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'IsNan', operationName ??= graph._scope.uniqueName('IsNan/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output tensorListPushBack<T>(Output inputHandle, Output tensor,
    {Graph graph, String operationName, DataType elementDtype}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorListPushBack',
      operationName ??= graph._scope.uniqueName('TensorListPushBack/'));
  op$.addInput(inputHandle);
  op$.addInput(tensor);
  op$.setAttrType('element_dtype', elementDtype);
  return op$.finish()[0];
}

Output reciprocalGrad<T>(Output y, Output dy,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ReciprocalGrad',
      operationName ??= graph._scope.uniqueName('ReciprocalGrad/'));
  op$.addInput(y);
  op$.addInput(dy);
  return op$.finish()[0];
}

class QuantizedReshapeOutput<T> {
  QuantizedReshapeOutput(
      this._graph, this.op, this.output, this.outputMin, this.outputMax);

  final Graph _graph;

  Operation op;

  final Output<Output> output;

  final Output<Output> outputMin;

  final Output<Output> outputMax;

  QuantizedReshape run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new QuantizedReshape<T>(result0, result1, result2);
  }
}

class QuantizedReshape<T> {
  QuantizedReshape(this.output, this.outputMin, this.outputMax);

  final Output output;

  final Output outputMin;

  final Output outputMax;
}

QuantizedReshapeOutput quantizedReshape<T>(
    Output tensor, Output shape, Output inputMin, Output inputMax,
    {Graph graph, String operationName, DataType tshape: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QuantizedReshape',
      operationName ??= graph._scope.uniqueName('QuantizedReshape/'));
  op$.addInput(tensor);
  op$.addInput(shape);
  op$.addInput(inputMin);
  op$.addInput(inputMax);
  op$.setAttrType('Tshape', tshape);
  var result$ = op$.finish();
  return new QuantizedReshapeOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output mapDataset<T>(Output inputDataset, List<Output> otherArguments,
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
  return op$.finish()[0];
}

Output unstage<T>(
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
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation stage<T>(List<Output> values,
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
  return op$.finish();
}

Output tensorSliceDataset<T>(List<Output> components,
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
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation deleteSessionTensor(Output handle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DeleteSessionTensor',
      operationName ??= graph._scope.uniqueName('DeleteSessionTensor/'));
  op$.addInput(handle);
  return op$.finish();
}

Output getSessionHandleV2<T>(Output value,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('GetSessionHandleV2',
      operationName ??= graph._scope.uniqueName('GetSessionHandleV2/'));
  op$.addInput(value);
  return op$.finish()[0];
}

Output tensorDataset<T>(List<Output> components,
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
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 14: Use MatrixBandPart')
Output batchMatrixBandPart<T>(Output input, Output numLower, Output numUpper,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchMatrixBandPart',
      operationName ??= graph._scope.uniqueName('BatchMatrixBandPart/'));
  op$.addInput(input);
  op$.addInput(numLower);
  op$.addInput(numUpper);
  return op$.finish()[0];
}

Output div<T>(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Div', operationName ??= graph._scope.uniqueName('Div/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

/// Flushes and closes the summary writer.
/// Also removes it from the resource manager. To reopen, use another
/// CreateSummaryFileWriter op.
/// This operation has no outputs.
/// * [writer]: A handle to the summary writer resource.
Operation closeSummaryWriter(Output writer,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CloseSummaryWriter',
      operationName ??= graph._scope.uniqueName('CloseSummaryWriter/'));
  op$.addInput(writer);
  return op$.finish();
}

@Deprecated('DEPRECATED at GraphDef version 26: Use TensorArraySizeV3')
Output tensorArraySizeV2(Output handle, Output flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArraySizeV2',
      operationName ??= graph._scope.uniqueName('TensorArraySizeV2/'));
  op$.addInput(handle);
  op$.addInput(flowIn);
  return op$.finish()[0];
}

Output floorMod<T>(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'FloorMod', operationName ??= graph._scope.uniqueName('FloorMod/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

Output matchingFiles(Output pattern, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MatchingFiles',
      operationName ??= graph._scope.uniqueName('MatchingFiles/'));
  op$.addInput(pattern);
  return op$.finish()[0];
}

Output restore<T>(Output filePattern, Output tensorName,
    {Graph graph, String operationName, DataType dt, int preferredShard: -1}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Restore', operationName ??= graph._scope.uniqueName('Restore/'));
  op$.addInput(filePattern);
  op$.addInput(tensorName);
  op$.setAttrType('dt', dt);
  op$.setAttrInt('preferred_shard', preferredShard);
  return op$.finish()[0];
}

Output tanh<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Tanh', operationName ??= graph._scope.uniqueName('Tanh/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output cropAndResizeGradImage<T>(
    Output grads, Output boxes, Output boxInd, Output imageSize,
    {Graph graph, String operationName, String method: 'bilinear'}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('CropAndResizeGradImage',
      operationName ??= graph._scope.uniqueName('CropAndResizeGradImage/'));
  op$.addInput(grads);
  op$.addInput(boxes);
  op$.addInput(boxInd);
  op$.addInput(imageSize);
  op$.setAttrString('method', method);
  return op$.finish()[0];
}

Output accumulatorTakeGradient<T>(Output handle, Output numRequired,
    {Graph graph, String operationName, DataType dtype}) {
  dtype ??= inferType(handle);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AccumulatorTakeGradient',
      operationName ??= graph._scope.uniqueName('AccumulatorTakeGradient/'));
  op$.addInput(handle);
  op$.addInput(numRequired);
  op$.setAttrType('dtype', dtype);
  return op$.finish()[0];
}

Output stridedSliceAssign<T>(
    Output ref, Output begin, Output end, Output strides, Output value,
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
  return op$.finish()[0];
}

class ComputeAccidentalHitsOutput {
  ComputeAccidentalHitsOutput(
      this._graph, this.op, this.indices, this.ids, this.weights);

  final Graph _graph;

  Operation op;

  final Output<Output> indices;

  final Output<Output> ids;

  final Output<Output> weights;

  ComputeAccidentalHits run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new ComputeAccidentalHits(result0, result1, result2);
  }
}

class ComputeAccidentalHits {
  ComputeAccidentalHits(this.indices, this.ids, this.weights);

  final Output indices;

  final Output ids;

  final Output weights;
}

ComputeAccidentalHitsOutput computeAccidentalHits(
    Output trueClasses, Output sampledCandidates,
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
  var result$ = op$.finish();
  return new ComputeAccidentalHitsOutput(
      graph, result$, result$[0], result$[1], result$[2]);
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
  return op$.finish()[0];
}

Output rFFT3D(Output input, Output fftLength,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RFFT3D', operationName ??= graph._scope.uniqueName('RFFT3D/'));
  op$.addInput(input);
  op$.addInput(fftLength);
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayGatherV3')
Output tensorArrayGatherV2<T>(Output handle, Output indices, Output flowIn,
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
  return op$.finish()[0];
}

Output dynamicPartition<T>(Output data, Output partitions,
    {Graph graph, String operationName, int numPartitions}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DynamicPartition',
      operationName ??= graph._scope.uniqueName('DynamicPartition/'));
  op$.addInput(data);
  op$.addInput(partitions);
  op$.setAttrInt('num_partitions', numPartitions);
  return op$.finish()[0];
}

Output fakeQueue(Output resource, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'FakeQueue', operationName ??= graph._scope.uniqueName('FakeQueue/'));
  op$.addInput(resource);
  return op$.finish()[0];
}

@Deprecated(
    'DEPRECATED at GraphDef version 16: Use TensorArrayGatherV3 with RangeOp')
Output tensorArrayPack<T>(Output handle, Output flowIn,
    {Graph graph, String operationName, DataType dtype, Shape elementShape}) {
  dtype ??= inferType(handle);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayPack',
      operationName ??= graph._scope.uniqueName('TensorArrayPack/'));
  op$.addInput(handle);
  op$.addInput(flowIn);
  op$.setAttrType('dtype', dtype);
  op$.setAttrShape('element_shape', elementShape);
  return op$.finish()[0];
}

Output dilation2DBackpropFilter<T>(
    Output input, Output filter, Output outBackprop,
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
  return op$.finish()[0];
}

class BatchSelfAdjointEigV2Output<T> {
  BatchSelfAdjointEigV2Output(this._graph, this.op, this.e, this.v);

  final Graph _graph;

  Operation op;

  final Output<Output> e;

  final Output<Output> v;

  BatchSelfAdjointEigV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new BatchSelfAdjointEigV2<T>(result0, result1);
  }
}

class BatchSelfAdjointEigV2<T> {
  BatchSelfAdjointEigV2(this.e, this.v);

  final Output e;

  final Output v;
}

@Deprecated('DEPRECATED at GraphDef version 13: Use SelfAdjointEigV2 instead.')
BatchSelfAdjointEigV2Output batchSelfAdjointEigV2<T>(Output input,
    {Graph graph, String operationName, bool computeV: true}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchSelfAdjointEigV2',
      operationName ??= graph._scope.uniqueName('BatchSelfAdjointEigV2/'));
  op$.addInput(input);
  op$.setAttrBool('compute_v', computeV);
  var result$ = op$.finish();
  return new BatchSelfAdjointEigV2Output<T>(
      graph, result$, result$[0], result$[1]);
}

Output tanhGrad<T>(Output y, Output dy, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'TanhGrad', operationName ??= graph._scope.uniqueName('TanhGrad/'));
  op$.addInput(y);
  op$.addInput(dy);
  return op$.finish()[0];
}

Output loopCond(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'LoopCond', operationName ??= graph._scope.uniqueName('LoopCond/'));
  op$.addInput(input);
  return op$.finish()[0];
}

Output parallelMapDataset<T>(
    Output inputDataset, List<Output> otherArguments, Output numParallelCalls,
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
  return op$.finish()[0];
}

Output sparseReduceMax<T>(Output inputIndices, Output inputValues,
    Output inputShape, Output reductionAxes,
    {Graph graph, String operationName, bool keepDims: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseReduceMax',
      operationName ??= graph._scope.uniqueName('SparseReduceMax/'));
  op$.addInput(inputIndices);
  op$.addInput(inputValues);
  op$.addInput(inputShape);
  op$.addInput(reductionAxes);
  op$.setAttrBool('keep_dims', keepDims);
  return op$.finish()[0];
}

Output unsortedSegmentMax<T>(Output data, Output segmentIds, Output numSegments,
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
  return op$.finish()[0];
}

Output audioSpectrogram(Output input,
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
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayReadV3')
Output tensorArrayRead<T>(Output handle, Output index, Output flowIn,
    {Graph graph, String operationName, DataType dtype}) {
  dtype ??= inferType(handle);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayRead',
      operationName ??= graph._scope.uniqueName('TensorArrayRead/'));
  op$.addInput(handle);
  op$.addInput(index);
  op$.addInput(flowIn);
  op$.setAttrType('dtype', dtype);
  return op$.finish()[0];
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
  return op$.finish();
}

Output mutableHashTable(
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
  return op$.finish()[0];
}

Output scanDataset<T>(
    Output inputDataset, List<Output> initialState, List<Output> otherArguments,
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
  return op$.finish()[0];
}

Output tensorArraySizeV3(Output handle, Output flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArraySizeV3',
      operationName ??= graph._scope.uniqueName('TensorArraySizeV3/'));
  op$.addInput(handle);
  op$.addInput(flowIn);
  return op$.finish()[0];
}

Output applyAdam<T>(
    Output var$,
    Output m,
    Output v,
    Output beta1Power,
    Output beta2Power,
    Output lr,
    Output beta1,
    Output beta2,
    Output epsilon,
    Output grad,
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
  return op$.finish()[0];
}

Output mergeSummary(List<Output> inputs,
    {Graph graph, String operationName, int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MergeSummary',
      operationName ??= graph._scope.uniqueName('MergeSummary/'));
  op$.addInputList(inputs);
  op$.setAttrInt('N', n);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation queueEnqueueManyV2<T>(Output handle, List<Output> components,
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
  return op$.finish();
}

Output fFT(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'FFT', operationName ??= graph._scope.uniqueName('FFT/'));
  op$.addInput(input);
  return op$.finish()[0];
}

class TensorArrayConcatV3Output<T> {
  TensorArrayConcatV3Output(this._graph, this.op, this.value, this.lengths);

  final Graph _graph;

  Operation op;

  final Output<Output> value;

  final Output<Output> lengths;

  TensorArrayConcatV3 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new TensorArrayConcatV3<T>(result0, result1);
  }
}

class TensorArrayConcatV3<T> {
  TensorArrayConcatV3(this.value, this.lengths);

  final Output value;

  final Output lengths;
}

TensorArrayConcatV3Output tensorArrayConcatV3<T>(Output handle, Output flowIn,
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
  var result$ = op$.finish();
  return new TensorArrayConcatV3Output<T>(
      graph, result$, result$[0], result$[1]);
}

/// This operation has no outputs.
Operation resourceApplyAdadelta<T>(Output var$, Output accum,
    Output accumUpdate, Output lr, Output rho, Output epsilon, Output grad,
    {Graph graph, String operationName, bool useLocking: false}) {
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
  return op$.finish();
}

Output debugGradientRefIdentity<T>(Output input,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DebugGradientRefIdentity',
      operationName ??= graph._scope.uniqueName('DebugGradientRefIdentity/'));
  op$.addInput(input);
  return op$.finish()[0];
}

class TensorArrayGradV3Output {
  TensorArrayGradV3Output(this._graph, this.op, this.gradHandle, this.flowOut);

  final Graph _graph;

  Operation op;

  final Output<Output> gradHandle;

  final Output<Output> flowOut;

  TensorArrayGradV3 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new TensorArrayGradV3(result0, result1);
  }
}

class TensorArrayGradV3 {
  TensorArrayGradV3(this.gradHandle, this.flowOut);

  final Output gradHandle;

  final Output flowOut;
}

TensorArrayGradV3Output tensorArrayGradV3(Output handle, Output flowIn,
    {Graph graph, String operationName, String source}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayGradV3',
      operationName ??= graph._scope.uniqueName('TensorArrayGradV3/'));
  op$.addInput(handle);
  op$.addInput(flowIn);
  op$.setAttrString('source', source);
  var result$ = op$.finish();
  return new TensorArrayGradV3Output(graph, result$, result$[0], result$[1]);
}

class RefSwitchOutput<T> {
  RefSwitchOutput(this._graph, this.op, this.outputFalse, this.outputTrue);

  final Graph _graph;

  Operation op;

  final Output<Output> outputFalse;

  final Output<Output> outputTrue;

  RefSwitch run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new RefSwitch<T>(result0, result1);
  }
}

class RefSwitch<T> {
  RefSwitch(this.outputFalse, this.outputTrue);

  final Output outputFalse;

  final Output outputTrue;
}

RefSwitchOutput refSwitch<T>(Output data, Output pred,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RefSwitch', operationName ??= graph._scope.uniqueName('RefSwitch/'));
  op$.addInput(data);
  op$.addInput(pred);
  var result$ = op$.finish();
  return new RefSwitchOutput<T>(graph, result$, result$[0], result$[1]);
}

Output floorDiv<T>(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'FloorDiv', operationName ??= graph._scope.uniqueName('FloorDiv/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

Output applyAdagradDA<T>(
    Output var$,
    Output gradientAccumulator,
    Output gradientSquaredAccumulator,
    Output grad,
    Output lr,
    Output l1,
    Output l2,
    Output globalStep,
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
  return op$.finish()[0];
}

Output square<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Square', operationName ??= graph._scope.uniqueName('Square/'));
  op$.addInput(x);
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 26: Use IdentityReaderV2')
Output identityReader(
    {Graph graph, String operationName, String container, String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('IdentityReader',
      operationName ??= graph._scope.uniqueName('IdentityReader/'));
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
  return op$.finish()[0];
}

Output tensorArrayScatterV3<T>(
    Output handle, Output indices, Output value, Output flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayScatterV3',
      operationName ??= graph._scope.uniqueName('TensorArrayScatterV3/'));
  op$.addInput(handle);
  op$.addInput(indices);
  op$.addInput(value);
  op$.addInput(flowIn);
  return op$.finish()[0];
}

Output biasAddV1<T>(Output value, Output bias,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BiasAddV1', operationName ??= graph._scope.uniqueName('BiasAddV1/'));
  op$.addInput(value);
  op$.addInput(bias);
  return op$.finish()[0];
}

Output logicalOr(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'LogicalOr', operationName ??= graph._scope.uniqueName('LogicalOr/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

Output stackPush<T>(Output handle, Output elem,
    {Graph graph, String operationName, bool swapMemory: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'StackPush', operationName ??= graph._scope.uniqueName('StackPush/'));
  op$.addInput(handle);
  op$.addInput(elem);
  op$.setAttrBool('swap_memory', swapMemory);
  return op$.finish()[0];
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
  return op$.finish()[0];
}

class LogUniformCandidateSamplerOutput {
  LogUniformCandidateSamplerOutput(this._graph, this.op, this.sampledCandidates,
      this.trueExpectedCount, this.sampledExpectedCount);

  final Graph _graph;

  Operation op;

  final Output<Output> sampledCandidates;

  final Output<Output> trueExpectedCount;

  final Output<Output> sampledExpectedCount;

  LogUniformCandidateSampler run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new LogUniformCandidateSampler(result0, result1, result2);
  }
}

class LogUniformCandidateSampler {
  LogUniformCandidateSampler(this.sampledCandidates, this.trueExpectedCount,
      this.sampledExpectedCount);

  final Output sampledCandidates;

  final Output trueExpectedCount;

  final Output sampledExpectedCount;
}

LogUniformCandidateSamplerOutput logUniformCandidateSampler(Output trueClasses,
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
  var result$ = op$.finish();
  return new LogUniformCandidateSamplerOutput(
      graph, result$, result$[0], result$[1], result$[2]);
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
  return op$.finish()[0];
}

Output lookupTableFind<T>(Output tableHandle, Output keys, Output defaultValue,
    {Graph graph, String operationName, DataType tin, DataType tout}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('LookupTableFind',
      operationName ??= graph._scope.uniqueName('LookupTableFind/'));
  op$.addInput(tableHandle);
  op$.addInput(keys);
  op$.addInput(defaultValue);
  op$.setAttrType('Tin', tin);
  op$.setAttrType('Tout', tout);
  return op$.finish()[0];
}

Output dynamicStitch<T>(List<Output> indices, List<Output> data,
    {Graph graph, String operationName, int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DynamicStitch',
      operationName ??= graph._scope.uniqueName('DynamicStitch/'));
  op$.addInputList(indices);
  op$.addInputList(data);
  op$.setAttrInt('N', n);
  return op$.finish()[0];
}

Output sparseApplyAdadelta<T>(Output var$, Output accum, Output accumUpdate,
    Output lr, Output rho, Output epsilon, Output grad, Output indices,
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
  return op$.finish()[0];
}

class SparseReshapeOutput {
  SparseReshapeOutput(
      this._graph, this.op, this.outputIndices, this.outputShape);

  final Graph _graph;

  Operation op;

  final Output<Output> outputIndices;

  final Output<Output> outputShape;

  SparseReshape run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new SparseReshape(result0, result1);
  }
}

class SparseReshape {
  SparseReshape(this.outputIndices, this.outputShape);

  final Output outputIndices;

  final Output outputShape;
}

SparseReshapeOutput sparseReshape(
    Output inputIndices, Output inputShape, Output newShape,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseReshape',
      operationName ??= graph._scope.uniqueName('SparseReshape/'));
  op$.addInput(inputIndices);
  op$.addInput(inputShape);
  op$.addInput(newShape);
  var result$ = op$.finish();
  return new SparseReshapeOutput(graph, result$, result$[0], result$[1]);
}

Output complexAbs<T>(Output x,
    {Graph graph, String operationName, DataType tout: DataType.DT_FLOAT}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ComplexAbs', operationName ??= graph._scope.uniqueName('ComplexAbs/'));
  op$.addInput(x);
  op$.setAttrType('Tout', tout);
  return op$.finish()[0];
}

Output serializeSparse<T>(
    Output sparseIndices, Output sparseValues, Output sparseShape,
    {Graph graph, String operationName, DataType outType: DataType.DT_STRING}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SerializeSparse',
      operationName ??= graph._scope.uniqueName('SerializeSparse/'));
  op$.addInput(sparseIndices);
  op$.addInput(sparseValues);
  op$.addInput(sparseShape);
  op$.setAttrType('out_type', outType);
  return op$.finish()[0];
}

Output bitwiseXor<T>(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BitwiseXor', operationName ??= graph._scope.uniqueName('BitwiseXor/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

class SparseAddOutput<T> {
  SparseAddOutput(
      this._graph, this.op, this.sumIndices, this.sumValues, this.sumShape);

  final Graph _graph;

  Operation op;

  final Output<Output> sumIndices;

  final Output<Output> sumValues;

  final Output<Output> sumShape;

  SparseAdd run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new SparseAdd<T>(result0, result1, result2);
  }
}

class SparseAdd<T> {
  SparseAdd(this.sumIndices, this.sumValues, this.sumShape);

  final Output sumIndices;

  final Output sumValues;

  final Output sumShape;
}

SparseAddOutput sparseAdd<T>(Output aIndices, Output aValues, Output aShape,
    Output bIndices, Output bValues, Output bShape, Output thresh,
    {Graph graph, String operationName, DataType treal}) {
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
  var result$ = op$.finish();
  return new SparseAddOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output tensorListSetItem<T>(Output inputHandle, Output index, Output item,
    {Graph graph, String operationName, DataType elementDtype}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorListSetItem',
      operationName ??= graph._scope.uniqueName('TensorListSetItem/'));
  op$.addInput(inputHandle);
  op$.addInput(index);
  op$.addInput(item);
  op$.setAttrType('element_dtype', elementDtype);
  return op$.finish()[0];
}

Output mapAndBatchDataset<T>(Output inputDataset, List<Output> otherArguments,
    Output batchSize, Output numParallelBatches,
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
  op$.setAttrFunc('f', f);
  op$.setAttrTypeList('Targuments', targuments);
  op$.setAttrTypeList('output_types', outputTypes);
  op$.setAttrShapeList('output_shapes', outputShapes);
  return op$.finish()[0];
}

Output stack(
    {Graph graph, String operationName, DataType elemType, String stackName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Stack', operationName ??= graph._scope.uniqueName('Stack/'));
  op$.setAttrType('elem_type', elemType);
  op$.setAttrString('stack_name', stackName);
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 26: Use TFRecordReaderV2')
Output tFRecordReader(
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
  return op$.finish()[0];
}

Output queueDequeueMany<T>(Output handle, Output n,
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
  return op$.finish()[0];
}

class DeserializeManySparseOutput<T> {
  DeserializeManySparseOutput(this._graph, this.op, this.sparseIndices,
      this.sparseValues, this.sparseShape);

  final Graph _graph;

  Operation op;

  final Output<Output> sparseIndices;

  final Output<Output> sparseValues;

  final Output<Output> sparseShape;

  DeserializeManySparse run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new DeserializeManySparse<T>(result0, result1, result2);
  }
}

class DeserializeManySparse<T> {
  DeserializeManySparse(
      this.sparseIndices, this.sparseValues, this.sparseShape);

  final Output sparseIndices;

  final Output sparseValues;

  final Output sparseShape;
}

DeserializeManySparseOutput deserializeManySparse<T>(Output serializedSparse,
    {Graph graph, String operationName, DataType dtype}) {
  dtype ??= inferType(serializedSparse);
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DeserializeManySparse',
      operationName ??= graph._scope.uniqueName('DeserializeManySparse/'));
  op$.addInput(serializedSparse);
  op$.setAttrType('dtype', dtype);
  var result$ = op$.finish();
  return new DeserializeManySparseOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output sparseConditionalAccumulator(
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
  return op$.finish()[0];
}

Output conditionalAccumulator(
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
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 15: Use FFT')
Output batchFFT(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'BatchFFT', operationName ??= graph._scope.uniqueName('BatchFFT/'));
  op$.addInput(input);
  return op$.finish()[0];
}

Output accumulatorNumAccumulated(Output handle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AccumulatorNumAccumulated',
      operationName ??= graph._scope.uniqueName('AccumulatorNumAccumulated/'));
  op$.addInput(handle);
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 11: Use SelfAdjointEigV2 instead.')
Output batchSelfAdjointEig<T>(Output input,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BatchSelfAdjointEig',
      operationName ??= graph._scope.uniqueName('BatchSelfAdjointEig/'));
  op$.addInput(input);
  return op$.finish()[0];
}

Output minimum<T>(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Minimum', operationName ??= graph._scope.uniqueName('Minimum/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

Output queueIsClosed(Output handle, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('QueueIsClosed',
      operationName ??= graph._scope.uniqueName('QueueIsClosed/'));
  op$.addInput(handle);
  return op$.finish()[0];
}

Output tensorArraySplitV3<T>(
    Output handle, Output value, Output lengths, Output flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArraySplitV3',
      operationName ??= graph._scope.uniqueName('TensorArraySplitV3/'));
  op$.addInput(handle);
  op$.addInput(value);
  op$.addInput(lengths);
  op$.addInput(flowIn);
  return op$.finish()[0];
}

Output sparseApplyFtrl<T>(Output var$, Output accum, Output linear, Output grad,
    Output indices, Output lr, Output l1, Output l2, Output lrPower,
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
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation resourceSparseApplyProximalGradientDescent<T>(Output var$,
    Output alpha, Output l1, Output l2, Output grad, Output indices,
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
  return op$.finish();
}

Output sparseSegmentSum<T>(Output data, Output indices, Output segmentIds,
    {Graph graph, String operationName, DataType tidx: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('SparseSegmentSum',
      operationName ??= graph._scope.uniqueName('SparseSegmentSum/'));
  op$.addInput(data);
  op$.addInput(indices);
  op$.addInput(segmentIds);
  op$.setAttrType('Tidx', tidx);
  return op$.finish()[0];
}

Output fIFOQueue(
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
  return op$.finish()[0];
}

class OrderedMapUnstageNoKeyOutput<T> {
  OrderedMapUnstageNoKeyOutput(this._graph, this.op, this.key, this.values);

  final Graph _graph;

  Operation op;

  final Output<Output> key;

  final Output<Output> values;

  OrderedMapUnstageNoKey run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new OrderedMapUnstageNoKey<T>(result0, result1);
  }
}

class OrderedMapUnstageNoKey<T> {
  OrderedMapUnstageNoKey(this.key, this.values);

  final Output key;

  final Output values;
}

OrderedMapUnstageNoKeyOutput orderedMapUnstageNoKey<T>(Output indices,
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
  var result$ = op$.finish();
  return new OrderedMapUnstageNoKeyOutput<T>(
      graph, result$, result$[0], result$[1]);
}

Output rint<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Rint', operationName ??= graph._scope.uniqueName('Rint/'));
  op$.addInput(x);
  return op$.finish()[0];
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
  return op$.finish();
}

class MergeOutput<T> {
  MergeOutput(this._graph, this.op, this.output, this.valueIndex);

  final Graph _graph;

  Operation op;

  final Output<Output> output;

  final Output<Output> valueIndex;

  Merge run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new Merge<T>(result0, result1);
  }
}

class Merge<T> {
  Merge(this.output, this.valueIndex);

  final Output output;

  final Output valueIndex;
}

MergeOutput merge<T>(List<Output> inputs,
    {Graph graph, String operationName, int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Merge', operationName ??= graph._scope.uniqueName('Merge/'));
  op$.addInputList(inputs);
  op$.setAttrInt('N', n);
  var result$ = op$.finish();
  return new MergeOutput<T>(graph, result$, result$[0], result$[1]);
}

Output extractImagePatches<T>(Output images,
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
  return op$.finish()[0];
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

  final Output<Output> sampledCandidates;

  final Output<Output> trueExpectedCount;

  final Output<Output> sampledExpectedCount;

  FixedUnigramCandidateSampler run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new FixedUnigramCandidateSampler(result0, result1, result2);
  }
}

class FixedUnigramCandidateSampler {
  FixedUnigramCandidateSampler(this.sampledCandidates, this.trueExpectedCount,
      this.sampledExpectedCount);

  final Output sampledCandidates;

  final Output trueExpectedCount;

  final Output sampledExpectedCount;
}

FixedUnigramCandidateSamplerOutput fixedUnigramCandidateSampler(
    Output trueClasses,
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
  var result$ = op$.finish();
  return new FixedUnigramCandidateSamplerOutput(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output shardedFilename(Output basename, Output shard, Output numShards,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ShardedFilename',
      operationName ??= graph._scope.uniqueName('ShardedFilename/'));
  op$.addInput(basename);
  op$.addInput(shard);
  op$.addInput(numShards);
  return op$.finish()[0];
}

Output matrixInverse<T>(Output input,
    {Graph graph, String operationName, bool adjoint: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('MatrixInverse',
      operationName ??= graph._scope.uniqueName('MatrixInverse/'));
  op$.addInput(input);
  op$.setAttrBool('adjoint', adjoint);
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 25: Replaced by RandomPoissonV2')
Output randomPoisson<T>(Output shape, Output rate,
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
  return op$.finish()[0];
}

Output paddingFIFOQueue(
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
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 10: Use Conv3DBackpropInputV2')
Output conv3DBackpropInput<T>(Output input, Output filter, Output outBackprop,
    {Graph graph, String operationName, List<int> strides, String padding}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('Conv3DBackpropInput',
      operationName ??= graph._scope.uniqueName('Conv3DBackpropInput/'));
  op$.addInput(input);
  op$.addInput(filter);
  op$.addInput(outBackprop);
  op$.setAttrIntList('strides', strides);
  op$.setAttrString('padding', padding);
  return op$.finish()[0];
}

Output depthwiseConv2dNative<T>(Output input, Output filter,
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
  return op$.finish()[0];
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

  final Output<Output> sampledCandidates;

  final Output<Output> trueExpectedCount;

  final Output<Output> sampledExpectedCount;

  LearnedUnigramCandidateSampler run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new LearnedUnigramCandidateSampler(result0, result1, result2);
  }
}

class LearnedUnigramCandidateSampler {
  LearnedUnigramCandidateSampler(this.sampledCandidates, this.trueExpectedCount,
      this.sampledExpectedCount);

  final Output sampledCandidates;

  final Output trueExpectedCount;

  final Output sampledExpectedCount;
}

LearnedUnigramCandidateSamplerOutput learnedUnigramCandidateSampler(
    Output trueClasses,
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
  var result$ = op$.finish();
  return new LearnedUnigramCandidateSamplerOutput(
      graph, result$, result$[0], result$[1], result$[2]);
}

/// This operation has no outputs.
Operation queueEnqueueMany<T>(Output handle, List<Output> components,
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
  return op$.finish();
}

/// This operation has no outputs.
Operation noOp({Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'NoOp', operationName ??= graph._scope.uniqueName('NoOp/'));
  return op$.finish();
}

Output loadAndRemapMatrix(Output ckptPath, Output oldTensorName,
    Output rowRemapping, Output colRemapping, Output initializingValues,
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
  return op$.finish()[0];
}

Output spaceToBatchND<T>(Output input, Output blockShape, Output paddings,
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
  return op$.finish()[0];
}

Output resizeNearestNeighborGrad<T>(Output grads, Output size,
    {Graph graph, String operationName, bool alignCorners: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResizeNearestNeighborGrad',
      operationName ??= graph._scope.uniqueName('ResizeNearestNeighborGrad/'));
  op$.addInput(grads);
  op$.addInput(size);
  op$.setAttrBool('align_corners', alignCorners);
  return op$.finish()[0];
}

class AllCandidateSamplerOutput {
  AllCandidateSamplerOutput(this._graph, this.op, this.sampledCandidates,
      this.trueExpectedCount, this.sampledExpectedCount);

  final Graph _graph;

  Operation op;

  final Output<Output> sampledCandidates;

  final Output<Output> trueExpectedCount;

  final Output<Output> sampledExpectedCount;

  AllCandidateSampler run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new AllCandidateSampler(result0, result1, result2);
  }
}

class AllCandidateSampler {
  AllCandidateSampler(this.sampledCandidates, this.trueExpectedCount,
      this.sampledExpectedCount);

  final Output sampledCandidates;

  final Output trueExpectedCount;

  final Output sampledExpectedCount;
}

AllCandidateSamplerOutput allCandidateSampler(Output trueClasses,
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
  var result$ = op$.finish();
  return new AllCandidateSamplerOutput(
      graph, result$, result$[0], result$[1], result$[2]);
}

/// This operation has no outputs.
Operation queueEnqueueV2<T>(Output handle, List<Output> components,
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
  return op$.finish();
}

Output batchDataset(Output inputDataset, Output batchSize,
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
  return op$.finish()[0];
}

Output repeatDataset(Output inputDataset, Output count,
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
  return op$.finish()[0];
}

Output queueDequeueManyV2<T>(Output handle, Output n,
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
  return op$.finish()[0];
}

class LogMatrixDeterminantOutput<T> {
  LogMatrixDeterminantOutput(
      this._graph, this.op, this.sign, this.logAbsDeterminant);

  final Graph _graph;

  Operation op;

  final Output<Output> sign;

  final Output<Output> logAbsDeterminant;

  LogMatrixDeterminant run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new LogMatrixDeterminant<T>(result0, result1);
  }
}

class LogMatrixDeterminant<T> {
  LogMatrixDeterminant(this.sign, this.logAbsDeterminant);

  final Output sign;

  final Output logAbsDeterminant;
}

LogMatrixDeterminantOutput logMatrixDeterminant<T>(Output input,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('LogMatrixDeterminant',
      operationName ??= graph._scope.uniqueName('LogMatrixDeterminant/'));
  op$.addInput(input);
  var result$ = op$.finish();
  return new LogMatrixDeterminantOutput<T>(
      graph, result$, result$[0], result$[1]);
}

Output temporaryVariable<T>(
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
  return op$.finish()[0];
}

Output resizeBilinear<T>(Output images, Output size,
    {Graph graph, String operationName, bool alignCorners: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ResizeBilinear',
      operationName ??= graph._scope.uniqueName('ResizeBilinear/'));
  op$.addInput(images);
  op$.addInput(size);
  op$.setAttrBool('align_corners', alignCorners);
  return op$.finish()[0];
}

Output fakeQuantWithMinMaxVars(Output inputs, Output min, Output max,
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
  return op$.finish()[0];
}

Output barrierIncompleteSize(Output handle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('BarrierIncompleteSize',
      operationName ??= graph._scope.uniqueName('BarrierIncompleteSize/'));
  op$.addInput(handle);
  return op$.finish()[0];
}

Output logicalNot(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'LogicalNot', operationName ??= graph._scope.uniqueName('LogicalNot/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output sparseApplyAdagrad<T>(
    Output var$, Output accum, Output lr, Output grad, Output indices,
    {Graph graph,
    String operationName,
    DataType tindices,
    bool useLocking: false}) {
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
  return op$.finish()[0];
}

Output queueSize(Output handle, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'QueueSize', operationName ??= graph._scope.uniqueName('QueueSize/'));
  op$.addInput(handle);
  return op$.finish()[0];
}

class SdcaOptimizerOutput {
  SdcaOptimizerOutput(this._graph, this.op, this.outExampleStateData,
      this.outDeltaSparseWeights, this.outDeltaDenseWeights);

  final Graph _graph;

  Operation op;

  final Output<Output> outExampleStateData;

  final Output<Output> outDeltaSparseWeights;

  final Output<Output> outDeltaDenseWeights;

  SdcaOptimizer run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new SdcaOptimizer(result0, result1, result2);
  }
}

class SdcaOptimizer {
  SdcaOptimizer(this.outExampleStateData, this.outDeltaSparseWeights,
      this.outDeltaDenseWeights);

  final Output outExampleStateData;

  final Output outDeltaSparseWeights;

  final Output outDeltaDenseWeights;
}

SdcaOptimizerOutput sdcaOptimizer(
    List<Output> sparseExampleIndices,
    List<Output> sparseFeatureIndices,
    List<Output> sparseFeatureValues,
    List<Output> denseFeatures,
    Output exampleWeights,
    Output exampleLabels,
    List<Output> sparseIndices,
    List<Output> sparseWeights,
    List<Output> denseWeights,
    Output exampleStateData,
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
  var result$ = op$.finish();
  return new SdcaOptimizerOutput(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output iFFT(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'IFFT', operationName ??= graph._scope.uniqueName('IFFT/'));
  op$.addInput(input);
  return op$.finish()[0];
}

Output atan<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Atan', operationName ??= graph._scope.uniqueName('Atan/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output fakeQuantWithMinMaxArgsGradient(Output gradients, Output inputs,
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
  return op$.finish()[0];
}

Output tensorListLength(Output inputHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorListLength',
      operationName ??= graph._scope.uniqueName('TensorListLength/'));
  op$.addInput(inputHandle);
  return op$.finish()[0];
}

Output latencyStatsDataset(Output inputDataset, Output tag,
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
  return op$.finish()[0];
}

Output pow<T>(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Pow', operationName ??= graph._scope.uniqueName('Pow/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

Output applyRMSProp<T>(Output var$, Output ms, Output mom, Output lr,
    Output rho, Output momentum, Output epsilon, Output grad,
    {Graph graph, String operationName, bool useLocking: false}) {
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
  return op$.finish()[0];
}

Output stackPushV2<T>(Output handle, Output elem,
    {Graph graph, String operationName, bool swapMemory: false}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'StackPushV2', operationName ??= graph._scope.uniqueName('StackPushV2/'));
  op$.addInput(handle);
  op$.addInput(elem);
  op$.setAttrBool('swap_memory', swapMemory);
  return op$.finish()[0];
}

Output mutexLock(Output mutex, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'MutexLock', operationName ??= graph._scope.uniqueName('MutexLock/'));
  op$.addInput(mutex);
  return op$.finish()[0];
}

Output maxPoolGradWithArgmax<T>(Output input, Output grad, Output argmax,
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
  return op$.finish()[0];
}

Output fFT2D(Output input, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'FFT2D', operationName ??= graph._scope.uniqueName('FFT2D/'));
  op$.addInput(input);
  return op$.finish()[0];
}

Output mutexV2(
    {Graph graph, String operationName, String container, String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'MutexV2', operationName ??= graph._scope.uniqueName('MutexV2/'));
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
  return op$.finish()[0];
}

Output nonMaxSuppressionV2(
    Output boxes, Output scores, Output maxOutputSize, Output iouThreshold,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('NonMaxSuppressionV2',
      operationName ??= graph._scope.uniqueName('NonMaxSuppressionV2/'));
  op$.addInput(boxes);
  op$.addInput(scores);
  op$.addInput(maxOutputSize);
  op$.addInput(iouThreshold);
  return op$.finish()[0];
}

Output bucketize<T>(Output input,
    {Graph graph, String operationName, List<double> boundaries}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Bucketize', operationName ??= graph._scope.uniqueName('Bucketize/'));
  op$.addInput(input);
  op$.setAttrFloatList('boundaries', boundaries);
  return op$.finish()[0];
}

Output drawBoundingBoxes<T>(Output images, Output boxes,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DrawBoundingBoxes',
      operationName ??= graph._scope.uniqueName('DrawBoundingBoxes/'));
  op$.addInput(images);
  op$.addInput(boxes);
  return op$.finish()[0];
}

class MaxPoolWithArgmaxOutput<T> {
  MaxPoolWithArgmaxOutput(this._graph, this.op, this.output, this.argmax);

  final Graph _graph;

  Operation op;

  final Output<Output> output;

  final Output<Output> argmax;

  MaxPoolWithArgmax run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new MaxPoolWithArgmax<T>(result0, result1);
  }
}

class MaxPoolWithArgmax<T> {
  MaxPoolWithArgmax(this.output, this.argmax);

  final Output output;

  final Output argmax;
}

MaxPoolWithArgmaxOutput maxPoolWithArgmax<T>(Output input,
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
  var result$ = op$.finish();
  return new MaxPoolWithArgmaxOutput<T>(graph, result$, result$[0], result$[1]);
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
  return op$.finish()[0];
}

Output refEnter<T>(Output data,
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
  return op$.finish()[0];
}

@Deprecated('DEPRECATED at GraphDef version 16: Use TensorArraySplitV3')
Output tensorArraySplit<T>(
    Output handle, Output value, Output lengths, Output flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArraySplit',
      operationName ??= graph._scope.uniqueName('TensorArraySplit/'));
  op$.addInput(handle);
  op$.addInput(value);
  op$.addInput(lengths);
  op$.addInput(flowIn);
  return op$.finish()[0];
}

class QuantizedAvgPoolOutput<T> {
  QuantizedAvgPoolOutput(
      this._graph, this.op, this.output, this.minOutput, this.maxOutput);

  final Graph _graph;

  Operation op;

  final Output<Output> output;

  final Output<Output> minOutput;

  final Output<Output> maxOutput;

  QuantizedAvgPool run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new QuantizedAvgPool<T>(result0, result1, result2);
  }
}

class QuantizedAvgPool<T> {
  QuantizedAvgPool(this.output, this.minOutput, this.maxOutput);

  final Output output;

  final Output minOutput;

  final Output maxOutput;
}

QuantizedAvgPoolOutput quantizedAvgPool<T>(
    Output input, Output minInput, Output maxInput,
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
  var result$ = op$.finish();
  return new QuantizedAvgPoolOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output applyPowerSign<T>(Output var$, Output m, Output lr, Output logbase,
    Output signDecay, Output beta, Output grad,
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
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation initializeTableFromTextFileV2(Output tableHandle, Output filename,
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
  return op$.finish();
}

Output exit<T>(Output data, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Exit', operationName ??= graph._scope.uniqueName('Exit/'));
  op$.addInput(data);
  return op$.finish()[0];
}

/// This operation has no outputs.
Operation accumulatorSetGlobalStep(Output handle, Output newGlobalStep,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('AccumulatorSetGlobalStep',
      operationName ??= graph._scope.uniqueName('AccumulatorSetGlobalStep/'));
  op$.addInput(handle);
  op$.addInput(newGlobalStep);
  return op$.finish();
}

Output cumprod<T>(Output x, Output axis,
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
  return op$.finish()[0];
}

class ReaderReadV2Output {
  ReaderReadV2Output(this._graph, this.op, this.key, this.value);

  final Graph _graph;

  Operation op;

  final Output<Output> key;

  final Output<Output> value;

  ReaderReadV2 run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new ReaderReadV2(result0, result1);
  }
}

class ReaderReadV2 {
  ReaderReadV2(this.key, this.value);

  final Output key;

  final Output value;
}

ReaderReadV2Output readerReadV2(Output readerHandle, Output queueHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ReaderReadV2',
      operationName ??= graph._scope.uniqueName('ReaderReadV2/'));
  op$.addInput(readerHandle);
  op$.addInput(queueHandle);
  var result$ = op$.finish();
  return new ReaderReadV2Output(graph, result$, result$[0], result$[1]);
}

Output refSelect<T>(Output index, List<Output> inputs,
    {Graph graph, String operationName, int n}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'RefSelect', operationName ??= graph._scope.uniqueName('RefSelect/'));
  op$.addInput(index);
  op$.addInputList(inputs);
  op$.setAttrInt('N', n);
  return op$.finish()[0];
}

Output reverseSequence<T>(Output input, Output seqLengths,
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
  return op$.finish()[0];
}

Output tensorArrayGatherV3<T>(Output handle, Output indices, Output flowIn,
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
  return op$.finish()[0];
}

Output priorityQueue(
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
  return op$.finish()[0];
}

Output greater<T>(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Greater', operationName ??= graph._scope.uniqueName('Greater/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

Output readerNumWorkUnitsCompleted(Output readerHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ReaderNumWorkUnitsCompleted',
      operationName ??=
          graph._scope.uniqueName('ReaderNumWorkUnitsCompleted/'));
  op$.addInput(readerHandle);
  return op$.finish()[0];
}

class DecodeWavOutput {
  DecodeWavOutput(this._graph, this.op, this.audio, this.sampleRate);

  final Graph _graph;

  Operation op;

  final Output<Output> audio;

  final Output<Output> sampleRate;

  DecodeWav run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new DecodeWav(result0, result1);
  }
}

class DecodeWav {
  DecodeWav(this.audio, this.sampleRate);

  final Output audio;

  final Output sampleRate;
}

DecodeWavOutput decodeWav(Output contents,
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
  var result$ = op$.finish();
  return new DecodeWavOutput(graph, result$, result$[0], result$[1]);
}

Output stringToHashBucketFast(Output input,
    {Graph graph, String operationName, int numBuckets}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('StringToHashBucketFast',
      operationName ??= graph._scope.uniqueName('StringToHashBucketFast/'));
  op$.addInput(input);
  op$.setAttrInt('num_buckets', numBuckets);
  return op$.finish()[0];
}

Output unbatchGrad<T>(
    Output originalInput, Output batchIndex, Output grad, Output id,
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
  return op$.finish()[0];
}

Output argMin<T>(Output input, Output dimension,
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
  return op$.finish()[0];
}

Output groupByWindowDataset<T>(
    Output inputDataset,
    List<Output> keyFuncOtherArguments,
    List<Output> reduceFuncOtherArguments,
    List<Output> windowSizeFuncOtherArguments,
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
  return op$.finish()[0];
}

class FractionalMaxPoolOutput<T> {
  FractionalMaxPoolOutput(this._graph, this.op, this.output,
      this.rowPoolingSequence, this.colPoolingSequence);

  final Graph _graph;

  Operation op;

  final Output<Output> output;

  final Output<Output> rowPoolingSequence;

  final Output<Output> colPoolingSequence;

  FractionalMaxPool run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new FractionalMaxPool<T>(result0, result1, result2);
  }
}

class FractionalMaxPool<T> {
  FractionalMaxPool(
      this.output, this.rowPoolingSequence, this.colPoolingSequence);

  final Output output;

  final Output rowPoolingSequence;

  final Output colPoolingSequence;
}

FractionalMaxPoolOutput fractionalMaxPool<T>(Output value,
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
  var result$ = op$.finish();
  return new FractionalMaxPoolOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output reciprocal<T>(Output x, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Reciprocal', operationName ??= graph._scope.uniqueName('Reciprocal/'));
  op$.addInput(x);
  return op$.finish()[0];
}

Output readerNumWorkUnitsCompletedV2(Output readerHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'ReaderNumWorkUnitsCompletedV2',
      operationName ??=
          graph._scope.uniqueName('ReaderNumWorkUnitsCompletedV2/'));
  op$.addInput(readerHandle);
  return op$.finish()[0];
}

class GenerateVocabRemappingOutput {
  GenerateVocabRemappingOutput(
      this._graph, this.op, this.remapping, this.numPresent);

  final Graph _graph;

  Operation op;

  final Output<Output> remapping;

  final Output<Output> numPresent;

  GenerateVocabRemapping run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    return new GenerateVocabRemapping(result0, result1);
  }
}

class GenerateVocabRemapping {
  GenerateVocabRemapping(this.remapping, this.numPresent);

  final Output remapping;

  final Output numPresent;
}

GenerateVocabRemappingOutput generateVocabRemapping(
    Output newVocabFile, Output oldVocabFile,
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
  var result$ = op$.finish();
  return new GenerateVocabRemappingOutput(
      graph, result$, result$[0], result$[1]);
}

Output unsortedSegmentProd<T>(
    Output data, Output segmentIds, Output numSegments,
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
  return op$.finish()[0];
}

Output fusedResizeAndPadConv2D<T>(
    Output input, Output size, Output paddings, Output filter,
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
  return op$.finish()[0];
}

Output inTopK<T>(Output predictions, Output targets,
    {Graph graph, String operationName, int k}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'InTopK', operationName ??= graph._scope.uniqueName('InTopK/'));
  op$.addInput(predictions);
  op$.addInput(targets);
  op$.setAttrInt('k', k);
  return op$.finish()[0];
}

Output sub<T>(Output x, Output y, {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Sub', operationName ??= graph._scope.uniqueName('Sub/'));
  op$.addInput(x);
  op$.addInput(y);
  return op$.finish()[0];
}

Output angle<T>(Output input,
    {Graph graph, String operationName, DataType tout: DataType.DT_FLOAT}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation(
      'Angle', operationName ??= graph._scope.uniqueName('Angle/'));
  op$.addInput(input);
  op$.setAttrType('Tout', tout);
  return op$.finish()[0];
}

@Deprecated(
    'DEPRECATED at GraphDef version 20: Use TensorArrayScatterV3 with RangeOp')
Output tensorArrayUnpack<T>(Output handle, Output value, Output flowIn,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('TensorArrayUnpack',
      operationName ??= graph._scope.uniqueName('TensorArrayUnpack/'));
  op$.addInput(handle);
  op$.addInput(value);
  op$.addInput(flowIn);
  return op$.finish()[0];
}

Output iteratorToStringHandle(Output resourceHandle,
    {Graph graph, String operationName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('IteratorToStringHandle',
      operationName ??= graph._scope.uniqueName('IteratorToStringHandle/'));
  op$.addInput(resourceHandle);
  return op$.finish()[0];
}

class SparseAccumulatorTakeGradientOutput<T> {
  SparseAccumulatorTakeGradientOutput(
      this._graph, this.op, this.indices, this.values, this.shape);

  final Graph _graph;

  Operation op;

  final Output<Output> indices;

  final Output<Output> values;

  final Output<Output> shape;

  SparseAccumulatorTakeGradient run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new SparseAccumulatorTakeGradient<T>(result0, result1, result2);
  }
}

class SparseAccumulatorTakeGradient<T> {
  SparseAccumulatorTakeGradient(this.indices, this.values, this.shape);

  final Output indices;

  final Output values;

  final Output shape;
}

SparseAccumulatorTakeGradientOutput sparseAccumulatorTakeGradient<T>(
    Output handle, Output numRequired,
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
  var result$ = op$.finish();
  return new SparseAccumulatorTakeGradientOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output conjugateTranspose<T>(Output x, Output perm,
    {Graph graph, String operationName, DataType tperm: DataType.DT_INT32}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('ConjugateTranspose',
      operationName ??= graph._scope.uniqueName('ConjugateTranspose/'));
  op$.addInput(x);
  op$.addInput(perm);
  op$.setAttrType('Tperm', tperm);
  return op$.finish()[0];
}

Output mapPeek<T>(Output key, Output indices,
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
  return op$.finish()[0];
}

Output destroyTemporaryVariable<T>(Output ref,
    {Graph graph, String operationName, String varName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('DestroyTemporaryVariable',
      operationName ??= graph._scope.uniqueName('DestroyTemporaryVariable/'));
  op$.addInput(ref);
  op$.setAttrString('var_name', varName);
  return op$.finish()[0];
}

class TakeManySparseFromTensorsMapOutput<T> {
  TakeManySparseFromTensorsMapOutput(this._graph, this.op, this.sparseIndices,
      this.sparseValues, this.sparseShape);

  final Graph _graph;

  Operation op;

  final Output<Output> sparseIndices;

  final Output<Output> sparseValues;

  final Output<Output> sparseShape;

  TakeManySparseFromTensorsMap run({Map<String, Tensor> feed}) {
    var runner = _graph.session.runner;
    runner.fetch(op.name, index: 0);
    feed?.forEach(runner.feed);
    var result0 = runner.run()[0];
    runner.fetch(op.name, index: 1);
    feed?.forEach(runner.feed);
    var result1 = runner.run()[0];
    runner.fetch(op.name, index: 2);
    feed?.forEach(runner.feed);
    var result2 = runner.run()[0];
    return new TakeManySparseFromTensorsMap<T>(result0, result1, result2);
  }
}

class TakeManySparseFromTensorsMap<T> {
  TakeManySparseFromTensorsMap(
      this.sparseIndices, this.sparseValues, this.sparseShape);

  final Output sparseIndices;

  final Output sparseValues;

  final Output sparseShape;
}

TakeManySparseFromTensorsMapOutput takeManySparseFromTensorsMap<T>(
    Output sparseHandles,
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
  var result$ = op$.finish();
  return new TakeManySparseFromTensorsMapOutput<T>(
      graph, result$, result$[0], result$[1], result$[2]);
}

Output wholeFileReader(
    {Graph graph, String operationName, String container, String sharedName}) {
  graph ??= defaultGraph;
  var op$ = graph.newOperation('WholeFileReader',
      operationName ??= graph._scope.uniqueName('WholeFileReader/'));
  op$.setAttrString('container', container);
  op$.setAttrString('shared_name', sharedName);
  return op$.finish()[0];
}
