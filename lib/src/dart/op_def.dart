// GENERATED CODE. DO NOT MODIFY BY HAND.

part of tensorflow;

class Graph extends _Graph {
  Output<tensor_type> recv<tensor_type, tensor_name, send_device,
      send_device_incarnation, recv_device, client_terminated>() {
    return addOperation(new OperationDescription('_Recv', '_Recv', []));
  }

  Output<T> while_<T, cond, body>(Output<T> input) {
    return addOperation(new OperationDescription('_While', '_While', [input]));
  }

  Output<Tcond> if_<Tcond, Tin, Tout, then_branch, else_branch>(
      Output<Tcond> cond, Output<Tin> input) {
    return addOperation(new OperationDescription('_If', '_If', [cond, input]));
  }

  Output<Tin> remoteCall<Tin, Tout, f>(
      Output<String> target, Output<Tin> args) {
    return addOperation(
        new OperationDescription('RemoteCall', 'RemoteCall', [target, args]));
  }

  Output<Tin> symbolicGradient<Tin, Tout, f>(Output<Tin> input) {
    return addOperation(new OperationDescription(
        'SymbolicGradient', 'SymbolicGradient', [input]));
  }

  Output<T> arrayToList<T, N, out_types>(Output<T> input) {
    return addOperation(
        new OperationDescription('_ArrayToList', '_ArrayToList', [input]));
  }

  Output<Tin> listToArray<Tin, T, N>(Output<Tin> input) {
    return addOperation(
        new OperationDescription('_ListToArray', '_ListToArray', [input]));
  }

  Output retval<T, index>(Output<T> input) {
    return addOperation(
        new OperationDescription('_Retval', '_Retval', [input]));
  }

  Output<T> arg<T, index>() {
    return addOperation(new OperationDescription('_Arg', '_Arg', []));
  }

  Output<double> quantizedBatchNormWithGlobalNormalization<Tinput, out_type,
          variance_epsilon, scale_after_normalization>(
      Output<Tinput> t,
      Output<double> tMin,
      Output<double> tMax,
      Output<out_type> m,
      Output<double> mMin,
      Output<double> mMax,
      Output<variance_epsilon> v,
      Output<double> vMin,
      Output<double> vMax,
      Output<scale_after_normalization> beta,
      Output<double> betaMin,
      Output<double> betaMax,
      Output<scale_after_normalization> gamma,
      Output<double> gammaMin,
      Output<double> gammaMax) {
    return addOperation(new OperationDescription(
        'QuantizedBatchNormWithGlobalNormalization',
        'QuantizedBatchNormWithGlobalNormalization', [
      t,
      tMin,
      tMax,
      m,
      mMin,
      mMax,
      v,
      vMin,
      vMax,
      beta,
      betaMin,
      betaMax,
      gamma,
      gammaMin,
      gammaMax
    ]));
  }

  Output<double> quantizedReluX<Tinput, out_type>(
      Output<Tinput> features,
      Output<double> maxValue,
      Output<double> minFeatures,
      Output<double> maxFeatures) {
    return addOperation(new OperationDescription('QuantizedReluX',
        'QuantizedReluX', [features, maxValue, minFeatures, maxFeatures]));
  }

  Output<double> quantizedRelu<Tinput, out_type>(Output<Tinput> features,
      Output<double> minFeatures, Output<double> maxFeatures) {
    return addOperation(new OperationDescription('QuantizedRelu',
        'QuantizedRelu', [features, minFeatures, maxFeatures]));
  }

  Output<overlapping> fractionalAvgPoolGrad<overlapping, T>(
      Output<int> origInputTensorShape,
      Output<overlapping> outBackprop,
      Output<int> rowPoolingSequence,
      Output<int> colPoolingSequence) {
    return addOperation(new OperationDescription(
        'FractionalAvgPoolGrad', 'FractionalAvgPoolGrad', [
      origInputTensorShape,
      outBackprop,
      rowPoolingSequence,
      colPoolingSequence
    ]));
  }

  Output<reverse> nthElement<reverse, T>(Output<reverse> input, Output<int> n) {
    return addOperation(
        new OperationDescription('NthElement', 'NthElement', [input, n]));
  }

  Output<int> topKV2<sorted, T>(Output<sorted> input, Output<int> k) {
    return addOperation(
        new OperationDescription('TopKV2', 'TopKV2', [input, k]));
  }

  Output<int> topK<k, sorted, T>(Output<k> input) {
    return addOperation(new OperationDescription('TopK', 'TopK', [input]));
  }

  Output<bool> inTopKV2<T>(
      Output<double> predictions, Output<T> targets, Output<T> k) {
    return addOperation(new OperationDescription(
        'InTopKV2', 'InTopKV2', [predictions, targets, k]));
  }

  Output<T> sparseSoftmaxCrossEntropyWithLogits<T, Tlabels>(
      Output<T> features, Output<Tlabels> labels) {
    return addOperation(new OperationDescription(
        'SparseSoftmaxCrossEntropyWithLogits',
        'SparseSoftmaxCrossEntropyWithLogits',
        [features, labels]));
  }

  Output<T> logSoftmax<T>(Output<T> logits) {
    return addOperation(
        new OperationDescription('LogSoftmax', 'LogSoftmax', [logits]));
  }

  Output<T> softmax<T>(Output<T> logits) {
    return addOperation(
        new OperationDescription('Softmax', 'Softmax', [logits]));
  }

  Output<T> softsignGrad<T>(Output<T> gradients, Output<T> features) {
    return addOperation(new OperationDescription(
        'SoftsignGrad', 'SoftsignGrad', [gradients, features]));
  }

  Output<T> softplusGrad<T>(Output<T> gradients, Output<T> features) {
    return addOperation(new OperationDescription(
        'SoftplusGrad', 'SoftplusGrad', [gradients, features]));
  }

  Output<T> seluGrad<T>(Output<T> gradients, Output<T> outputs) {
    return addOperation(
        new OperationDescription('SeluGrad', 'SeluGrad', [gradients, outputs]));
  }

  Output<T> selu<T>(Output<T> features) {
    return addOperation(new OperationDescription('Selu', 'Selu', [features]));
  }

  Output<T> eluGrad<T>(Output<T> gradients, Output<T> outputs) {
    return addOperation(
        new OperationDescription('EluGrad', 'EluGrad', [gradients, outputs]));
  }

  Output<T> relu6Grad<T>(Output<T> gradients, Output<T> features) {
    return addOperation(new OperationDescription(
        'Relu6Grad', 'Relu6Grad', [gradients, features]));
  }

  Output<T> reluGrad<T>(Output<T> gradients, Output<T> features) {
    return addOperation(new OperationDescription(
        'ReluGrad', 'ReluGrad', [gradients, features]));
  }

  Output<bool> all<keep_dims, Tidx>(
      Output<bool> input, Output<keep_dims> reductionIndices) {
    return addOperation(
        new OperationDescription('All', 'All', [input, reductionIndices]));
  }

  Output<T> dilation2DBackpropInput<T, strides, rates, padding>(
      Output<T> input, Output<strides> filter, Output<rates> outBackprop) {
    return addOperation(new OperationDescription('Dilation2DBackpropInput',
        'Dilation2DBackpropInput', [input, filter, outBackprop]));
  }

  Output<padding> maxPoolGradGradV2<padding, data_format, T>(
      Output<padding> origInput,
      Output<data_format> origOutput,
      Output<T> grad,
      Output<int> ksize,
      Output<int> strides) {
    return addOperation(new OperationDescription('MaxPoolGradGradV2',
        'MaxPoolGradGradV2', [origInput, origOutput, grad, ksize, strides]));
  }

  Output<ksize> maxPoolGradGrad<ksize, strides, padding, data_format, T>(
      Output<ksize> origInput,
      Output<strides> origOutput,
      Output<padding> grad) {
    return addOperation(new OperationDescription(
        'MaxPoolGradGrad', 'MaxPoolGradGrad', [origInput, origOutput, grad]));
  }

  Output<padding> maxPoolGradV2<padding, data_format, T>(
      Output<padding> origInput,
      Output<data_format> origOutput,
      Output<T> grad,
      Output<int> ksize,
      Output<int> strides) {
    return addOperation(new OperationDescription('MaxPoolGradV2',
        'MaxPoolGradV2', [origInput, origOutput, grad, ksize, strides]));
  }

  Output<T> roll<T, Tshift, Taxis>(
      Output<T> input, Output<Tshift> shift, Output<Taxis> axis) {
    return addOperation(
        new OperationDescription('Roll', 'Roll', [input, shift, axis]));
  }

  Output<ksize> maxPoolGrad<ksize, strides, padding, data_format, T>(
      Output<ksize> origInput,
      Output<strides> origOutput,
      Output<padding> grad) {
    return addOperation(new OperationDescription(
        'MaxPoolGrad', 'MaxPoolGrad', [origInput, origOutput, grad]));
  }

  Output<depth_radius> lRNGrad<depth_radius, bias, alpha, beta, T>(
      Output<depth_radius> inputGrads,
      Output<bias> inputImage,
      Output<alpha> outputImage) {
    return addOperation(new OperationDescription(
        'LRNGrad', 'LRNGrad', [inputGrads, inputImage, outputImage]));
  }

  Output<ksize> maxPool3DGradGrad<ksize, strides, padding, data_format, T>(
      Output<ksize> origInput,
      Output<strides> origOutput,
      Output<padding> grad) {
    return addOperation(new OperationDescription('MaxPool3DGradGrad',
        'MaxPool3DGradGrad', [origInput, origOutput, grad]));
  }

  Output<T> conv3DBackpropFilter<T, strides, padding>(
      Output<T> input, Output<strides> filter, Output<padding> outBackprop) {
    return addOperation(new OperationDescription('Conv3DBackpropFilter',
        'Conv3DBackpropFilter', [input, filter, outBackprop]));
  }

  Output<T> conv3D<T, strides, padding, data_format, dilations>(
      Output<T> input, Output<strides> filter) {
    return addOperation(
        new OperationDescription('Conv3D', 'Conv3D', [input, filter]));
  }

  Output<double> cropAndResize<T, method, extrapolation_value>(Output<T> image,
      Output<double> boxes, Output<int> boxInd, Output<int> cropSize) {
    return addOperation(new OperationDescription(
        'CropAndResize', 'CropAndResize', [image, boxes, boxInd, cropSize]));
  }

  Output<T> depthwiseConv2dNativeBackpropFilter<T, strides, padding,
          data_format, dilations>(
      Output<T> input, Output<int> filterSizes, Output<strides> outBackprop) {
    return addOperation(new OperationDescription(
        'DepthwiseConv2dNativeBackpropFilter',
        'DepthwiseConv2dNativeBackpropFilter',
        [input, filterSizes, outBackprop]));
  }

  Output<T> expm1<T>(Output<T> x) {
    return addOperation(new OperationDescription('Expm1', 'Expm1', [x]));
  }

  Output<T> conv2DBackpropInput<T, strides, use_cudnn_on_gpu, padding,
          data_format, dilations>(
      Output<int> inputSizes, Output<T> filter, Output<strides> outBackprop) {
    return addOperation(new OperationDescription('Conv2DBackpropInput',
        'Conv2DBackpropInput', [inputSizes, filter, outBackprop]));
  }

  Output<T>
      conv2D<T, strides, use_cudnn_on_gpu, padding, data_format, dilations>(
          Output<T> input, Output<strides> filter) {
    return addOperation(
        new OperationDescription('Conv2D', 'Conv2D', [input, filter]));
  }

  Output<T> biasAdd<T, data_format>(Output<T> value, Output<data_format> bias) {
    return addOperation(
        new OperationDescription('BiasAdd', 'BiasAdd', [value, bias]));
  }

  Output<T> sin<T>(Output<T> x) {
    return addOperation(new OperationDescription('Sin', 'Sin', [x]));
  }

  Output<T> fusedBatchNormV2<T, U, epsilon, data_format, is_training>(
      Output<T> x,
      Output<U> scale,
      Output<epsilon> offset,
      Output<data_format> mean,
      Output<is_training> variance) {
    return addOperation(new OperationDescription('FusedBatchNormV2',
        'FusedBatchNormV2', [x, scale, offset, mean, variance]));
  }

  Output<double>
      sparseMatMul<transpose_a, transpose_b, a_is_sparse, b_is_sparse, Ta, Tb>(
          Output<transpose_a> a, Output<transpose_b> b) {
    return addOperation(
        new OperationDescription('SparseMatMul', 'SparseMatMul', [a, b]));
  }

  Output<T> fusedBatchNorm<T, epsilon, data_format, is_training>(
      Output<T> x,
      Output<epsilon> scale,
      Output<data_format> offset,
      Output<is_training> mean,
      Output<is_training> variance) {
    return addOperation(new OperationDescription('FusedBatchNorm',
        'FusedBatchNorm', [x, scale, offset, mean, variance]));
  }

  Output<dtype> readVariableOp<dtype>(Output<dynamic> resource) {
    return addOperation(new OperationDescription(
        'ReadVariableOp', 'ReadVariableOp', [resource]));
  }

  Output<T> lgamma<T>(Output<T> x) {
    return addOperation(new OperationDescription('Lgamma', 'Lgamma', [x]));
  }

  Output<double> requantizationRange<Tinput>(
      Output<Tinput> input, Output<double> inputMin, Output<double> inputMax) {
    return addOperation(new OperationDescription('RequantizationRange',
        'RequantizationRange', [input, inputMin, inputMax]));
  }

  Output<dynamic> compareAndBitpack<T>(Output<T> input, Output<T> threshold) {
    return addOperation(new OperationDescription(
        'CompareAndBitpack', 'CompareAndBitpack', [input, threshold]));
  }

  Output<double> quantizeDownAndShrinkRange<Tinput, out_type>(
      Output<Tinput> input, Output<double> inputMin, Output<double> inputMax) {
    return addOperation(new OperationDescription('QuantizeDownAndShrinkRange',
        'QuantizeDownAndShrinkRange', [input, inputMin, inputMax]));
  }

  Output<double>
      quantizedMatMul<T1, T2, Toutput, transpose_a, transpose_b, Tactivation>(
          Output<T1> a,
          Output<T2> b,
          Output<double> minA,
          Output<double> maxA,
          Output<double> minB,
          Output<double> maxB) {
    return addOperation(new OperationDescription(
        'QuantizedMatMul', 'QuantizedMatMul', [a, b, minA, maxA, minB, maxB]));
  }

  Output<exclusive> cumsum<exclusive, reverse, T, Tidx>(
      Output<exclusive> x, Output<reverse> axis) {
    return addOperation(
        new OperationDescription('Cumsum', 'Cumsum', [x, axis]));
  }

  Output<T> batchNormWithGlobalNormalizationGrad<T, variance_epsilon,
          scale_after_normalization>(
      Output<T> t,
      Output<variance_epsilon> m,
      Output<scale_after_normalization> v,
      Output<scale_after_normalization> gamma,
      Output<scale_after_normalization> backprop) {
    return addOperation(new OperationDescription(
        'BatchNormWithGlobalNormalizationGrad',
        'BatchNormWithGlobalNormalizationGrad',
        [t, m, v, gamma, backprop]));
  }

  Output<T> bincount<T>(Output<int> arr, Output<int> size, Output<T> weights) {
    return addOperation(
        new OperationDescription('Bincount', 'Bincount', [arr, size, weights]));
  }

  Output<T> cross<T>(Output<T> a, Output<T> b) {
    return addOperation(new OperationDescription('Cross', 'Cross', [a, b]));
  }

  Output<T> conj<T>(Output<T> input) {
    return addOperation(new OperationDescription('Conj', 'Conj', [input]));
  }

  /// *NOTE*: `Add` supports broadcasting. `AddN` does not. More about broadcasting
  /// [here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
  Output<dynamic> mklAdd<T>(
      Output<T> x, Output<T> y, Output<dynamic> mklX, Output<dynamic> mklY) {
    return addOperation(
        new OperationDescription('_MklAdd', '_MklAdd', [x, y, mklX, mklY]));
  }

  Output<T> real<T, Tout>(Output<T> input) {
    return addOperation(new OperationDescription('Real', 'Real', [input]));
  }

  Output<double> dequantize<T, mode>(
      Output<T> input, Output<double> minRange, Output<double> maxRange) {
    return addOperation(new OperationDescription(
        'Dequantize', 'Dequantize', [input, minRange, maxRange]));
  }

  Output<T> complex<T, Tout>(Output<T> real, Output<Tout> imag) {
    return addOperation(
        new OperationDescription('Complex', 'Complex', [real, imag]));
  }

  Output<bool> any<keep_dims, Tidx>(
      Output<bool> input, Output<keep_dims> reductionIndices) {
    return addOperation(
        new OperationDescription('Any', 'Any', [input, reductionIndices]));
  }

  Output<T> sparseSegmentMean<T, Tidx>(
      Output<T> data, Output<Tidx> indices, Output<int> segmentIds) {
    return addOperation(new OperationDescription(
        'SparseSegmentMean', 'SparseSegmentMean', [data, indices, segmentIds]));
  }

  Output<T> sparseSegmentSumWithNumSegments<T, Tidx, Tnumsegments>(
      Output<T> data,
      Output<Tidx> indices,
      Output<int> segmentIds,
      Output<Tnumsegments> numSegments) {
    return addOperation(new OperationDescription(
        'SparseSegmentSumWithNumSegments',
        'SparseSegmentSumWithNumSegments',
        [data, indices, segmentIds, numSegments]));
  }

  Output<T> unsortedSegmentSum<T, Tindices, Tnumsegments>(Output<T> data,
      Output<Tindices> segmentIds, Output<Tnumsegments> numSegments) {
    return addOperation(new OperationDescription('UnsortedSegmentSum',
        'UnsortedSegmentSum', [data, segmentIds, numSegments]));
  }

  Output<T> atan2<T>(Output<T> y, Output<T> x) {
    return addOperation(new OperationDescription('Atan2', 'Atan2', [y, x]));
  }

  Output<T> segmentProd<T, Tindices>(
      Output<T> data, Output<Tindices> segmentIds) {
    return addOperation(new OperationDescription(
        'SegmentProd', 'SegmentProd', [data, segmentIds]));
  }

  Output<T> resizeBilinearGrad<T, align_corners>(
      Output<double> grads, Output<T> originalImage) {
    return addOperation(new OperationDescription(
        'ResizeBilinearGrad', 'ResizeBilinearGrad', [grads, originalImage]));
  }

  Output<keep_dims> max<keep_dims, T, Tidx>(
      Output<keep_dims> input, Output<T> reductionIndices) {
    return addOperation(
        new OperationDescription('Max', 'Max', [input, reductionIndices]));
  }

  Output<dtype> getSessionTensor<dtype>(Output<String> handle) {
    return addOperation(new OperationDescription(
        'GetSessionTensor', 'GetSessionTensor', [handle]));
  }

  Output<keep_dims> min<keep_dims, T, Tidx>(
      Output<keep_dims> input, Output<T> reductionIndices) {
    return addOperation(
        new OperationDescription('Min', 'Min', [input, reductionIndices]));
  }

  Output<double> sampleDistortedBoundingBoxV2<
          T,
          seed,
          seed2,
          aspect_ratio_range,
          area_range,
          max_attempts,
          use_image_if_no_bounding_boxes>(Output<T> imageSize,
      Output<double> boundingBoxes, Output<double> minObjectCovered) {
    return addOperation(new OperationDescription(
        'SampleDistortedBoundingBoxV2',
        'SampleDistortedBoundingBoxV2',
        [imageSize, boundingBoxes, minObjectCovered]));
  }

  Output accumulatorApplyGradient<dtype>(
      Output<String> handle, Output<int> localStep, Output<dtype> gradient) {
    return addOperation(new OperationDescription('AccumulatorApplyGradient',
        'AccumulatorApplyGradient', [handle, localStep, gradient]));
  }

  Output<keep_dims> prod<keep_dims, T, Tidx>(
      Output<keep_dims> input, Output<T> reductionIndices) {
    return addOperation(
        new OperationDescription('Prod', 'Prod', [input, reductionIndices]));
  }

  Output<keep_dims> sum<keep_dims, T, Tidx>(
      Output<keep_dims> input, Output<T> reductionIndices) {
    return addOperation(
        new OperationDescription('Sum', 'Sum', [input, reductionIndices]));
  }

  Output<T> relu<T>(Output<T> features) {
    return addOperation(new OperationDescription('Relu', 'Relu', [features]));
  }

  Output<int> sparseReduceSumSparse<keep_dims, T>(
      Output<int> inputIndices,
      Output<keep_dims> inputValues,
      Output<int> inputShape,
      Output<int> reductionAxes) {
    return addOperation(new OperationDescription(
        'SparseReduceSumSparse',
        'SparseReduceSumSparse',
        [inputIndices, inputValues, inputShape, reductionAxes]));
  }

  Output<transpose_a> matMul<transpose_a, transpose_b, T>(
      Output<transpose_a> a, Output<transpose_b> b) {
    return addOperation(new OperationDescription('MatMul', 'MatMul', [a, b]));
  }

  Output<bool> logicalAnd(Output<bool> x, Output<bool> y) {
    return addOperation(
        new OperationDescription('LogicalAnd', 'LogicalAnd', [x, y]));
  }

  Output writeGraphSummary(
      Output<dynamic> writer, Output<int> step, Output<String> tensor) {
    return addOperation(new OperationDescription(
        'WriteGraphSummary', 'WriteGraphSummary', [writer, step, tensor]));
  }

  Output<bool> approximateEqual<T, tolerance>(
      Output<T> x, Output<tolerance> y) {
    return addOperation(new OperationDescription(
        'ApproximateEqual', 'ApproximateEqual', [x, y]));
  }

  Output<double> quantizeV2<T, mode, round_mode>(
      Output<double> input, Output<double> minRange, Output<double> maxRange) {
    return addOperation(new OperationDescription(
        'QuantizeV2', 'QuantizeV2', [input, minRange, maxRange]));
  }

