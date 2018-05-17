// GENERATED CODE. DO NOT MODIFY BY HAND.

part of tensorflow;

class Graph extends _Graph {
  Output<T> fractionalAvgPoolGrad<T>(
      Output<int> origInputTensorShape,
      Output<T> outBackprop,
      Output<int> rowPoolingSequence,
      Output<int> colPoolingSequence,
      {bool overlapping: false}) {
    return addOperation(new OperationDescription(
        'FractionalAvgPoolGrad', 'FractionalAvgPoolGrad', [
      origInputTensorShape,
      outBackprop,
      rowPoolingSequence,
      colPoolingSequence
    ], {
      'overlapping': overlapping,
      'T': T
    }));
  }

  Output<T> nthElement<T>(Output<T> input, Output<int> n,
      {bool reverse: false}) {
    return addOperation(new OperationDescription(
        'NthElement', 'NthElement', [input, n], {'reverse': reverse, 'T': T}));
  }

  Output<bool> inTopKV2<T>(
      Output<double> predictions, Output<T> targets, Output<T> k) {
    return addOperation(new OperationDescription(
        'InTopKV2', 'InTopKV2', [predictions, targets, k], {'T': T}));
  }

  Output<T> logSoftmax<T>(Output<T> logits) {
    return addOperation(new OperationDescription(
        'LogSoftmax', 'LogSoftmax', [logits], {'T': T}));
  }

  Output<T> softmax<T>(Output<T> logits) {
    return addOperation(
        new OperationDescription('Softmax', 'Softmax', [logits], {'T': T}));
  }

  Output<T> softsignGrad<T>(Output<T> gradients, Output<T> features) {
    return addOperation(new OperationDescription(
        'SoftsignGrad', 'SoftsignGrad', [gradients, features], {'T': T}));
  }

  Output<T> softplusGrad<T>(Output<T> gradients, Output<T> features) {
    return addOperation(new OperationDescription(
        'SoftplusGrad', 'SoftplusGrad', [gradients, features], {'T': T}));
  }

  Output<T> seluGrad<T>(Output<T> gradients, Output<T> outputs) {
    return addOperation(new OperationDescription(
        'SeluGrad', 'SeluGrad', [gradients, outputs], {'T': T}));
  }

  Output<T> selu<T>(Output<T> features) {
    return addOperation(
        new OperationDescription('Selu', 'Selu', [features], {'T': T}));
  }

  Output<T> eluGrad<T>(Output<T> gradients, Output<T> outputs) {
    return addOperation(new OperationDescription(
        'EluGrad', 'EluGrad', [gradients, outputs], {'T': T}));
  }

  Output<T> relu6Grad<T>(Output<T> gradients, Output<T> features) {
    return addOperation(new OperationDescription(
        'Relu6Grad', 'Relu6Grad', [gradients, features], {'T': T}));
  }

  Output<T> reluGrad<T>(Output<T> gradients, Output<T> features) {
    return addOperation(new OperationDescription(
        'ReluGrad', 'ReluGrad', [gradients, features], {'T': T}));
  }

  Output<bool> all<Tidx>(Output<bool> input, Output<Tidx> reductionIndices,
      {bool keepDims: false}) {
    return addOperation(new OperationDescription('All', 'All',
        [input, reductionIndices], {'keep_dims': keepDims, 'Tidx': Tidx}));
  }

  Output<T> maxPoolGradGradV2<T>(Output<T> origInput, Output<T> origOutput,
      Output<T> grad, Output<int> ksize, Output<int> strides,
      {@required String padding, String dataFormat: 'NHWC'}) {
    return addOperation(new OperationDescription(
        'MaxPoolGradGradV2',
        'MaxPoolGradGradV2',
        [origInput, origOutput, grad, ksize, strides],
        {'padding': padding, 'data_format': dataFormat, 'T': T}));
  }

  Output<T> maxPoolGradV2<T>(Output<T> origInput, Output<T> origOutput,
      Output<T> grad, Output<int> ksize, Output<int> strides,
      {@required String padding, String dataFormat: 'NHWC'}) {
    return addOperation(new OperationDescription(
        'MaxPoolGradV2',
        'MaxPoolGradV2',
        [origInput, origOutput, grad, ksize, strides],
        {'padding': padding, 'data_format': dataFormat, 'T': T}));
  }

  Output<T> roll<T, Tshift, Taxis>(
      Output<T> input, Output<T> shift, Output<T> axis) {
    return addOperation(new OperationDescription('Roll', 'Roll',
        [input, shift, axis], {'T': T, 'Tshift': Tshift, 'Taxis': Taxis}));
  }

  Output<T> lRNGrad<T>(
      Output<T> inputGrads, Output<T> inputImage, Output<T> outputImage,
      {int depthRadius: 5,
      double bias: 1.0,
      double alpha: 1.0,
      double beta: 0.5}) {
    return addOperation(new OperationDescription('LRNGrad', 'LRNGrad', [
      inputGrads,
      inputImage,
      outputImage
    ], {
      'depth_radius': depthRadius,
      'bias': bias,
      'alpha': alpha,
      'beta': beta,
      'T': T
    }));
  }

  Output<double> cropAndResize<T>(Output<T> image, Output<double> boxes,
      Output<int> boxInd, Output<int> cropSize,
      {String method: 'bilinear', double extrapolationValue: 0.0}) {
    return addOperation(new OperationDescription(
        'CropAndResize',
        'CropAndResize',
        [image, boxes, boxInd, cropSize],
        {'T': T, 'method': method, 'extrapolation_value': extrapolationValue}));
  }

  Output<T> expm1<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Expm1', 'Expm1', [x], {'T': T}));
  }

  Output<T> biasAdd<T>(Output<T> value, Output<T> bias,
      {String dataFormat: 'NHWC'}) {
    return addOperation(new OperationDescription('BiasAdd', 'BiasAdd',
        [value, bias], {'T': T, 'data_format': dataFormat}));
  }

  Output<T> sin<T>(Output<T> x) {
    return addOperation(new OperationDescription('Sin', 'Sin', [x], {'T': T}));
  }

  Output<double> sparseMatMul<Ta, Tb>(Output<Ta> a, Output<Ta> b,
      {bool transposeA: false,
      bool transposeB: false,
      bool aIsSparse: false,
      bool bIsSparse: false}) {
    return addOperation(
        new OperationDescription('SparseMatMul', 'SparseMatMul', [
      a,
      b
    ], {
      'transpose_a': transposeA,
      'transpose_b': transposeB,
      'a_is_sparse': aIsSparse,
      'b_is_sparse': bIsSparse,
      'Ta': Ta,
      'Tb': Tb
    }));
  }

  Output<dtype> readVariableOp<dtype>(Output resource) {
    return addOperation(new OperationDescription(
        'ReadVariableOp', 'ReadVariableOp', [resource], {'dtype': dtype}));
  }

  Output<T> lgamma<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Lgamma', 'Lgamma', [x], {'T': T}));
  }

  Output compareAndBitpack<T>(Output<T> input, Output<T> threshold) {
    return addOperation(new OperationDescription('CompareAndBitpack',
        'CompareAndBitpack', [input, threshold], {'T': T}));
  }

  Output<T> cumsum<T, Tidx>(Output<T> x, Output<T> axis,
      {bool exclusive: false, bool reverse: false}) {
    return addOperation(new OperationDescription('Cumsum', 'Cumsum', [x, axis],
        {'exclusive': exclusive, 'reverse': reverse, 'T': T, 'Tidx': Tidx}));
  }

  Output<T> bincount<T>(Output<int> arr, Output<int> size, Output<T> weights) {
    return addOperation(new OperationDescription(
        'Bincount', 'Bincount', [arr, size, weights], {'T': T}));
  }

  Output<T> cross<T>(Output<T> a, Output<T> b) {
    return addOperation(
        new OperationDescription('Cross', 'Cross', [a, b], {'T': T}));
  }

  Output<T> conj<T>(Output<T> input) {
    return addOperation(
        new OperationDescription('Conj', 'Conj', [input], {'T': T}));
  }

  Output<T> real<T, Tout>(Output<T> input) {
    return addOperation(new OperationDescription(
        'Real', 'Real', [input], {'T': T, 'Tout': Tout}));
  }

  Output<double> dequantize<T>(
      Output<T> input, Output<double> minRange, Output<double> maxRange,
      {String mode: 'MIN_COMBINED'}) {
    return addOperation(new OperationDescription('Dequantize', 'Dequantize',
        [input, minRange, maxRange], {'T': T, 'mode': mode}));
  }

  Output<T> complex<T, Tout>(Output<T> real, Output<T> imag) {
    return addOperation(new OperationDescription(
        'Complex', 'Complex', [real, imag], {'T': T, 'Tout': Tout}));
  }

  Output<bool> any<Tidx>(Output<bool> input, Output<Tidx> reductionIndices,
      {bool keepDims: false}) {
    return addOperation(new OperationDescription('Any', 'Any',
        [input, reductionIndices], {'keep_dims': keepDims, 'Tidx': Tidx}));
  }

  Output<T> sparseSegmentMean<T, Tidx>(
      Output<T> data, Output<T> indices, Output<int> segmentIds) {
    return addOperation(new OperationDescription(
        'SparseSegmentMean',
        'SparseSegmentMean',
        [data, indices, segmentIds],
        {'T': T, 'Tidx': Tidx}));
  }

  Output<T> sparseSegmentSumWithNumSegments<T, Tidx, Tnumsegments>(
      Output<T> data,
      Output<T> indices,
      Output<int> segmentIds,
      Output<T> numSegments) {
    return addOperation(new OperationDescription(
        'SparseSegmentSumWithNumSegments',
        'SparseSegmentSumWithNumSegments',
        [data, indices, segmentIds, numSegments],
        {'T': T, 'Tidx': Tidx, 'Tnumsegments': Tnumsegments}));
  }

  Output<T> unsortedSegmentSum<T, Tindices, Tnumsegments>(
      Output<T> data, Output<T> segmentIds, Output<T> numSegments) {
    return addOperation(new OperationDescription(
        'UnsortedSegmentSum',
        'UnsortedSegmentSum',
        [data, segmentIds, numSegments],
        {'T': T, 'Tindices': Tindices, 'Tnumsegments': Tnumsegments}));
  }

  Output<T> atan2<T>(Output<T> y, Output<T> x) {
    return addOperation(
        new OperationDescription('Atan2', 'Atan2', [y, x], {'T': T}));
  }

  Output<T> segmentProd<T, Tindices>(Output<T> data, Output<T> segmentIds) {
    return addOperation(new OperationDescription('SegmentProd', 'SegmentProd',
        [data, segmentIds], {'T': T, 'Tindices': Tindices}));
  }

  Output<T> resizeBilinearGrad<T>(Output<double> grads, Output<T> originalImage,
      {bool alignCorners: false}) {
    return addOperation(new OperationDescription(
        'ResizeBilinearGrad',
        'ResizeBilinearGrad',
        [grads, originalImage],
        {'T': T, 'align_corners': alignCorners}));
  }

  Output<T> max<T, Tidx>(Output<T> input, Output<T> reductionIndices,
      {bool keepDims: false}) {
    return addOperation(new OperationDescription(
        'Max',
        'Max',
        [input, reductionIndices],
        {'keep_dims': keepDims, 'T': T, 'Tidx': Tidx}));
  }

  Output<dtype> getSessionTensor<dtype>(Output<String> handle) {
    return addOperation(new OperationDescription(
        'GetSessionTensor', 'GetSessionTensor', [handle], {'dtype': dtype}));
  }

  Output<T> min<T, Tidx>(Output<T> input, Output<T> reductionIndices,
      {bool keepDims: false}) {
    return addOperation(new OperationDescription(
        'Min',
        'Min',
        [input, reductionIndices],
        {'keep_dims': keepDims, 'T': T, 'Tidx': Tidx}));
  }

  Output<T> prod<T, Tidx>(Output<T> input, Output<T> reductionIndices,
      {bool keepDims: false}) {
    return addOperation(new OperationDescription(
        'Prod',
        'Prod',
        [input, reductionIndices],
        {'keep_dims': keepDims, 'T': T, 'Tidx': Tidx}));
  }

  Output<T> sum<T, Tidx>(Output<T> input, Output<T> reductionIndices,
      {bool keepDims: false}) {
    return addOperation(new OperationDescription(
        'Sum',
        'Sum',
        [input, reductionIndices],
        {'keep_dims': keepDims, 'T': T, 'Tidx': Tidx}));
  }

  Output<T> relu<T>(Output<T> features) {
    return addOperation(
        new OperationDescription('Relu', 'Relu', [features], {'T': T}));
  }

  Output<T> matMul<T>(Output<T> a, Output<T> b,
      {bool transposeA: false, bool transposeB: false}) {
    return addOperation(new OperationDescription('MatMul', 'MatMul', [a, b],
        {'transpose_a': transposeA, 'transpose_b': transposeB, 'T': T}));
  }

  Output<bool> logicalAnd(Output<bool> x, Output<bool> y) {
    return addOperation(
        new OperationDescription('LogicalAnd', 'LogicalAnd', [x, y], {}));
  }

  Output writeGraphSummary(
      Output writer, Output<int> step, Output<String> tensor) {
    return addOperation(new OperationDescription(
        'WriteGraphSummary', 'WriteGraphSummary', [writer, step, tensor], {}));
  }

  Output<bool> approximateEqual<T>(Output<T> x, Output<T> y,
      {double tolerance: 0.000009999999747378752}) {
    return addOperation(new OperationDescription('ApproximateEqual',
        'ApproximateEqual', [x, y], {'T': T, 'tolerance': tolerance}));
  }

  Output<bool> greaterEqual<T>(Output<T> x, Output<T> y) {
    return addOperation(new OperationDescription(
        'GreaterEqual', 'GreaterEqual', [x, y], {'T': T}));
  }

  Output<T> polygamma<T>(Output<T> a, Output<T> x) {
    return addOperation(
        new OperationDescription('Polygamma', 'Polygamma', [a, x], {'T': T}));
  }

  /// When CreateSummaryDbWriter is being used, this op can be useful for
  /// importing data from event logs.
  Output importEvent(Output writer, Output<String> event) {
    return addOperation(new OperationDescription(
        'ImportEvent', 'ImportEvent', [writer, event], {}));
  }

  Output<T> igamma<T>(Output<T> a, Output<T> x) {
    return addOperation(
        new OperationDescription('Igamma', 'Igamma', [a, x], {'T': T}));
  }

  Output<T> igammac<T>(Output<T> a, Output<T> x) {
    return addOperation(
        new OperationDescription('Igammac', 'Igammac', [a, x], {'T': T}));
  }

  Output<T> mod<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('Mod', 'Mod', [x, y], {'T': T}));
  }

  Output<T> maximum<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('Maximum', 'Maximum', [x, y], {'T': T}));
  }

  Output<T> squaredDifference<T>(Output<T> x, Output<T> y) {
    return addOperation(new OperationDescription(
        'SquaredDifference', 'SquaredDifference', [x, y], {'T': T}));
  }

  Output<T> resourceCountUpTo<T>(Output resource, {@required int limit}) {
    return addOperation(new OperationDescription('ResourceCountUpTo',
        'ResourceCountUpTo', [resource], {'limit': limit, 'T': T}));
  }

  Output<T> realDiv<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('RealDiv', 'RealDiv', [x, y], {'T': T}));
  }

  Output<T> truncateDiv<T>(Output<T> x, Output<T> y) {
    return addOperation(new OperationDescription(
        'TruncateDiv', 'TruncateDiv', [x, y], {'T': T}));
  }

  Output<String> asString<T>(Output<T> input,
      {int precision: -1,
      bool scientific: false,
      bool shortest: false,
      int width: -1,
      String fill}) {
    return addOperation(new OperationDescription('AsString', 'AsString', [
      input
    ], {
      'T': T,
      'precision': precision,
      'scientific': scientific,
      'shortest': shortest,
      'width': width,
      'fill': fill
    }));
  }

  Output<T> addV2<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('AddV2', 'AddV2', [x, y], {'T': T}));
  }

  Output<dtype> resourceGather<dtype, Tindices>(
      Output resource, Output<dtype> indices,
      {bool validateIndices: true}) {
    return addOperation(new OperationDescription(
        'ResourceGather', 'ResourceGather', [
      resource,
      indices
    ], {
      'validate_indices': validateIndices,
      'dtype': dtype,
      'Tindices': Tindices
    }));
  }

  Output<T> add<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('Add', 'Add', [x, y], {'T': T}));
  }

  Output<T> floor<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Floor', 'Floor', [x], {'T': T}));
  }

  Output<T> ceil<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Ceil', 'Ceil', [x], {'T': T}));
  }

  Output<bool> isInf<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('IsInf', 'IsInf', [x], {'T': T}));
  }

  Output<T> padV2<T, Tpaddings>(
      Output<T> input, Output<T> paddings, Output<T> constantValues) {
    return addOperation(new OperationDescription('PadV2', 'PadV2',
        [input, paddings, constantValues], {'T': T, 'Tpaddings': Tpaddings}));
  }

  Output<T> cos<T>(Output<T> x) {
    return addOperation(new OperationDescription('Cos', 'Cos', [x], {'T': T}));
  }

  Output<T> sigmoidGrad<T>(Output<T> y, Output<T> dy) {
    return addOperation(new OperationDescription(
        'SigmoidGrad', 'SigmoidGrad', [y, dy], {'T': T}));
  }

  Output<T> digamma<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Digamma', 'Digamma', [x], {'T': T}));
  }

  Output<T> acosh<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Acosh', 'Acosh', [x], {'T': T}));
  }

  Output resourceApplyProximalAdagrad<T>(Output var_, Output accum,
      Output<T> lr, Output<T> l1, Output<T> l2, Output<T> grad,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyProximalAdagrad',
        'ResourceApplyProximalAdagrad',
        [var_, accum, lr, l1, l2, grad],
        {'T': T, 'use_locking': useLocking}));
  }

  Output<T> asin<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Asin', 'Asin', [x], {'T': T}));
  }

  Output<T> log1p<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Log1p', 'Log1p', [x], {'T': T}));
  }

  Output<T> exp<T>(Output<T> x) {
    return addOperation(new OperationDescription('Exp', 'Exp', [x], {'T': T}));
  }

  Output deserializeIterator(Output resourceHandle, Output serialized) {
    return addOperation(new OperationDescription('DeserializeIterator',
        'DeserializeIterator', [resourceHandle, serialized], {}));
  }

  Output<T> rsqrtGrad<T>(Output<T> y, Output<T> dy) {
    return addOperation(
        new OperationDescription('RsqrtGrad', 'RsqrtGrad', [y, dy], {'T': T}));
  }

  Output<T> rsqrt<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Rsqrt', 'Rsqrt', [x], {'T': T}));
  }

  Output<T> sqrtGrad<T>(Output<T> y, Output<T> dy) {
    return addOperation(
        new OperationDescription('SqrtGrad', 'SqrtGrad', [y, dy], {'T': T}));
  }

  Output<T> invGrad<T>(Output<T> y, Output<T> dy) {
    return addOperation(
        new OperationDescription('InvGrad', 'InvGrad', [y, dy], {'T': T}));
  }

  Output<T> inv<T>(Output<T> x) {
    return addOperation(new OperationDescription('Inv', 'Inv', [x], {'T': T}));
  }

  Output<T> accumulateNV2<T>(List<Output<T>> inputs,
      {@required int n, @required List shape}) {
    return addOperation(new OperationDescription('AccumulateNV2',
        'AccumulateNV2', [inputs], {'N': n, 'T': T, 'shape': shape}));
  }

  @Deprecated('DEPRECATED at GraphDef version 14: Use MatrixSetDiag')
  Output<T> batchMatrixSetDiag<T>(Output<T> input, Output<T> diagonal) {
    return addOperation(new OperationDescription('BatchMatrixSetDiag',
        'BatchMatrixSetDiag', [input, diagonal], {'T': T}));
  }

  Output<T> segmentMean<T, Tindices>(Output<T> data, Output<T> segmentIds) {
    return addOperation(new OperationDescription('SegmentMean', 'SegmentMean',
        [data, segmentIds], {'T': T, 'Tindices': Tindices}));
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 22: Replaced by QuantizeAndDequantizeV2')
  Output<T> quantizeAndDequantize<T>(Output<T> input,
      {bool signedInput: true,
      int numBits: 8,
      bool rangeGiven: false,
      double inputMin: 0.0,
      double inputMax: 0.0}) {
    return addOperation(new OperationDescription(
        'QuantizeAndDequantize', 'QuantizeAndDequantize', [
      input
    ], {
      'signed_input': signedInput,
      'num_bits': numBits,
      'range_given': rangeGiven,
      'input_min': inputMin,
      'input_max': inputMax,
      'T': T
    }));
  }

  Output<T> sparseSegmentSqrtN<T, Tidx>(
      Output<T> data, Output<T> indices, Output<int> segmentIds) {
    return addOperation(new OperationDescription(
        'SparseSegmentSqrtN',
        'SparseSegmentSqrtN',
        [data, indices, segmentIds],
        {'T': T, 'Tidx': Tidx}));
  }

  Output<T> depthToSpace<T>(Output<T> input,
      {@required int blockSize, String dataFormat: 'NHWC'}) {
    return addOperation(new OperationDescription('DepthToSpace', 'DepthToSpace',
        [input], {'T': T, 'block_size': blockSize, 'data_format': dataFormat}));
  }

  Output<T> spaceToDepth<T>(Output<T> input,
      {@required int blockSize, String dataFormat: 'NHWC'}) {
    return addOperation(new OperationDescription('SpaceToDepth', 'SpaceToDepth',
        [input], {'T': T, 'block_size': blockSize, 'data_format': dataFormat}));
  }

  Output<T> quantizeAndDequantizeV3<T>(Output<T> input, Output<T> inputMin,
      Output<T> inputMax, Output<int> numBits,
      {bool signedInput: true, bool rangeGiven: true}) {
    return addOperation(new OperationDescription(
        'QuantizeAndDequantizeV3',
        'QuantizeAndDequantizeV3',
        [input, inputMin, inputMax, numBits],
        {'signed_input': signedInput, 'range_given': rangeGiven, 'T': T}));
  }

  Output<T> mul<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('Mul', 'Mul', [x, y], {'T': T}));
  }

  Output<T> batchToSpace<T, Tidx>(Output<T> input, Output<T> crops,
      {@required int blockSize}) {
    return addOperation(new OperationDescription('BatchToSpace', 'BatchToSpace',
        [input, crops], {'T': T, 'block_size': blockSize, 'Tidx': Tidx}));
  }

  Output<T> spaceToBatch<T, Tpaddings>(Output<T> input, Output<T> paddings,
      {@required int blockSize}) {
    return addOperation(new OperationDescription(
        'SpaceToBatch',
        'SpaceToBatch',
        [input, paddings],
        {'T': T, 'Tpaddings': Tpaddings, 'block_size': blockSize}));
  }

  Output<T> expandDims<T, Tdim>(Output<T> input, Output<T> dim) {
    return addOperation(new OperationDescription(
        'ExpandDims', 'ExpandDims', [input, dim], {'T': T, 'Tdim': Tdim}));
  }

  Output<dtype> placeholderWithDefault<dtype>(Output<dtype> input,
      {@required List shape}) {
    return addOperation(new OperationDescription('PlaceholderWithDefault',
        'PlaceholderWithDefault', [input], {'dtype': dtype, 'shape': shape}));
  }

  Output<T> acos<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Acos', 'Acos', [x], {'T': T}));
  }

  Output<dtype> placeholder<dtype>({List shape}) {
    return addOperation(new OperationDescription(
        'Placeholder', 'Placeholder', [], {'dtype': dtype, 'shape': shape}));
  }

  Output<T> mirrorPadGrad<T, Tpaddings>(Output<T> input, Output<T> paddings,
      {@required String mode}) {
    return addOperation(new OperationDescription(
        'MirrorPadGrad',
        'MirrorPadGrad',
        [input, paddings],
        {'T': T, 'Tpaddings': Tpaddings, 'mode': mode}));
  }

  Output<T> matrixSolveLs<T>(
      Output<T> matrix, Output<T> rhs, Output l2Regularizer,
      {bool fast: true}) {
    return addOperation(new OperationDescription('MatrixSolveLs',
        'MatrixSolveLs', [matrix, rhs, l2Regularizer], {'T': T, 'fast': fast}));
  }

  Output<T> mirrorPad<T, Tpaddings>(Output<T> input, Output<T> paddings,
      {@required String mode}) {
    return addOperation(new OperationDescription('MirrorPad', 'MirrorPad',
        [input, paddings], {'T': T, 'Tpaddings': Tpaddings, 'mode': mode}));
  }

  Output<T> pad<T, Tpaddings>(Output<T> input, Output<T> paddings) {
    return addOperation(new OperationDescription(
        'Pad', 'Pad', [input, paddings], {'T': T, 'Tpaddings': Tpaddings}));
  }

  Output<T> broadcastArgs<T>(Output<T> s0, Output<T> s1) {
    return addOperation(new OperationDescription(
        'BroadcastArgs', 'BroadcastArgs', [s0, s1], {'T': T}));
  }

  Output resourceStridedSliceAssign<T, Index>(Output ref, Output<T> begin,
      Output<T> end, Output<T> strides, Output<T> value,
      {int beginMask: 0,
      int endMask: 0,
      int ellipsisMask: 0,
      int newAxisMask: 0,
      int shrinkAxisMask: 0}) {
    return addOperation(new OperationDescription(
        'ResourceStridedSliceAssign', 'ResourceStridedSliceAssign', [
      ref,
      begin,
      end,
      strides,
      value
    ], {
      'T': T,
      'Index': Index,
      'begin_mask': beginMask,
      'end_mask': endMask,
      'ellipsis_mask': ellipsisMask,
      'new_axis_mask': newAxisMask,
      'shrink_axis_mask': shrinkAxisMask
    }));
  }

  Output<T> truncateMod<T>(Output<T> x, Output<T> y) {
    return addOperation(new OperationDescription(
        'TruncateMod', 'TruncateMod', [x, y], {'T': T}));
  }

  Output resourceApplyFtrl<T>(
      Output var_,
      Output accum,
      Output linear,
      Output<T> grad,
      Output<T> lr,
      Output<T> l1,
      Output<T> l2,
      Output<T> lrPower,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyFtrl',
        'ResourceApplyFtrl',
        [var_, accum, linear, grad, lr, l1, l2, lrPower],
        {'T': T, 'use_locking': useLocking}));
  }

  Output<T> stridedSliceGrad<T, Index>(Output<T> shape, Output<T> begin,
      Output<T> end, Output<T> strides, Output<T> dy,
      {int beginMask: 0,
      int endMask: 0,
      int ellipsisMask: 0,
      int newAxisMask: 0,
      int shrinkAxisMask: 0}) {
    return addOperation(
        new OperationDescription('StridedSliceGrad', 'StridedSliceGrad', [
      shape,
      begin,
      end,
      strides,
      dy
    ], {
      'T': T,
      'Index': Index,
      'begin_mask': beginMask,
      'end_mask': endMask,
      'ellipsis_mask': ellipsisMask,
      'new_axis_mask': newAxisMask,
      'shrink_axis_mask': shrinkAxisMask
    }));
  }

  Output<T> stridedSlice<T, Index>(
      Output<T> input, Output<T> begin, Output<T> end, Output<T> strides,
      {int beginMask: 0,
      int endMask: 0,
      int ellipsisMask: 0,
      int newAxisMask: 0,
      int shrinkAxisMask: 0}) {
    return addOperation(
        new OperationDescription('StridedSlice', 'StridedSlice', [
      input,
      begin,
      end,
      strides
    ], {
      'T': T,
      'Index': Index,
      'begin_mask': beginMask,
      'end_mask': endMask,
      'ellipsis_mask': ellipsisMask,
      'new_axis_mask': newAxisMask,
      'shrink_axis_mask': shrinkAxisMask
    }));
  }

  Output<T> slice<T, Index>(Output<T> input, Output<T> begin, Output<T> size) {
    return addOperation(new OperationDescription(
        'Slice', 'Slice', [input, begin, size], {'T': T, 'Index': Index}));
  }

  Output<T> scatterNd<T, Tindices>(
      Output<T> indices, Output<T> updates, Output<T> shape) {
    return addOperation(new OperationDescription('ScatterNd', 'ScatterNd',
        [indices, updates, shape], {'T': T, 'Tindices': Tindices}));
  }

  Output<T> argMax<T, Tidx, output_type>(Output<T> input, Output<T> dimension) {
    return addOperation(new OperationDescription(
        'ArgMax',
        'ArgMax',
        [input, dimension],
        {'T': T, 'Tidx': Tidx, 'output_type': output_type}));
  }

  Output<T> reshape<T, Tshape>(Output<T> tensor, Output<T> shape) {
    return addOperation(new OperationDescription(
        'Reshape', 'Reshape', [tensor, shape], {'T': T, 'Tshape': Tshape}));
  }

  Output<T> checkNumerics<T>(Output<T> tensor, {@required String message}) {
    return addOperation(new OperationDescription('CheckNumerics',
        'CheckNumerics', [tensor], {'T': T, 'message': message}));
  }

  Output<T> stopGradient<T>(Output<T> input) {
    return addOperation(new OperationDescription(
        'StopGradient', 'StopGradient', [input], {'T': T}));
  }

  Output<T> debugGradientIdentity<T>(Output<T> input) {
    return addOperation(new OperationDescription(
        'DebugGradientIdentity', 'DebugGradientIdentity', [input], {'T': T}));
  }

  Output<T> round<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Round', 'Round', [x], {'T': T}));
  }

  Output<T> sparseTensorDenseAdd<T, Tindices>(
      Output<T> aIndices, Output<T> aValues, Output<T> aShape, Output<T> b) {
    return addOperation(new OperationDescription(
        'SparseTensorDenseAdd',
        'SparseTensorDenseAdd',
        [aIndices, aValues, aShape, b],
        {'T': T, 'Tindices': Tindices}));
  }

  Output<T> snapshot<T>(Output<T> input) {
    return addOperation(
        new OperationDescription('Snapshot', 'Snapshot', [input], {'T': T}));
  }

  Output<T> size<T, out_type>(Output<T> input) {
    return addOperation(new OperationDescription(
        'Size', 'Size', [input], {'T': T, 'out_type': out_type}));
  }

  Output<String> scalarSummary<T>(Output<String> tags, Output<T> values) {
    return addOperation(new OperationDescription(
        'ScalarSummary', 'ScalarSummary', [tags, values], {'T': T}));
  }

  Output<T> identity<T>(Output<T> input) {
    return addOperation(
        new OperationDescription('Identity', 'Identity', [input], {'T': T}));
  }

  Output<Tidx> reverseV2<Tidx, T>(Output<Tidx> tensor, Output<Tidx> axis) {
    return addOperation(new OperationDescription(
        'ReverseV2', 'ReverseV2', [tensor, axis], {'Tidx': Tidx, 'T': T}));
  }

  Output<T> reverse<T>(Output<T> tensor, Output<bool> dims) {
    return addOperation(new OperationDescription(
        'Reverse', 'Reverse', [tensor, dims], {'T': T}));
  }

  Output<T> matrixDiagPart<T>(Output<T> input) {
    return addOperation(new OperationDescription(
        'MatrixDiagPart', 'MatrixDiagPart', [input], {'T': T}));
  }

  Output<T> matrixSetDiag<T>(Output<T> input, Output<T> diagonal) {
    return addOperation(new OperationDescription(
        'MatrixSetDiag', 'MatrixSetDiag', [input, diagonal], {'T': T}));
  }

  Output<dtype> statelessTruncatedNormal<dtype, T, Tseed>(
      Output<dtype> shape, Output<dtype> seed) {
    return addOperation(new OperationDescription(
        'StatelessTruncatedNormal',
        'StatelessTruncatedNormal',
        [shape, seed],
        {'dtype': dtype, 'T': T, 'Tseed': Tseed}));
  }

  Output<T> matrixDiag<T>(Output<T> diagonal) {
    return addOperation(new OperationDescription(
        'MatrixDiag', 'MatrixDiag', [diagonal], {'T': T}));
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 23: Placeholder now behaves the same as PlaceholderV2.')
  Output<dtype> placeholderV2<dtype>({@required List shape}) {
    return addOperation(new OperationDescription('PlaceholderV2',
        'PlaceholderV2', [], {'dtype': dtype, 'shape': shape}));
  }

  Output<T> diagPart<T>(Output<T> input) {
    return addOperation(
        new OperationDescription('DiagPart', 'DiagPart', [input], {'T': T}));
  }

  Output<T> onesLike<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('OnesLike', 'OnesLike', [x], {'T': T}));
  }

  Output<T> guaranteeConst<T>(Output<T> input) {
    return addOperation(new OperationDescription(
        'GuaranteeConst', 'GuaranteeConst', [input], {'T': T}));
  }

  Output<dtype> immutableConst<dtype>(
      {@required List shape, @required String memoryRegionName}) {
    return addOperation(new OperationDescription(
        'ImmutableConst', 'ImmutableConst', [], {
      'dtype': dtype,
      'shape': shape,
      'memory_region_name': memoryRegionName
    }));
  }

  Output<T> fill<T, index_type>(Output<T> dims, Output<T> value) {
    return addOperation(new OperationDescription(
        'Fill', 'Fill', [dims, value], {'T': T, 'index_type': index_type}));
  }

  Output<dtype> const_<dtype>({@required Output value}) {
    return addOperation(new OperationDescription(
        'Const', 'Const', [], {'value': value, 'dtype': dtype}));
  }

  Output<T> splitV<T, Tlen>(
      Output<T> value, Output<T> sizeSplits, Output<int> splitDim,
      {@required int numSplit}) {
    return addOperation(new OperationDescription(
        'SplitV',
        'SplitV',
        [value, sizeSplits, splitDim],
        {'num_split': numSplit, 'T': T, 'Tlen': Tlen}));
  }

  Output<T> split<T>(Output<int> splitDim, Output<T> value,
      {@required int numSplit}) {
    return addOperation(new OperationDescription(
        'Split', 'Split', [splitDim, value], {'num_split': numSplit, 'T': T}));
  }

  Output<T> concatV2<T, Tidx>(List<Output<T>> values, Output<T> axis,
      {@required int n}) {
    return addOperation(new OperationDescription('ConcatV2', 'ConcatV2',
        [values, axis], {'N': n, 'T': T, 'Tidx': Tidx}));
  }

  Output resourceApplyPowerSign<T>(Output var_, Output m, Output<T> lr,
      Output<T> logbase, Output<T> signDecay, Output<T> beta, Output<T> grad,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyPowerSign',
        'ResourceApplyPowerSign',
        [var_, m, lr, logbase, signDecay, beta, grad],
        {'T': T, 'use_locking': useLocking}));
  }

  Output<T> concat<T>(Output<int> concatDim, List<Output<T>> values,
      {@required int n}) {
    return addOperation(new OperationDescription(
        'Concat', 'Concat', [concatDim, values], {'N': n, 'T': T}));
  }

  Output<T> leftShift<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('LeftShift', 'LeftShift', [x, y], {'T': T}));
  }

  Output<T> bitwiseOr<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('BitwiseOr', 'BitwiseOr', [x, y], {'T': T}));
  }

  Output<T> bitwiseAnd<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('BitwiseAnd', 'BitwiseAnd', [x, y], {'T': T}));
  }

  Output populationCount<T>(Output<T> x) {
    return addOperation(new OperationDescription(
        'PopulationCount', 'PopulationCount', [x], {'T': T}));
  }

  Output<dtype> decodePng<dtype>(Output<String> contents, {int channels: 0}) {
    return addOperation(new OperationDescription('DecodePng', 'DecodePng',
        [contents], {'channels': channels, 'dtype': dtype}));
  }

  Output<T> invert<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Invert', 'Invert', [x], {'T': T}));
  }

  Output<String> fact() {
    return addOperation(new OperationDescription('Fact', 'Fact', [], {}));
  }

  Output<T> resizeBicubicGrad<T>(Output<double> grads, Output<T> originalImage,
      {bool alignCorners: false}) {
    return addOperation(new OperationDescription(
        'ResizeBicubicGrad',
        'ResizeBicubicGrad',
        [grads, originalImage],
        {'T': T, 'align_corners': alignCorners}));
  }

  Output serializeIterator(Output resourceHandle) {
    return addOperation(new OperationDescription(
        'SerializeIterator', 'SerializeIterator', [resourceHandle], {}));
  }

  Output resourceApplyCenteredRMSProp<T>(
      Output var_,
      Output mg,
      Output ms,
      Output mom,
      Output<T> lr,
      Output<T> rho,
      Output<T> momentum,
      Output<T> epsilon,
      Output<T> grad,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyCenteredRMSProp',
        'ResourceApplyCenteredRMSProp',
        [var_, mg, ms, mom, lr, rho, momentum, epsilon, grad],
        {'T': T, 'use_locking': useLocking}));
  }

  Output resourceApplyRMSProp<T>(
      Output var_,
      Output ms,
      Output mom,
      Output<T> lr,
      Output<T> rho,
      Output<T> momentum,
      Output<T> epsilon,
      Output<T> grad,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyRMSProp',
        'ResourceApplyRMSProp',
        [var_, ms, mom, lr, rho, momentum, epsilon, grad],
        {'T': T, 'use_locking': useLocking}));
  }

  Output<T> zerosLike<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('ZerosLike', 'ZerosLike', [x], {'T': T}));
  }

  Output<int> concatOffset(Output<int> concatDim, List<Output<int>> shape,
      {@required int n}) {
    return addOperation(new OperationDescription(
        'ConcatOffset', 'ConcatOffset', [concatDim, shape], {'N': n}));
  }

  Output<T> sigmoid<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Sigmoid', 'Sigmoid', [x], {'T': T}));
  }

  Output resourceSparseApplyAdadelta<T, Tindices>(
      Output var_,
      Output accum,
      Output accumUpdate,
      Output<T> lr,
      Output<T> rho,
      Output<T> epsilon,
      Output<T> grad,
      Output<T> indices,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyAdadelta',
        'ResourceSparseApplyAdadelta',
        [var_, accum, accumUpdate, lr, rho, epsilon, grad, indices],
        {'T': T, 'Tindices': Tindices, 'use_locking': useLocking}));
  }

  Output resourceApplyAdam<T>(
      Output var_,
      Output m,
      Output v,
      Output<T> beta1Power,
      Output<T> beta2Power,
      Output<T> lr,
      Output<T> beta1,
      Output<T> beta2,
      Output<T> epsilon,
      Output<T> grad,
      {bool useLocking: false,
      bool useNesterov: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyAdam',
        'ResourceApplyAdam',
        [var_, m, v, beta1Power, beta2Power, lr, beta1, beta2, epsilon, grad],
        {'T': T, 'use_locking': useLocking, 'use_nesterov': useNesterov}));
  }

  Output resourceSparseApplyMomentum<T, Tindices>(Output var_, Output accum,
      Output<T> lr, Output<T> grad, Output<T> indices, Output<T> momentum,
      {bool useLocking: false, bool useNesterov: false}) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyMomentum', 'ResourceSparseApplyMomentum', [
      var_,
      accum,
      lr,
      grad,
      indices,
      momentum
    ], {
      'T': T,
      'Tindices': Tindices,
      'use_locking': useLocking,
      'use_nesterov': useNesterov
    }));
  }

  Output resourceApplyMomentum<T>(Output var_, Output accum, Output<T> lr,
      Output<T> grad, Output<T> momentum,
      {bool useLocking: false, bool useNesterov: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyMomentum',
        'ResourceApplyMomentum',
        [var_, accum, lr, grad, momentum],
        {'T': T, 'use_locking': useLocking, 'use_nesterov': useNesterov}));
  }

  Output<T> parallelConcat<T>(List<Output<T>> values,
      {@required int n, @required List shape}) {
    return addOperation(new OperationDescription('ParallelConcat',
        'ParallelConcat', [values], {'N': n, 'T': T, 'shape': shape}));
  }

  Output<double> editDistance<T>(
      Output<int> hypothesisIndices,
      Output<T> hypothesisValues,
      Output<int> hypothesisShape,
      Output<int> truthIndices,
      Output<T> truthValues,
      Output<int> truthShape,
      {bool normalize: true}) {
    return addOperation(
        new OperationDescription('EditDistance', 'EditDistance', [
      hypothesisIndices,
      hypothesisValues,
      hypothesisShape,
      truthIndices,
      truthValues,
      truthShape
    ], {
      'normalize': normalize,
      'T': T
    }));
  }

  Output resourceApplyFtrlV2<T>(
      Output var_,
      Output accum,
      Output linear,
      Output<T> grad,
      Output<T> lr,
      Output<T> l1,
      Output<T> l2,
      Output<T> l2Shrinkage,
      Output<T> lrPower,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyFtrlV2',
        'ResourceApplyFtrlV2',
        [var_, accum, linear, grad, lr, l1, l2, l2Shrinkage, lrPower],
        {'T': T, 'use_locking': useLocking}));
  }

  Output resourceSparseApplyFtrl<T, Tindices>(
      Output var_,
      Output accum,
      Output linear,
      Output<T> grad,
      Output<T> indices,
      Output<T> lr,
      Output<T> l1,
      Output<T> l2,
      Output<T> lrPower,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyFtrl',
        'ResourceSparseApplyFtrl',
        [var_, accum, linear, grad, indices, lr, l1, l2, lrPower],
        {'T': T, 'Tindices': Tindices, 'use_locking': useLocking}));
  }

  Output<T> sign<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Sign', 'Sign', [x], {'T': T}));
  }

  Output resourceApplyAddSign<T>(Output var_, Output m, Output<T> lr,
      Output<T> alpha, Output<T> signDecay, Output<T> beta, Output<T> grad,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyAddSign',
        'ResourceApplyAddSign',
        [var_, m, lr, alpha, signDecay, beta, grad],
        {'T': T, 'use_locking': useLocking}));
  }

  Output<T> neg<T>(Output<T> x) {
    return addOperation(new OperationDescription('Neg', 'Neg', [x], {'T': T}));
  }

  Output resourceSparseApplyProximalAdagrad<T, Tindices>(
      Output var_,
      Output accum,
      Output<T> lr,
      Output<T> l1,
      Output<T> l2,
      Output<T> grad,
      Output<T> indices,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyProximalAdagrad',
        'ResourceSparseApplyProximalAdagrad',
        [var_, accum, lr, l1, l2, grad, indices],
        {'T': T, 'Tindices': Tindices, 'use_locking': useLocking}));
  }

  Output<T> bitcast<T, type>(Output<T> input) {
    return addOperation(new OperationDescription(
        'Bitcast', 'Bitcast', [input], {'T': T, 'type': type}));
  }

  Output<T> sparseToDense<T, Tindices>(Output<T> sparseIndices,
      Output<T> outputShape, Output<T> sparseValues, Output<T> defaultValue,
      {bool validateIndices: true}) {
    return addOperation(new OperationDescription(
        'SparseToDense',
        'SparseToDense',
        [sparseIndices, outputShape, sparseValues, defaultValue],
        {'validate_indices': validateIndices, 'T': T, 'Tindices': Tindices}));
  }

  Output resourceApplyAdagradDA<T>(
      Output var_,
      Output gradientAccumulator,
      Output gradientSquaredAccumulator,
      Output<T> grad,
      Output<T> lr,
      Output<T> l1,
      Output<T> l2,
      Output<int> globalStep,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyAdagradDA', 'ResourceApplyAdagradDA', [
      var_,
      gradientAccumulator,
      gradientSquaredAccumulator,
      grad,
      lr,
      l1,
      l2,
      globalStep
    ], {
      'T': T,
      'use_locking': useLocking
    }));
  }

  Output resourceSparseApplyAdagrad<T, Tindices>(Output var_, Output accum,
      Output<T> lr, Output<T> grad, Output<T> indices,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyAdagrad',
        'ResourceSparseApplyAdagrad',
        [var_, accum, lr, grad, indices],
        {'T': T, 'Tindices': Tindices, 'use_locking': useLocking}));
  }

  Output<T> sqrt<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Sqrt', 'Sqrt', [x], {'T': T}));
  }

  Output resourceApplyAdagrad<T>(
      Output var_, Output accum, Output<T> lr, Output<T> grad,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyAdagrad',
        'ResourceApplyAdagrad',
        [var_, accum, lr, grad],
        {'T': T, 'use_locking': useLocking}));
  }

  Output<T> cholesky<T>(Output<T> input) {
    return addOperation(
        new OperationDescription('Cholesky', 'Cholesky', [input], {'T': T}));
  }

  Output<T> sparseSegmentSqrtNWithNumSegments<T, Tidx, Tnumsegments>(
      Output<T> data,
      Output<T> indices,
      Output<int> segmentIds,
      Output<T> numSegments) {
    return addOperation(new OperationDescription(
        'SparseSegmentSqrtNWithNumSegments',
        'SparseSegmentSqrtNWithNumSegments',
        [data, indices, segmentIds, numSegments],
        {'T': T, 'Tidx': Tidx, 'Tnumsegments': Tnumsegments}));
  }

  Output resourceApplyProximalGradientDescent<T>(
      Output var_, Output<T> alpha, Output<T> l1, Output<T> l2, Output<T> delta,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyProximalGradientDescent',
        'ResourceApplyProximalGradientDescent',
        [var_, alpha, l1, l2, delta],
        {'T': T, 'use_locking': useLocking}));
  }

  Output<T> tile<T, Tmultiples>(Output<T> input, Output<T> multiples) {
    return addOperation(new OperationDescription('Tile', 'Tile',
        [input, multiples], {'T': T, 'Tmultiples': Tmultiples}));
  }

  Output<T> matrixLogarithm<T>(Output<T> input) {
    return addOperation(new OperationDescription(
        'MatrixLogarithm', 'MatrixLogarithm', [input], {'T': T}));
  }

  Output resourceApplyGradientDescent<T>(
      Output var_, Output<T> alpha, Output<T> delta,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyGradientDescent',
        'ResourceApplyGradientDescent',
        [var_, alpha, delta],
        {'T': T, 'use_locking': useLocking}));
  }

  Output<T> cosh<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Cosh', 'Cosh', [x], {'T': T}));
  }

  Output<T> l2Loss<T>(Output<T> t) {
    return addOperation(
        new OperationDescription('L2Loss', 'L2Loss', [t], {'T': T}));
  }

  Output<SrcT> cast<SrcT, DstT>(Output<SrcT> x) {
    return addOperation(new OperationDescription(
        'Cast', 'Cast', [x], {'SrcT': SrcT, 'DstT': DstT}));
  }

  Output<T> segmentMax<T, Tindices>(Output<T> data, Output<T> segmentIds) {
    return addOperation(new OperationDescription('SegmentMax', 'SegmentMax',
        [data, segmentIds], {'T': T, 'Tindices': Tindices}));
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 9: Use tf.nn.batch_normalization()')
  Output<T> batchNormWithGlobalNormalization<T>(
      Output<T> t, Output<T> m, Output<T> v, Output<T> beta, Output<T> gamma,
      {@required double varianceEpsilon,
      @required bool scaleAfterNormalization}) {
    return addOperation(new OperationDescription(
        'BatchNormWithGlobalNormalization',
        'BatchNormWithGlobalNormalization', [
      t,
      m,
      v,
      beta,
      gamma
    ], {
      'T': T,
      'variance_epsilon': varianceEpsilon,
      'scale_after_normalization': scaleAfterNormalization
    }));
  }

  Output<double> fakeQuantWithMinMaxArgs(Output<double> inputs,
      {double min: -6.0,
      double max: 6.0,
      int numBits: 8,
      bool narrowRange: false}) {
    return addOperation(new OperationDescription(
        'FakeQuantWithMinMaxArgs', 'FakeQuantWithMinMaxArgs', [
      inputs
    ], {
      'min': min,
      'max': max,
      'num_bits': numBits,
      'narrow_range': narrowRange
    }));
  }

  Output resourceScatterNdUpdate<T, Tindices>(
      Output ref, Output<T> indices, Output<T> updates,
      {bool useLocking: true}) {
    return addOperation(new OperationDescription(
        'ResourceScatterNdUpdate',
        'ResourceScatterNdUpdate',
        [ref, indices, updates],
        {'T': T, 'Tindices': Tindices, 'use_locking': useLocking}));
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 13: Use MatrixTriangularSolve instead.')
  Output<T> batchMatrixTriangularSolve<T>(Output<T> matrix, Output<T> rhs,
      {bool lower: true, bool adjoint: false}) {
    return addOperation(new OperationDescription(
        'BatchMatrixTriangularSolve',
        'BatchMatrixTriangularSolve',
        [matrix, rhs],
        {'lower': lower, 'adjoint': adjoint, 'T': T}));
  }

  Output<T> mean<T, Tidx>(Output<T> input, Output<T> reductionIndices,
      {bool keepDims: false}) {
    return addOperation(new OperationDescription(
        'Mean',
        'Mean',
        [input, reductionIndices],
        {'keep_dims': keepDims, 'T': T, 'Tidx': Tidx}));
  }

  Output<T> betainc<T>(Output<T> a, Output<T> b, Output<T> x) {
    return addOperation(
        new OperationDescription('Betainc', 'Betainc', [a, b, x], {'T': T}));
  }

  /// The summary has up to `max_outputs` summary values containing audio. The
  /// audio is built from `tensor` which must be 3-D with shape `[batch_size,
  /// frames, channels]` or 2-D with shape `[batch_size, frames]`. The values are
  /// assumed to be in the range of `[-1.0, 1.0]` with a sample rate of `sample_rate`.
  /// The `tag` argument is a scalar `Tensor` of type `string`.  It is used to
  /// build the `tag` of the summary values:
  /// *  If `max_outputs` is 1, the summary value tag is '*tag*/audio'.
  /// *  If `max_outputs` is greater than 1, the summary value tags are
  /// generated sequentially as '*tag*/audio/0', '*tag*/audio/1', etc.
  Output writeAudioSummary(Output writer, Output<int> step, Output<String> tag,
      Output<double> tensor, Output<double> sampleRate,
      {int maxOutputs: 3}) {
    return addOperation(new OperationDescription(
        'WriteAudioSummary',
        'WriteAudioSummary',
        [writer, step, tag, tensor, sampleRate],
        {'max_outputs': maxOutputs}));
  }

  Output<T> matrixBandPart<T, Tindex>(
      Output<T> input, Output<T> numLower, Output<T> numUpper) {
    return addOperation(new OperationDescription(
        'MatrixBandPart',
        'MatrixBandPart',
        [input, numLower, numUpper],
        {'T': T, 'Tindex': Tindex}));
  }

  Output<T> matrixSolve<T>(Output<T> matrix, Output<T> rhs,
      {bool adjoint: false}) {
    return addOperation(new OperationDescription('MatrixSolve', 'MatrixSolve',
        [matrix, rhs], {'adjoint': adjoint, 'T': T}));
  }

  Output writeFile(Output<String> filename, Output<String> contents) {
    return addOperation(new OperationDescription(
        'WriteFile', 'WriteFile', [filename, contents], {}));
  }

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
  Output writeImageSummary<T>(Output writer, Output<int> step,
      Output<String> tag, Output<T> tensor, Output badColor,
      {int maxImages: 3}) {
    return addOperation(new OperationDescription(
        'WriteImageSummary',
        'WriteImageSummary',
        [writer, step, tag, tensor, badColor],
        {'max_images': maxImages, 'T': T}));
  }

  Output<T> tan<T>(Output<T> x) {
    return addOperation(new OperationDescription('Tan', 'Tan', [x], {'T': T}));
  }

  /// The generated
  /// [`Summary`](https://www.tensorflow.org/code/tensorflow/core/framework/summary.proto)
  /// has one summary value containing a histogram for `values`.
  /// This op reports an `InvalidArgument` error if any value is not finite.
  Output writeHistogramSummary<T>(
      Output writer, Output<int> step, Output<String> tag, Output<T> values) {
    return addOperation(new OperationDescription('WriteHistogramSummary',
        'WriteHistogramSummary', [writer, step, tag, values], {'T': T}));
  }

  Output<T> batchMatMul<T>(Output<T> x, Output<T> y,
      {bool adjX: false, bool adjY: false}) {
    return addOperation(new OperationDescription('BatchMatMul', 'BatchMatMul',
        [x, y], {'T': T, 'adj_x': adjX, 'adj_y': adjY}));
  }

  Output writeSummary<T>(Output writer, Output<int> step, Output<T> tensor,
      Output<String> tag, Output<String> summaryMetadata) {
    return addOperation(new OperationDescription('WriteSummary', 'WriteSummary',
        [writer, step, tensor, tag, summaryMetadata], {'T': T}));
  }

  Output flushSummaryWriter(Output writer) {
    return addOperation(new OperationDescription(
        'FlushSummaryWriter', 'FlushSummaryWriter', [writer], {}));
  }

  /// This can be used to write tensors from the execution graph directly
  /// to a database. Only SQLite is supported right now. This function
  /// will create the schema if it doesn't exist. Entries in the Users,
  /// Experiments, and Runs tables will be created automatically if they
  /// don't already exist.
  Output createSummaryDbWriter(
      Output writer,
      Output<String> dbUri,
      Output<String> experimentName,
      Output<String> runName,
      Output<String> userName) {
    return addOperation(new OperationDescription(
        'CreateSummaryDbWriter',
        'CreateSummaryDbWriter',
        [writer, dbUri, experimentName, runName, userName],
        {}));
  }

  /// The summary writer is an in-graph resource which can be used by ops to write
  /// summaries to event files.
  Output summaryWriter({String sharedName, String container}) {
    return addOperation(new OperationDescription(
        'SummaryWriter',
        'SummaryWriter',
        [],
        {'shared_name': sharedName, 'container': container}));
  }

  Output<String> substr<T>(Output<String> input, Output<T> pos, Output<T> len) {
    return addOperation(new OperationDescription(
        'Substr', 'Substr', [input, pos, len], {'T': T}));
  }

  Output<String> decodeBase64(Output<String> input) {
    return addOperation(
        new OperationDescription('DecodeBase64', 'DecodeBase64', [input], {}));
  }

  Output<String> encodeBase64(Output<String> input, {bool pad: false}) {
    return addOperation(new OperationDescription(
        'EncodeBase64', 'EncodeBase64', [input], {'pad': pad}));
  }

  Output<String> stringJoin(List<Output<String>> inputs,
      {@required int n, String separator}) {
    return addOperation(new OperationDescription('StringJoin', 'StringJoin',
        [inputs], {'N': n, 'separator': separator}));
  }

  Output<T> softsign<T>(Output<T> features) {
    return addOperation(
        new OperationDescription('Softsign', 'Softsign', [features], {'T': T}));
  }

  Output<int> stringToHashBucket(Output<String> stringTensor,
      {@required int numBuckets}) {
    return addOperation(new OperationDescription('StringToHashBucket',
        'StringToHashBucket', [stringTensor], {'num_buckets': numBuckets}));
  }

  Output<bool> isFinite<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('IsFinite', 'IsFinite', [x], {'T': T}));
  }

  Output<String> regexReplace(
      Output<String> input, Output<String> pattern, Output<String> rewrite,
      {bool replaceGlobal: true}) {
    return addOperation(new OperationDescription('RegexReplace', 'RegexReplace',
        [input, pattern, rewrite], {'replace_global': replaceGlobal}));
  }

  Output<dtype> statelessRandomNormal<dtype, T, Tseed>(
      Output<dtype> shape, Output<dtype> seed) {
    return addOperation(new OperationDescription(
        'StatelessRandomNormal',
        'StatelessRandomNormal',
        [shape, seed],
        {'dtype': dtype, 'T': T, 'Tseed': Tseed}));
  }

  Output<dtype> statelessRandomUniform<dtype, T, Tseed>(
      Output<dtype> shape, Output<dtype> seed) {
    return addOperation(new OperationDescription(
        'StatelessRandomUniform',
        'StatelessRandomUniform',
        [shape, seed],
        {'dtype': dtype, 'T': T, 'Tseed': Tseed}));
  }

  Output<S> randomGamma<S, T>(Output<S> shape, Output<S> alpha,
      {int seed: 0, int seed2: 0}) {
    return addOperation(new OperationDescription('RandomGamma', 'RandomGamma',
        [shape, alpha], {'seed': seed, 'seed2': seed2, 'S': S, 'T': T}));
  }

  Output<T> randomShuffle<T>(Output<T> value, {int seed: 0, int seed2: 0}) {
    return addOperation(new OperationDescription('RandomShuffle',
        'RandomShuffle', [value], {'seed': seed, 'seed2': seed2, 'T': T}));
  }

  Output<T> invertPermutation<T>(Output<T> x) {
    return addOperation(new OperationDescription(
        'InvertPermutation', 'InvertPermutation', [x], {'T': T}));
  }

  Output<String> readFile(Output<String> filename) {
    return addOperation(
        new OperationDescription('ReadFile', 'ReadFile', [filename], {}));
  }

  Output<dtype> truncatedNormal<dtype, T>(Output<dtype> shape,
      {int seed: 0, int seed2: 0}) {
    return addOperation(new OperationDescription(
        'TruncatedNormal',
        'TruncatedNormal',
        [shape],
        {'seed': seed, 'seed2': seed2, 'dtype': dtype, 'T': T}));
  }

  Output<T> erf<T>(Output<T> x) {
    return addOperation(new OperationDescription('Erf', 'Erf', [x], {'T': T}));
  }

  Output<dtype> randomStandardNormal<dtype, T>(Output<dtype> shape,
      {int seed: 0, int seed2: 0}) {
    return addOperation(new OperationDescription(
        'RandomStandardNormal',
        'RandomStandardNormal',
        [shape],
        {'seed': seed, 'seed2': seed2, 'dtype': dtype, 'T': T}));
  }

  Output<T> erfc<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Erfc', 'Erfc', [x], {'T': T}));
  }

  Output<Tout> randomUniformInt<Tout, T>(
      Output<Tout> shape, Output<Tout> minval, Output<Tout> maxval,
      {int seed: 0, int seed2: 0}) {
    return addOperation(new OperationDescription(
        'RandomUniformInt',
        'RandomUniformInt',
        [shape, minval, maxval],
        {'seed': seed, 'seed2': seed2, 'Tout': Tout, 'T': T}));
  }

  Output<dtype> randomUniform<dtype, T>(Output<dtype> shape,
      {int seed: 0, int seed2: 0}) {
    return addOperation(new OperationDescription(
        'RandomUniform',
        'RandomUniform',
        [shape],
        {'seed': seed, 'seed2': seed2, 'dtype': dtype, 'T': T}));
  }

  Output<int> addManySparseToTensorsMap<T>(Output<int> sparseIndices,
      Output<T> sparseValues, Output<int> sparseShape,
      {String container, String sharedName}) {
    return addOperation(new OperationDescription(
        'AddManySparseToTensorsMap',
        'AddManySparseToTensorsMap',
        [sparseIndices, sparseValues, sparseShape],
        {'T': T, 'container': container, 'shared_name': sharedName}));
  }

  Output<T> biasAddGrad<T>(Output<T> outBackprop, {String dataFormat: 'NHWC'}) {
    return addOperation(new OperationDescription('BiasAddGrad', 'BiasAddGrad',
        [outBackprop], {'T': T, 'data_format': dataFormat}));
  }

  Output<T> elu<T>(Output<T> features) {
    return addOperation(
        new OperationDescription('Elu', 'Elu', [features], {'T': T}));
  }

  Output<int> addSparseToTensorsMap<T>(Output<int> sparseIndices,
      Output<T> sparseValues, Output<int> sparseShape,
      {String container, String sharedName}) {
    return addOperation(new OperationDescription(
        'AddSparseToTensorsMap',
        'AddSparseToTensorsMap',
        [sparseIndices, sparseValues, sparseShape],
        {'T': T, 'container': container, 'shared_name': sharedName}));
  }

  Output<T> preventGradient<T>(Output<T> input, {String message}) {
    return addOperation(new OperationDescription('PreventGradient',
        'PreventGradient', [input], {'T': T, 'message': message}));
  }

  Output<T> sparseSoftmax<T>(
      Output<int> spIndices, Output<T> spValues, Output<int> spShape) {
    return addOperation(new OperationDescription('SparseSoftmax',
        'SparseSoftmax', [spIndices, spValues, spShape], {'T': T}));
  }

  Output<T> sparseDenseCwiseAdd<T>(Output<int> spIndices, Output<T> spValues,
      Output<int> spShape, Output<T> dense) {
    return addOperation(new OperationDescription(
        'SparseDenseCwiseAdd',
        'SparseDenseCwiseAdd',
        [spIndices, spValues, spShape, dense],
        {'T': T}));
  }

  Output<String> getSessionHandle<T>(Output<T> value) {
    return addOperation(new OperationDescription(
        'GetSessionHandle', 'GetSessionHandle', [value], {'T': T}));
  }

  Output<T> sparseDenseCwiseMul<T>(Output<int> spIndices, Output<T> spValues,
      Output<int> spShape, Output<T> dense) {
    return addOperation(new OperationDescription(
        'SparseDenseCwiseMul',
        'SparseDenseCwiseMul',
        [spIndices, spValues, spShape, dense],
        {'T': T}));
  }

  Output<T> relu6<T>(Output<T> features) {
    return addOperation(
        new OperationDescription('Relu6', 'Relu6', [features], {'T': T}));
  }

  Output<String> readerSerializeStateV2(Output readerHandle) {
    return addOperation(new OperationDescription('ReaderSerializeStateV2',
        'ReaderSerializeStateV2', [readerHandle], {}));
  }

  Output destroyResourceOp(Output resource, {bool ignoreLookupError: true}) {
    return addOperation(new OperationDescription(
        'DestroyResourceOp',
        'DestroyResourceOp',
        [resource],
        {'ignore_lookup_error': ignoreLookupError}));
  }

  Output<T> histogramFixedWidth<T, dtype>(
      Output<T> values, Output<T> valueRange, Output<int> nbins) {
    return addOperation(new OperationDescription(
        'HistogramFixedWidth',
        'HistogramFixedWidth',
        [values, valueRange, nbins],
        {'T': T, 'dtype': dtype}));
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayWriteV3')
  Output<double> tensorArrayWriteV2<T>(Output<String> handle, Output<int> index,
      Output<T> value, Output<double> flowIn) {
    return addOperation(new OperationDescription('TensorArrayWriteV2',
        'TensorArrayWriteV2', [handle, index, value, flowIn], {'T': T}));
  }

  Output consumeMutexLock(Output mutexLock) {
    return addOperation(new OperationDescription(
        'ConsumeMutexLock', 'ConsumeMutexLock', [mutexLock], {}));
  }

  Output<T> dataFormatVecPermute<T>(Output<T> x,
      {String srcFormat: 'NHWC', String dstFormat: 'NCHW'}) {
    return addOperation(new OperationDescription(
        'DataFormatVecPermute',
        'DataFormatVecPermute',
        [x],
        {'T': T, 'src_format': srcFormat, 'dst_format': dstFormat}));
  }

  @Deprecated('DEPRECATED at GraphDef version 13: Use CholeskyGrad instead.')
  Output<T> batchCholeskyGrad<T>(Output<T> l, Output<T> grad) {
    return addOperation(new OperationDescription(
        'BatchCholeskyGrad', 'BatchCholeskyGrad', [l, grad], {'T': T}));
  }

  Output resourceScatterAdd<dtype, Tindices>(
      Output resource, Output<dtype> indices, Output<dtype> updates) {
    return addOperation(new OperationDescription(
        'ResourceScatterAdd',
        'ResourceScatterAdd',
        [resource, indices, updates],
        {'dtype': dtype, 'Tindices': Tindices}));
  }

  Output<T> sparseTensorDenseMatMul<T, Tindices>(
      Output<T> aIndices, Output<T> aValues, Output<int> aShape, Output<T> b,
      {bool adjointA: false, bool adjointB: false}) {
    return addOperation(new OperationDescription(
        'SparseTensorDenseMatMul', 'SparseTensorDenseMatMul', [
      aIndices,
      aValues,
      aShape,
      b
    ], {
      'T': T,
      'Tindices': Tindices,
      'adjoint_a': adjointA,
      'adjoint_b': adjointB
    }));
  }

  Output<T> unsortedSegmentMin<T, Tindices, Tnumsegments>(
      Output<T> data, Output<T> segmentIds, Output<T> numSegments) {
    return addOperation(new OperationDescription(
        'UnsortedSegmentMin',
        'UnsortedSegmentMin',
        [data, segmentIds, numSegments],
        {'T': T, 'Tindices': Tindices, 'Tnumsegments': Tnumsegments}));
  }

  Output<T> segmentMin<T, Tindices>(Output<T> data, Output<T> segmentIds) {
    return addOperation(new OperationDescription('SegmentMin', 'SegmentMin',
        [data, segmentIds], {'T': T, 'Tindices': Tindices}));
  }

  Output resourceSparseApplyRMSProp<T, Tindices>(
      Output var_,
      Output ms,
      Output mom,
      Output<T> lr,
      Output<T> rho,
      Output<T> momentum,
      Output<T> epsilon,
      Output<T> grad,
      Output<T> indices,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyRMSProp',
        'ResourceSparseApplyRMSProp',
        [var_, ms, mom, lr, rho, momentum, epsilon, grad, indices],
        {'T': T, 'Tindices': Tindices, 'use_locking': useLocking}));
  }

  @Deprecated('DEPRECATED at GraphDef version 15: Use IFFT2D')
  Output batchIFFT2D(Output input) {
    return addOperation(
        new OperationDescription('BatchIFFT2D', 'BatchIFFT2D', [input], {}));
  }

  Output<out_type> stringToNumber<out_type>(Output<String> stringTensor) {
    return addOperation(new OperationDescription('StringToNumber',
        'StringToNumber', [stringTensor], {'out_type': out_type}));
  }

  Output<String> decodeJSONExample(Output<String> jsonExamples) {
    return addOperation(new OperationDescription(
        'DecodeJSONExample', 'DecodeJSONExample', [jsonExamples], {}));
  }

  Output<String> serializeTensor<T>(Output<T> tensor) {
    return addOperation(new OperationDescription(
        'SerializeTensor', 'SerializeTensor', [tensor], {'T': T}));
  }

  Output<out_type> parseTensor<out_type>(Output<String> serialized) {
    return addOperation(new OperationDescription(
        'ParseTensor', 'ParseTensor', [serialized], {'out_type': out_type}));
  }

  Output<T> scatterNdNonAliasingAdd<T, Tindices>(
      Output<T> input, Output<T> indices, Output<T> updates) {
    return addOperation(new OperationDescription(
        'ScatterNdNonAliasingAdd',
        'ScatterNdNonAliasingAdd',
        [input, indices, updates],
        {'T': T, 'Tindices': Tindices}));
  }

  Output<T> multinomial<T, output_dtype>(
      Output<T> logits, Output<int> numSamples,
      {int seed: 0, int seed2: 0}) {
    return addOperation(new OperationDescription(
        'Multinomial',
        'Multinomial',
        [logits, numSamples],
        {'seed': seed, 'seed2': seed2, 'T': T, 'output_dtype': output_dtype}));
  }

  Output<String> decodeCompressed(Output<String> bytes,
      {String compressionType}) {
    return addOperation(new OperationDescription('DecodeCompressed',
        'DecodeCompressed', [bytes], {'compression_type': compressionType}));
  }

  Output<int> sdcaFprint(Output<String> input) {
    return addOperation(
        new OperationDescription('SdcaFprint', 'SdcaFprint', [input], {}));
  }

  Output<int> readerNumRecordsProducedV2(Output readerHandle) {
    return addOperation(new OperationDescription('ReaderNumRecordsProducedV2',
        'ReaderNumRecordsProducedV2', [readerHandle], {}));
  }

  Output<out_type> decodeRaw<out_type>(Output<String> bytes,
      {bool littleEndian: true}) {
    return addOperation(new OperationDescription('DecodeRaw', 'DecodeRaw',
        [bytes], {'out_type': out_type, 'little_endian': littleEndian}));
  }

  @Deprecated('DEPRECATED at GraphDef version 15: Use IFFT3D')
  Output batchIFFT3D(Output input) {
    return addOperation(
        new OperationDescription('BatchIFFT3D', 'BatchIFFT3D', [input], {}));
  }

  Output<double> adjustHue(Output<double> images, Output<double> delta) {
    return addOperation(new OperationDescription(
        'AdjustHue', 'AdjustHue', [images, delta], {}));
  }

  @Deprecated('DEPRECATED at GraphDef version 15: Use FFT3D')
  Output batchFFT3D(Output input) {
    return addOperation(
        new OperationDescription('BatchFFT3D', 'BatchFFT3D', [input], {}));
  }

  Output textLineReaderV2(
      {int skipHeaderLines: 0, String container, String sharedName}) {
    return addOperation(
        new OperationDescription('TextLineReaderV2', 'TextLineReaderV2', [], {
      'skip_header_lines': skipHeaderLines,
      'container': container,
      'shared_name': sharedName
    }));
  }

  Output fixedLengthRecordReaderV2(
      {int headerBytes: 0,
      @required int recordBytes,
      int footerBytes: 0,
      int hopBytes: 0,
      String container,
      String sharedName,
      String encoding}) {
    return addOperation(new OperationDescription(
        'FixedLengthRecordReaderV2', 'FixedLengthRecordReaderV2', [], {
      'header_bytes': headerBytes,
      'record_bytes': recordBytes,
      'footer_bytes': footerBytes,
      'hop_bytes': hopBytes,
      'container': container,
      'shared_name': sharedName,
      'encoding': encoding
    }));
  }

  Output identityReaderV2({String container, String sharedName}) {
    return addOperation(new OperationDescription(
        'IdentityReaderV2',
        'IdentityReaderV2',
        [],
        {'container': container, 'shared_name': sharedName}));
  }

  Output<double> iRFFT3D(Output input, Output<int> fftLength) {
    return addOperation(
        new OperationDescription('IRFFT3D', 'IRFFT3D', [input, fftLength], {}));
  }

  Output<double> iRFFT(Output input, Output<int> fftLength) {
    return addOperation(
        new OperationDescription('IRFFT', 'IRFFT', [input, fftLength], {}));
  }

  Output rFFT(Output<double> input, Output<int> fftLength) {
    return addOperation(
        new OperationDescription('RFFT', 'RFFT', [input, fftLength], {}));
  }

  Output iFFT3D(Output input) {
    return addOperation(
        new OperationDescription('IFFT3D', 'IFFT3D', [input], {}));
  }

  Output fFT3D(Output input) {
    return addOperation(
        new OperationDescription('FFT3D', 'FFT3D', [input], {}));
  }

  Output<bool> lessEqual<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('LessEqual', 'LessEqual', [x, y], {'T': T}));
  }

  Output timestamp() {
    return addOperation(
        new OperationDescription('Timestamp', 'Timestamp', [], {}));
  }

  Output stackV2<elem_type>(Output<int> maxSize, {String stackName}) {
    return addOperation(new OperationDescription('StackV2', 'StackV2',
        [maxSize], {'elem_type': elem_type, 'stack_name': stackName}));
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 3: TileGrad has been replaced with reduce_sum')
  Output<T> tileGrad<T>(Output<T> input, Output<int> multiples) {
    return addOperation(new OperationDescription(
        'TileGrad', 'TileGrad', [input, multiples], {'T': T}));
  }

  @Deprecated('DEPRECATED at GraphDef version 15: Use AudioSummaryV2.')
  Output<String> audioSummary(Output<String> tag, Output<double> tensor,
      {@required double sampleRate, int maxOutputs: 3}) {
    return addOperation(new OperationDescription('AudioSummary', 'AudioSummary',
        [tag, tensor], {'sample_rate': sampleRate, 'max_outputs': maxOutputs}));
  }

  Output<T> unbatch<T>(
      Output<T> batchedTensor, Output<int> batchIndex, Output<int> id,
      {@required int timeoutMicros, String container, String sharedName}) {
    return addOperation(new OperationDescription('Unbatch', 'Unbatch', [
      batchedTensor,
      batchIndex,
      id
    ], {
      'timeout_micros': timeoutMicros,
      'container': container,
      'shared_name': sharedName,
      'T': T
    }));
  }

  Output<String> tensorSummaryV2<T>(Output<String> tag, Output<T> tensor,
      Output<String> serializedSummaryMetadata) {
    return addOperation(new OperationDescription('TensorSummaryV2',
        'TensorSummaryV2', [tag, tensor, serializedSummaryMetadata], {'T': T}));
  }

  Output<T> quantizeAndDequantizeV2<T>(
      Output<T> input, Output<T> inputMin, Output<T> inputMax,
      {bool signedInput: true, int numBits: 8, bool rangeGiven: false}) {
    return addOperation(new OperationDescription(
        'QuantizeAndDequantizeV2', 'QuantizeAndDequantizeV2', [
      input,
      inputMin,
      inputMax
    ], {
      'signed_input': signedInput,
      'num_bits': numBits,
      'range_given': rangeGiven,
      'T': T
    }));
  }

  Output<T> transpose<T, Tperm>(Output<T> x, Output<T> perm) {
    return addOperation(new OperationDescription(
        'Transpose', 'Transpose', [x, perm], {'T': T, 'Tperm': Tperm}));
  }

  Output controlTrigger() {
    return addOperation(
        new OperationDescription('ControlTrigger', 'ControlTrigger', [], {}));
  }

  Output<T> parallelDynamicStitch<T>(
      List<Output<int>> indices, List<Output<T>> data,
      {@required int n}) {
    return addOperation(new OperationDescription('ParallelDynamicStitch',
        'ParallelDynamicStitch', [indices, data], {'N': n, 'T': T}));
  }

  Output<T> nextIteration<T>(Output<T> data) {
    return addOperation(new OperationDescription(
        'NextIteration', 'NextIteration', [data], {'T': T}));
  }

  Output initializeTableV2<Tkey, Tval>(
      Output tableHandle, Output<Tkey> keys, Output<Tkey> values) {
    return addOperation(new OperationDescription(
        'InitializeTableV2',
        'InitializeTableV2',
        [tableHandle, keys, values],
        {'Tkey': Tkey, 'Tval': Tval}));
  }

  Output<T> imag<T, Tout>(Output<T> input) {
    return addOperation(new OperationDescription(
        'Imag', 'Imag', [input], {'T': T, 'Tout': Tout}));
  }

  Output<T> oneHot<T, TI>(Output<T> indices, Output<int> depth,
      Output<T> onValue, Output<T> offValue,
      {int axis: -1}) {
    return addOperation(new OperationDescription('OneHot', 'OneHot',
        [indices, depth, onValue, offValue], {'axis': axis, 'T': T, 'TI': TI}));
  }

  Output mutableHashTableOfTensorsV2<key_dtype, value_dtype>(
      {String container,
      String sharedName,
      bool useNodeNameSharing: false,
      List valueShape}) {
    return addOperation(new OperationDescription(
        'MutableHashTableOfTensorsV2', 'MutableHashTableOfTensorsV2', [], {
      'container': container,
      'shared_name': sharedName,
      'use_node_name_sharing': useNodeNameSharing,
      'key_dtype': key_dtype,
      'value_dtype': value_dtype,
      'value_shape': valueShape
    }));
  }

  Output<T> softplus<T>(Output<T> features) {
    return addOperation(
        new OperationDescription('Softplus', 'Softplus', [features], {'T': T}));
  }

  Output mutableHashTableV2<key_dtype, value_dtype>(
      {String container, String sharedName, bool useNodeNameSharing: false}) {
    return addOperation(new OperationDescription(
        'MutableHashTableV2', 'MutableHashTableV2', [], {
      'container': container,
      'shared_name': sharedName,
      'use_node_name_sharing': useNodeNameSharing,
      'key_dtype': key_dtype,
      'value_dtype': value_dtype
    }));
  }

  /// The input `tag` and `value` must have the scalars.
  Output writeScalarSummary<T>(
      Output writer, Output<int> step, Output<String> tag, Output<T> value) {
    return addOperation(new OperationDescription('WriteScalarSummary',
        'WriteScalarSummary', [writer, step, tag, value], {'T': T}));
  }

  Output<String> reduceJoin(Output<String> inputs, Output<int> reductionIndices,
      {bool keepDims: false, String separator}) {
    return addOperation(new OperationDescription(
        'ReduceJoin',
        'ReduceJoin',
        [inputs, reductionIndices],
        {'keep_dims': keepDims, 'separator': separator}));
  }

  Output<String> shardedFilespec(
      Output<String> basename, Output<int> numShards) {
    return addOperation(new OperationDescription(
        'ShardedFilespec', 'ShardedFilespec', [basename, numShards], {}));
  }

  Output iFFT2D(Output input) {
    return addOperation(
        new OperationDescription('IFFT2D', 'IFFT2D', [input], {}));
  }

  Output hashTableV2<key_dtype, value_dtype>(
      {String container, String sharedName, bool useNodeNameSharing: false}) {
    return addOperation(
        new OperationDescription('HashTableV2', 'HashTableV2', [], {
      'container': container,
      'shared_name': sharedName,
      'use_node_name_sharing': useNodeNameSharing,
      'key_dtype': key_dtype,
      'value_dtype': value_dtype
    }));
  }

  Output<T> sparseDenseCwiseDiv<T>(Output<int> spIndices, Output<T> spValues,
      Output<int> spShape, Output<T> dense) {
    return addOperation(new OperationDescription(
        'SparseDenseCwiseDiv',
        'SparseDenseCwiseDiv',
        [spIndices, spValues, spShape, dense],
        {'T': T}));
  }

  Output assignVariableOp<dtype>(Output resource, Output<dtype> value) {
    return addOperation(new OperationDescription('AssignVariableOp',
        'AssignVariableOp', [resource, value], {'dtype': dtype}));
  }

  Output<out_type> variableShape<out_type>(Output input) {
    return addOperation(new OperationDescription(
        'VariableShape', 'VariableShape', [input], {'out_type': out_type}));
  }

  Output tensorListReserve<element_dtype, shape_type>(
      Output<element_dtype> elementShape, Output<int> numElements) {
    return addOperation(new OperationDescription(
        'TensorListReserve',
        'TensorListReserve',
        [elementShape, numElements],
        {'element_dtype': element_dtype, 'shape_type': shape_type}));
  }

  Output<shape_type> tensorListElementShape<shape_type>(Output inputHandle) {
    return addOperation(new OperationDescription('TensorListElementShape',
        'TensorListElementShape', [inputHandle], {'shape_type': shape_type}));
  }

  Output<element_dtype> tensorListStack<element_dtype>(Output inputHandle,
      {int numElements: -1}) {
    return addOperation(new OperationDescription(
        'TensorListStack',
        'TensorListStack',
        [inputHandle],
        {'element_dtype': element_dtype, 'num_elements': numElements}));
  }

  Output emptyTensorList<element_dtype, shape_type>(
      Output<element_dtype> elementShape) {
    return addOperation(new OperationDescription(
        'EmptyTensorList',
        'EmptyTensorList',
        [elementShape],
        {'element_dtype': element_dtype, 'shape_type': shape_type}));
  }

  @Deprecated('DEPRECATED at GraphDef version 13: Use MatrixSolveLs instead.')
  Output<T> batchMatrixSolveLs<T>(
      Output<T> matrix, Output<T> rhs, Output l2Regularizer,
      {bool fast: true}) {
    return addOperation(new OperationDescription(
        'BatchMatrixSolveLs',
        'BatchMatrixSolveLs',
        [matrix, rhs, l2Regularizer],
        {'T': T, 'fast': fast}));
  }

  Output<Tparams> gatherV2<Tparams, Tindices, Taxis>(
      Output<Tparams> params, Output<Tparams> indices, Output<Tparams> axis) {
    return addOperation(new OperationDescription(
        'GatherV2',
        'GatherV2',
        [params, indices, axis],
        {'Tparams': Tparams, 'Tindices': Tindices, 'Taxis': Taxis}));
  }

  @Deprecated('DEPRECATED at GraphDef version 13: Use MatrixSolve instead.')
  Output<T> batchMatrixSolve<T>(Output<T> matrix, Output<T> rhs,
      {bool adjoint: false}) {
    return addOperation(new OperationDescription('BatchMatrixSolve',
        'BatchMatrixSolve', [matrix, rhs], {'adjoint': adjoint, 'T': T}));
  }

  Output<T> sparseSegmentMeanGrad<T, Tidx>(Output<T> grad, Output<T> indices,
      Output<int> segmentIds, Output<int> outputDim0) {
    return addOperation(new OperationDescription(
        'SparseSegmentMeanGrad',
        'SparseSegmentMeanGrad',
        [grad, indices, segmentIds, outputDim0],
        {'T': T, 'Tidx': Tidx}));
  }

  Output<T> pack<T>(List<Output<T>> values, {@required int n, int axis: 0}) {
    return addOperation(new OperationDescription(
        'Pack', 'Pack', [values], {'N': n, 'T': T, 'axis': axis}));
  }

  Output<T> choleskyGrad<T>(Output<T> l, Output<T> grad) {
    return addOperation(new OperationDescription(
        'CholeskyGrad', 'CholeskyGrad', [l, grad], {'T': T}));
  }

  Output<Tparams> gatherNd<Tparams, Tindices>(
      Output<Tparams> params, Output<Tparams> indices) {
    return addOperation(new OperationDescription('GatherNd', 'GatherNd',
        [params, indices], {'Tparams': Tparams, 'Tindices': Tindices}));
  }

  Output queueCloseV2(Output handle, {bool cancelPendingEnqueues: false}) {
    return addOperation(new OperationDescription('QueueCloseV2', 'QueueCloseV2',
        [handle], {'cancel_pending_enqueues': cancelPendingEnqueues}));
  }

  Output<T> matrixExponential<T>(Output<T> input) {
    return addOperation(new OperationDescription(
        'MatrixExponential', 'MatrixExponential', [input], {'T': T}));
  }

  Output<T> matrixDeterminant<T>(Output<T> input) {
    return addOperation(new OperationDescription(
        'MatrixDeterminant', 'MatrixDeterminant', [input], {'T': T}));
  }

  Output<T> shape<T, out_type>(Output<T> input) {
    return addOperation(new OperationDescription(
        'Shape', 'Shape', [input], {'T': T, 'out_type': out_type}));
  }

  Output<T> asinh<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Asinh', 'Asinh', [x], {'T': T}));
  }

  Output<Tin> lookupTableFindV2<Tin, Tout>(
      Output tableHandle, Output<Tin> keys, Output<Tin> defaultValue) {
    return addOperation(new OperationDescription(
        'LookupTableFindV2',
        'LookupTableFindV2',
        [tableHandle, keys, defaultValue],
        {'Tin': Tin, 'Tout': Tout}));
  }

  Output<int> where<T>(Output<T> input) {
    return addOperation(
        new OperationDescription('Where', 'Where', [input], {'T': T}));
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayCloseV3')
  Output tensorArrayCloseV2(Output<String> handle) {
    return addOperation(new OperationDescription(
        'TensorArrayCloseV2', 'TensorArrayCloseV2', [handle], {}));
  }

  Output<String> audioSummaryV2(
      Output<String> tag, Output<double> tensor, Output<double> sampleRate,
      {int maxOutputs: 3}) {
    return addOperation(new OperationDescription(
        'AudioSummaryV2',
        'AudioSummaryV2',
        [tag, tensor, sampleRate],
        {'max_outputs': maxOutputs}));
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayReadV3')
  Output<dtype> tensorArrayReadV2<dtype>(
      Output<String> handle, Output<int> index, Output<double> flowIn) {
    return addOperation(new OperationDescription('TensorArrayReadV2',
        'TensorArrayReadV2', [handle, index, flowIn], {'dtype': dtype}));
  }

  Output readerRestoreStateV2(Output readerHandle, Output<String> state) {
    return addOperation(new OperationDescription('ReaderRestoreStateV2',
        'ReaderRestoreStateV2', [readerHandle, state], {}));
  }

  Output<int> setSize<T>(
      Output<int> setIndices, Output<T> setValues, Output<int> setShape,
      {bool validateIndices: true}) {
    return addOperation(new OperationDescription(
        'SetSize',
        'SetSize',
        [setIndices, setValues, setShape],
        {'validate_indices': validateIndices, 'T': T}));
  }

  @Deprecated('DEPRECATED at GraphDef version 13: Use Cholesky instead.')
  Output<T> batchCholesky<T>(Output<T> input) {
    return addOperation(new OperationDescription(
        'BatchCholesky', 'BatchCholesky', [input], {'T': T}));
  }

  Output<double> resizeArea<T>(Output<T> images, Output<int> size,
      {bool alignCorners: false}) {
    return addOperation(new OperationDescription('ResizeArea', 'ResizeArea',
        [images, size], {'T': T, 'align_corners': alignCorners}));
  }

  Output<T> matrixTriangularSolve<T>(Output<T> matrix, Output<T> rhs,
      {bool lower: true, bool adjoint: false}) {
    return addOperation(new OperationDescription(
        'MatrixTriangularSolve',
        'MatrixTriangularSolve',
        [matrix, rhs],
        {'lower': lower, 'adjoint': adjoint, 'T': T}));
  }

  Output<T> select<T>(Output<bool> condition, Output<T> t, Output<T> e) {
    return addOperation(new OperationDescription(
        'Select', 'Select', [condition, t, e], {'T': T}));
  }

  Output<T> log<T>(Output<T> x) {
    return addOperation(new OperationDescription('Log', 'Log', [x], {'T': T}));
  }

  Output<double> iRFFT2D(Output input, Output<int> fftLength) {
    return addOperation(
        new OperationDescription('IRFFT2D', 'IRFFT2D', [input, fftLength], {}));
  }

  Output mutableDenseHashTableV2<key_dtype, value_dtype>(
      Output<key_dtype> emptyKey,
      {String container,
      String sharedName,
      bool useNodeNameSharing: false,
      List valueShape,
      int initialNumBuckets: 131072,
      double maxLoadFactor: 0.800000011920929}) {
    return addOperation(new OperationDescription(
        'MutableDenseHashTableV2', 'MutableDenseHashTableV2', [
      emptyKey
    ], {
      'container': container,
      'shared_name': sharedName,
      'use_node_name_sharing': useNodeNameSharing,
      'key_dtype': key_dtype,
      'value_dtype': value_dtype,
      'value_shape': valueShape,
      'initial_num_buckets': initialNumBuckets,
      'max_load_factor': maxLoadFactor
    }));
  }

  Output<String> recordInput(
      {@required String filePattern,
      int fileRandomSeed: 301,
      double fileShuffleShiftRatio: 0.0,
      int fileBufferSize: 10000,
      int fileParallelism: 16,
      int batchSize: 32,
      String compressionType}) {
    return addOperation(
        new OperationDescription('RecordInput', 'RecordInput', [], {
      'file_pattern': filePattern,
      'file_random_seed': fileRandomSeed,
      'file_shuffle_shift_ratio': fileShuffleShiftRatio,
      'file_buffer_size': fileBufferSize,
      'file_parallelism': fileParallelism,
      'batch_size': batchSize,
      'compression_type': compressionType
    }));
  }

  Output<dt> restoreSlice<dt>(Output<String> filePattern,
      Output<String> tensorName, Output<String> shapeAndSlice,
      {int preferredShard: -1}) {
    return addOperation(new OperationDescription(
        'RestoreSlice',
        'RestoreSlice',
        [filePattern, tensorName, shapeAndSlice],
        {'dt': dt, 'preferred_shard': preferredShard}));
  }

  Output<bool> notEqual<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('NotEqual', 'NotEqual', [x, y], {'T': T}));
  }

  Output<int> nonMaxSuppression(
      Output<double> boxes, Output<double> scores, Output<int> maxOutputSize,
      {double iouThreshold: 0.5}) {
    return addOperation(new OperationDescription(
        'NonMaxSuppression',
        'NonMaxSuppression',
        [boxes, scores, maxOutputSize],
        {'iou_threshold': iouThreshold}));
  }

  Output<T> batchToSpaceND<T, Tblock_shape, Tcrops>(
      Output<T> input, Output<T> blockShape, Output<T> crops) {
    return addOperation(new OperationDescription(
        'BatchToSpaceND',
        'BatchToSpaceND',
        [input, blockShape, crops],
        {'T': T, 'Tblock_shape': Tblock_shape, 'Tcrops': Tcrops}));
  }

  Output<double> cropAndResizeGradBoxes<T>(Output<double> grads,
      Output<T> image, Output<double> boxes, Output<int> boxInd,
      {String method: 'bilinear'}) {
    return addOperation(new OperationDescription(
        'CropAndResizeGradBoxes',
        'CropAndResizeGradBoxes',
        [grads, image, boxes, boxInd],
        {'T': T, 'method': method}));
  }

  Output<double> extractGlimpse(
      Output<double> input, Output<int> size, Output<double> offsets,
      {bool centered: true, bool normalized: true, bool uniformNoise: true}) {
    return addOperation(new OperationDescription(
        'ExtractGlimpse', 'ExtractGlimpse', [
      input,
      size,
      offsets
    ], {
      'centered': centered,
      'normalized': normalized,
      'uniform_noise': uniformNoise
    }));
  }

  Output<T> rightShift<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('RightShift', 'RightShift', [x, y], {'T': T}));
  }

  Output decodeBmp(Output<String> contents, {int channels: 0}) {
    return addOperation(new OperationDescription(
        'DecodeBmp', 'DecodeBmp', [contents], {'channels': channels}));
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 13: Use MatrixDeterminant instead.')
  Output<T> batchMatrixDeterminant<T>(Output<T> input) {
    return addOperation(new OperationDescription(
        'BatchMatrixDeterminant', 'BatchMatrixDeterminant', [input], {'T': T}));
  }

  @Deprecated('DEPRECATED at GraphDef version 15: Use IFFT')
  Output batchIFFT(Output input) {
    return addOperation(
        new OperationDescription('BatchIFFT', 'BatchIFFT', [input], {}));
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayScatterV3')
  Output<double> tensorArrayScatterV2<T>(Output<String> handle,
      Output<int> indices, Output<T> value, Output<double> flowIn) {
    return addOperation(new OperationDescription('TensorArrayScatterV2',
        'TensorArrayScatterV2', [handle, indices, value, flowIn], {'T': T}));
  }

  Output<T> rGBToHSV<T>(Output<T> images) {
    return addOperation(
        new OperationDescription('RGBToHSV', 'RGBToHSV', [images], {'T': T}));
  }

  Output decodeGif(Output<String> contents) {
    return addOperation(
        new OperationDescription('DecodeGif', 'DecodeGif', [contents], {}));
  }

  Output assignSubVariableOp<dtype>(Output resource, Output<dtype> value) {
    return addOperation(new OperationDescription('AssignSubVariableOp',
        'AssignSubVariableOp', [resource, value], {'dtype': dtype}));
  }

  Output<Tidx> unravelIndex<Tidx>(Output<Tidx> indices, Output<Tidx> dims) {
    return addOperation(new OperationDescription(
        'UnravelIndex', 'UnravelIndex', [indices, dims], {'Tidx': Tidx}));
  }

  Output<T> enter<T>(Output<T> data,
      {@required String frameName,
      bool isConstant: false,
      int parallelIterations: 10}) {
    return addOperation(new OperationDescription('Enter', 'Enter', [
      data
    ], {
      'T': T,
      'frame_name': frameName,
      'is_constant': isConstant,
      'parallel_iterations': parallelIterations
    }));
  }

  Output<String> encodePng<T>(Output<T> image, {int compression: -1}) {
    return addOperation(new OperationDescription('EncodePng', 'EncodePng',
        [image], {'compression': compression, 'T': T}));
  }

  Output<T> serializeManySparse<T, out_type>(Output<int> sparseIndices,
      Output<T> sparseValues, Output<int> sparseShape) {
    return addOperation(new OperationDescription(
        'SerializeManySparse',
        'SerializeManySparse',
        [sparseIndices, sparseValues, sparseShape],
        {'T': T, 'out_type': out_type}));
  }

  Output tensorListFromTensor<element_dtype, shape_type>(
      Output<element_dtype> tensor, Output<element_dtype> elementShape) {
    return addOperation(new OperationDescription(
        'TensorListFromTensor',
        'TensorListFromTensor',
        [tensor, elementShape],
        {'element_dtype': element_dtype, 'shape_type': shape_type}));
  }

  Output<double> adjustSaturation(Output<double> images, Output<double> scale) {
    return addOperation(new OperationDescription(
        'AdjustSaturation', 'AdjustSaturation', [images, scale], {}));
  }

  Output<double> adjustContrastv2(
      Output<double> images, Output<double> contrastFactor) {
    return addOperation(new OperationDescription(
        'AdjustContrastv2', 'AdjustContrastv2', [images, contrastFactor], {}));
  }

  Output<output_type> extractJpegShape<output_type>(Output<String> contents) {
    return addOperation(new OperationDescription('ExtractJpegShape',
        'ExtractJpegShape', [contents], {'output_type': output_type}));
  }

  Output decodeAndCropJpeg(Output<String> contents, Output<int> cropWindow,
      {int channels: 0,
      int ratio: 1,
      bool fancyUpscaling: true,
      bool tryRecoverTruncated: false,
      double acceptableFraction: 1.0,
      String dctMethod}) {
    return addOperation(
        new OperationDescription('DecodeAndCropJpeg', 'DecodeAndCropJpeg', [
      contents,
      cropWindow
    ], {
      'channels': channels,
      'ratio': ratio,
      'fancy_upscaling': fancyUpscaling,
      'try_recover_truncated': tryRecoverTruncated,
      'acceptable_fraction': acceptableFraction,
      'dct_method': dctMethod
    }));
  }

  Output decodeJpeg(Output<String> contents,
      {int channels: 0,
      int ratio: 1,
      bool fancyUpscaling: true,
      bool tryRecoverTruncated: false,
      double acceptableFraction: 1.0,
      String dctMethod}) {
    return addOperation(new OperationDescription('DecodeJpeg', 'DecodeJpeg', [
      contents
    ], {
      'channels': channels,
      'ratio': ratio,
      'fancy_upscaling': fancyUpscaling,
      'try_recover_truncated': tryRecoverTruncated,
      'acceptable_fraction': acceptableFraction,
      'dct_method': dctMethod
    }));
  }

  Output<int> lookupTableSizeV2(Output tableHandle) {
    return addOperation(new OperationDescription(
        'LookupTableSizeV2', 'LookupTableSizeV2', [tableHandle], {}));
  }

  Output lookupTableImportV2<Tin, Tout>(
      Output tableHandle, Output<Tin> keys, Output<Tin> values) {
    return addOperation(new OperationDescription(
        'LookupTableImportV2',
        'LookupTableImportV2',
        [tableHandle, keys, values],
        {'Tin': Tin, 'Tout': Tout}));
  }

  Output tensorArrayCloseV3(Output handle) {
    return addOperation(new OperationDescription(
        'TensorArrayCloseV3', 'TensorArrayCloseV3', [handle], {}));
  }

  Output<T> fractionalMaxPoolGrad<T>(
      Output<T> origInput,
      Output<T> origOutput,
      Output<T> outBackprop,
      Output<int> rowPoolingSequence,
      Output<int> colPoolingSequence,
      {bool overlapping: false}) {
    return addOperation(new OperationDescription(
        'FractionalMaxPoolGrad', 'FractionalMaxPoolGrad', [
      origInput,
      origOutput,
      outBackprop,
      rowPoolingSequence,
      colPoolingSequence
    ], {
      'overlapping': overlapping,
      'T': T
    }));
  }

  Output iteratorSetStatsAggregator(
      Output iteratorHandle, Output statsAggregatorHandle) {
    return addOperation(new OperationDescription(
        'IteratorSetStatsAggregator',
        'IteratorSetStatsAggregator',
        [iteratorHandle, statsAggregatorHandle],
        {}));
  }

  Output<String> encodeJpeg(Output image,
      {String format,
      int quality: 95,
      bool progressive: false,
      bool optimizeSize: false,
      bool chromaDownsampling: true,
      String densityUnit: 'in',
      int xDensity: 300,
      int yDensity: 300,
      String xmpMetadata}) {
    return addOperation(new OperationDescription('EncodeJpeg', 'EncodeJpeg', [
      image
    ], {
      'format': format,
      'quality': quality,
      'progressive': progressive,
      'optimize_size': optimizeSize,
      'chroma_downsampling': chromaDownsampling,
      'density_unit': densityUnit,
      'x_density': xDensity,
      'y_density': yDensity,
      'xmp_metadata': xmpMetadata
    }));
  }

  Output<int> rank<T>(Output<T> input) {
    return addOperation(
        new OperationDescription('Rank', 'Rank', [input], {'T': T}));
  }

  Output resourceScatterUpdate<dtype, Tindices>(
      Output resource, Output<dtype> indices, Output<dtype> updates) {
    return addOperation(new OperationDescription(
        'ResourceScatterUpdate',
        'ResourceScatterUpdate',
        [resource, indices, updates],
        {'dtype': dtype, 'Tindices': Tindices}));
  }

  Output stackCloseV2(Output handle) {
    return addOperation(
        new OperationDescription('StackCloseV2', 'StackCloseV2', [handle], {}));
  }

  Output<T> abs<T>(Output<T> x) {
    return addOperation(new OperationDescription('Abs', 'Abs', [x], {'T': T}));
  }

  Output<Tparams> gather<Tparams, Tindices>(
      Output<Tparams> params, Output<Tparams> indices,
      {bool validateIndices: true}) {
    return addOperation(new OperationDescription('Gather', 'Gather', [
      params,
      indices
    ], {
      'validate_indices': validateIndices,
      'Tparams': Tparams,
      'Tindices': Tindices
    }));
  }

  Output<dtype> tensorArrayReadV3<dtype>(
      Output handle, Output<int> index, Output<double> flowIn) {
    return addOperation(new OperationDescription('TensorArrayReadV3',
        'TensorArrayReadV3', [handle, index, flowIn], {'dtype': dtype}));
  }

  Output resourceSparseApplyFtrlV2<T, Tindices>(
      Output var_,
      Output accum,
      Output linear,
      Output<T> grad,
      Output<T> indices,
      Output<T> lr,
      Output<T> l1,
      Output<T> l2,
      Output<T> l2Shrinkage,
      Output<T> lrPower,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyFtrlV2',
        'ResourceSparseApplyFtrlV2',
        [var_, accum, linear, grad, indices, lr, l1, l2, l2Shrinkage, lrPower],
        {'T': T, 'Tindices': Tindices, 'use_locking': useLocking}));
  }

  Output<String> encodeWav(Output<double> audio, Output<int> sampleRate) {
    return addOperation(new OperationDescription(
        'EncodeWav', 'EncodeWav', [audio, sampleRate], {}));
  }

  Output statsAggregatorHandle({String container, String sharedName}) {
    return addOperation(new OperationDescription(
        'StatsAggregatorHandle',
        'StatsAggregatorHandle',
        [],
        {'container': container, 'shared_name': sharedName}));
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 8: Random crop is now pure Python')
  Output<T> randomCrop<T>(Output<T> image, Output<int> size,
      {int seed: 0, int seed2: 0}) {
    return addOperation(new OperationDescription('RandomCrop', 'RandomCrop',
        [image, size], {'T': T, 'seed': seed, 'seed2': seed2}));
  }

  Output<T> diag<T>(Output<T> diagonal) {
    return addOperation(
        new OperationDescription('Diag', 'Diag', [diagonal], {'T': T}));
  }

  Output<element_dtype> tensorListGetItem<element_dtype>(
      Output inputHandle, Output<int> index) {
    return addOperation(new OperationDescription(
        'TensorListGetItem',
        'TensorListGetItem',
        [inputHandle, index],
        {'element_dtype': element_dtype}));
  }

  Output<T> sparseSegmentSqrtNGrad<T, Tidx>(Output<T> grad, Output<T> indices,
      Output<int> segmentIds, Output<int> outputDim0) {
    return addOperation(new OperationDescription(
        'SparseSegmentSqrtNGrad',
        'SparseSegmentSqrtNGrad',
        [grad, indices, segmentIds, outputDim0],
        {'T': T, 'Tidx': Tidx}));
  }

  Output<bool> varIsInitializedOp(Output resource) {
    return addOperation(new OperationDescription(
        'VarIsInitializedOp', 'VarIsInitializedOp', [resource], {}));
  }

  Output<double> fakeQuantWithMinMaxVarsPerChannel(
      Output<double> inputs, Output<double> min, Output<double> max,
      {int numBits: 8, bool narrowRange: false}) {
    return addOperation(new OperationDescription(
        'FakeQuantWithMinMaxVarsPerChannel',
        'FakeQuantWithMinMaxVarsPerChannel',
        [inputs, min, max],
        {'num_bits': numBits, 'narrow_range': narrowRange}));
  }

  Output resourceSparseApplyAdagradDA<T, Tindices>(
      Output var_,
      Output gradientAccumulator,
      Output gradientSquaredAccumulator,
      Output<T> grad,
      Output<T> indices,
      Output<T> lr,
      Output<T> l1,
      Output<T> l2,
      Output<int> globalStep,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyAdagradDA', 'ResourceSparseApplyAdagradDA', [
      var_,
      gradientAccumulator,
      gradientSquaredAccumulator,
      grad,
      indices,
      lr,
      l1,
      l2,
      globalStep
    ], {
      'T': T,
      'Tindices': Tindices,
      'use_locking': useLocking
    }));
  }

  Output tFRecordDataset(Output<String> filenames,
      Output<String> compressionType, Output<int> bufferSize) {
    return addOperation(new OperationDescription('TFRecordDataset',
        'TFRecordDataset', [filenames, compressionType, bufferSize], {}));
  }

  Output<T> linSpace<T, Tidx>(Output<T> start, Output<T> stop, Output<T> num) {
    return addOperation(new OperationDescription(
        'LinSpace', 'LinSpace', [start, stop, num], {'T': T, 'Tidx': Tidx}));
  }

  Output fixedLengthRecordDataset(
      Output<String> filenames,
      Output<int> headerBytes,
      Output<int> recordBytes,
      Output<int> footerBytes,
      Output<int> bufferSize) {
    return addOperation(new OperationDescription(
        'FixedLengthRecordDataset',
        'FixedLengthRecordDataset',
        [filenames, headerBytes, recordBytes, footerBytes, bufferSize],
        {}));
  }

  Output<T> sinh<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Sinh', 'Sinh', [x], {'T': T}));
  }

  @Deprecated('DEPRECATED at GraphDef version 14: Use MatrixDiag')
  Output<T> batchMatrixDiag<T>(Output<T> diagonal) {
    return addOperation(new OperationDescription(
        'BatchMatrixDiag', 'BatchMatrixDiag', [diagonal], {'T': T}));
  }

  Output<T> segmentSum<T, Tindices>(Output<T> data, Output<T> segmentIds) {
    return addOperation(new OperationDescription('SegmentSum', 'SegmentSum',
        [data, segmentIds], {'T': T, 'Tindices': Tindices}));
  }

  Output textLineDataset(Output<String> filenames,
      Output<String> compressionType, Output<int> bufferSize) {
    return addOperation(new OperationDescription('TextLineDataset',
        'TextLineDataset', [filenames, compressionType, bufferSize], {}));
  }

  Output<T> dataFormatDimMap<T>(Output<T> x,
      {String srcFormat: 'NHWC', String dstFormat: 'NCHW'}) {
    return addOperation(new OperationDescription(
        'DataFormatDimMap',
        'DataFormatDimMap',
        [x],
        {'T': T, 'src_format': srcFormat, 'dst_format': dstFormat}));
  }

  Output<T> sparseSegmentMeanWithNumSegments<T, Tidx, Tnumsegments>(
      Output<T> data,
      Output<T> indices,
      Output<int> segmentIds,
      Output<T> numSegments) {
    return addOperation(new OperationDescription(
        'SparseSegmentMeanWithNumSegments',
        'SparseSegmentMeanWithNumSegments',
        [data, indices, segmentIds, numSegments],
        {'T': T, 'Tidx': Tidx, 'Tnumsegments': Tnumsegments}));
  }

  Output<double> resizeBicubic<T>(Output<T> images, Output<int> size,
      {bool alignCorners: false}) {
    return addOperation(new OperationDescription(
        'ResizeBicubic',
        'ResizeBicubic',
        [images, size],
        {'T': T, 'align_corners': alignCorners}));
  }

  Output<T> hSVToRGB<T>(Output<T> images) {
    return addOperation(
        new OperationDescription('HSVToRGB', 'HSVToRGB', [images], {'T': T}));
  }

  Output<T> maxPoolV2<T>(
      Output<T> input, Output<int> ksize, Output<int> strides,
      {@required String padding, String dataFormat: 'NHWC'}) {
    return addOperation(new OperationDescription(
        'MaxPoolV2',
        'MaxPoolV2',
        [input, ksize, strides],
        {'T': T, 'padding': padding, 'data_format': dataFormat}));
  }

  Output<S> randomPoissonV2<S, R, dtype>(Output<S> shape, Output<S> rate,
      {int seed: 0, int seed2: 0}) {
    return addOperation(new OperationDescription(
        'RandomPoissonV2',
        'RandomPoissonV2',
        [shape, rate],
        {'seed': seed, 'seed2': seed2, 'S': S, 'R': R, 'dtype': dtype}));
  }

  Output<T> unpack<T>(Output<T> value, {@required int num, int axis: 0}) {
    return addOperation(new OperationDescription(
        'Unpack', 'Unpack', [value], {'num': num, 'T': T, 'axis': axis}));
  }

  @Deprecated('DEPRECATED at GraphDef version 13: Use MatrixInverse instead.')
  Output<T> batchMatrixInverse<T>(Output<T> input, {bool adjoint: false}) {
    return addOperation(new OperationDescription('BatchMatrixInverse',
        'BatchMatrixInverse', [input], {'adjoint': adjoint, 'T': T}));
  }

  Output resourceSparseApplyCenteredRMSProp<T, Tindices>(
      Output var_,
      Output mg,
      Output ms,
      Output mom,
      Output<T> lr,
      Output<T> rho,
      Output<T> momentum,
      Output<T> epsilon,
      Output<T> grad,
      Output<T> indices,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyCenteredRMSProp',
        'ResourceSparseApplyCenteredRMSProp',
        [var_, mg, ms, mom, lr, rho, momentum, epsilon, grad, indices],
        {'T': T, 'Tindices': Tindices, 'use_locking': useLocking}));
  }

  Output<int> queueSizeV2(Output handle) {
    return addOperation(
        new OperationDescription('QueueSizeV2', 'QueueSizeV2', [handle], {}));
  }

  Output mergeV2Checkpoints(
      Output<String> checkpointPrefixes, Output<String> destinationPrefix,
      {bool deleteOldDirs: true}) {
    return addOperation(new OperationDescription(
        'MergeV2Checkpoints',
        'MergeV2Checkpoints',
        [checkpointPrefixes, destinationPrefix],
        {'delete_old_dirs': deleteOldDirs}));
  }

  Output<T> addN<T>(List<Output<T>> inputs, {@required int n}) {
    return addOperation(
        new OperationDescription('AddN', 'AddN', [inputs], {'N': n, 'T': T}));
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayV3')
  Output<String> tensorArrayV2<dtype>(Output<int> size,
      {List elementShape,
      bool dynamicSize: false,
      bool clearAfterRead: true,
      String tensorArrayName}) {
    return addOperation(
        new OperationDescription('TensorArrayV2', 'TensorArrayV2', [
      size
    ], {
      'dtype': dtype,
      'element_shape': elementShape,
      'dynamic_size': dynamicSize,
      'clear_after_read': clearAfterRead,
      'tensor_array_name': tensorArrayName
    }));
  }

  Output<Tidx> range<Tidx>(
      Output<Tidx> start, Output<Tidx> limit, Output<Tidx> delta) {
    return addOperation(new OperationDescription(
        'Range', 'Range', [start, limit, delta], {'Tidx': Tidx}));
  }

  Output sparseTensorSliceDataset<Tvalues>(
      Output<int> indices, Output<Tvalues> values, Output<int> denseShape) {
    return addOperation(new OperationDescription(
        'SparseTensorSliceDataset',
        'SparseTensorSliceDataset',
        [indices, values, denseShape],
        {'Tvalues': Tvalues}));
  }

  Output<double> tensorArrayWriteV3<T>(Output handle, Output<int> index,
      Output<T> value, Output<double> flowIn) {
    return addOperation(new OperationDescription('TensorArrayWriteV3',
        'TensorArrayWriteV3', [handle, index, value, flowIn], {'T': T}));
  }

  Output<String> histogramSummary<T>(Output<String> tag, Output<T> values) {
    return addOperation(new OperationDescription(
        'HistogramSummary', 'HistogramSummary', [tag, values], {'T': T}));
  }

  Output<elem_type> stackPopV2<elem_type>(Output handle) {
    return addOperation(new OperationDescription(
        'StackPopV2', 'StackPopV2', [handle], {'elem_type': elem_type}));
  }

  Output<T> lRN<T>(Output<T> input,
      {int depthRadius: 5,
      double bias: 1.0,
      double alpha: 1.0,
      double beta: 0.5}) {
    return addOperation(new OperationDescription('LRN', 'LRN', [
      input
    ], {
      'depth_radius': depthRadius,
      'bias': bias,
      'alpha': alpha,
      'beta': beta,
      'T': T
    }));
  }

  Output<String> statsAggregatorSummary(Output iterator) {
    return addOperation(new OperationDescription(
        'StatsAggregatorSummary', 'StatsAggregatorSummary', [iterator], {}));
  }

  Output<bool> equal<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('Equal', 'Equal', [x, y], {'T': T}));
  }

  Output lookupTableInsertV2<Tin, Tout>(
      Output tableHandle, Output<Tin> keys, Output<Tin> values) {
    return addOperation(new OperationDescription(
        'LookupTableInsertV2',
        'LookupTableInsertV2',
        [tableHandle, keys, values],
        {'Tin': Tin, 'Tout': Tout}));
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArraySplitV3')
  Output<double> tensorArraySplitV2<T>(Output<String> handle, Output<T> value,
      Output<int> lengths, Output<double> flowIn) {
    return addOperation(new OperationDescription('TensorArraySplitV2',
        'TensorArraySplitV2', [handle, value, lengths, flowIn], {'T': T}));
  }

  @Deprecated('DEPRECATED at GraphDef version 15: Use FFT2D')
  Output batchFFT2D(Output input) {
    return addOperation(
        new OperationDescription('BatchFFT2D', 'BatchFFT2D', [input], {}));
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 11: Use SelfAdjointEigV2 instead.')
  Output<T> selfAdjointEig<T>(Output<T> input) {
    return addOperation(new OperationDescription(
        'SelfAdjointEig', 'SelfAdjointEig', [input], {'T': T}));
  }

  Output readerResetV2(Output readerHandle) {
    return addOperation(new OperationDescription(
        'ReaderResetV2', 'ReaderResetV2', [readerHandle], {}));
  }

  Output rFFT2D(Output<double> input, Output<int> fftLength) {
    return addOperation(
        new OperationDescription('RFFT2D', 'RFFT2D', [input, fftLength], {}));
  }

  Output<bool> less<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('Less', 'Less', [x, y], {'T': T}));
  }

  Output createSummaryFileWriter(
      Output writer,
      Output<String> logdir,
      Output<int> maxQueue,
      Output<int> flushMillis,
      Output<String> filenameSuffix) {
    return addOperation(new OperationDescription(
        'CreateSummaryFileWriter',
        'CreateSummaryFileWriter',
        [writer, logdir, maxQueue, flushMillis, filenameSuffix],
        {}));
  }

  Output<bool> queueIsClosedV2(Output handle) {
    return addOperation(new OperationDescription(
        'QueueIsClosedV2', 'QueueIsClosedV2', [handle], {}));
  }

  Output<T> sparseReduceSum<T>(Output<int> inputIndices, Output<T> inputValues,
      Output<int> inputShape, Output<int> reductionAxes,
      {bool keepDims: false}) {
    return addOperation(new OperationDescription(
        'SparseReduceSum',
        'SparseReduceSum',
        [inputIndices, inputValues, inputShape, reductionAxes],
        {'keep_dims': keepDims, 'T': T}));
  }

  Output<T> zeta<T>(Output<T> x, Output<T> q) {
    return addOperation(
        new OperationDescription('Zeta', 'Zeta', [x, q], {'T': T}));
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayGradV3')
  Output<String> tensorArrayGradV2(Output<String> handle, Output<double> flowIn,
      {@required String source}) {
    return addOperation(new OperationDescription('TensorArrayGradV2',
        'TensorArrayGradV2', [handle, flowIn], {'source': source}));
  }

  Output<T> shapeN<T, out_type>(List<Output<T>> input, {@required int n}) {
    return addOperation(new OperationDescription(
        'ShapeN', 'ShapeN', [input], {'N': n, 'T': T, 'out_type': out_type}));
  }

  Output<String> imageSummary<T>(Output<String> tag, Output<T> tensor,
      {int maxImages: 3, Output badColor}) {
    return addOperation(new OperationDescription(
        'ImageSummary',
        'ImageSummary',
        [tag, tensor],
        {'max_images': maxImages, 'T': T, 'bad_color': badColor}));
  }

  Output wholeFileReaderV2({String container, String sharedName}) {
    return addOperation(new OperationDescription(
        'WholeFileReaderV2',
        'WholeFileReaderV2',
        [],
        {'container': container, 'shared_name': sharedName}));
  }

  Output<double> mfcc(Output<double> spectrogram, Output<int> sampleRate,
      {double upperFrequencyLimit: 4000.0,
      double lowerFrequencyLimit: 20.0,
      int filterbankChannelCount: 40,
      int dctCoefficientCount: 13}) {
    return addOperation(new OperationDescription('Mfcc', 'Mfcc', [
      spectrogram,
      sampleRate
    ], {
      'upper_frequency_limit': upperFrequencyLimit,
      'lower_frequency_limit': lowerFrequencyLimit,
      'filterbank_channel_count': filterbankChannelCount,
      'dct_coefficient_count': dctCoefficientCount
    }));
  }

  @Deprecated('DEPRECATED at GraphDef version 14: Use MatrixDiagPart')
  Output<T> batchMatrixDiagPart<T>(Output<T> input) {
    return addOperation(new OperationDescription(
        'BatchMatrixDiagPart', 'BatchMatrixDiagPart', [input], {'T': T}));
  }

  @Deprecated('DEPRECATED at GraphDef version 2: Use AdjustContrastv2 instead')
  Output<double> adjustContrast<T>(
      Output<T> images,
      Output<double> contrastFactor,
      Output<double> minValue,
      Output<double> maxValue) {
    return addOperation(new OperationDescription(
        'AdjustContrast',
        'AdjustContrast',
        [images, contrastFactor, minValue, maxValue],
        {'T': T}));
  }

  Output<T> resizeNearestNeighbor<T>(Output<T> images, Output<int> size,
      {bool alignCorners: false}) {
    return addOperation(new OperationDescription(
        'ResizeNearestNeighbor',
        'ResizeNearestNeighbor',
        [images, size],
        {'T': T, 'align_corners': alignCorners}));
  }

  Output<T> atanh<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Atanh', 'Atanh', [x], {'T': T}));
  }

  Output makeIterator(Output dataset, Output iterator) {
    return addOperation(new OperationDescription(
        'MakeIterator', 'MakeIterator', [dataset, iterator], {}));
  }

  Output<dtype> parameterizedTruncatedNormal<dtype, T>(
      Output<dtype> shape,
      Output<dtype> means,
      Output<dtype> stdevs,
      Output<dtype> minvals,
      Output<dtype> maxvals,
      {int seed: 0,
      int seed2: 0}) {
    return addOperation(new OperationDescription(
        'ParameterizedTruncatedNormal',
        'ParameterizedTruncatedNormal',
        [shape, means, stdevs, minvals, maxvals],
        {'seed': seed, 'seed2': seed2, 'dtype': dtype, 'T': T}));
  }

  Output assignAddVariableOp<dtype>(Output resource, Output<dtype> value) {
    return addOperation(new OperationDescription('AssignAddVariableOp',
        'AssignAddVariableOp', [resource, value], {'dtype': dtype}));
  }

  Output<bool> isNan<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('IsNan', 'IsNan', [x], {'T': T}));
  }

  Output tensorListPushBack<element_dtype>(
      Output inputHandle, Output<element_dtype> tensor) {
    return addOperation(new OperationDescription(
        'TensorListPushBack',
        'TensorListPushBack',
        [inputHandle, tensor],
        {'element_dtype': element_dtype}));
  }

  Output<T> reciprocalGrad<T>(Output<T> y, Output<T> dy) {
    return addOperation(new OperationDescription(
        'ReciprocalGrad', 'ReciprocalGrad', [y, dy], {'T': T}));
  }

  Output deleteSessionTensor(Output<String> handle) {
    return addOperation(new OperationDescription(
        'DeleteSessionTensor', 'DeleteSessionTensor', [handle], {}));
  }

  Output getSessionHandleV2<T>(Output<T> value) {
    return addOperation(new OperationDescription(
        'GetSessionHandleV2', 'GetSessionHandleV2', [value], {'T': T}));
  }

  @Deprecated('DEPRECATED at GraphDef version 14: Use MatrixBandPart')
  Output<T> batchMatrixBandPart<T>(
      Output<T> input, Output<int> numLower, Output<int> numUpper) {
    return addOperation(new OperationDescription('BatchMatrixBandPart',
        'BatchMatrixBandPart', [input, numLower, numUpper], {'T': T}));
  }

  Output<T> div<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('Div', 'Div', [x, y], {'T': T}));
  }

  /// Also removes it from the resource manager. To reopen, use another
  /// CreateSummaryFileWriter op.
  Output closeSummaryWriter(Output writer) {
    return addOperation(new OperationDescription(
        'CloseSummaryWriter', 'CloseSummaryWriter', [writer], {}));
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArraySizeV3')
  Output<int> tensorArraySizeV2(Output<String> handle, Output<double> flowIn) {
    return addOperation(new OperationDescription(
        'TensorArraySizeV2', 'TensorArraySizeV2', [handle, flowIn], {}));
  }

  Output<T> floorMod<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('FloorMod', 'FloorMod', [x, y], {'T': T}));
  }

  Output<String> matchingFiles(Output<String> pattern) {
    return addOperation(new OperationDescription(
        'MatchingFiles', 'MatchingFiles', [pattern], {}));
  }

  Output<dt> restore<dt>(Output<String> filePattern, Output<String> tensorName,
      {int preferredShard: -1}) {
    return addOperation(new OperationDescription(
        'Restore',
        'Restore',
        [filePattern, tensorName],
        {'dt': dt, 'preferred_shard': preferredShard}));
  }

  Output<T> tanh<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Tanh', 'Tanh', [x], {'T': T}));
  }

  Output<T> cropAndResizeGradImage<T>(Output<double> grads,
      Output<double> boxes, Output<int> boxInd, Output<int> imageSize,
      {String method: 'bilinear'}) {
    return addOperation(new OperationDescription(
        'CropAndResizeGradImage',
        'CropAndResizeGradImage',
        [grads, boxes, boxInd, imageSize],
        {'T': T, 'method': method}));
  }

  Output varHandleOp<dtype>(
      {String container, String sharedName, @required List shape}) {
    return addOperation(
        new OperationDescription('VarHandleOp', 'VarHandleOp', [], {
      'container': container,
      'shared_name': sharedName,
      'dtype': dtype,
      'shape': shape
    }));
  }

  Output rFFT3D(Output<double> input, Output<int> fftLength) {
    return addOperation(
        new OperationDescription('RFFT3D', 'RFFT3D', [input, fftLength], {}));
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayGatherV3')
  Output<dtype> tensorArrayGatherV2<dtype>(
      Output<String> handle, Output<int> indices, Output<double> flowIn,
      {List elementShape}) {
    return addOperation(new OperationDescription(
        'TensorArrayGatherV2',
        'TensorArrayGatherV2',
        [handle, indices, flowIn],
        {'dtype': dtype, 'element_shape': elementShape}));
  }

  Output<T> dynamicPartition<T>(Output<T> data, Output<int> partitions,
      {@required int numPartitions}) {
    return addOperation(new OperationDescription(
        'DynamicPartition',
        'DynamicPartition',
        [data, partitions],
        {'num_partitions': numPartitions, 'T': T}));
  }

  Output<T> tanhGrad<T>(Output<T> y, Output<T> dy) {
    return addOperation(
        new OperationDescription('TanhGrad', 'TanhGrad', [y, dy], {'T': T}));
  }

  Output<bool> loopCond(Output<bool> input) {
    return addOperation(
        new OperationDescription('LoopCond', 'LoopCond', [input], {}));
  }

  Output<T> sparseReduceMax<T>(Output<int> inputIndices, Output<T> inputValues,
      Output<int> inputShape, Output<int> reductionAxes,
      {bool keepDims: false}) {
    return addOperation(new OperationDescription(
        'SparseReduceMax',
        'SparseReduceMax',
        [inputIndices, inputValues, inputShape, reductionAxes],
        {'keep_dims': keepDims, 'T': T}));
  }

  Output<T> unsortedSegmentMax<T, Tindices, Tnumsegments>(
      Output<T> data, Output<T> segmentIds, Output<T> numSegments) {
    return addOperation(new OperationDescription(
        'UnsortedSegmentMax',
        'UnsortedSegmentMax',
        [data, segmentIds, numSegments],
        {'T': T, 'Tindices': Tindices, 'Tnumsegments': Tnumsegments}));
  }

  Output<double> audioSpectrogram(Output<double> input,
      {@required int windowSize,
      @required int stride,
      bool magnitudeSquared: false}) {
    return addOperation(
        new OperationDescription('AudioSpectrogram', 'AudioSpectrogram', [
      input
    ], {
      'window_size': windowSize,
      'stride': stride,
      'magnitude_squared': magnitudeSquared
    }));
  }

  Output<int> tensorArraySizeV3(Output handle, Output<double> flowIn) {
    return addOperation(new OperationDescription(
        'TensorArraySizeV3', 'TensorArraySizeV3', [handle, flowIn], {}));
  }

  Output<String> mergeSummary(List<Output<String>> inputs, {@required int n}) {
    return addOperation(new OperationDescription(
        'MergeSummary', 'MergeSummary', [inputs], {'N': n}));
  }

  Output fFT(Output input) {
    return addOperation(new OperationDescription('FFT', 'FFT', [input], {}));
  }

  Output resourceApplyAdadelta<T>(Output var_, Output accum, Output accumUpdate,
      Output<T> lr, Output<T> rho, Output<T> epsilon, Output<T> grad,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyAdadelta',
        'ResourceApplyAdadelta',
        [var_, accum, accumUpdate, lr, rho, epsilon, grad],
        {'T': T, 'use_locking': useLocking}));
  }

  Output<T> floorDiv<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('FloorDiv', 'FloorDiv', [x, y], {'T': T}));
  }

  Output<T> square<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Square', 'Square', [x], {'T': T}));
  }

  Output<double> tensorArrayScatterV3<T>(Output handle, Output<int> indices,
      Output<T> value, Output<double> flowIn) {
    return addOperation(new OperationDescription('TensorArrayScatterV3',
        'TensorArrayScatterV3', [handle, indices, value, flowIn], {'T': T}));
  }

  Output<T> biasAddV1<T>(Output<T> value, Output<T> bias) {
    return addOperation(new OperationDescription(
        'BiasAddV1', 'BiasAddV1', [value, bias], {'T': T}));
  }

  Output<bool> logicalOr(Output<bool> x, Output<bool> y) {
    return addOperation(
        new OperationDescription('LogicalOr', 'LogicalOr', [x, y], {}));
  }

  Output tFRecordReaderV2(
      {String container, String sharedName, String compressionType}) {
    return addOperation(
        new OperationDescription('TFRecordReaderV2', 'TFRecordReaderV2', [], {
      'container': container,
      'shared_name': sharedName,
      'compression_type': compressionType
    }));
  }

  Output<T> dynamicStitch<T>(List<Output<int>> indices, List<Output<T>> data,
      {@required int n}) {
    return addOperation(new OperationDescription(
        'DynamicStitch', 'DynamicStitch', [indices, data], {'N': n, 'T': T}));
  }

  Output<T> complexAbs<T, Tout>(Output<T> x) {
    return addOperation(new OperationDescription(
        'ComplexAbs', 'ComplexAbs', [x], {'T': T, 'Tout': Tout}));
  }

  Output<T> serializeSparse<T, out_type>(Output<int> sparseIndices,
      Output<T> sparseValues, Output<int> sparseShape) {
    return addOperation(new OperationDescription(
        'SerializeSparse',
        'SerializeSparse',
        [sparseIndices, sparseValues, sparseShape],
        {'T': T, 'out_type': out_type}));
  }

  Output<T> bitwiseXor<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('BitwiseXor', 'BitwiseXor', [x, y], {'T': T}));
  }

  Output tensorListSetItem<element_dtype>(
      Output inputHandle, Output<int> index, Output<element_dtype> item) {
    return addOperation(new OperationDescription(
        'TensorListSetItem',
        'TensorListSetItem',
        [inputHandle, index, item],
        {'element_dtype': element_dtype}));
  }

  @Deprecated('DEPRECATED at GraphDef version 15: Use FFT')
  Output batchFFT(Output input) {
    return addOperation(
        new OperationDescription('BatchFFT', 'BatchFFT', [input], {}));
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 11: Use SelfAdjointEigV2 instead.')
  Output<T> batchSelfAdjointEig<T>(Output<T> input) {
    return addOperation(new OperationDescription(
        'BatchSelfAdjointEig', 'BatchSelfAdjointEig', [input], {'T': T}));
  }

  Output<T> minimum<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('Minimum', 'Minimum', [x, y], {'T': T}));
  }

  Output<double> tensorArraySplitV3<T>(Output handle, Output<T> value,
      Output<int> lengths, Output<double> flowIn) {
    return addOperation(new OperationDescription('TensorArraySplitV3',
        'TensorArraySplitV3', [handle, value, lengths, flowIn], {'T': T}));
  }

  Output resourceSparseApplyProximalGradientDescent<T, Tindices>(
      Output var_,
      Output<T> alpha,
      Output<T> l1,
      Output<T> l2,
      Output<T> grad,
      Output<T> indices,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyProximalGradientDescent',
        'ResourceSparseApplyProximalGradientDescent',
        [var_, alpha, l1, l2, grad, indices],
        {'T': T, 'Tindices': Tindices, 'use_locking': useLocking}));
  }

  Output<T> sparseSegmentSum<T, Tidx>(
      Output<T> data, Output<T> indices, Output<int> segmentIds) {
    return addOperation(new OperationDescription(
        'SparseSegmentSum',
        'SparseSegmentSum',
        [data, indices, segmentIds],
        {'T': T, 'Tidx': Tidx}));
  }

  Output<T> rint<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Rint', 'Rint', [x], {'T': T}));
  }

  Output abort({String errorMsg, bool exitWithoutError: false}) {
    return addOperation(new OperationDescription('Abort', 'Abort', [],
        {'error_msg': errorMsg, 'exit_without_error': exitWithoutError}));
  }

  Output<String> shardedFilename(
      Output<String> basename, Output<int> shard, Output<int> numShards) {
    return addOperation(new OperationDescription('ShardedFilename',
        'ShardedFilename', [basename, shard, numShards], {}));
  }

  Output<T> matrixInverse<T>(Output<T> input, {bool adjoint: false}) {
    return addOperation(new OperationDescription('MatrixInverse',
        'MatrixInverse', [input], {'adjoint': adjoint, 'T': T}));
  }

  @Deprecated('DEPRECATED at GraphDef version 25: Replaced by RandomPoissonV2')
  Output<S> randomPoisson<S, dtype>(Output<S> shape, Output<S> rate,
      {int seed: 0, int seed2: 0}) {
    return addOperation(new OperationDescription(
        'RandomPoisson',
        'RandomPoisson',
        [shape, rate],
        {'seed': seed, 'seed2': seed2, 'S': S, 'dtype': dtype}));
  }

  Output noOp() {
    return addOperation(new OperationDescription('NoOp', 'NoOp', [], {}));
  }

  Output<double> loadAndRemapMatrix(
      Output<String> ckptPath,
      Output<String> oldTensorName,
      Output<int> rowRemapping,
      Output<int> colRemapping,
      Output<double> initializingValues,
      {@required int numRows,
      @required int numCols,
      int maxRowsInMemory: -1}) {
    return addOperation(new OperationDescription(
        'LoadAndRemapMatrix', 'LoadAndRemapMatrix', [
      ckptPath,
      oldTensorName,
      rowRemapping,
      colRemapping,
      initializingValues
    ], {
      'num_rows': numRows,
      'num_cols': numCols,
      'max_rows_in_memory': maxRowsInMemory
    }));
  }

  Output<T> spaceToBatchND<T, Tblock_shape, Tpaddings>(
      Output<T> input, Output<T> blockShape, Output<T> paddings) {
    return addOperation(new OperationDescription(
        'SpaceToBatchND',
        'SpaceToBatchND',
        [input, blockShape, paddings],
        {'T': T, 'Tblock_shape': Tblock_shape, 'Tpaddings': Tpaddings}));
  }

  Output<T> resizeNearestNeighborGrad<T>(Output<T> grads, Output<int> size,
      {bool alignCorners: false}) {
    return addOperation(new OperationDescription(
        'ResizeNearestNeighborGrad',
        'ResizeNearestNeighborGrad',
        [grads, size],
        {'T': T, 'align_corners': alignCorners}));
  }

  Output<double> resizeBilinear<T>(Output<T> images, Output<int> size,
      {bool alignCorners: false}) {
    return addOperation(new OperationDescription(
        'ResizeBilinear',
        'ResizeBilinear',
        [images, size],
        {'T': T, 'align_corners': alignCorners}));
  }

  Output<double> fakeQuantWithMinMaxVars(
      Output<double> inputs, Output<double> min, Output<double> max,
      {int numBits: 8, bool narrowRange: false}) {
    return addOperation(new OperationDescription(
        'FakeQuantWithMinMaxVars',
        'FakeQuantWithMinMaxVars',
        [inputs, min, max],
        {'num_bits': numBits, 'narrow_range': narrowRange}));
  }

  Output<bool> logicalNot(Output<bool> x) {
    return addOperation(
        new OperationDescription('LogicalNot', 'LogicalNot', [x], {}));
  }

  Output iFFT(Output input) {
    return addOperation(new OperationDescription('IFFT', 'IFFT', [input], {}));
  }

  Output<T> atan<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Atan', 'Atan', [x], {'T': T}));
  }

  Output<double> fakeQuantWithMinMaxArgsGradient(
      Output<double> gradients, Output<double> inputs,
      {double min: -6.0,
      double max: 6.0,
      int numBits: 8,
      bool narrowRange: false}) {
    return addOperation(new OperationDescription(
        'FakeQuantWithMinMaxArgsGradient', 'FakeQuantWithMinMaxArgsGradient', [
      gradients,
      inputs
    ], {
      'min': min,
      'max': max,
      'num_bits': numBits,
      'narrow_range': narrowRange
    }));
  }

  Output<int> tensorListLength(Output inputHandle) {
    return addOperation(new OperationDescription(
        'TensorListLength', 'TensorListLength', [inputHandle], {}));
  }

  Output<T> pow<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('Pow', 'Pow', [x, y], {'T': T}));
  }

  Output<T> stackPushV2<T>(Output handle, Output<T> elem,
      {bool swapMemory: false}) {
    return addOperation(new OperationDescription('StackPushV2', 'StackPushV2',
        [handle, elem], {'T': T, 'swap_memory': swapMemory}));
  }

  Output mutexLock(Output mutex) {
    return addOperation(
        new OperationDescription('MutexLock', 'MutexLock', [mutex], {}));
  }

  Output fFT2D(Output input) {
    return addOperation(
        new OperationDescription('FFT2D', 'FFT2D', [input], {}));
  }

  Output mutexV2({String container, String sharedName}) {
    return addOperation(new OperationDescription('MutexV2', 'MutexV2', [],
        {'container': container, 'shared_name': sharedName}));
  }

  Output<int> nonMaxSuppressionV2(Output<double> boxes, Output<double> scores,
      Output<int> maxOutputSize, Output<double> iouThreshold) {
    return addOperation(new OperationDescription(
        'NonMaxSuppressionV2',
        'NonMaxSuppressionV2',
        [boxes, scores, maxOutputSize, iouThreshold],
        {}));
  }

  Output<T> drawBoundingBoxes<T>(Output<T> images, Output<double> boxes) {
    return addOperation(new OperationDescription(
        'DrawBoundingBoxes', 'DrawBoundingBoxes', [images, boxes], {'T': T}));
  }

  Output initializeTableFromTextFileV2(
      Output tableHandle, Output<String> filename,
      {@required int keyIndex,
      @required int valueIndex,
      int vocabSize: -1,
      String delimiter: '	'}) {
    return addOperation(new OperationDescription(
        'InitializeTableFromTextFileV2', 'InitializeTableFromTextFileV2', [
      tableHandle,
      filename
    ], {
      'key_index': keyIndex,
      'value_index': valueIndex,
      'vocab_size': vocabSize,
      'delimiter': delimiter
    }));
  }

  Output<T> exit<T>(Output<T> data) {
    return addOperation(
        new OperationDescription('Exit', 'Exit', [data], {'T': T}));
  }

  Output<T> cumprod<T, Tidx>(Output<T> x, Output<T> axis,
      {bool exclusive: false, bool reverse: false}) {
    return addOperation(new OperationDescription(
        'Cumprod',
        'Cumprod',
        [x, axis],
        {'exclusive': exclusive, 'reverse': reverse, 'T': T, 'Tidx': Tidx}));
  }

  Output<T> reverseSequence<T, Tlen>(Output<T> input, Output<T> seqLengths,
      {@required int seqDim, int batchDim: 0}) {
    return addOperation(new OperationDescription(
        'ReverseSequence',
        'ReverseSequence',
        [input, seqLengths],
        {'seq_dim': seqDim, 'batch_dim': batchDim, 'T': T, 'Tlen': Tlen}));
  }

  Output<dtype> tensorArrayGatherV3<dtype>(
      Output handle, Output<int> indices, Output<double> flowIn,
      {List elementShape}) {
    return addOperation(new OperationDescription(
        'TensorArrayGatherV3',
        'TensorArrayGatherV3',
        [handle, indices, flowIn],
        {'dtype': dtype, 'element_shape': elementShape}));
  }

  Output<bool> greater<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('Greater', 'Greater', [x, y], {'T': T}));
  }

  Output<int> stringToHashBucketFast(Output<String> input,
      {@required int numBuckets}) {
    return addOperation(new OperationDescription('StringToHashBucketFast',
        'StringToHashBucketFast', [input], {'num_buckets': numBuckets}));
  }

  Output<T> unbatchGrad<T>(Output<T> originalInput, Output<int> batchIndex,
      Output<T> grad, Output<int> id,
      {String container, String sharedName}) {
    return addOperation(new OperationDescription(
        'UnbatchGrad',
        'UnbatchGrad',
        [originalInput, batchIndex, grad, id],
        {'container': container, 'shared_name': sharedName, 'T': T}));
  }

  Output<T> argMin<T, Tidx, output_type>(Output<T> input, Output<T> dimension) {
    return addOperation(new OperationDescription(
        'ArgMin',
        'ArgMin',
        [input, dimension],
        {'T': T, 'Tidx': Tidx, 'output_type': output_type}));
  }

  Output<T> reciprocal<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Reciprocal', 'Reciprocal', [x], {'T': T}));
  }

  Output<int> readerNumWorkUnitsCompletedV2(Output readerHandle) {
    return addOperation(new OperationDescription(
        'ReaderNumWorkUnitsCompletedV2',
        'ReaderNumWorkUnitsCompletedV2',
        [readerHandle],
        {}));
  }

  Output<T> unsortedSegmentProd<T, Tindices, Tnumsegments>(
      Output<T> data, Output<T> segmentIds, Output<T> numSegments) {
    return addOperation(new OperationDescription(
        'UnsortedSegmentProd',
        'UnsortedSegmentProd',
        [data, segmentIds, numSegments],
        {'T': T, 'Tindices': Tindices, 'Tnumsegments': Tnumsegments}));
  }

  Output<bool> inTopK<T>(Output<double> predictions, Output<T> targets,
      {@required int k}) {
    return addOperation(new OperationDescription(
        'InTopK', 'InTopK', [predictions, targets], {'k': k, 'T': T}));
  }

  Output<T> sub<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('Sub', 'Sub', [x, y], {'T': T}));
  }

  Output<T> angle<T, Tout>(Output<T> input) {
    return addOperation(new OperationDescription(
        'Angle', 'Angle', [input], {'T': T, 'Tout': Tout}));
  }

  Output<String> iteratorToStringHandle(Output resourceHandle) {
    return addOperation(new OperationDescription('IteratorToStringHandle',
        'IteratorToStringHandle', [resourceHandle], {}));
  }

  Output<T> conjugateTranspose<T, Tperm>(Output<T> x, Output<T> perm) {
    return addOperation(new OperationDescription('ConjugateTranspose',
        'ConjugateTranspose', [x, perm], {'T': T, 'Tperm': Tperm}));
  }
}