  Output<bool> greaterEqual<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('GreaterEqual', 'GreaterEqual', [x, y]));
  }

  Output<T> polygamma<T>(Output<T> a, Output<T> x) {
    return addOperation(
        new OperationDescription('Polygamma', 'Polygamma', [a, x]));
  }

  /// When CreateSummaryDbWriter is being used, this op can be useful for
  /// importing data from event logs.
  Output importEvent(Output<dynamic> writer, Output<String> event) {
    return addOperation(new OperationDescription(
        'ImportEvent', 'ImportEvent', [writer, event]));
  }

  Output<T> igamma<T>(Output<T> a, Output<T> x) {
    return addOperation(new OperationDescription('Igamma', 'Igamma', [a, x]));
  }

  Output<T> igammac<T>(Output<T> a, Output<T> x) {
    return addOperation(new OperationDescription('Igammac', 'Igammac', [a, x]));
  }

  Output<T> mod<T>(Output<T> x, Output<T> y) {
    return addOperation(new OperationDescription('Mod', 'Mod', [x, y]));
  }

  Output<T> maximum<T>(Output<T> x, Output<T> y) {
    return addOperation(new OperationDescription('Maximum', 'Maximum', [x, y]));
  }

  /// *NOTE*: `SquaredDifference` supports broadcasting. More about broadcasting
  /// [here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
  Output<dynamic> mklSquaredDifference<T>(
      Output<T> x, Output<T> y, Output<dynamic> mklX, Output<dynamic> mklY) {
    return addOperation(new OperationDescription(
        '_MklSquaredDifference', '_MklSquaredDifference', [x, y, mklX, mklY]));
  }

  Output<T> squaredDifference<T>(Output<T> x, Output<T> y) {
    return addOperation(new OperationDescription(
        'SquaredDifference', 'SquaredDifference', [x, y]));
  }

  Output<limit> resourceCountUpTo<limit, T>(Output<dynamic> resource) {
    return addOperation(new OperationDescription(
        'ResourceCountUpTo', 'ResourceCountUpTo', [resource]));
  }

  Output<T> realDiv<T>(Output<T> x, Output<T> y) {
    return addOperation(new OperationDescription('RealDiv', 'RealDiv', [x, y]));
  }

  Output<T> truncateDiv<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('TruncateDiv', 'TruncateDiv', [x, y]));
  }

  Output<T> conv3DBackpropFilterV2<T, strides, padding, data_format, dilations>(
      Output<T> input, Output<int> filterSizes, Output<strides> outBackprop) {
    return addOperation(new OperationDescription('Conv3DBackpropFilterV2',
        'Conv3DBackpropFilterV2', [input, filterSizes, outBackprop]));
  }

  Output<String> asString<T, precision, scientific, shortest, width, fill>(
      Output<T> input) {
    return addOperation(
        new OperationDescription('AsString', 'AsString', [input]));
  }

  Output<T> addV2<T>(Output<T> x, Output<T> y) {
    return addOperation(new OperationDescription('AddV2', 'AddV2', [x, y]));
  }

  Output<double> uniformCandidateSampler<num_true, num_sampled, unique,
      range_max, seed, seed2>(Output<int> trueClasses) {
    return addOperation(new OperationDescription(
        'UniformCandidateSampler', 'UniformCandidateSampler', [trueClasses]));
  }

  Output<validate_indices> resourceGather<validate_indices, dtype, Tindices>(
      Output<dynamic> resource, Output<validate_indices> indices) {
    return addOperation(new OperationDescription(
        'ResourceGather', 'ResourceGather', [resource, indices]));
  }

  Output<T> add<T>(Output<T> x, Output<T> y) {
    return addOperation(new OperationDescription('Add', 'Add', [x, y]));
  }

  Output<T> floor<T>(Output<T> x) {
    return addOperation(new OperationDescription('Floor', 'Floor', [x]));
  }

  Output<T> ceil<T>(Output<T> x) {
    return addOperation(new OperationDescription('Ceil', 'Ceil', [x]));
  }

  Output<ksize> maxPool3D<ksize, strides, padding, data_format, T>(
      Output<ksize> input) {
    return addOperation(
        new OperationDescription('MaxPool3D', 'MaxPool3D', [input]));
  }

  Output<bool> isInf<T>(Output<T> x) {
    return addOperation(new OperationDescription('IsInf', 'IsInf', [x]));
  }

  Output<T> padV2<T, Tpaddings>(Output<T> input, Output<Tpaddings> paddings,
      Output<Tpaddings> constantValues) {
    return addOperation(new OperationDescription(
        'PadV2', 'PadV2', [input, paddings, constantValues]));
  }

  Output<T> cos<T>(Output<T> x) {
    return addOperation(new OperationDescription('Cos', 'Cos', [x]));
  }

  Output<String> tensorArray<dtype, dynamic_size, clear_after_read,
      tensor_array_name, element_shape>(Output<int> size) {
    return addOperation(
        new OperationDescription('TensorArray', 'TensorArray', [size]));
  }

  Output<shape> variable<shape, dtype, container, shared_name>() {
    return addOperation(new OperationDescription('Variable', 'Variable', []));
  }

  Output<T> sigmoidGrad<T>(Output<T> y, Output<T> dy) {
    return addOperation(
        new OperationDescription('SigmoidGrad', 'SigmoidGrad', [y, dy]));
  }

  Output<T> digamma<T>(Output<T> x) {
    return addOperation(new OperationDescription('Digamma', 'Digamma', [x]));
  }

  Output<T> acosh<T>(Output<T> x) {
    return addOperation(new OperationDescription('Acosh', 'Acosh', [x]));
  }

  Output resourceApplyProximalAdagrad<T, use_locking>(
      Output<dynamic> var_,
      Output<dynamic> accum,
      Output<T> lr,
      Output<use_locking> l1,
      Output<use_locking> l2,
      Output<use_locking> grad) {
    return addOperation(new OperationDescription('ResourceApplyProximalAdagrad',
        'ResourceApplyProximalAdagrad', [var_, accum, lr, l1, l2, grad]));
  }

  Output<T> asin<T>(Output<T> x) {
    return addOperation(new OperationDescription('Asin', 'Asin', [x]));
  }

  /// _HostRecv requires its input on host memory whereas _Recv requires its
  /// input on device memory.
  Output<tensor_type> hostRecv<tensor_type, tensor_name, send_device,
      send_device_incarnation, recv_device, client_terminated>() {
    return addOperation(new OperationDescription('_HostRecv', '_HostRecv', []));
  }

  Output<T> log1p<T>(Output<T> x) {
    return addOperation(new OperationDescription('Log1p', 'Log1p', [x]));
  }

  Output<int> tensorArraySize(Output<String> handle, Output<double> flowIn) {
    return addOperation(new OperationDescription(
        'TensorArraySize', 'TensorArraySize', [handle, flowIn]));
  }

  Output<double> requantize<Tinput, out_type>(
      Output<Tinput> input,
      Output<double> inputMin,
      Output<double> inputMax,
      Output<double> requestedOutputMin,
      Output<double> requestedOutputMax) {
    return addOperation(new OperationDescription('Requantize', 'Requantize',
        [input, inputMin, inputMax, requestedOutputMin, requestedOutputMax]));
  }

  Output<T> exp<T>(Output<T> x) {
    return addOperation(new OperationDescription('Exp', 'Exp', [x]));
  }

  Output<String> mutableHashTableOfTensors<container, shared_name,
      use_node_name_sharing, key_dtype, value_dtype, value_shape>() {
    return addOperation(new OperationDescription(
        'MutableHashTableOfTensors', 'MutableHashTableOfTensors', []));
  }

  Output<T> scatterNdAdd<T, Tindices, use_locking>(
      Output<T> ref, Output<Tindices> indices, Output<use_locking> updates) {
    return addOperation(new OperationDescription(
        'ScatterNdAdd', 'ScatterNdAdd', [ref, indices, updates]));
  }

  Output<T> dilation2D<T, strides, rates, padding>(
      Output<T> input, Output<strides> filter) {
    return addOperation(
        new OperationDescription('Dilation2D', 'Dilation2D', [input, filter]));
  }

  Output deserializeIterator(
      Output<dynamic> resourceHandle, Output<dynamic> serialized) {
    return addOperation(new OperationDescription('DeserializeIterator',
        'DeserializeIterator', [resourceHandle, serialized]));
  }

  Output<T> rsqrtGrad<T>(Output<T> y, Output<T> dy) {
    return addOperation(
        new OperationDescription('RsqrtGrad', 'RsqrtGrad', [y, dy]));
  }

  Output<double> quantizedInstanceNorm<
      T,
      output_range_given,
      given_y_min,
      given_y_max,
      variance_epsilon,
      min_separation>(Output<T> x, Output<double> xMin, Output<double> xMax) {
    return addOperation(new OperationDescription(
        'QuantizedInstanceNorm', 'QuantizedInstanceNorm', [x, xMin, xMax]));
  }

  Output<T> rsqrt<T>(Output<T> x) {
    return addOperation(new OperationDescription('Rsqrt', 'Rsqrt', [x]));
  }

  Output initializeTableFromTextFile<key_index, value_index, vocab_size,
      delimiter>(Output<String> tableHandle, Output<String> filename) {
    return addOperation(new OperationDescription('InitializeTableFromTextFile',
        'InitializeTableFromTextFile', [tableHandle, filename]));
  }

  Output<T> sqrtGrad<T>(Output<T> y, Output<T> dy) {
    return addOperation(
        new OperationDescription('SqrtGrad', 'SqrtGrad', [y, dy]));
  }

  Output<T> invGrad<T>(Output<T> y, Output<T> dy) {
    return addOperation(
        new OperationDescription('InvGrad', 'InvGrad', [y, dy]));
  }

  Output<T> inv<T>(Output<T> x) {
    return addOperation(new OperationDescription('Inv', 'Inv', [x]));
  }

  /// _HostCast requires its input and produces its output in host memory.
  Output<SrcT> hostCast<SrcT, DstT>(Output<SrcT> x) {
    return addOperation(
        new OperationDescription('_HostCast', '_HostCast', [x]));
  }

  Output<N> accumulateNV2<N, T, shape>(Output<N> inputs) {
    return addOperation(
        new OperationDescription('AccumulateNV2', 'AccumulateNV2', [inputs]));
  }

  Output<T> batchMatrixSetDiag<T>(Output<T> input, Output<T> diagonal) {
    return addOperation(new OperationDescription(
        'BatchMatrixSetDiag', 'BatchMatrixSetDiag', [input, diagonal]));
  }

  Output<T> segmentMean<T, Tindices>(
      Output<T> data, Output<Tindices> segmentIds) {
    return addOperation(new OperationDescription(
        'SegmentMean', 'SegmentMean', [data, segmentIds]));
  }

  Output<signed_input> quantizeAndDequantize<signed_input, num_bits,
      range_given, input_min, input_max, T>(Output<signed_input> input) {
    return addOperation(new OperationDescription(
        'QuantizeAndDequantize', 'QuantizeAndDequantize', [input]));
  }

  /// *NOTE*: `Maximum` supports broadcasting. More about broadcasting
  /// [here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
  Output<dynamic> mklMaximum<T>(
      Output<T> x, Output<T> y, Output<dynamic> mklX, Output<dynamic> mklY) {
    return addOperation(new OperationDescription(
        '_MklMaximum', '_MklMaximum', [x, y, mklX, mklY]));
  }

  Output<T> sparseSegmentSqrtN<T, Tidx>(
      Output<T> data, Output<Tidx> indices, Output<int> segmentIds) {
    return addOperation(new OperationDescription('SparseSegmentSqrtN',
        'SparseSegmentSqrtN', [data, indices, segmentIds]));
  }

  Output<T> depthToSpace<T, block_size, data_format>(Output<T> input) {
    return addOperation(
        new OperationDescription('DepthToSpace', 'DepthToSpace', [input]));
  }

  Output<T> spaceToDepth<T, block_size, data_format>(Output<T> input) {
    return addOperation(
        new OperationDescription('SpaceToDepth', 'SpaceToDepth', [input]));
  }

  Output<signed_input> quantizeAndDequantizeV3<signed_input, range_given, T>(
      Output<signed_input> input,
      Output<range_given> inputMin,
      Output<T> inputMax,
      Output<int> numBits) {
    return addOperation(new OperationDescription('QuantizeAndDequantizeV3',
        'QuantizeAndDequantizeV3', [input, inputMin, inputMax, numBits]));
  }

  Output<T> mul<T>(Output<T> x, Output<T> y) {
    return addOperation(new OperationDescription('Mul', 'Mul', [x, y]));
  }

  Output<T> batchToSpace<T, block_size, Tidx>(
      Output<T> input, Output<block_size> crops) {
    return addOperation(new OperationDescription(
        'BatchToSpace', 'BatchToSpace', [input, crops]));
  }

  Output<T> spaceToBatch<T, Tpaddings, block_size>(
      Output<T> input, Output<Tpaddings> paddings) {
    return addOperation(new OperationDescription(
        'SpaceToBatch', 'SpaceToBatch', [input, paddings]));
  }

  Output<T> squeeze<T, squeeze_dims>(Output<T> input) {
    return addOperation(
        new OperationDescription('Squeeze', 'Squeeze', [input]));
  }

  /// _HostSend requires its input on host memory whereas _Send requires its
  /// input on device memory.
  Output hostSend<T, tensor_name, send_device, send_device_incarnation,
      recv_device, client_terminated>(Output<T> tensor) {
    return addOperation(
        new OperationDescription('_HostSend', '_HostSend', [tensor]));
  }

  Output<T> expandDims<T, Tdim>(Output<T> input, Output<Tdim> dim) {
    return addOperation(
        new OperationDescription('ExpandDims', 'ExpandDims', [input, dim]));
  }

  Output<dtype> placeholderWithDefault<dtype, shape>(Output<dtype> input) {
    return addOperation(new OperationDescription(
        'PlaceholderWithDefault', 'PlaceholderWithDefault', [input]));
  }

  Output<T> applyMomentum<T, use_locking, use_nesterov>(
      Output<T> var_,
      Output<use_locking> accum,
      Output<use_nesterov> lr,
      Output<use_nesterov> grad,
      Output<use_nesterov> momentum) {
    return addOperation(new OperationDescription(
        'ApplyMomentum', 'ApplyMomentum', [var_, accum, lr, grad, momentum]));
  }

  Output<T> acos<T>(Output<T> x) {
    return addOperation(new OperationDescription('Acos', 'Acos', [x]));
  }

  Output<dtype> placeholder<dtype, shape>() {
    return addOperation(
        new OperationDescription('Placeholder', 'Placeholder', []));
  }

  Output<double> quantizedMaxPool<T, ksize, strides, padding>(
      Output<T> input, Output<double> minInput, Output<double> maxInput) {
    return addOperation(new OperationDescription(
        'QuantizedMaxPool', 'QuantizedMaxPool', [input, minInput, maxInput]));
  }

  Output<T> mirrorPadGrad<T, Tpaddings, mode>(
      Output<T> input, Output<Tpaddings> paddings) {
    return addOperation(new OperationDescription(
        'MirrorPadGrad', 'MirrorPadGrad', [input, paddings]));
  }

  Output<double> tensorArrayV3<
      dtype,
      element_shape,
      dynamic_size,
      clear_after_read,
      identical_element_shapes,
      tensor_array_name>(Output<int> size) {
    return addOperation(
        new OperationDescription('TensorArrayV3', 'TensorArrayV3', [size]));
  }

  Output<T> matrixSolveLs<T, fast>(
      Output<T> matrix, Output<fast> rhs, Output<dynamic> l2Regularizer) {
    return addOperation(new OperationDescription(
        'MatrixSolveLs', 'MatrixSolveLs', [matrix, rhs, l2Regularizer]));
  }

  Output<T> mirrorPad<T, Tpaddings, mode>(
      Output<T> input, Output<Tpaddings> paddings) {
    return addOperation(
        new OperationDescription('MirrorPad', 'MirrorPad', [input, paddings]));
  }

  Output<T> pad<T, Tpaddings>(Output<T> input, Output<Tpaddings> paddings) {
    return addOperation(
        new OperationDescription('Pad', 'Pad', [input, paddings]));
  }

  Output<T> broadcastGradientArgs<T>(Output<T> s0, Output<T> s1) {
    return addOperation(new OperationDescription(
        'BroadcastGradientArgs', 'BroadcastGradientArgs', [s0, s1]));
  }

  Output<T> broadcastArgs<T>(Output<T> s0, Output<T> s1) {
    return addOperation(
        new OperationDescription('BroadcastArgs', 'BroadcastArgs', [s0, s1]));
  }

  Output<double> quantizedRelu6<Tinput, out_type>(Output<Tinput> features,
      Output<double> minFeatures, Output<double> maxFeatures) {
    return addOperation(new OperationDescription('QuantizedRelu6',
        'QuantizedRelu6', [features, minFeatures, maxFeatures]));
  }

  Output resourceStridedSliceAssign<T, Index, begin_mask, end_mask,
          ellipsis_mask, new_axis_mask, shrink_axis_mask>(
      Output<dynamic> ref,
      Output<T> begin,
      Output<Index> end,
      Output<begin_mask> strides,
      Output<end_mask> value) {
    return addOperation(new OperationDescription('ResourceStridedSliceAssign',
        'ResourceStridedSliceAssign', [ref, begin, end, strides, value]));
  }

  Output<T> truncateMod<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('TruncateMod', 'TruncateMod', [x, y]));
  }

  Output resourceApplyFtrl<T, use_locking>(
      Output<dynamic> var_,
      Output<dynamic> accum,
      Output<dynamic> linear,
      Output<T> grad,
      Output<use_locking> lr,
      Output<use_locking> l1,
      Output<use_locking> l2,
      Output<use_locking> lrPower) {
    return addOperation(new OperationDescription('ResourceApplyFtrl',
        'ResourceApplyFtrl', [var_, accum, linear, grad, lr, l1, l2, lrPower]));
  }

  Output<T> stridedSliceGrad<T, Index, begin_mask, end_mask, ellipsis_mask,
          new_axis_mask, shrink_axis_mask>(
      Output<T> shape,
      Output<Index> begin,
      Output<begin_mask> end,
      Output<end_mask> strides,
      Output<ellipsis_mask> dy) {
    return addOperation(new OperationDescription('StridedSliceGrad',
        'StridedSliceGrad', [shape, begin, end, strides, dy]));
  }

  Output<T> stridedSlice<T, Index, begin_mask, end_mask, ellipsis_mask,
          new_axis_mask, shrink_axis_mask>(Output<T> input, Output<Index> begin,
      Output<begin_mask> end, Output<end_mask> strides) {
    return addOperation(new OperationDescription(
        'StridedSlice', 'StridedSlice', [input, begin, end, strides]));
  }

  Output<String> lMDBReader<container, shared_name>() {
    return addOperation(
        new OperationDescription('LMDBReader', 'LMDBReader', []));
  }

  Output<T> slice<T, Index>(
      Output<T> input, Output<Index> begin, Output<Index> size) {
    return addOperation(
        new OperationDescription('Slice', 'Slice', [input, begin, size]));
  }

  Output<T> uniqueWithCountsV2<T, Taxis, out_idx>(
      Output<T> x, Output<Taxis> axis) {
    return addOperation(new OperationDescription(
        'UniqueWithCountsV2', 'UniqueWithCountsV2', [x, axis]));
  }

  Output<T> uniqueV2<T, Taxis, out_idx>(Output<T> x, Output<Taxis> axis) {
    return addOperation(
        new OperationDescription('UniqueV2', 'UniqueV2', [x, axis]));
  }

  Output<T> scatterNd<T, Tindices>(
      Output<T> indices, Output<Tindices> updates, Output<Tindices> shape) {
    return addOperation(new OperationDescription(
        'ScatterNd', 'ScatterNd', [indices, updates, shape]));
  }

  Output<T> unique<T, out_idx>(Output<T> x) {
    return addOperation(new OperationDescription('Unique', 'Unique', [x]));
  }

  Output<T> argMax<T, Tidx, output_type>(
      Output<T> input, Output<Tidx> dimension) {
    return addOperation(
        new OperationDescription('ArgMax', 'ArgMax', [input, dimension]));
  }

  Output<T> reshape<T, Tshape>(Output<T> tensor, Output<Tshape> shape) {
    return addOperation(
        new OperationDescription('Reshape', 'Reshape', [tensor, shape]));
  }

  Output<T> checkNumerics<T, message>(Output<T> tensor) {
    return addOperation(
        new OperationDescription('CheckNumerics', 'CheckNumerics', [tensor]));
  }

  Output<T> stopGradient<T>(Output<T> input) {
    return addOperation(
        new OperationDescription('StopGradient', 'StopGradient', [input]));
  }

  Output<T> debugGradientIdentity<T>(Output<T> input) {
    return addOperation(new OperationDescription(
        'DebugGradientIdentity', 'DebugGradientIdentity', [input]));
  }

  Output<T> refIdentity<T>(Output<T> input) {
    return addOperation(
        new OperationDescription('RefIdentity', 'RefIdentity', [input]));
  }

  Output<dynamic> zipDataset<output_types, output_shapes, N>(
      Output<dynamic> inputDatasets) {
    return addOperation(
        new OperationDescription('ZipDataset', 'ZipDataset', [inputDatasets]));
  }

  Output<T> round<T>(Output<T> x) {
    return addOperation(new OperationDescription('Round', 'Round', [x]));
  }

  Output<T> identityN<T>(Output<T> input) {
    return addOperation(
        new OperationDescription('IdentityN', 'IdentityN', [input]));
  }

  Output<T> sparseTensorDenseAdd<T, Tindices>(Output<T> aIndices,
      Output<Tindices> aValues, Output<Tindices> aShape, Output<Tindices> b) {
    return addOperation(new OperationDescription('SparseTensorDenseAdd',
        'SparseTensorDenseAdd', [aIndices, aValues, aShape, b]));
  }

  Output<T> snapshot<T>(Output<T> input) {
    return addOperation(
        new OperationDescription('Snapshot', 'Snapshot', [input]));
  }

  Output<double> fakeQuantWithMinMaxVarsGradient<num_bits, narrow_range>(
      Output<double> gradients,
      Output<double> inputs,
      Output<double> min,
      Output<double> max) {
    return addOperation(new OperationDescription(
        'FakeQuantWithMinMaxVarsGradient',
        'FakeQuantWithMinMaxVarsGradient',
        [gradients, inputs, min, max]));
  }

  Output<T> size<T, out_type>(Output<T> input) {
    return addOperation(new OperationDescription('Size', 'Size', [input]));
  }

  /// The memory can optionally be initialized. This is usually useful in
  /// conjunction with inplace operations.
  Output<shape> parallelConcatStart<shape, dtype>() {
    return addOperation(new OperationDescription(
        '_ParallelConcatStart', '_ParallelConcatStart', []));
  }

  Output<String> scalarSummary<T>(Output<String> tags, Output<T> values) {
    return addOperation(new OperationDescription(
        'ScalarSummary', 'ScalarSummary', [tags, values]));
  }

  Output<T> identity<T>(Output<T> input) {
    return addOperation(
        new OperationDescription('Identity', 'Identity', [input]));
  }

  Output<Tidx> reverseV2<Tidx, T>(Output<Tidx> tensor, Output<T> axis) {
    return addOperation(
        new OperationDescription('ReverseV2', 'ReverseV2', [tensor, axis]));
  }

  Output<T> reverse<T>(Output<T> tensor, Output<bool> dims) {
    return addOperation(
        new OperationDescription('Reverse', 'Reverse', [tensor, dims]));
  }

  Output<T> matrixDiagPart<T>(Output<T> input) {
    return addOperation(
        new OperationDescription('MatrixDiagPart', 'MatrixDiagPart', [input]));
  }

  Output<T> matrixSetDiag<T>(Output<T> input, Output<T> diagonal) {
    return addOperation(new OperationDescription(
        'MatrixSetDiag', 'MatrixSetDiag', [input, diagonal]));
  }

  Output<dtype> statelessTruncatedNormal<dtype, T, Tseed>(
      Output<dtype> shape, Output<T> seed) {
    return addOperation(new OperationDescription(
        'StatelessTruncatedNormal', 'StatelessTruncatedNormal', [shape, seed]));
  }

  Output<T> matrixDiag<T>(Output<T> diagonal) {
    return addOperation(
        new OperationDescription('MatrixDiag', 'MatrixDiag', [diagonal]));
  }

  Output<dynamic> generatorDataset<
          init_func,
          next_func,
          finalize_func,
          Tinit_func_args,
          Tnext_func_args,
          Tfinalize_func_args,
          output_types,
          output_shapes>(
      Output<init_func> initFuncOtherArgs,
      Output<next_func> nextFuncOtherArgs,
      Output<finalize_func> finalizeFuncOtherArgs) {
    return addOperation(new OperationDescription(
        'GeneratorDataset',
        'GeneratorDataset',
        [initFuncOtherArgs, nextFuncOtherArgs, finalizeFuncOtherArgs]));
  }

  Output<dtype> placeholderV2<dtype, shape>() {
    return addOperation(
        new OperationDescription('PlaceholderV2', 'PlaceholderV2', []));
  }

  Output<T> diagPart<T>(Output<T> input) {
    return addOperation(
        new OperationDescription('DiagPart', 'DiagPart', [input]));
  }

  Output<double>
      fakeQuantWithMinMaxVarsPerChannelGradient<num_bits, narrow_range>(
          Output<double> gradients,
          Output<double> inputs,
          Output<double> min,
          Output<double> max) {
    return addOperation(new OperationDescription(
        'FakeQuantWithMinMaxVarsPerChannelGradient',
        'FakeQuantWithMinMaxVarsPerChannelGradient',
        [gradients, inputs, min, max]));
  }

  Output<T> onesLike<T>(Output<T> x) {
    return addOperation(new OperationDescription('OnesLike', 'OnesLike', [x]));
  }

  Output<num_sparse> parseSingleExample<num_sparse, sparse_keys, dense_keys,
          sparse_types, Tdense, dense_shapes>(
      Output<String> serialized, Output<num_sparse> denseDefaults) {
    return addOperation(new OperationDescription('ParseSingleExample',
        'ParseSingleExample', [serialized, denseDefaults]));
  }

  Output<T> guaranteeConst<T>(Output<T> input) {
    return addOperation(
        new OperationDescription('GuaranteeConst', 'GuaranteeConst', [input]));
  }

  Output<dtype> immutableConst<dtype, shape, memory_region_name>() {
    return addOperation(
        new OperationDescription('ImmutableConst', 'ImmutableConst', []));
  }

  Output<T> fill<T, index_type>(Output<T> dims, Output<index_type> value) {
    return addOperation(
        new OperationDescription('Fill', 'Fill', [dims, value]));
  }

  Output<T> applyCenteredRMSProp<T, use_locking>(
      Output<T> var_,
      Output<use_locking> mg,
      Output<use_locking> ms,
      Output<use_locking> mom,
      Output<use_locking> lr,
      Output<use_locking> rho,
      Output<use_locking> momentum,
      Output<use_locking> epsilon,
      Output<use_locking> grad) {
    return addOperation(new OperationDescription(
        'ApplyCenteredRMSProp',
        'ApplyCenteredRMSProp',
        [var_, mg, ms, mom, lr, rho, momentum, epsilon, grad]));
  }

  Output<value> const_<value, dtype>() {
    return addOperation(new OperationDescription('Const', 'Const', []));
  }

  Output<num_split> splitV<num_split, T, Tlen>(
      Output<num_split> value, Output<T> sizeSplits, Output<int> splitDim) {
    return addOperation(new OperationDescription(
        'SplitV', 'SplitV', [value, sizeSplits, splitDim]));
  }

  Output<num_split> split<num_split, T>(
      Output<int> splitDim, Output<num_split> value) {
    return addOperation(
        new OperationDescription('Split', 'Split', [splitDim, value]));
  }

  Output negTrain<vocab_count, num_negative_samples>(
      Output<double> wIn,
      Output<double> wOut,
      Output<int> examples,
      Output<int> labels,
      Output<double> lr) {
    return addOperation(new OperationDescription(
        'NegTrain', 'NegTrain', [wIn, wOut, examples, labels, lr]));
  }

  Output<N> concatV2<N, T, Tidx>(Output<N> values, Output<T> axis) {
    return addOperation(
        new OperationDescription('ConcatV2', 'ConcatV2', [values, axis]));
  }

  Output resourceApplyPowerSign<T, use_locking>(
      Output<dynamic> var_,
      Output<dynamic> m,
      Output<T> lr,
      Output<use_locking> logbase,
      Output<use_locking> signDecay,
      Output<use_locking> beta,
      Output<use_locking> grad) {
    return addOperation(new OperationDescription(
        'ResourceApplyPowerSign',
        'ResourceApplyPowerSign',
        [var_, m, lr, logbase, signDecay, beta, grad]));
  }

  Output<N> concat<N, T>(Output<int> concatDim, Output<N> values) {
    return addOperation(
        new OperationDescription('Concat', 'Concat', [concatDim, values]));
  }

  Output<T> leftShift<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('LeftShift', 'LeftShift', [x, y]));
  }

  Output<double> tensorArrayScatter<T>(Output<String> handle,
      Output<int> indices, Output<T> value, Output<double> flowIn) {
    return addOperation(new OperationDescription('TensorArrayScatter',
        'TensorArrayScatter', [handle, indices, value, flowIn]));
  }

  Output<T> bitwiseOr<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('BitwiseOr', 'BitwiseOr', [x, y]));
  }

  Output<T> applyAddSign<T, use_locking>(
      Output<T> var_,
      Output<use_locking> m,
      Output<use_locking> lr,
      Output<use_locking> alpha,
      Output<use_locking> signDecay,
      Output<use_locking> beta,
      Output<use_locking> grad) {
    return addOperation(new OperationDescription('ApplyAddSign', 'ApplyAddSign',
        [var_, m, lr, alpha, signDecay, beta, grad]));
  }

  Output<T> bitwiseAnd<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('BitwiseAnd', 'BitwiseAnd', [x, y]));
  }

  Output<dynamic> populationCount<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('PopulationCount', 'PopulationCount', [x]));
  }

  Output<channels> decodePng<channels, dtype>(Output<String> contents) {
    return addOperation(
        new OperationDescription('DecodePng', 'DecodePng', [contents]));
  }

  Output<T> invert<T>(Output<T> x) {
    return addOperation(new OperationDescription('Invert', 'Invert', [x]));
  }

  Output<String> fact() {
    return addOperation(new OperationDescription('Fact', 'Fact', []));
  }

  Output<int>
      skipgram<filename, batch_size, window_size, min_count, subsample>() {
    return addOperation(new OperationDescription('Skipgram', 'Skipgram', []));
  }

  Output<T> resizeBicubicGrad<T, align_corners>(
      Output<double> grads, Output<T> originalImage) {
    return addOperation(new OperationDescription(
        'ResizeBicubicGrad', 'ResizeBicubicGrad', [grads, originalImage]));
  }

  Output<T> sparseApplyMomentum<T, Tindices, use_locking, use_nesterov>(
      Output<T> var_,
      Output<Tindices> accum,
      Output<use_locking> lr,
      Output<use_nesterov> grad,
      Output<use_nesterov> indices,
      Output<use_nesterov> momentum) {
    return addOperation(new OperationDescription('SparseApplyMomentum',
        'SparseApplyMomentum', [var_, accum, lr, grad, indices, momentum]));
  }

  Output<T> uniqueWithCounts<T, out_idx>(Output<T> x) {
    return addOperation(
        new OperationDescription('UniqueWithCounts', 'UniqueWithCounts', [x]));
  }

  Output<dynamic> serializeIterator(Output<dynamic> resourceHandle) {
    return addOperation(new OperationDescription(
        'SerializeIterator', 'SerializeIterator', [resourceHandle]));
  }

  Output resourceApplyCenteredRMSProp<T, use_locking>(
      Output<dynamic> var_,
      Output<dynamic> mg,
      Output<dynamic> ms,
      Output<dynamic> mom,
      Output<T> lr,
      Output<use_locking> rho,
      Output<use_locking> momentum,
      Output<use_locking> epsilon,
      Output<use_locking> grad) {
    return addOperation(new OperationDescription(
        'ResourceApplyCenteredRMSProp',
        'ResourceApplyCenteredRMSProp',
        [var_, mg, ms, mom, lr, rho, momentum, epsilon, grad]));
  }

  Output<ksize> maxPool3DGrad<ksize, strides, padding, data_format, T, TInput>(
      Output<ksize> origInput,
      Output<strides> origOutput,
      Output<padding> grad) {
    return addOperation(new OperationDescription(
        'MaxPool3DGrad', 'MaxPool3DGrad', [origInput, origOutput, grad]));
  }

  Output resourceApplyRMSProp<T, use_locking>(
      Output<dynamic> var_,
      Output<dynamic> ms,
      Output<dynamic> mom,
      Output<T> lr,
      Output<use_locking> rho,
      Output<use_locking> momentum,
      Output<use_locking> epsilon,
      Output<use_locking> grad) {
    return addOperation(new OperationDescription(
        'ResourceApplyRMSProp',
        'ResourceApplyRMSProp',
        [var_, ms, mom, lr, rho, momentum, epsilon, grad]));
  }

  Output<T> zerosLike<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('ZerosLike', 'ZerosLike', [x]));
  }

  Output<int> concatOffset<N>(Output<int> concatDim, Output<int> shape) {
    return addOperation(new OperationDescription(
        'ConcatOffset', 'ConcatOffset', [concatDim, shape]));
  }

  Output<T> sigmoid<T>(Output<T> x) {
    return addOperation(new OperationDescription('Sigmoid', 'Sigmoid', [x]));
  }

  Output resourceSparseApplyAdadelta<T, Tindices, use_locking>(
      Output<dynamic> var_,
      Output<dynamic> accum,
      Output<dynamic> accumUpdate,
      Output<T> lr,
      Output<Tindices> rho,
      Output<use_locking> epsilon,
      Output<use_locking> grad,
      Output<use_locking> indices) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyAdadelta',
        'ResourceSparseApplyAdadelta',
        [var_, accum, accumUpdate, lr, rho, epsilon, grad, indices]));
  }

  Output resourceApplyAdam<T, use_locking, use_nesterov>(
      Output<dynamic> var_,
      Output<dynamic> m,
      Output<dynamic> v,
      Output<T> beta1Power,
      Output<use_locking> beta2Power,
      Output<use_nesterov> lr,
      Output<use_nesterov> beta1,
      Output<use_nesterov> beta2,
      Output<use_nesterov> epsilon,
      Output<use_nesterov> grad) {
    return addOperation(new OperationDescription(
        'ResourceApplyAdam',
        'ResourceApplyAdam',
        [var_, m, v, beta1Power, beta2Power, lr, beta1, beta2, epsilon, grad]));
  }

  Output resourceSparseApplyMomentum<T, Tindices, use_locking, use_nesterov>(
      Output<dynamic> var_,
      Output<dynamic> accum,
      Output<T> lr,
      Output<Tindices> grad,
      Output<use_locking> indices,
      Output<use_nesterov> momentum) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyMomentum',
        'ResourceSparseApplyMomentum',
        [var_, accum, lr, grad, indices, momentum]));
  }

  Output resourceApplyMomentum<T, use_locking, use_nesterov>(
      Output<dynamic> var_,
      Output<dynamic> accum,
      Output<T> lr,
      Output<use_locking> grad,
      Output<use_nesterov> momentum) {
    return addOperation(new OperationDescription('ResourceApplyMomentum',
        'ResourceApplyMomentum', [var_, accum, lr, grad, momentum]));
  }

  Output<N> parallelConcat<N, T, shape>(Output<N> values) {
    return addOperation(
        new OperationDescription('ParallelConcat', 'ParallelConcat', [values]));
  }

  Output<ksize> avgPoolGrad<ksize, strides, padding, data_format, T>(
      Output<int> origInputShape, Output<ksize> grad) {
    return addOperation(new OperationDescription(
        'AvgPoolGrad', 'AvgPoolGrad', [origInputShape, grad]));
  }

  Output<double> editDistance<normalize, T>(
      Output<int> hypothesisIndices,
      Output<normalize> hypothesisValues,
      Output<int> hypothesisShape,
      Output<int> truthIndices,
      Output<T> truthValues,
      Output<int> truthShape) {
    return addOperation(
        new OperationDescription('EditDistance', 'EditDistance', [
      hypothesisIndices,
      hypothesisValues,
      hypothesisShape,
      truthIndices,
      truthValues,
      truthShape
    ]));
  }

  Output resourceApplyFtrlV2<T, use_locking>(
      Output<dynamic> var_,
      Output<dynamic> accum,
      Output<dynamic> linear,
      Output<T> grad,
      Output<use_locking> lr,
      Output<use_locking> l1,
      Output<use_locking> l2,
      Output<use_locking> l2Shrinkage,
      Output<use_locking> lrPower) {
    return addOperation(new OperationDescription(
        'ResourceApplyFtrlV2',
        'ResourceApplyFtrlV2',
        [var_, accum, linear, grad, lr, l1, l2, l2Shrinkage, lrPower]));
  }

  Output<elem_type> stackPop<elem_type>(Output<String> handle) {
    return addOperation(
        new OperationDescription('StackPop', 'StackPop', [handle]));
  }

  Output<T> sparseApplyFtrlV2<T, Tindices, use_locking>(
      Output<T> var_,
      Output<Tindices> accum,
      Output<use_locking> linear,
      Output<use_locking> grad,
      Output<use_locking> indices,
      Output<use_locking> lr,
      Output<use_locking> l1,
      Output<use_locking> l2,
      Output<use_locking> l2Shrinkage,
      Output<use_locking> lrPower) {
    return addOperation(new OperationDescription(
        'SparseApplyFtrlV2', 'SparseApplyFtrlV2', [
      var_,
      accum,
      linear,
      grad,
      indices,
      lr,
      l1,
      l2,
      l2Shrinkage,
      lrPower
    ]));
  }

  Output resourceSparseApplyFtrl<T, Tindices, use_locking>(
      Output<dynamic> var_,
      Output<dynamic> accum,
      Output<dynamic> linear,
      Output<T> grad,
      Output<Tindices> indices,
      Output<use_locking> lr,
      Output<use_locking> l1,
      Output<use_locking> l2,
      Output<use_locking> lrPower) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyFtrl',
        'ResourceSparseApplyFtrl',
        [var_, accum, linear, grad, indices, lr, l1, l2, lrPower]));
  }

  Output<T> sign<T>(Output<T> x) {
    return addOperation(new OperationDescription('Sign', 'Sign', [x]));
  }

  Output resourceApplyAddSign<T, use_locking>(
      Output<dynamic> var_,
      Output<dynamic> m,
      Output<T> lr,
      Output<use_locking> alpha,
      Output<use_locking> signDecay,
      Output<use_locking> beta,
      Output<use_locking> grad) {
    return addOperation(new OperationDescription('ResourceApplyAddSign',
        'ResourceApplyAddSign', [var_, m, lr, alpha, signDecay, beta, grad]));
  }

  Output<T> neg<T>(Output<T> x) {
    return addOperation(new OperationDescription('Neg', 'Neg', [x]));
  }

  Output<String>
      barrier<component_types, shapes, capacity, container, shared_name>() {
    return addOperation(new OperationDescription('Barrier', 'Barrier', []));
  }

  Output resourceSparseApplyProximalAdagrad<T, Tindices, use_locking>(
      Output<dynamic> var_,
      Output<dynamic> accum,
      Output<T> lr,
      Output<Tindices> l1,
      Output<use_locking> l2,
      Output<use_locking> grad,
      Output<use_locking> indices) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyProximalAdagrad',
        'ResourceSparseApplyProximalAdagrad',
        [var_, accum, lr, l1, l2, grad, indices]));
  }

  Output<T> bitcast<T, type>(Output<T> input) {
    return addOperation(
        new OperationDescription('Bitcast', 'Bitcast', [input]));
  }

  Output<validate_indices> sparseToDense<validate_indices, T, Tindices>(
      Output<validate_indices> sparseIndices,
      Output<T> outputShape,
      Output<Tindices> sparseValues,
      Output<Tindices> defaultValue) {
    return addOperation(new OperationDescription(
        'SparseToDense',
        'SparseToDense',
        [sparseIndices, outputShape, sparseValues, defaultValue]));
  }

  Output resourceApplyAdagradDA<T, use_locking>(
      Output<dynamic> var_,
      Output<dynamic> gradientAccumulator,
      Output<dynamic> gradientSquaredAccumulator,
      Output<T> grad,
      Output<use_locking> lr,
      Output<use_locking> l1,
      Output<use_locking> l2,
      Output<int> globalStep) {
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
    ]));
  }

  Output<T> sparseApplyAdagradDA<T, Tindices, use_locking>(
      Output<T> var_,
      Output<Tindices> gradientAccumulator,
      Output<use_locking> gradientSquaredAccumulator,
      Output<use_locking> grad,
      Output<use_locking> indices,
      Output<use_locking> lr,
      Output<use_locking> l1,
      Output<use_locking> l2,
      Output<int> globalStep) {
    return addOperation(new OperationDescription(
        'SparseApplyAdagradDA', 'SparseApplyAdagradDA', [
      var_,
      gradientAccumulator,
      gradientSquaredAccumulator,
      grad,
      indices,
      lr,
      l1,
      l2,
      globalStep
    ]));
  }

  Output resourceSparseApplyAdagrad<T, Tindices, use_locking>(
      Output<dynamic> var_,
      Output<dynamic> accum,
      Output<T> lr,
      Output<Tindices> grad,
      Output<use_locking> indices) {
    return addOperation(new OperationDescription('ResourceSparseApplyAdagrad',
        'ResourceSparseApplyAdagrad', [var_, accum, lr, grad, indices]));
  }

  Output<T> sqrt<T>(Output<T> x) {
    return addOperation(new OperationDescription('Sqrt', 'Sqrt', [x]));
  }

  Output resourceApplyAdagrad<T, use_locking>(Output<dynamic> var_,
      Output<dynamic> accum, Output<T> lr, Output<use_locking> grad) {
    return addOperation(new OperationDescription('ResourceApplyAdagrad',
        'ResourceApplyAdagrad', [var_, accum, lr, grad]));
  }

  Output<T> applyAdadelta<T, use_locking>(
      Output<T> var_,
      Output<use_locking> accum,
      Output<use_locking> accumUpdate,
      Output<use_locking> lr,
      Output<use_locking> rho,
      Output<use_locking> epsilon,
      Output<use_locking> grad) {
    return addOperation(new OperationDescription('ApplyAdadelta',
        'ApplyAdadelta', [var_, accum, accumUpdate, lr, rho, epsilon, grad]));
  }

  Output<T> cholesky<T>(Output<T> input) {
    return addOperation(
        new OperationDescription('Cholesky', 'Cholesky', [input]));
  }

  Output<T> sparseSegmentSqrtNWithNumSegments<T, Tidx, Tnumsegments>(
      Output<T> data,
      Output<Tidx> indices,
      Output<int> segmentIds,
      Output<Tnumsegments> numSegments) {
    return addOperation(new OperationDescription(
        'SparseSegmentSqrtNWithNumSegments',
        'SparseSegmentSqrtNWithNumSegments',
        [data, indices, segmentIds, numSegments]));
  }

  Output resourceApplyProximalGradientDescent<T, use_locking>(
      Output<dynamic> var_,
      Output<T> alpha,
      Output<use_locking> l1,
      Output<use_locking> l2,
      Output<use_locking> delta) {
    return addOperation(new OperationDescription(
        'ResourceApplyProximalGradientDescent',
        'ResourceApplyProximalGradientDescent',
        [var_, alpha, l1, l2, delta]));
  }

  Output<T> tile<T, Tmultiples>(Output<T> input, Output<Tmultiples> multiples) {
    return addOperation(
        new OperationDescription('Tile', 'Tile', [input, multiples]));
  }

  Output<T> sparseApplyProximalGradientDescent<T, Tindices, use_locking>(
      Output<T> var_,
      Output<Tindices> alpha,
      Output<use_locking> l1,
      Output<use_locking> l2,
      Output<use_locking> grad,
      Output<use_locking> indices) {
    return addOperation(new OperationDescription(
        'SparseApplyProximalGradientDescent',
        'SparseApplyProximalGradientDescent',
        [var_, alpha, l1, l2, grad, indices]));
  }

  Output queueEnqueue<Tcomponents, timeout_ms>(
      Output<String> handle, Output<Tcomponents> components) {
    return addOperation(new OperationDescription(
        'QueueEnqueue', 'QueueEnqueue', [handle, components]));
  }

  Output<int> stringToHashBucketStrong<num_buckets, key>(Output<String> input) {
    return addOperation(new OperationDescription(
        'StringToHashBucketStrong', 'StringToHashBucketStrong', [input]));
  }

  /// *NOTE*: `Sub` supports broadcasting. More about broadcasting
  /// [here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
  Output<dynamic> mklSub<T>(
      Output<T> x, Output<T> y, Output<dynamic> mklX, Output<dynamic> mklY) {
    return addOperation(
        new OperationDescription('_MklSub', '_MklSub', [x, y, mklX, mklY]));
  }

  Output<T> applyProximalGradientDescent<T, use_locking>(
      Output<T> var_,
      Output<use_locking> alpha,
      Output<use_locking> l1,
      Output<use_locking> l2,
      Output<use_locking> delta) {
    return addOperation(new OperationDescription('ApplyProximalGradientDescent',
        'ApplyProximalGradientDescent', [var_, alpha, l1, l2, delta]));
  }

  Output<component_types> barrierTakeMany<
      component_types,
      allow_small_batch,
      wait_for_incomplete,
      timeout_ms>(Output<String> handle, Output<int> numElements) {
    return addOperation(new OperationDescription(
        'BarrierTakeMany', 'BarrierTakeMany', [handle, numElements]));
  }

  Output<T> matrixLogarithm<T>(Output<T> input) {
    return addOperation(new OperationDescription(
        'MatrixLogarithm', 'MatrixLogarithm', [input]));
  }

  Output resourceApplyGradientDescent<T, use_locking>(
      Output<dynamic> var_, Output<T> alpha, Output<use_locking> delta) {
    return addOperation(new OperationDescription('ResourceApplyGradientDescent',
        'ResourceApplyGradientDescent', [var_, alpha, delta]));
  }

  Output<T> cosh<T>(Output<T> x) {
    return addOperation(new OperationDescription('Cosh', 'Cosh', [x]));
  }

  Output<T> applyGradientDescent<T, use_locking>(
      Output<T> var_, Output<use_locking> alpha, Output<use_locking> delta) {
    return addOperation(new OperationDescription(
        'ApplyGradientDescent', 'ApplyGradientDescent', [var_, alpha, delta]));
  }

  Output<T> l2Loss<T>(Output<T> t) {
    return addOperation(new OperationDescription('L2Loss', 'L2Loss', [t]));
  }

  Output<SrcT> cast<SrcT, DstT>(Output<SrcT> x) {
    return addOperation(new OperationDescription('Cast', 'Cast', [x]));
  }

  Output<T> segmentMax<T, Tindices>(
      Output<T> data, Output<Tindices> segmentIds) {
    return addOperation(new OperationDescription(
        'SegmentMax', 'SegmentMax', [data, segmentIds]));
  }

  Output<limit> countUpTo<limit, T>(Output<limit> ref) {
    return addOperation(
        new OperationDescription('CountUpTo', 'CountUpTo', [ref]));
  }

  Output<T> batchNormWithGlobalNormalization<T, variance_epsilon,
          scale_after_normalization>(
      Output<T> t,
      Output<variance_epsilon> m,
      Output<scale_after_normalization> v,
      Output<scale_after_normalization> beta,
      Output<scale_after_normalization> gamma) {
    return addOperation(new OperationDescription(
        'BatchNormWithGlobalNormalization',
        'BatchNormWithGlobalNormalization',
        [t, m, v, beta, gamma]));
  }

  Output<double> fakeQuantWithMinMaxArgs<min, max, num_bits, narrow_range>(
      Output<double> inputs) {
    return addOperation(new OperationDescription(
        'FakeQuantWithMinMaxArgs', 'FakeQuantWithMinMaxArgs', [inputs]));
  }

  Output resourceScatterNdUpdate<T, Tindices, use_locking>(
      Output<dynamic> ref, Output<T> indices, Output<Tindices> updates) {
    return addOperation(new OperationDescription('ResourceScatterNdUpdate',
        'ResourceScatterNdUpdate', [ref, indices, updates]));
  }

  Output<T> scatterNdUpdate<T, Tindices, use_locking>(
      Output<T> ref, Output<Tindices> indices, Output<use_locking> updates) {
    return addOperation(new OperationDescription(
        'ScatterNdUpdate', 'ScatterNdUpdate', [ref, indices, updates]));
  }

  Output<T> scatterMul<T, Tindices, use_locking>(
      Output<T> ref, Output<Tindices> indices, Output<use_locking> updates) {
    return addOperation(new OperationDescription(
        'ScatterMul', 'ScatterMul', [ref, indices, updates]));
  }

  Output<T> scatterSub<T, Tindices, use_locking>(
      Output<T> ref, Output<Tindices> indices, Output<use_locking> updates) {
    return addOperation(new OperationDescription(
        'ScatterSub', 'ScatterSub', [ref, indices, updates]));
  }

  Output<lower> batchMatrixTriangularSolve<lower, adjoint, T>(
      Output<lower> matrix, Output<adjoint> rhs) {
    return addOperation(new OperationDescription('BatchMatrixTriangularSolve',
        'BatchMatrixTriangularSolve', [matrix, rhs]));
  }

  Output<keep_dims> mean<keep_dims, T, Tidx>(
      Output<keep_dims> input, Output<T> reductionIndices) {
    return addOperation(
        new OperationDescription('Mean', 'Mean', [input, reductionIndices]));
  }

  Output<T> scatterAdd<T, Tindices, use_locking>(
      Output<T> ref, Output<Tindices> indices, Output<use_locking> updates) {
    return addOperation(new OperationDescription(
        'ScatterAdd', 'ScatterAdd', [ref, indices, updates]));
  }

  Output<T> scatterUpdate<T, Tindices, use_locking>(
      Output<T> ref, Output<Tindices> indices, Output<use_locking> updates) {
    return addOperation(new OperationDescription(
        'ScatterUpdate', 'ScatterUpdate', [ref, indices, updates]));
  }

  Output<T> assignSub<T, use_locking>(
      Output<T> ref, Output<use_locking> value) {
    return addOperation(
        new OperationDescription('AssignSub', 'AssignSub', [ref, value]));
  }

  Output<T> assignAdd<T, use_locking>(
      Output<T> ref, Output<use_locking> value) {
    return addOperation(
        new OperationDescription('AssignAdd', 'AssignAdd', [ref, value]));
  }

  Output<T> betainc<T>(Output<T> a, Output<T> b, Output<T> x) {
    return addOperation(
        new OperationDescription('Betainc', 'Betainc', [a, b, x]));
  }

  Output<T> assign<T, validate_shape, use_locking>(
      Output<T> ref, Output<validate_shape> value) {
    return addOperation(
        new OperationDescription('Assign', 'Assign', [ref, value]));
  }

  Output<bool> isVariableInitialized<dtype>(Output<dtype> ref) {
    return addOperation(new OperationDescription(
        'IsVariableInitialized', 'IsVariableInitialized', [ref]));
  }

  /// If you use this function you will almost certainly want to add
  /// a control dependency as done in the implementation of parallel_stack to
  /// avoid race conditions.
  Output<T> parallelConcatUpdate<T, loc>(Output<T> value, Output<loc> update) {
    return addOperation(new OperationDescription(
        '_ParallelConcatUpdate', '_ParallelConcatUpdate', [value, update]));
  }

  Output<shape> variableV2<shape, dtype, container, shared_name>() {
    return addOperation(
        new OperationDescription('VariableV2', 'VariableV2', []));
  }

  Output<dynamic> iteratorFromStringHandle<output_types, output_shapes>(
      Output<String> stringHandle) {
    return addOperation(new OperationDescription('IteratorFromStringHandle',
        'IteratorFromStringHandle', [stringHandle]));
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
  Output writeAudioSummary<max_outputs>(
      Output<dynamic> writer,
      Output<int> step,
      Output<String> tag,
      Output<double> tensor,
      Output<double> sampleRate) {
    return addOperation(new OperationDescription('WriteAudioSummary',
        'WriteAudioSummary', [writer, step, tag, tensor, sampleRate]));
  }

  Output tensorArrayClose(Output<String> handle) {
    return addOperation(new OperationDescription(
        'TensorArrayClose', 'TensorArrayClose', [handle]));
  }

  Output<T> matrixBandPart<T, Tindex>(
      Output<T> input, Output<Tindex> numLower, Output<Tindex> numUpper) {
    return addOperation(new OperationDescription(
        'MatrixBandPart', 'MatrixBandPart', [input, numLower, numUpper]));
  }

  Output<int> tensorArrayConcatV2<dtype, element_shape_except0>(
      Output<String> handle, Output<double> flowIn) {
    return addOperation(new OperationDescription(
        'TensorArrayConcatV2', 'TensorArrayConcatV2', [handle, flowIn]));
  }

  Output<adjoint> matrixSolve<adjoint, T>(
      Output<adjoint> matrix, Output<T> rhs) {
    return addOperation(
        new OperationDescription('MatrixSolve', 'MatrixSolve', [matrix, rhs]));
  }

  Output writeFile(Output<String> filename, Output<String> contents) {
    return addOperation(new OperationDescription(
        'WriteFile', 'WriteFile', [filename, contents]));
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
  Output writeImageSummary<max_images, T>(
      Output<dynamic> writer,
      Output<int> step,
      Output<String> tag,
      Output<max_images> tensor,
      Output<dynamic> badColor) {
    return addOperation(new OperationDescription('WriteImageSummary',
        'WriteImageSummary', [writer, step, tag, tensor, badColor]));
  }

  Output<T> tan<T>(Output<T> x) {
    return addOperation(new OperationDescription('Tan', 'Tan', [x]));
  }

  /// The generated
  /// [`Summary`](https://www.tensorflow.org/code/tensorflow/core/framework/summary.proto)
  /// has one summary value containing a histogram for `values`.
  /// This op reports an `InvalidArgument` error if any value is not finite.
  Output writeHistogramSummary<T>(Output<dynamic> writer, Output<int> step,
      Output<String> tag, Output<T> values) {
    return addOperation(new OperationDescription('WriteHistogramSummary',
        'WriteHistogramSummary', [writer, step, tag, values]));
  }

  Output<T> batchMatMul<T, adj_x, adj_y>(Output<T> x, Output<adj_x> y) {
    return addOperation(
        new OperationDescription('BatchMatMul', 'BatchMatMul', [x, y]));
  }

  Output<int> batch<
      num_batch_threads,
      max_batch_size,
      max_enqueued_batches,
      batch_timeout_micros,
      allowed_batch_sizes,
      grad_timeout_micros,
      container,
      shared_name,
      batching_queue,
      T>(Output<num_batch_threads> inTensors) {
    return addOperation(
        new OperationDescription('Batch', 'Batch', [inTensors]));
  }

  Output writeSummary<T>(Output<dynamic> writer, Output<int> step,
      Output<T> tensor, Output<String> tag, Output<String> summaryMetadata) {
    return addOperation(new OperationDescription('WriteSummary', 'WriteSummary',
        [writer, step, tensor, tag, summaryMetadata]));
  }

  Output flushSummaryWriter(Output<dynamic> writer) {
    return addOperation(new OperationDescription(
        'FlushSummaryWriter', 'FlushSummaryWriter', [writer]));
  }

  /// This can be used to write tensors from the execution graph directly
  /// to a database. Only SQLite is supported right now. This function
  /// will create the schema if it doesn't exist. Entries in the Users,
  /// Experiments, and Runs tables will be created automatically if they
  /// don't already exist.
  Output createSummaryDbWriter(
      Output<dynamic> writer,
      Output<String> dbUri,
      Output<String> experimentName,
      Output<String> runName,
      Output<String> userName) {
    return addOperation(new OperationDescription(
        'CreateSummaryDbWriter',
        'CreateSummaryDbWriter',
        [writer, dbUri, experimentName, runName, userName]));
  }

  Output<T> sparseApplyRMSProp<T, Tindices, use_locking>(
      Output<T> var_,
      Output<Tindices> ms,
      Output<use_locking> mom,
      Output<use_locking> lr,
      Output<use_locking> rho,
      Output<use_locking> momentum,
      Output<use_locking> epsilon,
      Output<use_locking> grad,
      Output<use_locking> indices) {
    return addOperation(new OperationDescription(
        'SparseApplyRMSProp',
        'SparseApplyRMSProp',
        [var_, ms, mom, lr, rho, momentum, epsilon, grad, indices]));
  }

  /// The summary writer is an in-graph resource which can be used by ops to write
  /// summaries to event files.
  Output<dynamic> summaryWriter<shared_name, container>() {
    return addOperation(
        new OperationDescription('SummaryWriter', 'SummaryWriter', []));
  }

  Output<String> substr<T>(Output<String> input, Output<T> pos, Output<T> len) {
    return addOperation(
        new OperationDescription('Substr', 'Substr', [input, pos, len]));
  }

  Output<String> decodeBase64(Output<String> input) {
    return addOperation(
        new OperationDescription('DecodeBase64', 'DecodeBase64', [input]));
  }

  Output<String> encodeBase64<pad>(Output<String> input) {
    return addOperation(
        new OperationDescription('EncodeBase64', 'EncodeBase64', [input]));
  }

  Output<String> stringJoin<N, separator>(Output<String> inputs) {
    return addOperation(
        new OperationDescription('StringJoin', 'StringJoin', [inputs]));
  }

  Output<T> softsign<T>(Output<T> features) {
    return addOperation(
        new OperationDescription('Softsign', 'Softsign', [features]));
  }

  Output<double> quantizedAdd<T1, T2, Toutput>(
      Output<T1> x,
      Output<T2> y,
      Output<double> minX,
      Output<double> maxX,
      Output<double> minY,
      Output<double> maxY) {
    return addOperation(new OperationDescription(
        'QuantizedAdd', 'QuantizedAdd', [x, y, minX, maxX, minY, maxY]));
  }

  Output<int> stringToHashBucket<num_buckets>(Output<String> stringTensor) {
    return addOperation(new OperationDescription(
        'StringToHashBucket', 'StringToHashBucket', [stringTensor]));
  }

  Output<bool> isFinite<T>(Output<T> x) {
    return addOperation(new OperationDescription('IsFinite', 'IsFinite', [x]));
  }

  Output<String> regexReplace<replace_global>(
      Output<String> input, Output<String> pattern, Output<String> rewrite) {
    return addOperation(new OperationDescription(
        'RegexReplace', 'RegexReplace', [input, pattern, rewrite]));
  }

  Output<T> applyAdagrad<T, use_locking>(
      Output<T> var_,
      Output<use_locking> accum,
      Output<use_locking> lr,
      Output<use_locking> grad) {
    return addOperation(new OperationDescription(
        'ApplyAdagrad', 'ApplyAdagrad', [var_, accum, lr, grad]));
  }

  Output<dtype> statelessRandomNormal<dtype, T, Tseed>(
      Output<dtype> shape, Output<T> seed) {
    return addOperation(new OperationDescription(
        'StatelessRandomNormal', 'StatelessRandomNormal', [shape, seed]));
  }

  Output<dtype> statelessRandomUniform<dtype, T, Tseed>(
      Output<dtype> shape, Output<T> seed) {
    return addOperation(new OperationDescription(
        'StatelessRandomUniform', 'StatelessRandomUniform', [shape, seed]));
  }

  Output<double> quantizedResizeBilinear<T, align_corners>(Output<T> images,
      Output<int> size, Output<double> min, Output<double> max) {
    return addOperation(new OperationDescription('QuantizedResizeBilinear',
        'QuantizedResizeBilinear', [images, size, min, max]));
  }

  Output<seed> randomGamma<seed, seed2, S, T>(
      Output<seed> shape, Output<seed2> alpha) {
    return addOperation(
        new OperationDescription('RandomGamma', 'RandomGamma', [shape, alpha]));
  }

  Output<seed> randomShuffle<seed, seed2, T>(Output<seed> value) {
    return addOperation(
        new OperationDescription('RandomShuffle', 'RandomShuffle', [value]));
  }

  Output<T> invertPermutation<T>(Output<T> x) {
    return addOperation(new OperationDescription(
        'InvertPermutation', 'InvertPermutation', [x]));
  }

  Output<String> readFile(Output<String> filename) {
    return addOperation(
        new OperationDescription('ReadFile', 'ReadFile', [filename]));
  }

  Output<seed> truncatedNormal<seed, seed2, dtype, T>(Output<seed> shape) {
    return addOperation(new OperationDescription(
        'TruncatedNormal', 'TruncatedNormal', [shape]));
  }

  Output<T> erf<T>(Output<T> x) {
    return addOperation(new OperationDescription('Erf', 'Erf', [x]));
  }

  Output<seed> randomStandardNormal<seed, seed2, dtype, T>(Output<seed> shape) {
    return addOperation(new OperationDescription(
        'RandomStandardNormal', 'RandomStandardNormal', [shape]));
  }

  Output<T> erfc<T>(Output<T> x) {
    return addOperation(new OperationDescription('Erfc', 'Erfc', [x]));
  }

  Output<seed> randomUniformInt<seed, seed2, Tout, T>(
      Output<seed> shape, Output<seed2> minval, Output<Tout> maxval) {
    return addOperation(new OperationDescription(
        'RandomUniformInt', 'RandomUniformInt', [shape, minval, maxval]));
  }

  Output<seed> randomUniform<seed, seed2, dtype, T>(Output<seed> shape) {
    return addOperation(
        new OperationDescription('RandomUniform', 'RandomUniform', [shape]));
  }

  Output<T> sparseFillEmptyRowsGrad<T>(
      Output<int> reverseIndexMap, Output<T> gradValues) {
    return addOperation(new OperationDescription('SparseFillEmptyRowsGrad',
        'SparseFillEmptyRowsGrad', [reverseIndexMap, gradValues]));
  }

  Output<double>
      quantizedConv2D<Tinput, Tfilter, out_type, strides, padding, dilations>(
          Output<Tinput> input,
          Output<Tfilter> filter,
          Output<double> minInput,
          Output<double> maxInput,
          Output<double> minFilter,
          Output<double> maxFilter) {
    return addOperation(new OperationDescription(
        'QuantizedConv2D',
        'QuantizedConv2D',
        [input, filter, minInput, maxInput, minFilter, maxFilter]));
  }

  Output<T> scatterNdSub<T, Tindices, use_locking>(
      Output<T> ref, Output<Tindices> indices, Output<use_locking> updates) {
    return addOperation(new OperationDescription(
        'ScatterNdSub', 'ScatterNdSub', [ref, indices, updates]));
  }

  Output<int> sparseFillEmptyRows<T>(Output<int> indices, Output<T> values,
      Output<int> denseShape, Output<T> defaultValue) {
    return addOperation(new OperationDescription('SparseFillEmptyRows',
        'SparseFillEmptyRows', [indices, values, denseShape, defaultValue]));
  }

  Output<dynamic> flatMapDataset<f, Targuments, output_types, output_shapes>(
      Output<dynamic> inputDataset, Output<f> otherArguments) {
    return addOperation(new OperationDescription(
        'FlatMapDataset', 'FlatMapDataset', [inputDataset, otherArguments]));
  }

  Output<int> addManySparseToTensorsMap<T, container, shared_name>(
      Output<int> sparseIndices,
      Output<T> sparseValues,
      Output<int> sparseShape) {
    return addOperation(new OperationDescription(
        'AddManySparseToTensorsMap',
        'AddManySparseToTensorsMap',
        [sparseIndices, sparseValues, sparseShape]));
  }

  Output<T> biasAddGrad<T, data_format>(Output<T> outBackprop) {
    return addOperation(
        new OperationDescription('BiasAddGrad', 'BiasAddGrad', [outBackprop]));
  }

  Output<T> elu<T>(Output<T> features) {
    return addOperation(new OperationDescription('Elu', 'Elu', [features]));
  }

  Output<int> addSparseToTensorsMap<T, container, shared_name>(
      Output<int> sparseIndices,
      Output<T> sparseValues,
      Output<int> sparseShape) {
    return addOperation(new OperationDescription('AddSparseToTensorsMap',
        'AddSparseToTensorsMap', [sparseIndices, sparseValues, sparseShape]));
  }

  Output<T> sparseSparseMaximum<T>(
      Output<int> aIndices,
      Output<T> aValues,
      Output<int> aShape,
      Output<int> bIndices,
      Output<T> bValues,
      Output<int> bShape) {
    return addOperation(new OperationDescription(
        'SparseSparseMaximum',
        'SparseSparseMaximum',
        [aIndices, aValues, aShape, bIndices, bValues, bShape]));
  }

  Output<T> preventGradient<T, message>(Output<T> input) {
    return addOperation(new OperationDescription(
        'PreventGradient', 'PreventGradient', [input]));
  }

  Output<T> sparseSoftmax<T>(
      Output<int> spIndices, Output<T> spValues, Output<int> spShape) {
    return addOperation(new OperationDescription(
        'SparseSoftmax', 'SparseSoftmax', [spIndices, spValues, spShape]));
  }

  Output<T> sparseDenseCwiseAdd<T>(Output<int> spIndices, Output<T> spValues,
      Output<int> spShape, Output<T> dense) {
    return addOperation(new OperationDescription('SparseDenseCwiseAdd',
        'SparseDenseCwiseAdd', [spIndices, spValues, spShape, dense]));
  }

  Output<String> getSessionHandle<T>(Output<T> value) {
    return addOperation(new OperationDescription(
        'GetSessionHandle', 'GetSessionHandle', [value]));
  }

  Output<T> fusedPadConv2D<T, mode, strides, padding>(
      Output<T> input, Output<int> paddings, Output<mode> filter) {
    return addOperation(new OperationDescription(
        'FusedPadConv2D', 'FusedPadConv2D', [input, paddings, filter]));
  }

  Output<T> sparseDenseCwiseMul<T>(Output<int> spIndices, Output<T> spValues,
      Output<int> spShape, Output<T> dense) {
    return addOperation(new OperationDescription('SparseDenseCwiseMul',
        'SparseDenseCwiseMul', [spIndices, spValues, spShape, dense]));
  }

  Output<T> sparseReorder<T>(
      Output<int> inputIndices, Output<T> inputValues, Output<int> inputShape) {
    return addOperation(new OperationDescription('SparseReorder',
        'SparseReorder', [inputIndices, inputValues, inputShape]));
  }

  Output<T> relu6<T>(Output<T> features) {
    return addOperation(new OperationDescription('Relu6', 'Relu6', [features]));
  }

  Output<String> readerSerializeStateV2(Output<dynamic> readerHandle) {
    return addOperation(new OperationDescription(
        'ReaderSerializeStateV2', 'ReaderSerializeStateV2', [readerHandle]));
  }

  Output<int> sparseSplit<num_split, T>(Output<int> splitDim,
      Output<int> indices, Output<num_split> values, Output<int> shape) {
    return addOperation(new OperationDescription(
        'SparseSplit', 'SparseSplit', [splitDim, indices, values, shape]));
  }

  Output destroyResourceOp<ignore_lookup_error>(Output<dynamic> resource) {
    return addOperation(new OperationDescription(
        'DestroyResourceOp', 'DestroyResourceOp', [resource]));
  }

  Output<T> histogramFixedWidth<T, dtype>(
      Output<T> values, Output<dtype> valueRange, Output<int> nbins) {
    return addOperation(new OperationDescription('HistogramFixedWidth',
        'HistogramFixedWidth', [values, valueRange, nbins]));
  }

  Output<dynamic>
      iterator<shared_name, container, output_types, output_shapes>() {
    return addOperation(new OperationDescription('Iterator', 'Iterator', []));
  }

  Output<double> tensorArrayWriteV2<T>(Output<String> handle, Output<int> index,
      Output<T> value, Output<double> flowIn) {
    return addOperation(new OperationDescription('TensorArrayWriteV2',
        'TensorArrayWriteV2', [handle, index, value, flowIn]));
  }

  Output<int> denseToSparseSetOperation<set_operation, validate_indices, T>(
      Output<set_operation> set1,
      Output<int> set2Indices,
      Output<validate_indices> set2Values,
      Output<int> set2Shape) {
    return addOperation(new OperationDescription(
        'DenseToSparseSetOperation',
        'DenseToSparseSetOperation',
        [set1, set2Indices, set2Values, set2Shape]));
  }

  Output sdcaShrinkL1<num_features, l1, l2>(Output<double> weights) {
    return addOperation(
        new OperationDescription('SdcaShrinkL1', 'SdcaShrinkL1', [weights]));
  }

  Output consumeMutexLock(Output<dynamic> mutexLock) {
    return addOperation(new OperationDescription(
        'ConsumeMutexLock', 'ConsumeMutexLock', [mutexLock]));
  }

  Output<double> quantizedBiasAdd<T1, T2, out_type>(
      Output<T1> input,
      Output<T2> bias,
      Output<double> minInput,
      Output<double> maxInput,
      Output<double> minBias,
      Output<double> maxBias) {
    return addOperation(new OperationDescription(
        'QuantizedBiasAdd',
        'QuantizedBiasAdd',
        [input, bias, minInput, maxInput, minBias, maxBias]));
  }

  Output<T> dataFormatVecPermute<T, src_format, dst_format>(Output<T> x) {
    return addOperation(new OperationDescription(
        'DataFormatVecPermute', 'DataFormatVecPermute', [x]));
  }

  Output<T> batchCholeskyGrad<T>(Output<T> l, Output<T> grad) {
    return addOperation(new OperationDescription(
        'BatchCholeskyGrad', 'BatchCholeskyGrad', [l, grad]));
  }

  Output resourceScatterAdd<dtype, Tindices>(Output<dynamic> resource,
      Output<dtype> indices, Output<Tindices> updates) {
    return addOperation(new OperationDescription('ResourceScatterAdd',
        'ResourceScatterAdd', [resource, indices, updates]));
  }

  Output<T> fusedBatchNormGradV2<T, U, epsilon, data_format, is_training>(
      Output<T> yBackprop,
      Output<U> x,
      Output<double> scale,
      Output<epsilon> reserveSpace1,
      Output<data_format> reserveSpace2) {
    return addOperation(new OperationDescription(
        'FusedBatchNormGradV2',
        'FusedBatchNormGradV2',
        [yBackprop, x, scale, reserveSpace1, reserveSpace2]));
  }

  Output<int> barrierReadySize(Output<String> handle) {
    return addOperation(new OperationDescription(
        'BarrierReadySize', 'BarrierReadySize', [handle]));
  }

  Output mapStage<capacity, memory_limit, dtypes, fake_dtypes, container,
          shared_name>(
      Output<int> key, Output<int> indices, Output<capacity> values) {
    return addOperation(new OperationDescription(
        'MapStage', 'MapStage', [key, indices, values]));
  }

  Output<T> sparseTensorDenseMatMul<T, Tindices, adjoint_a, adjoint_b>(
      Output<T> aIndices,
      Output<Tindices> aValues,
      Output<int> aShape,
      Output<adjoint_a> b) {
    return addOperation(new OperationDescription('SparseTensorDenseMatMul',
        'SparseTensorDenseMatMul', [aIndices, aValues, aShape, b]));
  }

  Output<T> unsortedSegmentMin<T, Tindices, Tnumsegments>(Output<T> data,
      Output<Tindices> segmentIds, Output<Tnumsegments> numSegments) {
    return addOperation(new OperationDescription('UnsortedSegmentMin',
        'UnsortedSegmentMin', [data, segmentIds, numSegments]));
  }

  Output<T> segmentMin<T, Tindices>(
      Output<T> data, Output<Tindices> segmentIds) {
    return addOperation(new OperationDescription(
        'SegmentMin', 'SegmentMin', [data, segmentIds]));
  }

  Output<Tinputs> remoteFusedGraphExecute<Tinputs, Toutputs,
      serialized_remote_fused_graph_execute_info>(Output<Tinputs> inputs) {
    return addOperation(new OperationDescription(
        'RemoteFusedGraphExecute', 'RemoteFusedGraphExecute', [inputs]));
  }

  Output resourceSparseApplyRMSProp<T, Tindices, use_locking>(
      Output<dynamic> var_,
      Output<dynamic> ms,
      Output<dynamic> mom,
      Output<T> lr,
      Output<Tindices> rho,
      Output<use_locking> momentum,
      Output<use_locking> epsilon,
      Output<use_locking> grad,
      Output<use_locking> indices) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyRMSProp',
        'ResourceSparseApplyRMSProp',
        [var_, ms, mom, lr, rho, momentum, epsilon, grad, indices]));
  }

  Output<dynamic> batchIFFT2D(Output<dynamic> input) {
    return addOperation(
        new OperationDescription('BatchIFFT2D', 'BatchIFFT2D', [input]));
  }

  Output<out_type> stringToNumber<out_type>(Output<String> stringTensor) {
    return addOperation(new OperationDescription(
        'StringToNumber', 'StringToNumber', [stringTensor]));
  }

  Output<String> decodeJSONExample(Output<String> jsonExamples) {
    return addOperation(new OperationDescription(
        'DecodeJSONExample', 'DecodeJSONExample', [jsonExamples]));
  }

  Output<String> tensorSummary<T, description, labels, display_name>(
      Output<T> tensor) {
    return addOperation(
        new OperationDescription('TensorSummary', 'TensorSummary', [tensor]));
  }

  Output<T> scatterDiv<T, Tindices, use_locking>(
      Output<T> ref, Output<Tindices> indices, Output<use_locking> updates) {
    return addOperation(new OperationDescription(
        'ScatterDiv', 'ScatterDiv', [ref, indices, updates]));
  }

  Output<String> serializeTensor<T>(Output<T> tensor) {
    return addOperation(new OperationDescription(
        'SerializeTensor', 'SerializeTensor', [tensor]));
  }

  Output<double> cTCBeamSearchDecoder<beam_width, top_paths, merge_repeated>(
      Output<double> inputs, Output<int> sequenceLength) {
    return addOperation(new OperationDescription('CTCBeamSearchDecoder',
        'CTCBeamSearchDecoder', [inputs, sequenceLength]));
  }

  Output<out_type> parseTensor<out_type>(Output<String> serialized) {
    return addOperation(
        new OperationDescription('ParseTensor', 'ParseTensor', [serialized]));
  }

  Output<T> scatterNdNonAliasingAdd<T, Tindices>(
      Output<T> input, Output<Tindices> indices, Output<Tindices> updates) {
    return addOperation(new OperationDescription('ScatterNdNonAliasingAdd',
        'ScatterNdNonAliasingAdd', [input, indices, updates]));
  }

  Output<seed> multinomial<seed, seed2, T, output_dtype>(
      Output<seed> logits, Output<int> numSamples) {
    return addOperation(new OperationDescription(
        'Multinomial', 'Multinomial', [logits, numSamples]));
  }

  Output<String> decodeCompressed<compression_type>(Output<String> bytes) {
    return addOperation(new OperationDescription(
        'DecodeCompressed', 'DecodeCompressed', [bytes]));
  }

  Output<int> sdcaFprint(Output<String> input) {
    return addOperation(
        new OperationDescription('SdcaFprint', 'SdcaFprint', [input]));
  }

  Output<int> readerNumRecordsProducedV2(Output<dynamic> readerHandle) {
    return addOperation(new OperationDescription('ReaderNumRecordsProducedV2',
        'ReaderNumRecordsProducedV2', [readerHandle]));
  }

  Output<out_type> decodeRaw<out_type, little_endian>(Output<String> bytes) {
    return addOperation(
        new OperationDescription('DecodeRaw', 'DecodeRaw', [bytes]));
  }

  Output saveSlices<T>(Output<String> filename, Output<String> tensorNames,
      Output<String> shapesAndSlices, Output<T> data) {
    return addOperation(new OperationDescription('SaveSlices', 'SaveSlices',
        [filename, tensorNames, shapesAndSlices, data]));
  }

  Output<ksize> avgPool3D<ksize, strides, padding, data_format, T>(
      Output<ksize> input) {
    return addOperation(
        new OperationDescription('AvgPool3D', 'AvgPool3D', [input]));
  }

  Output<dynamic> batchIFFT3D(Output<dynamic> input) {
    return addOperation(
        new OperationDescription('BatchIFFT3D', 'BatchIFFT3D', [input]));
  }

  Output<double> adjustHue(Output<double> images, Output<double> delta) {
    return addOperation(
        new OperationDescription('AdjustHue', 'AdjustHue', [images, delta]));
  }

  Output<dynamic> batchFFT3D(Output<dynamic> input) {
    return addOperation(
        new OperationDescription('BatchFFT3D', 'BatchFFT3D', [input]));
  }

  Output<T> sparseSparseMinimum<T>(
      Output<int> aIndices,
      Output<T> aValues,
      Output<int> aShape,
      Output<int> bIndices,
      Output<T> bValues,
      Output<int> bShape) {
    return addOperation(new OperationDescription(
        'SparseSparseMinimum',
        'SparseSparseMinimum',
        [aIndices, aValues, aShape, bIndices, bValues, bShape]));
  }

  Output<dynamic>
      textLineReaderV2<skip_header_lines, container, shared_name>() {
    return addOperation(
        new OperationDescription('TextLineReaderV2', 'TextLineReaderV2', []));
  }

  Output<dynamic> fixedLengthRecordReaderV2<header_bytes, record_bytes,
      footer_bytes, hop_bytes, container, shared_name, encoding>() {
    return addOperation(new OperationDescription(
        'FixedLengthRecordReaderV2', 'FixedLengthRecordReaderV2', []));
  }

  Output<dynamic> identityReaderV2<container, shared_name>() {
    return addOperation(
        new OperationDescription('IdentityReaderV2', 'IdentityReaderV2', []));
  }

  Output<double> iRFFT3D(Output<dynamic> input, Output<int> fftLength) {
    return addOperation(
        new OperationDescription('IRFFT3D', 'IRFFT3D', [input, fftLength]));
  }

  Output<T> applyFtrl<T, use_locking>(
      Output<T> var_,
      Output<use_locking> accum,
      Output<use_locking> linear,
      Output<use_locking> grad,
      Output<use_locking> lr,
      Output<use_locking> l1,
      Output<use_locking> l2,
      Output<use_locking> lrPower) {
    return addOperation(new OperationDescription('ApplyFtrl', 'ApplyFtrl',
        [var_, accum, linear, grad, lr, l1, l2, lrPower]));
  }

  Output<double> iRFFT(Output<dynamic> input, Output<int> fftLength) {
    return addOperation(
        new OperationDescription('IRFFT', 'IRFFT', [input, fftLength]));
  }

  Output<dynamic> rFFT(Output<double> input, Output<int> fftLength) {
    return addOperation(
        new OperationDescription('RFFT', 'RFFT', [input, fftLength]));
  }

  Output<dynamic> iFFT3D(Output<dynamic> input) {
    return addOperation(new OperationDescription('IFFT3D', 'IFFT3D', [input]));
  }

  Output<dynamic> fFT3D(Output<dynamic> input) {
    return addOperation(new OperationDescription('FFT3D', 'FFT3D', [input]));
  }

  Output<bool> lessEqual<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('LessEqual', 'LessEqual', [x, y]));
  }

  Output<dynamic> timestamp() {
    return addOperation(new OperationDescription('Timestamp', 'Timestamp', []));
  }

  Output<dynamic> paddedBatchDataset<Toutput_types, output_shapes, N>(
      Output<dynamic> inputDataset,
      Output<int> batchSize,
      Output<int> paddedShapes,
      Output<Toutput_types> paddingValues) {
    return addOperation(new OperationDescription(
        'PaddedBatchDataset',
        'PaddedBatchDataset',
        [inputDataset, batchSize, paddedShapes, paddingValues]));
  }

  Output<dynamic> stackV2<elem_type, stack_name>(Output<int> maxSize) {
    return addOperation(
        new OperationDescription('StackV2', 'StackV2', [maxSize]));
  }

  Output<component_types> queueDequeueUpTo<component_types, timeout_ms>(
      Output<String> handle, Output<int> n) {
    return addOperation(new OperationDescription(
        'QueueDequeueUpTo', 'QueueDequeueUpTo', [handle, n]));
  }

  Output<T> tileGrad<T>(Output<T> input, Output<int> multiples) {
    return addOperation(
        new OperationDescription('TileGrad', 'TileGrad', [input, multiples]));
  }

  Output<String> audioSummary<sample_rate, max_outputs>(
      Output<String> tag, Output<double> tensor) {
    return addOperation(new OperationDescription(
        'AudioSummary', 'AudioSummary', [tag, tensor]));
  }

  Output<timeout_micros> unbatch<timeout_micros, container, shared_name, T>(
      Output<timeout_micros> batchedTensor,
      Output<int> batchIndex,
      Output<int> id) {
    return addOperation(new OperationDescription(
        'Unbatch', 'Unbatch', [batchedTensor, batchIndex, id]));
  }

  Output<capacity>
      mapUnstage<capacity, memory_limit, dtypes, container, shared_name>(
          Output<int> key, Output<int> indices) {
    return addOperation(
        new OperationDescription('MapUnstage', 'MapUnstage', [key, indices]));
  }

  Output<String> tensorSummaryV2<T>(Output<String> tag, Output<T> tensor,
      Output<String> serializedSummaryMetadata) {
    return addOperation(new OperationDescription('TensorSummaryV2',
        'TensorSummaryV2', [tag, tensor, serializedSummaryMetadata]));
  }

  Output<signed_input>
      quantizeAndDequantizeV2<signed_input, num_bits, range_given, T>(
          Output<signed_input> input,
          Output<num_bits> inputMin,
          Output<range_given> inputMax) {
    return addOperation(new OperationDescription('QuantizeAndDequantizeV2',
        'QuantizeAndDequantizeV2', [input, inputMin, inputMax]));
  }

  Output<dynamic> slideDataset<output_types, output_shapes>(
      Output<dynamic> inputDataset,
      Output<int> windowSize,
      Output<int> stride) {
    return addOperation(new OperationDescription(
        'SlideDataset', 'SlideDataset', [inputDataset, windowSize, stride]));
  }

  Output<T> print<T, U, message, first_n, summarize>(
      Output<T> input, Output<U> data) {
    return addOperation(
        new OperationDescription('Print', 'Print', [input, data]));
  }

  Output<double> tensorArrayWrite<T>(Output<String> handle, Output<int> index,
      Output<T> value, Output<double> flowIn) {
    return addOperation(new OperationDescription('TensorArrayWrite',
        'TensorArrayWrite', [handle, index, value, flowIn]));
  }

  Output<T> transpose<T, Tperm>(Output<T> x, Output<Tperm> perm) {
    return addOperation(
        new OperationDescription('Transpose', 'Transpose', [x, perm]));
  }

  Output assert_<T, summarize>(Output<bool> condition, Output<T> data) {
    return addOperation(
        new OperationDescription('Assert', 'Assert', [condition, data]));
  }

  Output controlTrigger() {
    return addOperation(
        new OperationDescription('ControlTrigger', 'ControlTrigger', []));
  }

  Output<N> parallelDynamicStitch<N, T>(Output<int> indices, Output<N> data) {
    return addOperation(new OperationDescription(
        'ParallelDynamicStitch', 'ParallelDynamicStitch', [indices, data]));
  }

  Output<T> nextIteration<T>(Output<T> data) {
    return addOperation(
        new OperationDescription('NextIteration', 'NextIteration', [data]));
  }

  Output initializeTableV2<Tkey, Tval>(
      Output<dynamic> tableHandle, Output<Tkey> keys, Output<Tval> values) {
    return addOperation(new OperationDescription(
        'InitializeTableV2', 'InitializeTableV2', [tableHandle, keys, values]));
  }

  Output<T> imag<T, Tout>(Output<T> input) {
    return addOperation(new OperationDescription('Imag', 'Imag', [input]));
  }

  Output<String> tensorArrayGrad<source>(
      Output<String> handle, Output<double> flowIn) {
    return addOperation(new OperationDescription(
        'TensorArrayGrad', 'TensorArrayGrad', [handle, flowIn]));
  }

  Output<String> mutableDenseHashTable<
      container,
      shared_name,
      use_node_name_sharing,
      key_dtype,
      value_dtype,
      value_shape,
      initial_num_buckets,
      max_load_factor>(Output<container> emptyKey) {
    return addOperation(new OperationDescription(
        'MutableDenseHashTable', 'MutableDenseHashTable', [emptyKey]));
  }

  Output<axis> oneHot<axis, T, TI>(Output<axis> indices, Output<int> depth,
      Output<T> onValue, Output<TI> offValue) {
    return addOperation(new OperationDescription(
        'OneHot', 'OneHot', [indices, depth, onValue, offValue]));
  }

  Output<dynamic> mutableHashTableOfTensorsV2<container, shared_name,
      use_node_name_sharing, key_dtype, value_dtype, value_shape>() {
    return addOperation(new OperationDescription(
        'MutableHashTableOfTensorsV2', 'MutableHashTableOfTensorsV2', []));
  }

  Output<T> softplus<T>(Output<T> features) {
    return addOperation(
        new OperationDescription('Softplus', 'Softplus', [features]));
  }

  Output<dynamic> mutableHashTableV2<container, shared_name,
      use_node_name_sharing, key_dtype, value_dtype>() {
    return addOperation(new OperationDescription(
        'MutableHashTableV2', 'MutableHashTableV2', []));
  }

  /// The input `tag` and `value` must have the scalars.
  Output writeScalarSummary<T>(Output<dynamic> writer, Output<int> step,
      Output<String> tag, Output<T> value) {
    return addOperation(new OperationDescription('WriteScalarSummary',
        'WriteScalarSummary', [writer, step, tag, value]));
  }

  Output<String> reduceJoin<keep_dims, separator>(
      Output<String> inputs, Output<int> reductionIndices) {
    return addOperation(new OperationDescription(
        'ReduceJoin', 'ReduceJoin', [inputs, reductionIndices]));
  }

  Output<int> sparseConcat<concat_dim, N, T>(
      Output<int> indices, Output<concat_dim> values, Output<int> shapes) {
    return addOperation(new OperationDescription(
        'SparseConcat', 'SparseConcat', [indices, values, shapes]));
  }

  Output<String> shardedFilespec(
      Output<String> basename, Output<int> numShards) {
    return addOperation(new OperationDescription(
        'ShardedFilespec', 'ShardedFilespec', [basename, numShards]));
  }

  Output<dynamic> iFFT2D(Output<dynamic> input) {
    return addOperation(new OperationDescription('IFFT2D', 'IFFT2D', [input]));
  }

  Output<dynamic> hashTableV2<container, shared_name, use_node_name_sharing,
      key_dtype, value_dtype>() {
    return addOperation(
        new OperationDescription('HashTableV2', 'HashTableV2', []));
  }

  Output<String> hashTable<container, shared_name, use_node_name_sharing,
      key_dtype, value_dtype>() {
    return addOperation(new OperationDescription('HashTable', 'HashTable', []));
  }

  Output<T> sparseDenseCwiseDiv<T>(Output<int> spIndices, Output<T> spValues,
      Output<int> spShape, Output<T> dense) {
    return addOperation(new OperationDescription('SparseDenseCwiseDiv',
        'SparseDenseCwiseDiv', [spIndices, spValues, spShape, dense]));
  }

  Output lookupTableImport<Tin, Tout>(
      Output<String> tableHandle, Output<Tin> keys, Output<Tout> values) {
    return addOperation(new OperationDescription(
        'LookupTableImport', 'LookupTableImport', [tableHandle, keys, values]));
  }

  Output<Tkeys> lookupTableExportV2<Tkeys, Tvalues>(
      Output<dynamic> tableHandle) {
    return addOperation(new OperationDescription(
        'LookupTableExportV2', 'LookupTableExportV2', [tableHandle]));
  }

  Output assignVariableOp<dtype>(
      Output<dynamic> resource, Output<dtype> value) {
    return addOperation(new OperationDescription(
        'AssignVariableOp', 'AssignVariableOp', [resource, value]));
  }

  Output<int> lookupTableSize(Output<String> tableHandle) {
    return addOperation(new OperationDescription(
        'LookupTableSize', 'LookupTableSize', [tableHandle]));
  }

  Output lookupTableInsert<Tin, Tout>(
      Output<String> tableHandle, Output<Tin> keys, Output<Tout> values) {
    return addOperation(new OperationDescription(
        'LookupTableInsert', 'LookupTableInsert', [tableHandle, keys, values]));
  }

  Output initializeTable<Tkey, Tval>(
      Output<String> tableHandle, Output<Tkey> keys, Output<Tval> values) {
    return addOperation(new OperationDescription(
        'InitializeTable', 'InitializeTable', [tableHandle, keys, values]));
  }

  Output<out_type> variableShape<out_type>(Output<dynamic> input) {
    return addOperation(
        new OperationDescription('VariableShape', 'VariableShape', [input]));
  }

  Output<dynamic> tensorListReserve<element_dtype, shape_type>(
      Output<element_dtype> elementShape, Output<int> numElements) {
    return addOperation(new OperationDescription(
        'TensorListReserve', 'TensorListReserve', [elementShape, numElements]));
  }

  Output<shape_type> tensorListElementShape<shape_type>(
      Output<dynamic> inputHandle) {
    return addOperation(new OperationDescription(
        'TensorListElementShape', 'TensorListElementShape', [inputHandle]));
  }

  Output<element_dtype> tensorListStack<element_dtype, num_elements>(
      Output<dynamic> inputHandle) {
    return addOperation(new OperationDescription(
        'TensorListStack', 'TensorListStack', [inputHandle]));
  }

  Output<dynamic> emptyTensorList<element_dtype, shape_type>(
      Output<element_dtype> elementShape) {
    return addOperation(new OperationDescription(
        'EmptyTensorList', 'EmptyTensorList', [elementShape]));
  }

  Output<T> batchMatrixSolveLs<T, fast>(
      Output<T> matrix, Output<fast> rhs, Output<dynamic> l2Regularizer) {
    return addOperation(new OperationDescription('BatchMatrixSolveLs',
        'BatchMatrixSolveLs', [matrix, rhs, l2Regularizer]));
  }

  Output<Ncontext_sparse> parseSingleSequenceExample<
          Ncontext_sparse,
          Ncontext_dense,
          Nfeature_list_sparse,
          Nfeature_list_dense,
          context_sparse_types,
          Tcontext_dense,
          feature_list_dense_types,
          context_dense_shapes,
          feature_list_sparse_types,
          feature_list_dense_shapes>(
      Output<String> serialized,
      Output<String> featureListDenseMissingAssumedEmpty,
      Output<String> contextSparseKeys,
      Output<String> contextDenseKeys,
      Output<String> featureListSparseKeys,
      Output<String> featureListDenseKeys,
      Output<Ncontext_sparse> contextDenseDefaults,
      Output<String> debugName) {
    return addOperation(new OperationDescription(
        'ParseSingleSequenceExample', 'ParseSingleSequenceExample', [
      serialized,
      featureListDenseMissingAssumedEmpty,
      contextSparseKeys,
      contextDenseKeys,
      featureListSparseKeys,
      featureListDenseKeys,
      contextDenseDefaults,
      debugName
    ]));
  }

  Output<Tkeys> lookupTableExport<Tkeys, Tvalues>(Output<String> tableHandle) {
    return addOperation(new OperationDescription(
        'LookupTableExport', 'LookupTableExport', [tableHandle]));
  }

  Output<Tparams> gatherV2<Tparams, Tindices, Taxis>(
      Output<Tparams> params, Output<Tindices> indices, Output<Taxis> axis) {
    return addOperation(new OperationDescription(
        'GatherV2', 'GatherV2', [params, indices, axis]));
  }

  Output<compute_uv> batchSvd<compute_uv, full_matrices, T>(
      Output<compute_uv> input) {
    return addOperation(
        new OperationDescription('BatchSvd', 'BatchSvd', [input]));
  }

  Output<adjoint> batchMatrixSolve<adjoint, T>(
      Output<adjoint> matrix, Output<T> rhs) {
    return addOperation(new OperationDescription(
        'BatchMatrixSolve', 'BatchMatrixSolve', [matrix, rhs]));
  }

  Output<T> applyProximalAdagrad<T, use_locking>(
      Output<T> var_,
      Output<use_locking> accum,
      Output<use_locking> lr,
      Output<use_locking> l1,
      Output<use_locking> l2,
      Output<use_locking> grad) {
    return addOperation(new OperationDescription('ApplyProximalAdagrad',
        'ApplyProximalAdagrad', [var_, accum, lr, l1, l2, grad]));
  }

  Output<T> sparseSegmentMeanGrad<T, Tidx>(Output<T> grad, Output<Tidx> indices,
      Output<int> segmentIds, Output<int> outputDim0) {
    return addOperation(new OperationDescription('SparseSegmentMeanGrad',
        'SparseSegmentMeanGrad', [grad, indices, segmentIds, outputDim0]));
  }

  Output<compute_uv> svd<compute_uv, full_matrices, T>(
      Output<compute_uv> input) {
    return addOperation(new OperationDescription('Svd', 'Svd', [input]));
  }

  Output<full_matrices> qr<full_matrices, T>(Output<full_matrices> input) {
    return addOperation(new OperationDescription('Qr', 'Qr', [input]));
  }

  Output<int> sparseCross<N, hashed_output, num_buckets, hash_key, sparse_types,
          dense_types, out_type, internal_type>(Output<int> indices,
      Output<N> values, Output<int> shapes, Output<hashed_output> denseInputs) {
    return addOperation(new OperationDescription(
        'SparseCross', 'SparseCross', [indices, values, shapes, denseInputs]));
  }

  Output<N> pack<N, T, axis>(Output<N> values) {
    return addOperation(new OperationDescription('Pack', 'Pack', [values]));
  }

  Output barrierClose<cancel_pending_enqueues>(Output<String> handle) {
    return addOperation(
        new OperationDescription('BarrierClose', 'BarrierClose', [handle]));
  }

  Output<compute_v> selfAdjointEigV2<compute_v, T>(Output<compute_v> input) {
    return addOperation(new OperationDescription(
        'SelfAdjointEigV2', 'SelfAdjointEigV2', [input]));
  }

  Output<T> choleskyGrad<T>(Output<T> l, Output<T> grad) {
    return addOperation(
        new OperationDescription('CholeskyGrad', 'CholeskyGrad', [l, grad]));
  }

  Output<double> quantizedConcat<N, T>(Output<int> concatDim, Output<N> values,
      Output<double> inputMins, Output<double> inputMaxes) {
    return addOperation(new OperationDescription('QuantizedConcat',
        'QuantizedConcat', [concatDim, values, inputMins, inputMaxes]));
  }

  Output<Tparams> gatherNd<Tparams, Tindices>(
      Output<Tparams> params, Output<Tindices> indices) {
    return addOperation(
        new OperationDescription('GatherNd', 'GatherNd', [params, indices]));
  }

  Output<T> maxPool<T, ksize, strides, padding, data_format>(Output<T> input) {
    return addOperation(
        new OperationDescription('MaxPool', 'MaxPool', [input]));
  }

  Output orderedMapClear<capacity, memory_limit, dtypes, container,
      shared_name>() {
    return addOperation(
        new OperationDescription('OrderedMapClear', 'OrderedMapClear', []));
  }

  Output queueCloseV2<cancel_pending_enqueues>(Output<dynamic> handle) {
    return addOperation(
        new OperationDescription('QueueCloseV2', 'QueueCloseV2', [handle]));
  }

  Output<T> matrixExponential<T>(Output<T> input) {
    return addOperation(new OperationDescription(
        'MatrixExponential', 'MatrixExponential', [input]));
  }

  Output<T> matrixDeterminant<T>(Output<T> input) {
    return addOperation(new OperationDescription(
        'MatrixDeterminant', 'MatrixDeterminant', [input]));
  }

  Output<T> shape<T, out_type>(Output<T> input) {
    return addOperation(new OperationDescription('Shape', 'Shape', [input]));
  }

  Output<T> asinh<T>(Output<T> x) {
    return addOperation(new OperationDescription('Asinh', 'Asinh', [x]));
  }

  Output<Tin> lookupTableFindV2<Tin, Tout>(Output<dynamic> tableHandle,
      Output<Tin> keys, Output<Tout> defaultValue) {
    return addOperation(new OperationDescription('LookupTableFindV2',
        'LookupTableFindV2', [tableHandle, keys, defaultValue]));
  }

  Output<int> where<T>(Output<T> input) {
    return addOperation(new OperationDescription('Where', 'Where', [input]));
  }

  Output<T> applyFtrlV2<T, use_locking>(
      Output<T> var_,
      Output<use_locking> accum,
      Output<use_locking> linear,
      Output<use_locking> grad,
      Output<use_locking> lr,
      Output<use_locking> l1,
      Output<use_locking> l2,
      Output<use_locking> l2Shrinkage,
      Output<use_locking> lrPower) {
    return addOperation(new OperationDescription('ApplyFtrlV2', 'ApplyFtrlV2',
        [var_, accum, linear, grad, lr, l1, l2, l2Shrinkage, lrPower]));
  }

  Output tensorArrayCloseV2(Output<String> handle) {
    return addOperation(new OperationDescription(
        'TensorArrayCloseV2', 'TensorArrayCloseV2', [handle]));
  }

  Output<ksize> avgPool3DGrad<ksize, strides, padding, data_format, T>(
      Output<int> origInputShape, Output<ksize> grad) {
    return addOperation(new OperationDescription(
        'AvgPool3DGrad', 'AvgPool3DGrad', [origInputShape, grad]));
  }

  Output readerReset(Output<String> readerHandle) {
    return addOperation(
        new OperationDescription('ReaderReset', 'ReaderReset', [readerHandle]));
  }

  Output<int> sparseSlice<T>(Output<int> indices, Output<T> values,
      Output<int> shape, Output<int> start, Output<int> size) {
    return addOperation(new OperationDescription(
        'SparseSlice', 'SparseSlice', [indices, values, shape, start, size]));
  }

  Output<ksize> avgPool<ksize, strides, padding, data_format, T>(
      Output<ksize> value) {
    return addOperation(
        new OperationDescription('AvgPool', 'AvgPool', [value]));
  }

  Output<String> audioSummaryV2<max_outputs>(
      Output<String> tag, Output<double> tensor, Output<double> sampleRate) {
    return addOperation(new OperationDescription(
        'AudioSummaryV2', 'AudioSummaryV2', [tag, tensor, sampleRate]));
  }

  Output<dtype> tensorArrayReadV2<dtype>(
      Output<String> handle, Output<int> index, Output<double> flowIn) {
    return addOperation(new OperationDescription(
        'TensorArrayReadV2', 'TensorArrayReadV2', [handle, index, flowIn]));
  }

  Output<capacity>
      stagePeek<capacity, memory_limit, dtypes, container, shared_name>(
          Output<int> index) {
    return addOperation(
        new OperationDescription('StagePeek', 'StagePeek', [index]));
  }

  Output readerRestoreStateV2(
      Output<dynamic> readerHandle, Output<String> state) {
    return addOperation(new OperationDescription(
        'ReaderRestoreStateV2', 'ReaderRestoreStateV2', [readerHandle, state]));
  }

  Output<int> setSize<validate_indices, T>(Output<int> setIndices,
      Output<validate_indices> setValues, Output<int> setShape) {
    return addOperation(new OperationDescription(
        'SetSize', 'SetSize', [setIndices, setValues, setShape]));
  }

  Output<T> batchCholesky<T>(Output<T> input) {
    return addOperation(
        new OperationDescription('BatchCholesky', 'BatchCholesky', [input]));
  }

  Output<dtype> tensorArrayGather<dtype, element_shape>(
      Output<String> handle, Output<int> indices, Output<double> flowIn) {
    return addOperation(new OperationDescription(
        'TensorArrayGather', 'TensorArrayGather', [handle, indices, flowIn]));
  }

  Output<double> resizeArea<T, align_corners>(
      Output<T> images, Output<int> size) {
    return addOperation(
        new OperationDescription('ResizeArea', 'ResizeArea', [images, size]));
  }

  Output readerRestoreState(Output<String> readerHandle, Output<String> state) {
    return addOperation(new OperationDescription(
        'ReaderRestoreState', 'ReaderRestoreState', [readerHandle, state]));
  }

  Output<String> readerSerializeState(Output<String> readerHandle) {
    return addOperation(new OperationDescription(
        'ReaderSerializeState', 'ReaderSerializeState', [readerHandle]));
  }

  Output<lower> matrixTriangularSolve<lower, adjoint, T>(
      Output<lower> matrix, Output<adjoint> rhs) {
    return addOperation(new OperationDescription(
        'MatrixTriangularSolve', 'MatrixTriangularSolve', [matrix, rhs]));
  }

  Output<String> readerRead(
      Output<String> readerHandle, Output<String> queueHandle) {
    return addOperation(new OperationDescription(
        'ReaderRead', 'ReaderRead', [readerHandle, queueHandle]));
  }

  Output<T> select<T>(Output<bool> condition, Output<T> t, Output<T> e) {
    return addOperation(
        new OperationDescription('Select', 'Select', [condition, t, e]));
  }

  Output<T> sparseAddGrad<T>(Output<T> backpropValGrad, Output<int> aIndices,
      Output<int> bIndices, Output<int> sumIndices) {
    return addOperation(new OperationDescription('SparseAddGrad',
        'SparseAddGrad', [backpropValGrad, aIndices, bIndices, sumIndices]));
  }

  Output<T> log<T>(Output<T> x) {
    return addOperation(new OperationDescription('Log', 'Log', [x]));
  }

  Output<double> iRFFT2D(Output<dynamic> input, Output<int> fftLength) {
    return addOperation(
        new OperationDescription('IRFFT2D', 'IRFFT2D', [input, fftLength]));
  }

  Output<dynamic> mutableDenseHashTableV2<
      container,
      shared_name,
      use_node_name_sharing,
      key_dtype,
      value_dtype,
      value_shape,
      initial_num_buckets,
      max_load_factor>(Output<container> emptyKey) {
    return addOperation(new OperationDescription(
        'MutableDenseHashTableV2', 'MutableDenseHashTableV2', [emptyKey]));
  }

  Output<String> fixedLengthRecordReader<header_bytes, record_bytes,
      footer_bytes, hop_bytes, container, shared_name>() {
    return addOperation(new OperationDescription(
        'FixedLengthRecordReader', 'FixedLengthRecordReader', []));
  }

  Output<String> recordInput<
      file_pattern,
      file_random_seed,
      file_shuffle_shift_ratio,
      file_buffer_size,
      file_parallelism,
      batch_size,
      compression_type>() {
    return addOperation(
        new OperationDescription('RecordInput', 'RecordInput', []));
  }

  Output<String> textLineReader<skip_header_lines, container, shared_name>() {
    return addOperation(
        new OperationDescription('TextLineReader', 'TextLineReader', []));
  }

  Output<dt> restoreSlice<dt, preferred_shard>(Output<String> filePattern,
      Output<String> tensorName, Output<String> shapeAndSlice) {
    return addOperation(new OperationDescription('RestoreSlice', 'RestoreSlice',
        [filePattern, tensorName, shapeAndSlice]));
  }

  Output save<T>(
      Output<String> filename, Output<String> tensorNames, Output<T> data) {
    return addOperation(new OperationDescription(
        'Save', 'Save', [filename, tensorNames, data]));
  }

  Output<T> refExit<T>(Output<T> data) {
    return addOperation(new OperationDescription('RefExit', 'RefExit', [data]));
  }

  Output<bool> notEqual<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('NotEqual', 'NotEqual', [x, y]));
  }

  Output<int> nonMaxSuppression<iou_threshold>(
      Output<double> boxes, Output<double> scores, Output<int> maxOutputSize) {
    return addOperation(new OperationDescription('NonMaxSuppression',
        'NonMaxSuppression', [boxes, scores, maxOutputSize]));
  }

  Output<dynamic>
      fIFOQueueV2<component_types, shapes, capacity, container, shared_name>() {
    return addOperation(
        new OperationDescription('FIFOQueueV2', 'FIFOQueueV2', []));
  }

  Output<T> batchToSpaceND<T, Tblock_shape, Tcrops>(
      Output<T> input, Output<Tblock_shape> blockShape, Output<Tcrops> crops) {
    return addOperation(new OperationDescription(
        'BatchToSpaceND', 'BatchToSpaceND', [input, blockShape, crops]));
  }

  Output<double> cropAndResizeGradBoxes<T, method>(Output<double> grads,
      Output<T> image, Output<double> boxes, Output<int> boxInd) {
    return addOperation(new OperationDescription('CropAndResizeGradBoxes',
        'CropAndResizeGradBoxes', [grads, image, boxes, boxInd]));
  }

  Output<double> extractGlimpse<centered, normalized, uniform_noise>(
      Output<double> input, Output<int> size, Output<double> offsets) {
    return addOperation(new OperationDescription(
        'ExtractGlimpse', 'ExtractGlimpse', [input, size, offsets]));
  }

  Output<T> rightShift<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('RightShift', 'RightShift', [x, y]));
  }

  Output<dynamic> decodeBmp<channels>(Output<String> contents) {
    return addOperation(
        new OperationDescription('DecodeBmp', 'DecodeBmp', [contents]));
  }

  Output<double> sampleDistortedBoundingBox<
          T,
          seed,
          seed2,
          min_object_covered,
          aspect_ratio_range,
          area_range,
          max_attempts,
          use_image_if_no_bounding_boxes>(
      Output<T> imageSize, Output<double> boundingBoxes) {
    return addOperation(new OperationDescription('SampleDistortedBoundingBox',
        'SampleDistortedBoundingBox', [imageSize, boundingBoxes]));
  }

  Output<T> batchMatrixDeterminant<T>(Output<T> input) {
    return addOperation(new OperationDescription(
        'BatchMatrixDeterminant', 'BatchMatrixDeterminant', [input]));
  }

  Output<component_types> queueDequeueUpToV2<component_types, timeout_ms>(
      Output<dynamic> handle, Output<int> n) {
    return addOperation(new OperationDescription(
        'QueueDequeueUpToV2', 'QueueDequeueUpToV2', [handle, n]));
  }

  Output<dynamic> batchIFFT(Output<dynamic> input) {
    return addOperation(
        new OperationDescription('BatchIFFT', 'BatchIFFT', [input]));
  }

  Output<T> listDiff<T, out_idx>(Output<T> x, Output<out_idx> y) {
    return addOperation(
        new OperationDescription('ListDiff', 'ListDiff', [x, y]));
  }

  Output<double> tensorArrayScatterV2<T>(Output<String> handle,
      Output<int> indices, Output<T> value, Output<double> flowIn) {
    return addOperation(new OperationDescription('TensorArrayScatterV2',
        'TensorArrayScatterV2', [handle, indices, value, flowIn]));
  }

  Output<T> rGBToHSV<T>(Output<T> images) {
    return addOperation(
        new OperationDescription('RGBToHSV', 'RGBToHSV', [images]));
  }

  Output<dynamic> decodeGif(Output<String> contents) {
    return addOperation(
        new OperationDescription('DecodeGif', 'DecodeGif', [contents]));
  }

  Output assignSubVariableOp<dtype>(
      Output<dynamic> resource, Output<dtype> value) {
    return addOperation(new OperationDescription(
        'AssignSubVariableOp', 'AssignSubVariableOp', [resource, value]));
  }

  Output<T> fusedBatchNormGrad<T, epsilon, data_format, is_training>(
      Output<T> yBackprop,
      Output<epsilon> x,
      Output<data_format> scale,
      Output<is_training> reserveSpace1,
      Output<is_training> reserveSpace2) {
    return addOperation(new OperationDescription(
        'FusedBatchNormGrad',
        'FusedBatchNormGrad',
        [yBackprop, x, scale, reserveSpace1, reserveSpace2]));
  }

  Output<Tidx> unravelIndex<Tidx>(Output<Tidx> indices, Output<Tidx> dims) {
    return addOperation(new OperationDescription(
        'UnravelIndex', 'UnravelIndex', [indices, dims]));
  }

  Output<OUT_TYPE> decodeCSV<OUT_TYPE, field_delim, use_quote_delim, na_value>(
      Output<String> records, Output<OUT_TYPE> recordDefaults) {
    return addOperation(new OperationDescription(
        'DecodeCSV', 'DecodeCSV', [records, recordDefaults]));
  }

  Output<T> enter<T, frame_name, is_constant, parallel_iterations>(
      Output<T> data) {
    return addOperation(new OperationDescription('Enter', 'Enter', [data]));
  }

  Output<String> encodePng<compression, T>(Output<compression> image) {
    return addOperation(
        new OperationDescription('EncodePng', 'EncodePng', [image]));
  }

  Output<T> serializeManySparse<T, out_type>(Output<int> sparseIndices,
      Output<T> sparseValues, Output<int> sparseShape) {
    return addOperation(new OperationDescription('SerializeManySparse',
        'SerializeManySparse', [sparseIndices, sparseValues, sparseShape]));
  }

  Output<dynamic> tensorListFromTensor<element_dtype, shape_type>(
      Output<element_dtype> tensor, Output<shape_type> elementShape) {
    return addOperation(new OperationDescription('TensorListFromTensor',
        'TensorListFromTensor', [tensor, elementShape]));
  }

  Output<double> adjustSaturation(Output<double> images, Output<double> scale) {
    return addOperation(new OperationDescription(
        'AdjustSaturation', 'AdjustSaturation', [images, scale]));
  }

  Output<double> adjustContrastv2(
      Output<double> images, Output<double> contrastFactor) {
    return addOperation(new OperationDescription(
        'AdjustContrastv2', 'AdjustContrastv2', [images, contrastFactor]));
  }

  Output<output_type> extractJpegShape<output_type>(Output<String> contents) {
    return addOperation(new OperationDescription(
        'ExtractJpegShape', 'ExtractJpegShape', [contents]));
  }

  Output<int> tensorArrayConcat<dtype, element_shape_except0>(
      Output<String> handle, Output<double> flowIn) {
    return addOperation(new OperationDescription(
        'TensorArrayConcat', 'TensorArrayConcat', [handle, flowIn]));
  }

  Output<dynamic> decodeAndCropJpeg<
      channels,
      ratio,
      fancy_upscaling,
      try_recover_truncated,
      acceptable_fraction,
      dct_method>(Output<String> contents, Output<int> cropWindow) {
    return addOperation(new OperationDescription(
        'DecodeAndCropJpeg', 'DecodeAndCropJpeg', [contents, cropWindow]));
  }

  Output<dynamic> decodeJpeg<
      channels,
      ratio,
      fancy_upscaling,
      try_recover_truncated,
      acceptable_fraction,
      dct_method>(Output<String> contents) {
    return addOperation(
        new OperationDescription('DecodeJpeg', 'DecodeJpeg', [contents]));
  }

  Output<int> orderedMapIncompleteSize<capacity, memory_limit, dtypes,
      container, shared_name>() {
    return addOperation(new OperationDescription(
        'OrderedMapIncompleteSize', 'OrderedMapIncompleteSize', []));
  }

  Output<int> lookupTableSizeV2(Output<dynamic> tableHandle) {
    return addOperation(new OperationDescription(
        'LookupTableSizeV2', 'LookupTableSizeV2', [tableHandle]));
  }

  Output enqueueInQueueDataset<Tcomponents>(
      Output<dynamic> queue, Output<Tcomponents> components) {
    return addOperation(new OperationDescription(
        'EnqueueInQueueDataset', 'EnqueueInQueueDataset', [queue, components]));
  }

  Output lookupTableImportV2<Tin, Tout>(
      Output<dynamic> tableHandle, Output<Tin> keys, Output<Tout> values) {
    return addOperation(new OperationDescription('LookupTableImportV2',
        'LookupTableImportV2', [tableHandle, keys, values]));
  }

  Output tensorArrayCloseV3(Output<dynamic> handle) {
    return addOperation(new OperationDescription(
        'TensorArrayCloseV3', 'TensorArrayCloseV3', [handle]));
  }

  Output saveV2<dtypes>(Output<String> prefix, Output<String> tensorNames,
      Output<String> shapeAndSlices, Output<dtypes> tensors) {
    return addOperation(new OperationDescription(
        'SaveV2', 'SaveV2', [prefix, tensorNames, shapeAndSlices, tensors]));
  }

  Output orderedMapStage<capacity, memory_limit, dtypes, fake_dtypes, container,
          shared_name>(
      Output<int> key, Output<int> indices, Output<capacity> values) {
    return addOperation(new OperationDescription(
        'OrderedMapStage', 'OrderedMapStage', [key, indices, values]));
  }

  Output send<T, tensor_name, send_device, send_device_incarnation, recv_device,
      client_terminated>(Output<T> tensor) {
    return addOperation(new OperationDescription('_Send', '_Send', [tensor]));
  }

  Output<dynamic>
      prependFromQueueAndPaddedBatchDataset<Toutput_types, output_shapes, N>(
          Output<dynamic> inputDataset,
          Output<int> batchSize,
          Output<int> paddedShapes,
          Output<Toutput_types> paddingValues) {
    return addOperation(new OperationDescription(
        'PrependFromQueueAndPaddedBatchDataset',
        'PrependFromQueueAndPaddedBatchDataset',
        [inputDataset, batchSize, paddedShapes, paddingValues]));
  }

  Output<overlapping> fractionalMaxPoolGrad<overlapping, T>(
      Output<overlapping> origInput,
      Output<T> origOutput,
      Output<T> outBackprop,
      Output<int> rowPoolingSequence,
      Output<int> colPoolingSequence) {
    return addOperation(new OperationDescription(
        'FractionalMaxPoolGrad', 'FractionalMaxPoolGrad', [
      origInput,
      origOutput,
      outBackprop,
      rowPoolingSequence,
      colPoolingSequence
    ]));
  }

  Output iteratorSetStatsAggregator(
      Output<dynamic> iteratorHandle, Output<dynamic> statsAggregatorHandle) {
    return addOperation(new OperationDescription('IteratorSetStatsAggregator',
        'IteratorSetStatsAggregator', [iteratorHandle, statsAggregatorHandle]));
  }

  Output<String> encodeJpeg<
      format,
      quality,
      progressive,
      optimize_size,
      chroma_downsampling,
      density_unit,
      x_density,
      y_density,
      xmp_metadata>(Output<dynamic> image) {
    return addOperation(
        new OperationDescription('EncodeJpeg', 'EncodeJpeg', [image]));
  }

  Output<int> rank<T>(Output<T> input) {
    return addOperation(new OperationDescription('Rank', 'Rank', [input]));
  }

  Output<int> stringSplit<skip_empty>(
      Output<String> input, Output<String> delimiter) {
    return addOperation(new OperationDescription(
        'StringSplit', 'StringSplit', [input, delimiter]));
  }

  Output resourceScatterUpdate<dtype, Tindices>(Output<dynamic> resource,
      Output<dtype> indices, Output<Tindices> updates) {
    return addOperation(new OperationDescription('ResourceScatterUpdate',
        'ResourceScatterUpdate', [resource, indices, updates]));
  }

  Output<double> threadUnsafeUnigramCandidateSampler<num_true, num_sampled,
      unique, range_max, seed, seed2>(Output<int> trueClasses) {
    return addOperation(new OperationDescription(
        'ThreadUnsafeUnigramCandidateSampler',
        'ThreadUnsafeUnigramCandidateSampler',
        [trueClasses]));
  }

  Output stackCloseV2(Output<dynamic> handle) {
    return addOperation(
        new OperationDescription('StackCloseV2', 'StackCloseV2', [handle]));
  }

  Output<T> abs<T>(Output<T> x) {
    return addOperation(new OperationDescription('Abs', 'Abs', [x]));
  }

  Output<validate_indices> gather<validate_indices, Tparams, Tindices>(
      Output<validate_indices> params, Output<Tparams> indices) {
    return addOperation(
        new OperationDescription('Gather', 'Gather', [params, indices]));
  }

  Output<dtype> tensorArrayReadV3<dtype>(
      Output<dynamic> handle, Output<int> index, Output<double> flowIn) {
    return addOperation(new OperationDescription(
        'TensorArrayReadV3', 'TensorArrayReadV3', [handle, index, flowIn]));
  }

  Output resourceSparseApplyFtrlV2<T, Tindices, use_locking>(
      Output<dynamic> var_,
      Output<dynamic> accum,
      Output<dynamic> linear,
      Output<T> grad,
      Output<Tindices> indices,
      Output<use_locking> lr,
      Output<use_locking> l1,
      Output<use_locking> l2,
      Output<use_locking> l2Shrinkage,
      Output<use_locking> lrPower) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyFtrlV2', 'ResourceSparseApplyFtrlV2', [
      var_,
      accum,
      linear,
      grad,
      indices,
      lr,
      l1,
      l2,
      l2Shrinkage,
      lrPower
    ]));
  }

  Output<String> encodeWav(Output<double> audio, Output<int> sampleRate) {
    return addOperation(new OperationDescription(
        'EncodeWav', 'EncodeWav', [audio, sampleRate]));
  }

  Output<dynamic> statsAggregatorHandle<container, shared_name>() {
    return addOperation(new OperationDescription(
        'StatsAggregatorHandle', 'StatsAggregatorHandle', []));
  }

  Output<T> randomCrop<T, seed, seed2>(Output<T> image, Output<int> size) {
    return addOperation(
        new OperationDescription('RandomCrop', 'RandomCrop', [image, size]));
  }

  Output<T> diag<T>(Output<T> diagonal) {
    return addOperation(new OperationDescription('Diag', 'Diag', [diagonal]));
  }

  Output<element_dtype> tensorListGetItem<element_dtype>(
      Output<dynamic> inputHandle, Output<int> index) {
    return addOperation(new OperationDescription(
        'TensorListGetItem', 'TensorListGetItem', [inputHandle, index]));
  }

  Output<T> sparseSegmentSqrtNGrad<T, Tidx>(Output<T> grad,
      Output<Tidx> indices, Output<int> segmentIds, Output<int> outputDim0) {
    return addOperation(new OperationDescription('SparseSegmentSqrtNGrad',
        'SparseSegmentSqrtNGrad', [grad, indices, segmentIds, outputDim0]));
  }

  Output<bool> varIsInitializedOp(Output<dynamic> resource) {
    return addOperation(new OperationDescription(
        'VarIsInitializedOp', 'VarIsInitializedOp', [resource]));
  }

  Output<double> fakeQuantWithMinMaxVarsPerChannel<num_bits, narrow_range>(
      Output<double> inputs, Output<double> min, Output<double> max) {
    return addOperation(new OperationDescription(
        'FakeQuantWithMinMaxVarsPerChannel',
        'FakeQuantWithMinMaxVarsPerChannel',
        [inputs, min, max]));
  }

  Output<output_types> iteratorGetNext<output_types, output_shapes>(
      Output<dynamic> iterator) {
    return addOperation(new OperationDescription(
        'IteratorGetNext', 'IteratorGetNext', [iterator]));
  }

  Output<dynamic> oneShotIterator<dataset_factory, output_types, output_shapes,
      container, shared_name>() {
    return addOperation(
        new OperationDescription('OneShotIterator', 'OneShotIterator', []));
  }

  Output resourceSparseApplyAdagradDA<T, Tindices, use_locking>(
      Output<dynamic> var_,
      Output<dynamic> gradientAccumulator,
      Output<dynamic> gradientSquaredAccumulator,
      Output<T> grad,
      Output<Tindices> indices,
      Output<use_locking> lr,
      Output<use_locking> l1,
      Output<use_locking> l2,
      Output<int> globalStep) {
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
    ]));
  }

  Output<dynamic> tFRecordDataset(Output<String> filenames,
      Output<String> compressionType, Output<int> bufferSize) {
    return addOperation(new OperationDescription('TFRecordDataset',
        'TFRecordDataset', [filenames, compressionType, bufferSize]));
  }

  Output<T> switch_<T>(Output<T> data, Output<bool> pred) {
    return addOperation(
        new OperationDescription('Switch', 'Switch', [data, pred]));
  }

  Output<T> linSpace<T, Tidx>(
      Output<T> start, Output<Tidx> stop, Output<Tidx> num) {
    return addOperation(
        new OperationDescription('LinSpace', 'LinSpace', [start, stop, num]));
  }

  Output<double> cTCLoss<preprocess_collapse_repeated, ctc_merge_repeated,
          ignore_longer_outputs_than_inputs>(
      Output<double> inputs,
      Output<int> labelsIndices,
      Output<int> labelsValues,
      Output<int> sequenceLength) {
    return addOperation(new OperationDescription('CTCLoss', 'CTCLoss',
        [inputs, labelsIndices, labelsValues, sequenceLength]));
  }

  Output<dynamic> fixedLengthRecordDataset(
      Output<String> filenames,
      Output<int> headerBytes,
      Output<int> recordBytes,
      Output<int> footerBytes,
      Output<int> bufferSize) {
    return addOperation(new OperationDescription(
        'FixedLengthRecordDataset',
        'FixedLengthRecordDataset',
        [filenames, headerBytes, recordBytes, footerBytes, bufferSize]));
  }

  Output<T> sparseApplyProximalAdagrad<T, Tindices, use_locking>(
      Output<T> var_,
      Output<Tindices> accum,
      Output<use_locking> lr,
      Output<use_locking> l1,
      Output<use_locking> l2,
      Output<use_locking> grad,
      Output<use_locking> indices) {
    return addOperation(new OperationDescription(
        'SparseApplyProximalAdagrad',
        'SparseApplyProximalAdagrad',
        [var_, accum, lr, l1, l2, grad, indices]));
  }

  Output<int>
      mapSize<capacity, memory_limit, dtypes, container, shared_name>() {
    return addOperation(new OperationDescription('MapSize', 'MapSize', []));
  }

  Output<T> sinh<T>(Output<T> x) {
    return addOperation(new OperationDescription('Sinh', 'Sinh', [x]));
  }

  Output<T> batchMatrixDiag<T>(Output<T> diagonal) {
    return addOperation(new OperationDescription(
        'BatchMatrixDiag', 'BatchMatrixDiag', [diagonal]));
  }

  Output<dynamic> sqlDataset<output_types, output_shapes>(
      Output<String> driverName,
      Output<String> dataSourceName,
      Output<String> query) {
    return addOperation(new OperationDescription(
        'SqlDataset', 'SqlDataset', [driverName, dataSourceName, query]));
  }

  Output<T> segmentSum<T, Tindices>(
      Output<T> data, Output<Tindices> segmentIds) {
    return addOperation(new OperationDescription(
        'SegmentSum', 'SegmentSum', [data, segmentIds]));
  }

  Output<dynamic> textLineDataset(Output<String> filenames,
      Output<String> compressionType, Output<int> bufferSize) {
    return addOperation(new OperationDescription('TextLineDataset',
        'TextLineDataset', [filenames, compressionType, bufferSize]));
  }

  Output<T> dataFormatDimMap<T, src_format, dst_format>(Output<T> x) {
    return addOperation(
        new OperationDescription('DataFormatDimMap', 'DataFormatDimMap', [x]));
  }

  Output stackClose(Output<String> handle) {
    return addOperation(
        new OperationDescription('StackClose', 'StackClose', [handle]));
  }

  Output<T> sparseSegmentMeanWithNumSegments<T, Tidx, Tnumsegments>(
      Output<T> data,
      Output<Tidx> indices,
      Output<int> segmentIds,
      Output<Tnumsegments> numSegments) {
    return addOperation(new OperationDescription(
        'SparseSegmentMeanWithNumSegments',
        'SparseSegmentMeanWithNumSegments',
        [data, indices, segmentIds, numSegments]));
  }

  Output<double> resizeBicubic<T, align_corners>(
      Output<T> images, Output<int> size) {
    return addOperation(new OperationDescription(
        'ResizeBicubic', 'ResizeBicubic', [images, size]));
  }

  Output<T> hSVToRGB<T>(Output<T> images) {
    return addOperation(
        new OperationDescription('HSVToRGB', 'HSVToRGB', [images]));
  }

  Output<int> sparseReduceMaxSparse<keep_dims, T>(
      Output<int> inputIndices,
      Output<keep_dims> inputValues,
      Output<int> inputShape,
      Output<int> reductionAxes) {
    return addOperation(new OperationDescription(
        'SparseReduceMaxSparse',
        'SparseReduceMaxSparse',
        [inputIndices, inputValues, inputShape, reductionAxes]));
  }

  Output<dynamic> cacheDataset<output_types, output_shapes>(
      Output<dynamic> inputDataset, Output<String> filename) {
    return addOperation(new OperationDescription(
        'CacheDataset', 'CacheDataset', [inputDataset, filename]));
  }

  Output<T> maxPoolV2<T, padding, data_format>(
      Output<T> input, Output<int> ksize, Output<int> strides) {
    return addOperation(new OperationDescription(
        'MaxPoolV2', 'MaxPoolV2', [input, ksize, strides]));
  }

  Output<double> quantizedMul<T1, T2, Toutput>(
      Output<T1> x,
      Output<T2> y,
      Output<double> minX,
      Output<double> maxX,
      Output<double> minY,
      Output<double> maxY) {
    return addOperation(new OperationDescription(
        'QuantizedMul', 'QuantizedMul', [x, y, minX, maxX, minY, maxY]));
  }

  Output<dynamic> shuffleAndRepeatDataset<output_types, output_shapes>(
      Output<dynamic> inputDataset,
      Output<int> bufferSize,
      Output<int> seed,
      Output<int> seed2,
      Output<int> count) {
    return addOperation(new OperationDescription(
        'ShuffleAndRepeatDataset',
        'ShuffleAndRepeatDataset',
        [inputDataset, bufferSize, seed, seed2, count]));
  }

  Output<dynamic> rangeDataset<output_types, output_shapes>(
      Output<int> start, Output<int> stop, Output<int> step) {
    return addOperation(new OperationDescription(
        'RangeDataset', 'RangeDataset', [start, stop, step]));
  }

  Output<seed> randomPoissonV2<seed, seed2, S, R, dtype>(
      Output<seed> shape, Output<seed2> rate) {
    return addOperation(new OperationDescription(
        'RandomPoissonV2', 'RandomPoissonV2', [shape, rate]));
  }

  Output<dynamic>
      shuffleDataset<reshuffle_each_iteration, output_types, output_shapes>(
          Output<dynamic> inputDataset,
          Output<int> bufferSize,
          Output<int> seed,
          Output<int> seed2) {
    return addOperation(new OperationDescription('ShuffleDataset',
        'ShuffleDataset', [inputDataset, bufferSize, seed, seed2]));
  }

  Output<int> readerNumRecordsProduced(Output<String> readerHandle) {
    return addOperation(new OperationDescription('ReaderNumRecordsProduced',
        'ReaderNumRecordsProduced', [readerHandle]));
  }

  Output<element_dtype> tensorListPopBack<element_dtype>(
      Output<dynamic> inputHandle) {
    return addOperation(new OperationDescription(
        'TensorListPopBack', 'TensorListPopBack', [inputHandle]));
  }

  Output<dynamic> takeDataset<output_types, output_shapes>(
      Output<dynamic> inputDataset, Output<int> count) {
    return addOperation(new OperationDescription(
        'TakeDataset', 'TakeDataset', [inputDataset, count]));
  }

  Output<String> readerReadUpToV2(Output<dynamic> readerHandle,
      Output<dynamic> queueHandle, Output<int> numRecords) {
    return addOperation(new OperationDescription('ReaderReadUpToV2',
        'ReaderReadUpToV2', [readerHandle, queueHandle, numRecords]));
  }

  Output<component_types> queueDequeueV2<component_types, timeout_ms>(
      Output<dynamic> handle) {
    return addOperation(
        new OperationDescription('QueueDequeueV2', 'QueueDequeueV2', [handle]));
  }

  Output<String> readerReadUpTo(Output<String> readerHandle,
      Output<String> queueHandle, Output<int> numRecords) {
    return addOperation(new OperationDescription('ReaderReadUpTo',
        'ReaderReadUpTo', [readerHandle, queueHandle, numRecords]));
  }

  Output<num> unpack<num, T, axis>(Output<num> value) {
    return addOperation(new OperationDescription('Unpack', 'Unpack', [value]));
  }

  Output<dynamic> concatenateDataset<output_types, output_shapes>(
      Output<dynamic> inputDataset, Output<dynamic> anotherDataset) {
    return addOperation(new OperationDescription('ConcatenateDataset',
        'ConcatenateDataset', [inputDataset, anotherDataset]));
  }

  Output<T> conv2DBackpropFilter<T, strides, use_cudnn_on_gpu, padding,
          data_format, dilations>(
      Output<T> input, Output<int> filterSizes, Output<strides> outBackprop) {
    return addOperation(new OperationDescription('Conv2DBackpropFilter',
        'Conv2DBackpropFilter', [input, filterSizes, outBackprop]));
  }

  Output<output_types> iteratorGetNextSync<output_types, output_shapes>(
      Output<dynamic> iterator) {
    return addOperation(new OperationDescription(
        'IteratorGetNextSync', 'IteratorGetNextSync', [iterator]));
  }

  Output<adjoint> batchMatrixInverse<adjoint, T>(Output<adjoint> input) {
    return addOperation(new OperationDescription(
        'BatchMatrixInverse', 'BatchMatrixInverse', [input]));
  }

  Output<T> sparseApplyCenteredRMSProp<T, Tindices, use_locking>(
      Output<T> var_,
      Output<Tindices> mg,
      Output<use_locking> ms,
      Output<use_locking> mom,
      Output<use_locking> lr,
      Output<use_locking> rho,
      Output<use_locking> momentum,
      Output<use_locking> epsilon,
      Output<use_locking> grad,
      Output<use_locking> indices) {
    return addOperation(new OperationDescription(
        'SparseApplyCenteredRMSProp',
        'SparseApplyCenteredRMSProp',
        [var_, mg, ms, mom, lr, rho, momentum, epsilon, grad, indices]));
  }

  Output resourceSparseApplyCenteredRMSProp<T, Tindices, use_locking>(
      Output<dynamic> var_,
      Output<dynamic> mg,
      Output<dynamic> ms,
      Output<dynamic> mom,
      Output<T> lr,
      Output<Tindices> rho,
      Output<use_locking> momentum,
      Output<use_locking> epsilon,
      Output<use_locking> grad,
      Output<use_locking> indices) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyCenteredRMSProp',
        'ResourceSparseApplyCenteredRMSProp',
        [var_, mg, ms, mom, lr, rho, momentum, epsilon, grad, indices]));
  }

  Output<int> queueSizeV2(Output<dynamic> handle) {
    return addOperation(
        new OperationDescription('QueueSizeV2', 'QueueSizeV2', [handle]));
  }

  Output<int> fractionalAvgPool<pooling_ratio, pseudo_random, overlapping,
      deterministic, seed, seed2, T>(Output<pooling_ratio> value) {
    return addOperation(new OperationDescription(
        'FractionalAvgPool', 'FractionalAvgPool', [value]));
  }

  Output<dynamic> randomDataset<output_types, output_shapes>(
      Output<int> seed, Output<int> seed2) {
    return addOperation(new OperationDescription(
        'RandomDataset', 'RandomDataset', [seed, seed2]));
  }

  Output mergeV2Checkpoints<delete_old_dirs>(
      Output<String> checkpointPrefixes, Output<String> destinationPrefix) {
    return addOperation(new OperationDescription('MergeV2Checkpoints',
        'MergeV2Checkpoints', [checkpointPrefixes, destinationPrefix]));
  }

  Output queueClose<cancel_pending_enqueues>(Output<String> handle) {
    return addOperation(
        new OperationDescription('QueueClose', 'QueueClose', [handle]));
  }

  Output<String> randomShuffleQueue<component_types, shapes, capacity,
      min_after_dequeue, seed, seed2, container, shared_name>() {
    return addOperation(new OperationDescription(
        'RandomShuffleQueue', 'RandomShuffleQueue', []));
  }

  Output<dtypes> restoreV2<dtypes>(Output<String> prefix,
      Output<String> tensorNames, Output<String> shapeAndSlices) {
    return addOperation(new OperationDescription(
        'RestoreV2', 'RestoreV2', [prefix, tensorNames, shapeAndSlices]));
  }

  Output<dynamic> denseToSparseBatchDataset<output_types, output_shapes>(
      Output<dynamic> inputDataset,
      Output<int> batchSize,
      Output<int> rowShape) {
    return addOperation(new OperationDescription('DenseToSparseBatchDataset',
        'DenseToSparseBatchDataset', [inputDataset, batchSize, rowShape]));
  }

  Output<N> addN<N, T>(Output<N> inputs) {
    return addOperation(new OperationDescription('AddN', 'AddN', [inputs]));
  }

  Output<String> tensorArrayV2<dtype, element_shape, dynamic_size,
      clear_after_read, tensor_array_name>(Output<int> size) {
    return addOperation(
        new OperationDescription('TensorArrayV2', 'TensorArrayV2', [size]));
  }

  Output<dynamic>
      filterDataset<predicate, Targuments, output_types, output_shapes>(
          Output<dynamic> inputDataset, Output<predicate> otherArguments) {
    return addOperation(new OperationDescription(
        'FilterDataset', 'FilterDataset', [inputDataset, otherArguments]));
  }

  Output<dynamic> interleaveDataset<f, Targuments, output_types, output_shapes>(
      Output<dynamic> inputDataset,
      Output<f> otherArguments,
      Output<int> cycleLength,
      Output<int> blockLength) {
    return addOperation(new OperationDescription(
        'InterleaveDataset',
        'InterleaveDataset',
        [inputDataset, otherArguments, cycleLength, blockLength]));
  }

  Output<dynamic> prefetchDataset<output_types, output_shapes>(
      Output<dynamic> inputDataset, Output<int> bufferSize) {
    return addOperation(new OperationDescription(
        'PrefetchDataset', 'PrefetchDataset', [inputDataset, bufferSize]));
  }

  Output<Tidx> range<Tidx>(
      Output<Tidx> start, Output<Tidx> limit, Output<Tidx> delta) {
    return addOperation(
        new OperationDescription('Range', 'Range', [start, limit, delta]));
  }

  Output<dynamic> sparseTensorSliceDataset<Tvalues>(
      Output<int> indices, Output<Tvalues> values, Output<int> denseShape) {
    return addOperation(new OperationDescription('SparseTensorSliceDataset',
        'SparseTensorSliceDataset', [indices, values, denseShape]));
  }

  Output<dynamic> randomShuffleQueueV2<component_types, shapes, capacity,
      min_after_dequeue, seed, seed2, container, shared_name>() {
    return addOperation(new OperationDescription(
        'RandomShuffleQueueV2', 'RandomShuffleQueueV2', []));
  }

  Output<double> tensorArrayWriteV3<T>(Output<dynamic> handle,
      Output<int> index, Output<T> value, Output<double> flowIn) {
    return addOperation(new OperationDescription('TensorArrayWriteV3',
        'TensorArrayWriteV3', [handle, index, value, flowIn]));
  }

  Output<int> refMerge<T, N>(Output<T> inputs) {
    return addOperation(
        new OperationDescription('RefMerge', 'RefMerge', [inputs]));
  }

  Output<dynamic> bytesProducedStatsDataset<output_types, output_shapes>(
      Output<dynamic> inputDataset, Output<String> tag) {
    return addOperation(new OperationDescription('BytesProducedStatsDataset',
        'BytesProducedStatsDataset', [inputDataset, tag]));
  }

  Output<String> histogramSummary<T>(Output<String> tag, Output<T> values) {
    return addOperation(new OperationDescription(
        'HistogramSummary', 'HistogramSummary', [tag, values]));
  }

  Output<elem_type> stackPopV2<elem_type>(Output<dynamic> handle) {
    return addOperation(
        new OperationDescription('StackPopV2', 'StackPopV2', [handle]));
  }

  Output<depth_radius> lRN<depth_radius, bias, alpha, beta, T>(
      Output<depth_radius> input) {
    return addOperation(new OperationDescription('LRN', 'LRN', [input]));
  }

  Output<T> conv3DBackpropInputV2<T, strides, padding, data_format, dilations>(
      Output<int> inputSizes, Output<T> filter, Output<strides> outBackprop) {
    return addOperation(new OperationDescription('Conv3DBackpropInputV2',
        'Conv3DBackpropInputV2', [inputSizes, filter, outBackprop]));
  }

  Output<dynamic> skipDataset<output_types, output_shapes>(
      Output<dynamic> inputDataset, Output<int> count) {
    return addOperation(new OperationDescription(
        'SkipDataset', 'SkipDataset', [inputDataset, count]));
  }

  Output sparseAccumulatorApplyGradient<dtype, has_known_shape>(
      Output<String> handle,
      Output<int> localStep,
      Output<int> gradientIndices,
      Output<dtype> gradientValues,
      Output<int> gradientShape) {
    return addOperation(new OperationDescription(
        'SparseAccumulatorApplyGradient',
        'SparseAccumulatorApplyGradient',
        [handle, localStep, gradientIndices, gradientValues, gradientShape]));
  }

  Output<String> statsAggregatorSummary(Output<dynamic> iterator) {
    return addOperation(new OperationDescription(
        'StatsAggregatorSummary', 'StatsAggregatorSummary', [iterator]));
  }

  Output<bool> equal<T>(Output<T> x, Output<T> y) {
    return addOperation(new OperationDescription('Equal', 'Equal', [x, y]));
  }

  Output<int> sparseToSparseSetOperation<set_operation, validate_indices, T>(
      Output<int> set1Indices,
      Output<set_operation> set1Values,
      Output<int> set1Shape,
      Output<int> set2Indices,
      Output<validate_indices> set2Values,
      Output<int> set2Shape) {
    return addOperation(new OperationDescription(
        'SparseToSparseSetOperation', 'SparseToSparseSetOperation', [
      set1Indices,
      set1Values,
      set1Shape,
      set2Indices,
      set2Values,
      set2Shape
    ]));
  }

  Output lookupTableInsertV2<Tin, Tout>(
      Output<dynamic> tableHandle, Output<Tin> keys, Output<Tout> values) {
    return addOperation(new OperationDescription('LookupTableInsertV2',
        'LookupTableInsertV2', [tableHandle, keys, values]));
  }

  Output barrierInsertMany<T, component_index>(
      Output<String> handle, Output<String> keys, Output<T> values) {
    return addOperation(new OperationDescription(
        'BarrierInsertMany', 'BarrierInsertMany', [handle, keys, values]));
  }

  Output<double> tensorArraySplitV2<T>(Output<String> handle, Output<T> value,
      Output<int> lengths, Output<double> flowIn) {
    return addOperation(new OperationDescription('TensorArraySplitV2',
        'TensorArraySplitV2', [handle, value, lengths, flowIn]));
  }

  Output<capacity>
      orderedMapUnstage<capacity, memory_limit, dtypes, container, shared_name>(
          Output<int> key, Output<int> indices) {
    return addOperation(new OperationDescription(
        'OrderedMapUnstage', 'OrderedMapUnstage', [key, indices]));
  }

  Output<dynamic> batchFFT2D(Output<dynamic> input) {
    return addOperation(
        new OperationDescription('BatchFFT2D', 'BatchFFT2D', [input]));
  }

  Output<int> mapIncompleteSize<capacity, memory_limit, dtypes, container,
      shared_name>() {
    return addOperation(
        new OperationDescription('MapIncompleteSize', 'MapIncompleteSize', []));
  }

  Output<T> selfAdjointEig<T>(Output<T> input) {
    return addOperation(
        new OperationDescription('SelfAdjointEig', 'SelfAdjointEig', [input]));
  }

  Output readerResetV2(Output<dynamic> readerHandle) {
    return addOperation(new OperationDescription(
        'ReaderResetV2', 'ReaderResetV2', [readerHandle]));
  }

  Output<int>
      orderedMapSize<capacity, memory_limit, dtypes, container, shared_name>() {
    return addOperation(
        new OperationDescription('OrderedMapSize', 'OrderedMapSize', []));
  }

  Output<T> refNextIteration<T>(Output<T> data) {
    return addOperation(new OperationDescription(
        'RefNextIteration', 'RefNextIteration', [data]));
  }

  Output<capacity>
      orderedMapPeek<capacity, memory_limit, dtypes, container, shared_name>(
          Output<int> key, Output<int> indices) {
    return addOperation(new OperationDescription(
        'OrderedMapPeek', 'OrderedMapPeek', [key, indices]));
  }

  Output<int> deserializeSparse<dtype, Tserialized>(
      Output<dtype> serializedSparse) {
    return addOperation(new OperationDescription(
        'DeserializeSparse', 'DeserializeSparse', [serializedSparse]));
  }

  Output mapClear<capacity, memory_limit, dtypes, container, shared_name>() {
    return addOperation(new OperationDescription('MapClear', 'MapClear', []));
  }

  Output<component_types> queueDequeue<component_types, timeout_ms>(
      Output<String> handle) {
    return addOperation(
        new OperationDescription('QueueDequeue', 'QueueDequeue', [handle]));
  }

  Output<dynamic> rFFT2D(Output<double> input, Output<int> fftLength) {
    return addOperation(
        new OperationDescription('RFFT2D', 'RFFT2D', [input, fftLength]));
  }

  Output<ksize> maxPoolGradGradWithArgmax<ksize, strides, padding, Targmax, T>(
      Output<ksize> input, Output<strides> grad, Output<padding> argmax) {
    return addOperation(new OperationDescription('MaxPoolGradGradWithArgmax',
        'MaxPoolGradGradWithArgmax', [input, grad, argmax]));
  }

  Output<bool> less<T>(Output<T> x, Output<T> y) {
    return addOperation(new OperationDescription('Less', 'Less', [x, y]));
  }

  Output<int> denseToDenseSetOperation<set_operation, validate_indices, T>(
      Output<set_operation> set1, Output<validate_indices> set2) {
    return addOperation(new OperationDescription(
        'DenseToDenseSetOperation', 'DenseToDenseSetOperation', [set1, set2]));
  }

  Output<T> softmaxCrossEntropyWithLogits<T>(
      Output<T> features, Output<T> labels) {
    return addOperation(new OperationDescription(
        'SoftmaxCrossEntropyWithLogits',
        'SoftmaxCrossEntropyWithLogits',
        [features, labels]));
  }

  Output<output_types> datasetToSingleElement<output_types, output_shapes>(
      Output<dynamic> dataset) {
    return addOperation(new OperationDescription(
        'DatasetToSingleElement', 'DatasetToSingleElement', [dataset]));
  }

  Output createSummaryFileWriter(
      Output<dynamic> writer,
      Output<String> logdir,
      Output<int> maxQueue,
      Output<int> flushMillis,
      Output<String> filenameSuffix) {
    return addOperation(new OperationDescription(
        'CreateSummaryFileWriter',
        'CreateSummaryFileWriter',
        [writer, logdir, maxQueue, flushMillis, filenameSuffix]));
  }

  Output<bool> queueIsClosedV2(Output<dynamic> handle) {
    return addOperation(new OperationDescription(
        'QueueIsClosedV2', 'QueueIsClosedV2', [handle]));
  }

  Output<keep_dims> sparseReduceSum<keep_dims, T>(
      Output<int> inputIndices,
      Output<keep_dims> inputValues,
      Output<int> inputShape,
      Output<int> reductionAxes) {
    return addOperation(new OperationDescription(
        'SparseReduceSum',
        'SparseReduceSum',
        [inputIndices, inputValues, inputShape, reductionAxes]));
  }

  Output<T> zeta<T>(Output<T> x, Output<T> q) {
    return addOperation(new OperationDescription('Zeta', 'Zeta', [x, q]));
  }

  Output<String> tensorArrayGradV2<source>(
      Output<String> handle, Output<double> flowIn) {
    return addOperation(new OperationDescription(
        'TensorArrayGradV2', 'TensorArrayGradV2', [handle, flowIn]));
  }

  Output<N> shapeN<N, T, out_type>(Output<N> input) {
    return addOperation(new OperationDescription('ShapeN', 'ShapeN', [input]));
  }

  Output<String> imageSummary<max_images, T, bad_color>(
      Output<String> tag, Output<max_images> tensor) {
    return addOperation(new OperationDescription(
        'ImageSummary', 'ImageSummary', [tag, tensor]));
  }

  Output<dynamic> wholeFileReaderV2<container, shared_name>() {
    return addOperation(
        new OperationDescription('WholeFileReaderV2', 'WholeFileReaderV2', []));
  }

  Output<capacity>
      mapUnstageNoKey<capacity, memory_limit, dtypes, container, shared_name>(
          Output<int> indices) {
    return addOperation(new OperationDescription(
        'MapUnstageNoKey', 'MapUnstageNoKey', [indices]));
  }

  Output<double> mfcc<upper_frequency_limit, lower_frequency_limit,
          filterbank_channel_count, dct_coefficient_count>(
      Output<double> spectrogram, Output<int> sampleRate) {
    return addOperation(
        new OperationDescription('Mfcc', 'Mfcc', [spectrogram, sampleRate]));
  }

  Output<T> batchMatrixDiagPart<T>(Output<T> input) {
    return addOperation(new OperationDescription(
        'BatchMatrixDiagPart', 'BatchMatrixDiagPart', [input]));
  }

  Output<double> adjustContrast<T>(
      Output<T> images,
      Output<double> contrastFactor,
      Output<double> minValue,
      Output<double> maxValue) {
    return addOperation(new OperationDescription('AdjustContrast',
        'AdjustContrast', [images, contrastFactor, minValue, maxValue]));
  }

  Output<T> resizeNearestNeighbor<T, align_corners>(
      Output<T> images, Output<int> size) {
    return addOperation(new OperationDescription(
        'ResizeNearestNeighbor', 'ResizeNearestNeighbor', [images, size]));
  }

  Output<Nsparse>
      parseExample<Nsparse, Ndense, sparse_types, Tdense, dense_shapes>(
          Output<String> serialized,
          Output<String> names,
          Output<String> sparseKeys,
          Output<String> denseKeys,
          Output<Nsparse> denseDefaults) {
    return addOperation(new OperationDescription('ParseExample', 'ParseExample',
        [serialized, names, sparseKeys, denseKeys, denseDefaults]));
  }

  Output<T> atanh<T>(Output<T> x) {
    return addOperation(new OperationDescription('Atanh', 'Atanh', [x]));
  }

  Output makeIterator(Output<dynamic> dataset, Output<dynamic> iterator) {
    return addOperation(new OperationDescription(
        'MakeIterator', 'MakeIterator', [dataset, iterator]));
  }

  Output<seed> parameterizedTruncatedNormal<seed, seed2, dtype, T>(
      Output<seed> shape,
      Output<seed2> means,
      Output<dtype> stdevs,
      Output<T> minvals,
      Output<T> maxvals) {
    return addOperation(new OperationDescription(
        'ParameterizedTruncatedNormal',
        'ParameterizedTruncatedNormal',
        [shape, means, stdevs, minvals, maxvals]));
  }

  Output<dynamic>
      parallelInterleaveDataset<f, Targuments, output_types, output_shapes>(
          Output<dynamic> inputDataset,
          Output<f> otherArguments,
          Output<int> cycleLength,
          Output<int> blockLength,
          Output<bool> sloppy,
          Output<int> bufferOutputElements,
          Output<int> prefetchInputElements) {
    return addOperation(new OperationDescription(
        'ParallelInterleaveDataset', 'ParallelInterleaveDataset', [
      inputDataset,
      otherArguments,
      cycleLength,
      blockLength,
      sloppy,
      bufferOutputElements,
      prefetchInputElements
    ]));
  }

  Output<double> cTCGreedyDecoder<merge_repeated>(
      Output<double> inputs, Output<int> sequenceLength) {
    return addOperation(new OperationDescription(
        'CTCGreedyDecoder', 'CTCGreedyDecoder', [inputs, sequenceLength]));
  }

  Output<int>
      stageSize<capacity, memory_limit, dtypes, container, shared_name>() {
    return addOperation(new OperationDescription('StageSize', 'StageSize', []));
  }

  Output assignAddVariableOp<dtype>(
      Output<dynamic> resource, Output<dtype> value) {
    return addOperation(new OperationDescription(
        'AssignAddVariableOp', 'AssignAddVariableOp', [resource, value]));
  }

  Output<T> depthwiseConv2dNativeBackpropInput<T, strides, padding, data_format,
          dilations>(
      Output<int> inputSizes, Output<T> filter, Output<strides> outBackprop) {
    return addOperation(new OperationDescription(
        'DepthwiseConv2dNativeBackpropInput',
        'DepthwiseConv2dNativeBackpropInput',
        [inputSizes, filter, outBackprop]));
  }

  Output<bool> isNan<T>(Output<T> x) {
    return addOperation(new OperationDescription('IsNan', 'IsNan', [x]));
  }

  Output<dynamic> tensorListPushBack<element_dtype>(
      Output<dynamic> inputHandle, Output<element_dtype> tensor) {
    return addOperation(new OperationDescription(
        'TensorListPushBack', 'TensorListPushBack', [inputHandle, tensor]));
  }

  Output<T> reciprocalGrad<T>(Output<T> y, Output<T> dy) {
    return addOperation(
        new OperationDescription('ReciprocalGrad', 'ReciprocalGrad', [y, dy]));
  }

  Output<double> quantizedReshape<T, Tshape>(Output<T> tensor,
      Output<Tshape> shape, Output<double> inputMin, Output<double> inputMax) {
    return addOperation(new OperationDescription('QuantizedReshape',
        'QuantizedReshape', [tensor, shape, inputMin, inputMax]));
  }

  Output<dynamic> mapDataset<f, Targuments, output_types, output_shapes>(
      Output<dynamic> inputDataset, Output<f> otherArguments) {
    return addOperation(new OperationDescription(
        'MapDataset', 'MapDataset', [inputDataset, otherArguments]));
  }

  Output<capacity>
      unstage<capacity, memory_limit, dtypes, container, shared_name>() {
    return addOperation(new OperationDescription('Unstage', 'Unstage', []));
  }

  Output stage<capacity, memory_limit, dtypes, container, shared_name>(
      Output<capacity> values) {
    return addOperation(new OperationDescription('Stage', 'Stage', [values]));
  }

  Output<dynamic> tensorSliceDataset<Toutput_types, output_shapes>(
      Output<Toutput_types> components) {
    return addOperation(new OperationDescription(
        'TensorSliceDataset', 'TensorSliceDataset', [components]));
  }

  Output deleteSessionTensor(Output<String> handle) {
    return addOperation(new OperationDescription(
        'DeleteSessionTensor', 'DeleteSessionTensor', [handle]));
  }

  Output<dynamic> getSessionHandleV2<T>(Output<T> value) {
    return addOperation(new OperationDescription(
        'GetSessionHandleV2', 'GetSessionHandleV2', [value]));
  }

  Output<dynamic> tensorDataset<Toutput_types, output_shapes>(
      Output<Toutput_types> components) {
    return addOperation(new OperationDescription(
        'TensorDataset', 'TensorDataset', [components]));
  }

  Output<T> batchMatrixBandPart<T>(
      Output<T> input, Output<int> numLower, Output<int> numUpper) {
    return addOperation(new OperationDescription('BatchMatrixBandPart',
        'BatchMatrixBandPart', [input, numLower, numUpper]));
  }

  Output<T> div<T>(Output<T> x, Output<T> y) {
    return addOperation(new OperationDescription('Div', 'Div', [x, y]));
  }

  /// Also removes it from the resource manager. To reopen, use another
  /// CreateSummaryFileWriter op.
  Output closeSummaryWriter(Output<dynamic> writer) {
    return addOperation(new OperationDescription(
        'CloseSummaryWriter', 'CloseSummaryWriter', [writer]));
  }

  Output<int> tensorArraySizeV2(Output<String> handle, Output<double> flowIn) {
    return addOperation(new OperationDescription(
        'TensorArraySizeV2', 'TensorArraySizeV2', [handle, flowIn]));
  }

  Output<T> floorMod<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('FloorMod', 'FloorMod', [x, y]));
  }

  Output<String> matchingFiles(Output<String> pattern) {
    return addOperation(
        new OperationDescription('MatchingFiles', 'MatchingFiles', [pattern]));
  }

  Output<dt> restore<dt, preferred_shard>(
      Output<String> filePattern, Output<String> tensorName) {
    return addOperation(new OperationDescription(
        'Restore', 'Restore', [filePattern, tensorName]));
  }

  Output<T> tanh<T>(Output<T> x) {
    return addOperation(new OperationDescription('Tanh', 'Tanh', [x]));
  }

  Output<T> cropAndResizeGradImage<T, method>(Output<double> grads,
      Output<double> boxes, Output<int> boxInd, Output<int> imageSize) {
    return addOperation(new OperationDescription('CropAndResizeGradImage',
        'CropAndResizeGradImage', [grads, boxes, boxInd, imageSize]));
  }

  Output<dtype> accumulatorTakeGradient<dtype>(
      Output<String> handle, Output<int> numRequired) {
    return addOperation(new OperationDescription('AccumulatorTakeGradient',
        'AccumulatorTakeGradient', [handle, numRequired]));
  }

  Output<T> stridedSliceAssign<T, Index, begin_mask, end_mask, ellipsis_mask,
          new_axis_mask, shrink_axis_mask>(
      Output<T> ref,
      Output<Index> begin,
      Output<begin_mask> end,
      Output<end_mask> strides,
      Output<ellipsis_mask> value) {
    return addOperation(new OperationDescription('StridedSliceAssign',
        'StridedSliceAssign', [ref, begin, end, strides, value]));
  }

  Output<double> computeAccidentalHits<num_true, seed, seed2>(
      Output<int> trueClasses, Output<int> sampledCandidates) {
    return addOperation(new OperationDescription('ComputeAccidentalHits',
        'ComputeAccidentalHits', [trueClasses, sampledCandidates]));
  }

  Output<dynamic> varHandleOp<container, shared_name, dtype, shape>() {
    return addOperation(
        new OperationDescription('VarHandleOp', 'VarHandleOp', []));
  }

  Output<dynamic> rFFT3D(Output<double> input, Output<int> fftLength) {
    return addOperation(
        new OperationDescription('RFFT3D', 'RFFT3D', [input, fftLength]));
  }

  Output<dtype> tensorArrayGatherV2<dtype, element_shape>(
      Output<String> handle, Output<int> indices, Output<double> flowIn) {
    return addOperation(new OperationDescription('TensorArrayGatherV2',
        'TensorArrayGatherV2', [handle, indices, flowIn]));
  }

  Output<num_partitions> dynamicPartition<num_partitions, T>(
      Output<num_partitions> data, Output<int> partitions) {
    return addOperation(new OperationDescription(
        'DynamicPartition', 'DynamicPartition', [data, partitions]));
  }

  Output<String> fakeQueue(Output<dynamic> resource) {
    return addOperation(
        new OperationDescription('FakeQueue', 'FakeQueue', [resource]));
  }

  Output<dtype> tensorArrayPack<dtype, element_shape>(
      Output<String> handle, Output<double> flowIn) {
    return addOperation(new OperationDescription(
        'TensorArrayPack', 'TensorArrayPack', [handle, flowIn]));
  }

  Output<T> dilation2DBackpropFilter<T, strides, rates, padding>(
      Output<T> input, Output<strides> filter, Output<rates> outBackprop) {
    return addOperation(new OperationDescription('Dilation2DBackpropFilter',
        'Dilation2DBackpropFilter', [input, filter, outBackprop]));
  }

  Output<compute_v> batchSelfAdjointEigV2<compute_v, T>(
      Output<compute_v> input) {
    return addOperation(new OperationDescription(
        'BatchSelfAdjointEigV2', 'BatchSelfAdjointEigV2', [input]));
  }

  Output<T> tanhGrad<T>(Output<T> y, Output<T> dy) {
    return addOperation(
        new OperationDescription('TanhGrad', 'TanhGrad', [y, dy]));
  }

  Output<bool> loopCond(Output<bool> input) {
    return addOperation(
        new OperationDescription('LoopCond', 'LoopCond', [input]));
  }

  Output<dynamic>
      parallelMapDataset<f, Targuments, output_types, output_shapes>(
          Output<dynamic> inputDataset,
          Output<f> otherArguments,
          Output<int> numParallelCalls) {
    return addOperation(new OperationDescription(
        'ParallelMapDataset',
        'ParallelMapDataset',
        [inputDataset, otherArguments, numParallelCalls]));
  }

  Output<keep_dims> sparseReduceMax<keep_dims, T>(
      Output<int> inputIndices,
      Output<keep_dims> inputValues,
      Output<int> inputShape,
      Output<int> reductionAxes) {
    return addOperation(new OperationDescription(
        'SparseReduceMax',
        'SparseReduceMax',
        [inputIndices, inputValues, inputShape, reductionAxes]));
  }

  Output<T> unsortedSegmentMax<T, Tindices, Tnumsegments>(Output<T> data,
      Output<Tindices> segmentIds, Output<Tnumsegments> numSegments) {
    return addOperation(new OperationDescription('UnsortedSegmentMax',
        'UnsortedSegmentMax', [data, segmentIds, numSegments]));
  }

  Output<double> audioSpectrogram<window_size, stride, magnitude_squared>(
      Output<double> input) {
    return addOperation(new OperationDescription(
        'AudioSpectrogram', 'AudioSpectrogram', [input]));
  }

  Output<dtype> tensorArrayRead<dtype>(
      Output<String> handle, Output<int> index, Output<double> flowIn) {
    return addOperation(new OperationDescription(
        'TensorArrayRead', 'TensorArrayRead', [handle, index, flowIn]));
  }

  Output stageClear<capacity, memory_limit, dtypes, container, shared_name>() {
    return addOperation(
        new OperationDescription('StageClear', 'StageClear', []));
  }

  Output<String> mutableHashTable<container, shared_name, use_node_name_sharing,
      key_dtype, value_dtype>() {
    return addOperation(
        new OperationDescription('MutableHashTable', 'MutableHashTable', []));
  }

  Output<dynamic>
      scanDataset<f, Tstate, Targuments, output_types, output_shapes>(
          Output<dynamic> inputDataset,
          Output<f> initialState,
          Output<Tstate> otherArguments) {
    return addOperation(new OperationDescription('ScanDataset', 'ScanDataset',
        [inputDataset, initialState, otherArguments]));
  }

  Output<int> tensorArraySizeV3(Output<dynamic> handle, Output<double> flowIn) {
    return addOperation(new OperationDescription(
        'TensorArraySizeV3', 'TensorArraySizeV3', [handle, flowIn]));
  }

  Output<T> applyAdam<T, use_locking, use_nesterov>(
      Output<T> var_,
      Output<use_locking> m,
      Output<use_nesterov> v,
      Output<use_nesterov> beta1Power,
      Output<use_nesterov> beta2Power,
      Output<use_nesterov> lr,
      Output<use_nesterov> beta1,
      Output<use_nesterov> beta2,
      Output<use_nesterov> epsilon,
      Output<use_nesterov> grad) {
    return addOperation(new OperationDescription('ApplyAdam', 'ApplyAdam',
        [var_, m, v, beta1Power, beta2Power, lr, beta1, beta2, epsilon, grad]));
  }

  Output<String> mergeSummary<N>(Output<String> inputs) {
    return addOperation(
        new OperationDescription('MergeSummary', 'MergeSummary', [inputs]));
  }

  /// *NOTE*: `Mul` supports broadcasting. More about broadcasting
  /// [here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
  Output<dynamic> mklMul<T>(
      Output<T> x, Output<T> y, Output<dynamic> mklX, Output<dynamic> mklY) {
    return addOperation(
        new OperationDescription('_MklMul', '_MklMul', [x, y, mklX, mklY]));
  }

  Output queueEnqueueManyV2<Tcomponents, timeout_ms>(
      Output<dynamic> handle, Output<Tcomponents> components) {
    return addOperation(new OperationDescription(
        'QueueEnqueueManyV2', 'QueueEnqueueManyV2', [handle, components]));
  }

  Output<dynamic> fFT(Output<dynamic> input) {
    return addOperation(new OperationDescription('FFT', 'FFT', [input]));
  }

  Output<int> tensorArrayConcatV3<dtype, element_shape_except0>(
      Output<dynamic> handle, Output<double> flowIn) {
    return addOperation(new OperationDescription(
        'TensorArrayConcatV3', 'TensorArrayConcatV3', [handle, flowIn]));
  }

  Output resourceApplyAdadelta<T, use_locking>(
      Output<dynamic> var_,
      Output<dynamic> accum,
      Output<dynamic> accumUpdate,
      Output<T> lr,
      Output<use_locking> rho,
      Output<use_locking> epsilon,
      Output<use_locking> grad) {
    return addOperation(new OperationDescription(
        'ResourceApplyAdadelta',
        'ResourceApplyAdadelta',
        [var_, accum, accumUpdate, lr, rho, epsilon, grad]));
  }

  Output<T> debugGradientRefIdentity<T>(Output<T> input) {
    return addOperation(new OperationDescription(
        'DebugGradientRefIdentity', 'DebugGradientRefIdentity', [input]));
  }

  Output<double> tensorArrayGradV3<source>(
      Output<dynamic> handle, Output<double> flowIn) {
    return addOperation(new OperationDescription(
        'TensorArrayGradV3', 'TensorArrayGradV3', [handle, flowIn]));
  }

  Output<T> refSwitch<T>(Output<T> data, Output<bool> pred) {
    return addOperation(
        new OperationDescription('RefSwitch', 'RefSwitch', [data, pred]));
  }

  Output<T> floorDiv<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('FloorDiv', 'FloorDiv', [x, y]));
  }

  Output<T> applyAdagradDA<T, use_locking>(
      Output<T> var_,
      Output<use_locking> gradientAccumulator,
      Output<use_locking> gradientSquaredAccumulator,
      Output<use_locking> grad,
      Output<use_locking> lr,
      Output<use_locking> l1,
      Output<use_locking> l2,
      Output<int> globalStep) {
    return addOperation(
        new OperationDescription('ApplyAdagradDA', 'ApplyAdagradDA', [
      var_,
      gradientAccumulator,
      gradientSquaredAccumulator,
      grad,
      lr,
      l1,
      l2,
      globalStep
    ]));
  }

  Output<T> square<T>(Output<T> x) {
    return addOperation(new OperationDescription('Square', 'Square', [x]));
  }

  Output<String> identityReader<container, shared_name>() {
    return addOperation(
        new OperationDescription('IdentityReader', 'IdentityReader', []));
  }

  Output<double> tensorArrayScatterV3<T>(Output<dynamic> handle,
      Output<int> indices, Output<T> value, Output<double> flowIn) {
    return addOperation(new OperationDescription('TensorArrayScatterV3',
        'TensorArrayScatterV3', [handle, indices, value, flowIn]));
  }

  Output<T> biasAddV1<T>(Output<T> value, Output<T> bias) {
    return addOperation(
        new OperationDescription('BiasAddV1', 'BiasAddV1', [value, bias]));
  }

  Output<bool> logicalOr(Output<bool> x, Output<bool> y) {
    return addOperation(
        new OperationDescription('LogicalOr', 'LogicalOr', [x, y]));
  }

  Output<T> stackPush<T, swap_memory>(Output<String> handle, Output<T> elem) {
    return addOperation(
        new OperationDescription('StackPush', 'StackPush', [handle, elem]));
  }

  Output<dynamic> tFRecordReaderV2<container, shared_name, compression_type>() {
    return addOperation(
        new OperationDescription('TFRecordReaderV2', 'TFRecordReaderV2', []));
  }

  Output<double> logUniformCandidateSampler<num_true, num_sampled, unique,
      range_max, seed, seed2>(Output<int> trueClasses) {
    return addOperation(new OperationDescription('LogUniformCandidateSampler',
        'LogUniformCandidateSampler', [trueClasses]));
  }

  Output<dynamic> paddingFIFOQueueV2<component_types, shapes, capacity,
      container, shared_name>() {
    return addOperation(new OperationDescription(
        'PaddingFIFOQueueV2', 'PaddingFIFOQueueV2', []));
  }

  Output<Tin> lookupTableFind<Tin, Tout>(
      Output<String> tableHandle, Output<Tin> keys, Output<Tout> defaultValue) {
    return addOperation(new OperationDescription('LookupTableFind',
        'LookupTableFind', [tableHandle, keys, defaultValue]));
  }

  Output<N> dynamicStitch<N, T>(Output<int> indices, Output<N> data) {
    return addOperation(new OperationDescription(
        'DynamicStitch', 'DynamicStitch', [indices, data]));
  }

  Output<T> sparseApplyAdadelta<T, Tindices, use_locking>(
      Output<T> var_,
      Output<Tindices> accum,
      Output<use_locking> accumUpdate,
      Output<use_locking> lr,
      Output<use_locking> rho,
      Output<use_locking> epsilon,
      Output<use_locking> grad,
      Output<use_locking> indices) {
    return addOperation(new OperationDescription(
        'SparseApplyAdadelta',
        'SparseApplyAdadelta',
        [var_, accum, accumUpdate, lr, rho, epsilon, grad, indices]));
  }

  Output<int> sparseReshape(
      Output<int> inputIndices, Output<int> inputShape, Output<int> newShape) {
    return addOperation(new OperationDescription('SparseReshape',
        'SparseReshape', [inputIndices, inputShape, newShape]));
  }

  Output<T> complexAbs<T, Tout>(Output<T> x) {
    return addOperation(
        new OperationDescription('ComplexAbs', 'ComplexAbs', [x]));
  }

  Output<T> serializeSparse<T, out_type>(Output<int> sparseIndices,
      Output<T> sparseValues, Output<int> sparseShape) {
    return addOperation(new OperationDescription('SerializeSparse',
        'SerializeSparse', [sparseIndices, sparseValues, sparseShape]));
  }

  Output<T> bitwiseXor<T>(Output<T> x, Output<T> y) {
    return addOperation(
        new OperationDescription('BitwiseXor', 'BitwiseXor', [x, y]));
  }

  Output<int> sparseAdd<T, Treal>(
      Output<int> aIndices,
      Output<T> aValues,
      Output<int> aShape,
      Output<int> bIndices,
      Output<Treal> bValues,
      Output<int> bShape,
      Output<Treal> thresh) {
    return addOperation(new OperationDescription('SparseAdd', 'SparseAdd',
        [aIndices, aValues, aShape, bIndices, bValues, bShape, thresh]));
  }

  Output<dynamic> tensorListSetItem<element_dtype>(Output<dynamic> inputHandle,
      Output<int> index, Output<element_dtype> item) {
    return addOperation(new OperationDescription(
        'TensorListSetItem', 'TensorListSetItem', [inputHandle, index, item]));
  }

  Output<dynamic>
      mapAndBatchDataset<f, Targuments, output_types, output_shapes>(
          Output<dynamic> inputDataset,
          Output<f> otherArguments,
          Output<int> batchSize,
          Output<int> numParallelBatches) {
    return addOperation(new OperationDescription(
        'MapAndBatchDataset',
        'MapAndBatchDataset',
        [inputDataset, otherArguments, batchSize, numParallelBatches]));
  }

  Output<String> stack<elem_type, stack_name>() {
    return addOperation(new OperationDescription('Stack', 'Stack', []));
  }

  Output<String> tFRecordReader<container, shared_name, compression_type>() {
    return addOperation(
        new OperationDescription('TFRecordReader', 'TFRecordReader', []));
  }

  Output<component_types> queueDequeueMany<component_types, timeout_ms>(
      Output<String> handle, Output<int> n) {
    return addOperation(new OperationDescription(
        'QueueDequeueMany', 'QueueDequeueMany', [handle, n]));
  }

  Output<int> deserializeManySparse<dtype>(Output<String> serializedSparse) {
    return addOperation(new OperationDescription(
        'DeserializeManySparse', 'DeserializeManySparse', [serializedSparse]));
  }

  Output<String>
      sparseConditionalAccumulator<dtype, shape, container, shared_name>() {
    return addOperation(new OperationDescription(
        'SparseConditionalAccumulator', 'SparseConditionalAccumulator', []));
  }

  Output<String>
      conditionalAccumulator<dtype, shape, container, shared_name>() {
    return addOperation(new OperationDescription(
        'ConditionalAccumulator', 'ConditionalAccumulator', []));
  }

  Output<dynamic> batchFFT(Output<dynamic> input) {
    return addOperation(
        new OperationDescription('BatchFFT', 'BatchFFT', [input]));
  }

  Output<int> accumulatorNumAccumulated(Output<String> handle) {
    return addOperation(new OperationDescription(
        'AccumulatorNumAccumulated', 'AccumulatorNumAccumulated', [handle]));
  }

  Output<T> batchSelfAdjointEig<T>(Output<T> input) {
    return addOperation(new OperationDescription(
        'BatchSelfAdjointEig', 'BatchSelfAdjointEig', [input]));
  }

  Output<T> minimum<T>(Output<T> x, Output<T> y) {
    return addOperation(new OperationDescription('Minimum', 'Minimum', [x, y]));
  }

  Output<bool> queueIsClosed(Output<String> handle) {
    return addOperation(
        new OperationDescription('QueueIsClosed', 'QueueIsClosed', [handle]));
  }

  Output<double> tensorArraySplitV3<T>(Output<dynamic> handle, Output<T> value,
      Output<int> lengths, Output<double> flowIn) {
    return addOperation(new OperationDescription('TensorArraySplitV3',
        'TensorArraySplitV3', [handle, value, lengths, flowIn]));
  }

  Output<T> sparseApplyFtrl<T, Tindices, use_locking>(
      Output<T> var_,
      Output<Tindices> accum,
      Output<use_locking> linear,
      Output<use_locking> grad,
      Output<use_locking> indices,
      Output<use_locking> lr,
      Output<use_locking> l1,
      Output<use_locking> l2,
      Output<use_locking> lrPower) {
    return addOperation(new OperationDescription(
        'SparseApplyFtrl',
        'SparseApplyFtrl',
        [var_, accum, linear, grad, indices, lr, l1, l2, lrPower]));
  }

  Output resourceSparseApplyProximalGradientDescent<T, Tindices, use_locking>(
      Output<dynamic> var_,
      Output<T> alpha,
      Output<Tindices> l1,
      Output<use_locking> l2,
      Output<use_locking> grad,
      Output<use_locking> indices) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyProximalGradientDescent',
        'ResourceSparseApplyProximalGradientDescent',
        [var_, alpha, l1, l2, grad, indices]));
  }

  Output<T> sparseSegmentSum<T, Tidx>(
      Output<T> data, Output<Tidx> indices, Output<int> segmentIds) {
    return addOperation(new OperationDescription(
        'SparseSegmentSum', 'SparseSegmentSum', [data, indices, segmentIds]));
  }

  Output<String>
      fIFOQueue<component_types, shapes, capacity, container, shared_name>() {
    return addOperation(new OperationDescription('FIFOQueue', 'FIFOQueue', []));
  }

  Output<capacity> orderedMapUnstageNoKey<capacity, memory_limit, dtypes,
      container, shared_name>(Output<int> indices) {
    return addOperation(new OperationDescription(
        'OrderedMapUnstageNoKey', 'OrderedMapUnstageNoKey', [indices]));
  }

  Output<T> rint<T>(Output<T> x) {
    return addOperation(new OperationDescription('Rint', 'Rint', [x]));
  }

  Output abort<error_msg, exit_without_error>() {
    return addOperation(new OperationDescription('Abort', 'Abort', []));
  }

  Output<int> merge<T, N>(Output<T> inputs) {
    return addOperation(new OperationDescription('Merge', 'Merge', [inputs]));
  }

  Output<ksizes> extractImagePatches<ksizes, strides, rates, T, padding>(
      Output<ksizes> images) {
    return addOperation(new OperationDescription(
        'ExtractImagePatches', 'ExtractImagePatches', [images]));
  }

  Output<double> fixedUnigramCandidateSampler<
      num_true,
      num_sampled,
      unique,
      range_max,
      vocab_file,
      distortion,
      num_reserved_ids,
      num_shards,
      shard,
      unigrams,
      seed,
      seed2>(Output<int> trueClasses) {
    return addOperation(new OperationDescription('FixedUnigramCandidateSampler',
        'FixedUnigramCandidateSampler', [trueClasses]));
  }

  Output<String> shardedFilename(
      Output<String> basename, Output<int> shard, Output<int> numShards) {
    return addOperation(new OperationDescription(
        'ShardedFilename', 'ShardedFilename', [basename, shard, numShards]));
  }

  Output<adjoint> matrixInverse<adjoint, T>(Output<adjoint> input) {
    return addOperation(
        new OperationDescription('MatrixInverse', 'MatrixInverse', [input]));
  }

  Output<seed> randomPoisson<seed, seed2, S, dtype>(
      Output<seed> shape, Output<seed2> rate) {
    return addOperation(new OperationDescription(
        'RandomPoisson', 'RandomPoisson', [shape, rate]));
  }

  Output<String> paddingFIFOQueue<component_types, shapes, capacity, container,
      shared_name>() {
    return addOperation(
        new OperationDescription('PaddingFIFOQueue', 'PaddingFIFOQueue', []));
  }

  Output<T> conv3DBackpropInput<T, strides, padding>(
      Output<T> input, Output<strides> filter, Output<padding> outBackprop) {
    return addOperation(new OperationDescription('Conv3DBackpropInput',
        'Conv3DBackpropInput', [input, filter, outBackprop]));
  }

  Output<T> depthwiseConv2dNative<T, strides, padding, data_format, dilations>(
      Output<T> input, Output<strides> filter) {
    return addOperation(new OperationDescription(
        'DepthwiseConv2dNative', 'DepthwiseConv2dNative', [input, filter]));
  }

  Output<double> learnedUnigramCandidateSampler<num_true, num_sampled, unique,
      range_max, seed, seed2>(Output<int> trueClasses) {
    return addOperation(new OperationDescription(
        'LearnedUnigramCandidateSampler',
        'LearnedUnigramCandidateSampler',
        [trueClasses]));
  }

  Output queueEnqueueMany<Tcomponents, timeout_ms>(
      Output<String> handle, Output<Tcomponents> components) {
    return addOperation(new OperationDescription(
        'QueueEnqueueMany', 'QueueEnqueueMany', [handle, components]));
  }

  Output noOp() {
    return addOperation(new OperationDescription('NoOp', 'NoOp', []));
  }

  Output<double> loadAndRemapMatrix<num_rows, num_cols, max_rows_in_memory>(
      Output<String> ckptPath,
      Output<String> oldTensorName,
      Output<int> rowRemapping,
      Output<int> colRemapping,
      Output<double> initializingValues) {
    return addOperation(new OperationDescription(
        'LoadAndRemapMatrix', 'LoadAndRemapMatrix', [
      ckptPath,
      oldTensorName,
      rowRemapping,
      colRemapping,
      initializingValues
    ]));
  }

  Output<T> spaceToBatchND<T, Tblock_shape, Tpaddings>(Output<T> input,
      Output<Tblock_shape> blockShape, Output<Tpaddings> paddings) {
    return addOperation(new OperationDescription(
        'SpaceToBatchND', 'SpaceToBatchND', [input, blockShape, paddings]));
  }

  Output<T> resizeNearestNeighborGrad<T, align_corners>(
      Output<T> grads, Output<int> size) {
    return addOperation(new OperationDescription('ResizeNearestNeighborGrad',
        'ResizeNearestNeighborGrad', [grads, size]));
  }

  Output<double>
      allCandidateSampler<num_true, num_sampled, unique, seed, seed2>(
          Output<int> trueClasses) {
    return addOperation(new OperationDescription(
        'AllCandidateSampler', 'AllCandidateSampler', [trueClasses]));
  }

  Output queueEnqueueV2<Tcomponents, timeout_ms>(
      Output<dynamic> handle, Output<Tcomponents> components) {
    return addOperation(new OperationDescription(
        'QueueEnqueueV2', 'QueueEnqueueV2', [handle, components]));
  }

  Output<dynamic> batchDataset<output_types, output_shapes>(
      Output<dynamic> inputDataset, Output<int> batchSize) {
    return addOperation(new OperationDescription(
        'BatchDataset', 'BatchDataset', [inputDataset, batchSize]));
  }

  Output<dynamic> repeatDataset<output_types, output_shapes>(
      Output<dynamic> inputDataset, Output<int> count) {
    return addOperation(new OperationDescription(
        'RepeatDataset', 'RepeatDataset', [inputDataset, count]));
  }

  Output<component_types> queueDequeueManyV2<component_types, timeout_ms>(
      Output<dynamic> handle, Output<int> n) {
    return addOperation(new OperationDescription(
        'QueueDequeueManyV2', 'QueueDequeueManyV2', [handle, n]));
  }

  Output<T> logMatrixDeterminant<T>(Output<T> input) {
    return addOperation(new OperationDescription(
        'LogMatrixDeterminant', 'LogMatrixDeterminant', [input]));
  }

  Output<shape> temporaryVariable<shape, dtype, var_name>() {
    return addOperation(
        new OperationDescription('TemporaryVariable', 'TemporaryVariable', []));
  }

  Output<double> resizeBilinear<T, align_corners>(
      Output<T> images, Output<int> size) {
    return addOperation(new OperationDescription(
        'ResizeBilinear', 'ResizeBilinear', [images, size]));
  }

  Output<double> fakeQuantWithMinMaxVars<num_bits, narrow_range>(
      Output<double> inputs, Output<double> min, Output<double> max) {
    return addOperation(new OperationDescription('FakeQuantWithMinMaxVars',
        'FakeQuantWithMinMaxVars', [inputs, min, max]));
  }

  Output<int> barrierIncompleteSize(Output<String> handle) {
    return addOperation(new OperationDescription(
        'BarrierIncompleteSize', 'BarrierIncompleteSize', [handle]));
  }

  Output<bool> logicalNot(Output<bool> x) {
    return addOperation(
        new OperationDescription('LogicalNot', 'LogicalNot', [x]));
  }

  Output<T> sparseApplyAdagrad<T, Tindices, use_locking>(
      Output<T> var_,
      Output<Tindices> accum,
      Output<use_locking> lr,
      Output<use_locking> grad,
      Output<use_locking> indices) {
    return addOperation(new OperationDescription('SparseApplyAdagrad',
        'SparseApplyAdagrad', [var_, accum, lr, grad, indices]));
  }

  Output<int> queueSize(Output<String> handle) {
    return addOperation(
        new OperationDescription('QueueSize', 'QueueSize', [handle]));
  }

  Output<double> sdcaOptimizer<
          loss_type,
          adaptative,
          num_sparse_features,
          num_sparse_features_with_values,
          num_dense_features,
          l1,
          l2,
          num_loss_partitions,
          num_inner_iterations>(
      Output<int> sparseExampleIndices,
      Output<int> sparseFeatureIndices,
      Output<double> sparseFeatureValues,
      Output<double> denseFeatures,
      Output<double> exampleWeights,
      Output<double> exampleLabels,
      Output<int> sparseIndices,
      Output<double> sparseWeights,
      Output<double> denseWeights,
      Output<double> exampleStateData) {
    return addOperation(
        new OperationDescription('SdcaOptimizer', 'SdcaOptimizer', [
      sparseExampleIndices,
      sparseFeatureIndices,
      sparseFeatureValues,
      denseFeatures,
      exampleWeights,
      exampleLabels,
      sparseIndices,
      sparseWeights,
      denseWeights,
      exampleStateData
    ]));
  }

  Output<dynamic> iFFT(Output<dynamic> input) {
    return addOperation(new OperationDescription('IFFT', 'IFFT', [input]));
  }

  Output<T> atan<T>(Output<T> x) {
    return addOperation(new OperationDescription('Atan', 'Atan', [x]));
  }

  Output<double>
      fakeQuantWithMinMaxArgsGradient<min, max, num_bits, narrow_range>(
          Output<double> gradients, Output<double> inputs) {
    return addOperation(new OperationDescription(
        'FakeQuantWithMinMaxArgsGradient',
        'FakeQuantWithMinMaxArgsGradient',
        [gradients, inputs]));
  }

  Output<int> tensorListLength(Output<dynamic> inputHandle) {
    return addOperation(new OperationDescription(
        'TensorListLength', 'TensorListLength', [inputHandle]));
  }

  Output<dynamic> latencyStatsDataset<output_types, output_shapes>(
      Output<dynamic> inputDataset, Output<String> tag) {
    return addOperation(new OperationDescription(
        'LatencyStatsDataset', 'LatencyStatsDataset', [inputDataset, tag]));
  }

  Output<T> pow<T>(Output<T> x, Output<T> y) {
    return addOperation(new OperationDescription('Pow', 'Pow', [x, y]));
  }

  Output<T> applyRMSProp<T, use_locking>(
      Output<T> var_,
      Output<use_locking> ms,
      Output<use_locking> mom,
      Output<use_locking> lr,
      Output<use_locking> rho,
      Output<use_locking> momentum,
      Output<use_locking> epsilon,
      Output<use_locking> grad) {
    return addOperation(new OperationDescription('ApplyRMSProp', 'ApplyRMSProp',
        [var_, ms, mom, lr, rho, momentum, epsilon, grad]));
  }

  Output<T> stackPushV2<T, swap_memory>(
      Output<dynamic> handle, Output<T> elem) {
    return addOperation(
        new OperationDescription('StackPushV2', 'StackPushV2', [handle, elem]));
  }

  Output<dynamic> mutexLock(Output<dynamic> mutex) {
    return addOperation(
        new OperationDescription('MutexLock', 'MutexLock', [mutex]));
  }

  Output<ksize> maxPoolGradWithArgmax<ksize, strides, padding, Targmax, T>(
      Output<ksize> input, Output<strides> grad, Output<padding> argmax) {
    return addOperation(new OperationDescription('MaxPoolGradWithArgmax',
        'MaxPoolGradWithArgmax', [input, grad, argmax]));
  }

  Output<dynamic> fFT2D(Output<dynamic> input) {
    return addOperation(new OperationDescription('FFT2D', 'FFT2D', [input]));
  }

  Output<dynamic> mutexV2<container, shared_name>() {
    return addOperation(new OperationDescription('MutexV2', 'MutexV2', []));
  }

  Output<int> nonMaxSuppressionV2(Output<double> boxes, Output<double> scores,
      Output<int> maxOutputSize, Output<double> iouThreshold) {
    return addOperation(new OperationDescription('NonMaxSuppressionV2',
        'NonMaxSuppressionV2', [boxes, scores, maxOutputSize, iouThreshold]));
  }

  Output<int> bucketize<T, boundaries>(Output<T> input) {
    return addOperation(
        new OperationDescription('Bucketize', 'Bucketize', [input]));
  }

  Output<T> drawBoundingBoxes<T>(Output<T> images, Output<double> boxes) {
    return addOperation(new OperationDescription(
        'DrawBoundingBoxes', 'DrawBoundingBoxes', [images, boxes]));
  }

  Output<ksize> maxPoolWithArgmax<ksize, strides, Targmax, padding, T>(
      Output<ksize> input) {
    return addOperation(new OperationDescription(
        'MaxPoolWithArgmax', 'MaxPoolWithArgmax', [input]));
  }

  Output<dynamic> priorityQueueV2<component_types, shapes, capacity, container,
      shared_name>() {
    return addOperation(
        new OperationDescription('PriorityQueueV2', 'PriorityQueueV2', []));
  }

  Output<T> refEnter<T, frame_name, is_constant, parallel_iterations>(
      Output<T> data) {
    return addOperation(
        new OperationDescription('RefEnter', 'RefEnter', [data]));
  }

  Output<double> tensorArraySplit<T>(Output<String> handle, Output<T> value,
      Output<int> lengths, Output<double> flowIn) {
    return addOperation(new OperationDescription('TensorArraySplit',
        'TensorArraySplit', [handle, value, lengths, flowIn]));
  }

  Output<double> quantizedAvgPool<T, ksize, strides, padding>(
      Output<T> input, Output<double> minInput, Output<double> maxInput) {
    return addOperation(new OperationDescription(
        'QuantizedAvgPool', 'QuantizedAvgPool', [input, minInput, maxInput]));
  }

  Output<T> applyPowerSign<T, use_locking>(
      Output<T> var_,
      Output<use_locking> m,
      Output<use_locking> lr,
      Output<use_locking> logbase,
      Output<use_locking> signDecay,
      Output<use_locking> beta,
      Output<use_locking> grad) {
    return addOperation(new OperationDescription('ApplyPowerSign',
        'ApplyPowerSign', [var_, m, lr, logbase, signDecay, beta, grad]));
  }

  Output initializeTableFromTextFileV2<key_index, value_index, vocab_size,
      delimiter>(Output<dynamic> tableHandle, Output<String> filename) {
    return addOperation(new OperationDescription(
        'InitializeTableFromTextFileV2',
        'InitializeTableFromTextFileV2',
        [tableHandle, filename]));
  }

  Output<T> exit<T>(Output<T> data) {
    return addOperation(new OperationDescription('Exit', 'Exit', [data]));
  }

  Output accumulatorSetGlobalStep(
      Output<String> handle, Output<int> newGlobalStep) {
    return addOperation(new OperationDescription('AccumulatorSetGlobalStep',
        'AccumulatorSetGlobalStep', [handle, newGlobalStep]));
  }

  Output<exclusive> cumprod<exclusive, reverse, T, Tidx>(
      Output<exclusive> x, Output<reverse> axis) {
    return addOperation(
        new OperationDescription('Cumprod', 'Cumprod', [x, axis]));
  }

  Output<String> readerReadV2(
      Output<dynamic> readerHandle, Output<dynamic> queueHandle) {
    return addOperation(new OperationDescription(
        'ReaderReadV2', 'ReaderReadV2', [readerHandle, queueHandle]));
  }

  Output<T> refSelect<T, N>(Output<int> index, Output<T> inputs) {
    return addOperation(
        new OperationDescription('RefSelect', 'RefSelect', [index, inputs]));
  }

  Output<seq_dim> reverseSequence<seq_dim, batch_dim, T, Tlen>(
      Output<seq_dim> input, Output<batch_dim> seqLengths) {
    return addOperation(new OperationDescription(
        'ReverseSequence', 'ReverseSequence', [input, seqLengths]));
  }

  Output<dtype> tensorArrayGatherV3<dtype, element_shape>(
      Output<dynamic> handle, Output<int> indices, Output<double> flowIn) {
    return addOperation(new OperationDescription('TensorArrayGatherV3',
        'TensorArrayGatherV3', [handle, indices, flowIn]));
  }

  Output<String> priorityQueue<component_types, shapes, capacity, container,
      shared_name>() {
    return addOperation(
        new OperationDescription('PriorityQueue', 'PriorityQueue', []));
  }

  Output<bool> greater<T>(Output<T> x, Output<T> y) {
    return addOperation(new OperationDescription('Greater', 'Greater', [x, y]));
  }

  Output<int> readerNumWorkUnitsCompleted(Output<String> readerHandle) {
    return addOperation(new OperationDescription('ReaderNumWorkUnitsCompleted',
        'ReaderNumWorkUnitsCompleted', [readerHandle]));
  }

  Output<int> decodeWav<desired_channels, desired_samples>(
      Output<String> contents) {
    return addOperation(
        new OperationDescription('DecodeWav', 'DecodeWav', [contents]));
  }

  Output<int> stringToHashBucketFast<num_buckets>(Output<String> input) {
    return addOperation(new OperationDescription(
        'StringToHashBucketFast', 'StringToHashBucketFast', [input]));
  }

  Output<container> unbatchGrad<container, shared_name, T>(
      Output<container> originalInput,
      Output<int> batchIndex,
      Output<shared_name> grad,
      Output<int> id) {
    return addOperation(new OperationDescription(
        'UnbatchGrad', 'UnbatchGrad', [originalInput, batchIndex, grad, id]));
  }

  Output<T> argMin<T, Tidx, output_type>(
      Output<T> input, Output<Tidx> dimension) {
    return addOperation(
        new OperationDescription('ArgMin', 'ArgMin', [input, dimension]));
  }

  Output<dynamic> groupByWindowDataset<
          key_func,
          reduce_func,
          window_size_func,
          Tkey_func_other_arguments,
          Treduce_func_other_arguments,
          Twindow_size_func_other_arguments,
          output_types,
          output_shapes>(
      Output<dynamic> inputDataset,
      Output<key_func> keyFuncOtherArguments,
      Output<reduce_func> reduceFuncOtherArguments,
      Output<window_size_func> windowSizeFuncOtherArguments) {
    return addOperation(new OperationDescription(
        'GroupByWindowDataset', 'GroupByWindowDataset', [
      inputDataset,
      keyFuncOtherArguments,
      reduceFuncOtherArguments,
      windowSizeFuncOtherArguments
    ]));
  }

  Output<int> fractionalMaxPool<pooling_ratio, pseudo_random, overlapping,
      deterministic, seed, seed2, T>(Output<pooling_ratio> value) {
    return addOperation(new OperationDescription(
        'FractionalMaxPool', 'FractionalMaxPool', [value]));
  }

  Output<T> reciprocal<T>(Output<T> x) {
    return addOperation(
        new OperationDescription('Reciprocal', 'Reciprocal', [x]));
  }

  Output<int> readerNumWorkUnitsCompletedV2(Output<dynamic> readerHandle) {
    return addOperation(new OperationDescription(
        'ReaderNumWorkUnitsCompletedV2',
        'ReaderNumWorkUnitsCompletedV2',
        [readerHandle]));
  }

  Output<int>
      generateVocabRemapping<new_vocab_offset, num_new_vocab, old_vocab_size>(
          Output<String> newVocabFile, Output<String> oldVocabFile) {
    return addOperation(new OperationDescription('GenerateVocabRemapping',
        'GenerateVocabRemapping', [newVocabFile, oldVocabFile]));
  }

  Output<T> unsortedSegmentProd<T, Tindices, Tnumsegments>(Output<T> data,
      Output<Tindices> segmentIds, Output<Tnumsegments> numSegments) {
    return addOperation(new OperationDescription('UnsortedSegmentProd',
        'UnsortedSegmentProd', [data, segmentIds, numSegments]));
  }

  Output<T>
      fusedResizeAndPadConv2D<T, resize_align_corners, mode, strides, padding>(
          Output<T> input,
          Output<int> size,
          Output<int> paddings,
          Output<resize_align_corners> filter) {
    return addOperation(new OperationDescription('FusedResizeAndPadConv2D',
        'FusedResizeAndPadConv2D', [input, size, paddings, filter]));
  }

  Output<bool> inTopK<k, T>(Output<double> predictions, Output<k> targets) {
    return addOperation(
        new OperationDescription('InTopK', 'InTopK', [predictions, targets]));
  }

  Output<T> sub<T>(Output<T> x, Output<T> y) {
    return addOperation(new OperationDescription('Sub', 'Sub', [x, y]));
  }

  Output<T> angle<T, Tout>(Output<T> input) {
    return addOperation(new OperationDescription('Angle', 'Angle', [input]));
  }

  Output<double> tensorArrayUnpack<T>(
      Output<String> handle, Output<T> value, Output<double> flowIn) {
    return addOperation(new OperationDescription(
        'TensorArrayUnpack', 'TensorArrayUnpack', [handle, value, flowIn]));
  }

  Output<String> iteratorToStringHandle(Output<dynamic> resourceHandle) {
    return addOperation(new OperationDescription(
        'IteratorToStringHandle', 'IteratorToStringHandle', [resourceHandle]));
  }

  Output<int> sparseAccumulatorTakeGradient<dtype>(
      Output<String> handle, Output<int> numRequired) {
    return addOperation(new OperationDescription(
        'SparseAccumulatorTakeGradient',
        'SparseAccumulatorTakeGradient',
        [handle, numRequired]));
  }

  Output<T> conjugateTranspose<T, Tperm>(Output<T> x, Output<Tperm> perm) {
    return addOperation(new OperationDescription(
        'ConjugateTranspose', 'ConjugateTranspose', [x, perm]));
  }

  Output<capacity>
      mapPeek<capacity, memory_limit, dtypes, container, shared_name>(
          Output<int> key, Output<int> indices) {
    return addOperation(
        new OperationDescription('MapPeek', 'MapPeek', [key, indices]));
  }

  Output<T> destroyTemporaryVariable<T, var_name>(Output<T> ref) {
    return addOperation(new OperationDescription(
        'DestroyTemporaryVariable', 'DestroyTemporaryVariable', [ref]));
  }

  Output<int> takeManySparseFromTensorsMap<dtype, container, shared_name>(
      Output<int> sparseHandles) {
    return addOperation(new OperationDescription('TakeManySparseFromTensorsMap',
        'TakeManySparseFromTensorsMap', [sparseHandles]));
  }

  Output<String> wholeFileReader<container, shared_name>() {
    return addOperation(
        new OperationDescription('WholeFileReader', 'WholeFileReader', []));
  }
}
