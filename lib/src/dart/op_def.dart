// GENERATED CODE. DO NOT MODIFY BY HAND.

part of tensorflow;

class Graph extends _Graph {
  Output fractionalAvgPoolGrad(Output origInputTensorShape, Output outBackprop,
      Output rowPoolingSequence, Output colPoolingSequence,
      {bool overlapping: false}) {
    return addOperation(new OperationDescription(
        'FractionalAvgPoolGrad', _scope.uniqueName('FractionalAvgPoolGrad'), [
      origInputTensorShape,
      outBackprop,
      rowPoolingSequence,
      colPoolingSequence
    ], {
      'overlapping': overlapping
    }));
  }

  Output nthElement(Output input, Output n, {bool reverse: false}) {
    return addOperation(new OperationDescription('NthElement',
        _scope.uniqueName('NthElement'), [input, n], {'reverse': reverse}));
  }

  Output inTopKV2(Output predictions, Output targets, Output k) {
    return addOperation(new OperationDescription('InTopKV2',
        _scope.uniqueName('InTopKV2'), [predictions, targets, k], {}));
  }

  Output logSoftmax(Output logits) {
    return addOperation(new OperationDescription(
        'LogSoftmax', _scope.uniqueName('LogSoftmax'), [logits], {}));
  }

  Output softmax(Output logits) {
    return addOperation(new OperationDescription(
        'Softmax', _scope.uniqueName('Softmax'), [logits], {}));
  }

  Output softsignGrad(Output gradients, Output features) {
    return addOperation(new OperationDescription('SoftsignGrad',
        _scope.uniqueName('SoftsignGrad'), [gradients, features], {}));
  }

  Output softplusGrad(Output gradients, Output features) {
    return addOperation(new OperationDescription('SoftplusGrad',
        _scope.uniqueName('SoftplusGrad'), [gradients, features], {}));
  }

  Output seluGrad(Output gradients, Output outputs) {
    return addOperation(new OperationDescription(
        'SeluGrad', _scope.uniqueName('SeluGrad'), [gradients, outputs], {}));
  }

  Output selu(Output features) {
    return addOperation(new OperationDescription(
        'Selu', _scope.uniqueName('Selu'), [features], {}));
  }

  Output eluGrad(Output gradients, Output outputs) {
    return addOperation(new OperationDescription(
        'EluGrad', _scope.uniqueName('EluGrad'), [gradients, outputs], {}));
  }

  Output relu6Grad(Output gradients, Output features) {
    return addOperation(new OperationDescription('Relu6Grad',
        _scope.uniqueName('Relu6Grad'), [gradients, features], {}));
  }

  Output reluGrad(Output gradients, Output features) {
    return addOperation(new OperationDescription(
        'ReluGrad', _scope.uniqueName('ReluGrad'), [gradients, features], {}));
  }

  Output all(Output input, Output reductionIndices,
      {bool keepDims: false, DataType tidx: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'All',
        _scope.uniqueName('All'),
        [input, reductionIndices],
        {'keep_dims': keepDims, 'Tidx': tidx}));
  }

  Output maxPoolGradGradV2(Output origInput, Output origOutput, Output grad,
      Output ksize, Output strides,
      {@required String padding, String dataFormat: 'NHWC'}) {
    return addOperation(new OperationDescription(
        'MaxPoolGradGradV2',
        _scope.uniqueName('MaxPoolGradGradV2'),
        [origInput, origOutput, grad, ksize, strides],
        {'padding': padding, 'data_format': dataFormat}));
  }

  Output maxPoolGradV2(Output origInput, Output origOutput, Output grad,
      Output ksize, Output strides,
      {@required String padding, String dataFormat: 'NHWC'}) {
    return addOperation(new OperationDescription(
        'MaxPoolGradV2',
        _scope.uniqueName('MaxPoolGradV2'),
        [origInput, origOutput, grad, ksize, strides],
        {'padding': padding, 'data_format': dataFormat}));
  }

  Output roll(Output input, Output shift, Output axis,
      {@required DataType tshift, @required DataType taxis}) {
    return addOperation(new OperationDescription(
        'Roll',
        _scope.uniqueName('Roll'),
        [input, shift, axis],
        {'Tshift': tshift, 'Taxis': taxis}));
  }

  Output lRNGrad(Output inputGrads, Output inputImage, Output outputImage,
      {int depthRadius: 5,
      double bias: 1.0,
      double alpha: 1.0,
      double beta: 0.5}) {
    return addOperation(new OperationDescription(
        'LRNGrad', _scope.uniqueName('LRNGrad'), [
      inputGrads,
      inputImage,
      outputImage
    ], {
      'depth_radius': depthRadius,
      'bias': bias,
      'alpha': alpha,
      'beta': beta
    }));
  }

  Output cropAndResize(
      Output image, Output boxes, Output boxInd, Output cropSize,
      {String method: 'bilinear', double extrapolationValue: 0.0}) {
    return addOperation(new OperationDescription(
        'CropAndResize',
        _scope.uniqueName('CropAndResize'),
        [image, boxes, boxInd, cropSize],
        {'method': method, 'extrapolation_value': extrapolationValue}));
  }

  Output expm1(Output x) {
    return addOperation(
        new OperationDescription('Expm1', _scope.uniqueName('Expm1'), [x], {}));
  }

  Output biasAdd(Output value, Output bias, {String dataFormat: 'NHWC'}) {
    return addOperation(new OperationDescription(
        'BiasAdd',
        _scope.uniqueName('BiasAdd'),
        [value, bias],
        {'data_format': dataFormat}));
  }

  Output sin(Output x) {
    return addOperation(
        new OperationDescription('Sin', _scope.uniqueName('Sin'), [x], {}));
  }

  Output sparseMatMul(Output a, Output b,
      {bool transposeA: false,
      bool transposeB: false,
      bool aIsSparse: false,
      bool bIsSparse: false,
      DataType ta: DataType.DT_FLOAT,
      DataType tb: DataType.DT_FLOAT}) {
    return addOperation(new OperationDescription(
        'SparseMatMul', _scope.uniqueName('SparseMatMul'), [
      a,
      b
    ], {
      'transpose_a': transposeA,
      'transpose_b': transposeB,
      'a_is_sparse': aIsSparse,
      'b_is_sparse': bIsSparse,
      'Ta': ta,
      'Tb': tb
    }));
  }

  Output readVariableOp(Output resource, {@required DataType dtype}) {
    return addOperation(new OperationDescription('ReadVariableOp',
        _scope.uniqueName('ReadVariableOp'), [resource], {'dtype': dtype}));
  }

  Output lgamma(Output x) {
    return addOperation(new OperationDescription(
        'Lgamma', _scope.uniqueName('Lgamma'), [x], {}));
  }

  Output compareAndBitpack(Output input, Output threshold) {
    return addOperation(new OperationDescription('CompareAndBitpack',
        _scope.uniqueName('CompareAndBitpack'), [input, threshold], {}));
  }

  Output cumsum(Output x, Output axis,
      {bool exclusive: false,
      bool reverse: false,
      DataType tidx: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'Cumsum',
        _scope.uniqueName('Cumsum'),
        [x, axis],
        {'exclusive': exclusive, 'reverse': reverse, 'Tidx': tidx}));
  }

  Output bincount(Output arr, Output size, Output weights) {
    return addOperation(new OperationDescription(
        'Bincount', _scope.uniqueName('Bincount'), [arr, size, weights], {}));
  }

  Output cross(Output a, Output b) {
    return addOperation(new OperationDescription(
        'Cross', _scope.uniqueName('Cross'), [a, b], {}));
  }

  Output conj(Output input) {
    return addOperation(new OperationDescription(
        'Conj', _scope.uniqueName('Conj'), [input], {}));
  }

  Output real(Output input, {DataType tout: DataType.DT_FLOAT}) {
    return addOperation(new OperationDescription(
        'Real', _scope.uniqueName('Real'), [input], {'Tout': tout}));
  }

  Output dequantize(Output input, Output minRange, Output maxRange,
      {String mode: 'MIN_COMBINED'}) {
    return addOperation(new OperationDescription(
        'Dequantize',
        _scope.uniqueName('Dequantize'),
        [input, minRange, maxRange],
        {'mode': mode}));
  }

  Output complex(Output real, Output imag,
      {DataType tout: DataType.DT_COMPLEX64}) {
    return addOperation(new OperationDescription(
        'Complex', _scope.uniqueName('Complex'), [real, imag], {'Tout': tout}));
  }

  Output any(Output input, Output reductionIndices,
      {bool keepDims: false, DataType tidx: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'Any',
        _scope.uniqueName('Any'),
        [input, reductionIndices],
        {'keep_dims': keepDims, 'Tidx': tidx}));
  }

  Output sparseSegmentMean(Output data, Output indices, Output segmentIds,
      {DataType tidx: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'SparseSegmentMean',
        _scope.uniqueName('SparseSegmentMean'),
        [data, indices, segmentIds],
        {'Tidx': tidx}));
  }

  Output sparseSegmentSumWithNumSegments(
      Output data, Output indices, Output segmentIds, Output numSegments,
      {DataType tidx: DataType.DT_INT32,
      DataType tnumsegments: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'SparseSegmentSumWithNumSegments',
        _scope.uniqueName('SparseSegmentSumWithNumSegments'),
        [data, indices, segmentIds, numSegments],
        {'Tidx': tidx, 'Tnumsegments': tnumsegments}));
  }

  Output unsortedSegmentSum(Output data, Output segmentIds, Output numSegments,
      {@required DataType tindices, DataType tnumsegments: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'UnsortedSegmentSum',
        _scope.uniqueName('UnsortedSegmentSum'),
        [data, segmentIds, numSegments],
        {'Tindices': tindices, 'Tnumsegments': tnumsegments}));
  }

  Output atan2(Output y, Output x) {
    return addOperation(new OperationDescription(
        'Atan2', _scope.uniqueName('Atan2'), [y, x], {}));
  }

  Output segmentProd(Output data, Output segmentIds,
      {@required DataType tindices}) {
    return addOperation(new OperationDescription(
        'SegmentProd',
        _scope.uniqueName('SegmentProd'),
        [data, segmentIds],
        {'Tindices': tindices}));
  }

  Output resizeBilinearGrad(Output grads, Output originalImage,
      {bool alignCorners: false}) {
    return addOperation(new OperationDescription(
        'ResizeBilinearGrad',
        _scope.uniqueName('ResizeBilinearGrad'),
        [grads, originalImage],
        {'align_corners': alignCorners}));
  }

  Output max(Output input, Output reductionIndices,
      {bool keepDims: false, DataType tidx: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'Max',
        _scope.uniqueName('Max'),
        [input, reductionIndices],
        {'keep_dims': keepDims, 'Tidx': tidx}));
  }

  Output getSessionTensor(Output handle, {@required DataType dtype}) {
    return addOperation(new OperationDescription('GetSessionTensor',
        _scope.uniqueName('GetSessionTensor'), [handle], {'dtype': dtype}));
  }

  Output min(Output input, Output reductionIndices,
      {bool keepDims: false, DataType tidx: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'Min',
        _scope.uniqueName('Min'),
        [input, reductionIndices],
        {'keep_dims': keepDims, 'Tidx': tidx}));
  }

  Output accumulatorApplyGradient(
      Output handle, Output localStep, Output gradient,
      {@required DataType dtype}) {
    return addOperation(new OperationDescription(
        'AccumulatorApplyGradient',
        _scope.uniqueName('AccumulatorApplyGradient'),
        [handle, localStep, gradient],
        {'dtype': dtype}));
  }

  Output prod(Output input, Output reductionIndices,
      {bool keepDims: false, DataType tidx: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'Prod',
        _scope.uniqueName('Prod'),
        [input, reductionIndices],
        {'keep_dims': keepDims, 'Tidx': tidx}));
  }

  Output sum(Output input, Output reductionIndices,
      {bool keepDims: false, DataType tidx: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'Sum',
        _scope.uniqueName('Sum'),
        [input, reductionIndices],
        {'keep_dims': keepDims, 'Tidx': tidx}));
  }

  Output relu(Output features) {
    return addOperation(new OperationDescription(
        'Relu', _scope.uniqueName('Relu'), [features], {}));
  }

  Output matMul(Output a, Output b,
      {bool transposeA: false, bool transposeB: false}) {
    return addOperation(new OperationDescription(
        'MatMul',
        _scope.uniqueName('MatMul'),
        [a, b],
        {'transpose_a': transposeA, 'transpose_b': transposeB}));
  }

  Output logicalAnd(Output x, Output y) {
    return addOperation(new OperationDescription(
        'LogicalAnd', _scope.uniqueName('LogicalAnd'), [x, y], {}));
  }

  /// Writes a `GraphDef` protocol buffer to a `SummaryWriter`.
  Output writeGraphSummary(Output writer, Output step, Output tensor) {
    return addOperation(new OperationDescription('WriteGraphSummary',
        _scope.uniqueName('WriteGraphSummary'), [writer, step, tensor], {}));
  }

  Output approximateEqual(Output x, Output y,
      {double tolerance: 0.000009999999747378752}) {
    return addOperation(new OperationDescription(
        'ApproximateEqual',
        _scope.uniqueName('ApproximateEqual'),
        [x, y],
        {'tolerance': tolerance}));
  }

  Output greaterEqual(Output x, Output y) {
    return addOperation(new OperationDescription(
        'GreaterEqual', _scope.uniqueName('GreaterEqual'), [x, y], {}));
  }

  Output polygamma(Output a, Output x) {
    return addOperation(new OperationDescription(
        'Polygamma', _scope.uniqueName('Polygamma'), [a, x], {}));
  }

  /// Outputs a `tf.Event` protocol buffer.
  /// When CreateSummaryDbWriter is being used, this op can be useful for
  /// importing data from event logs.
  Output importEvent(Output writer, Output event) {
    return addOperation(new OperationDescription(
        'ImportEvent', _scope.uniqueName('ImportEvent'), [writer, event], {}));
  }

  Output igamma(Output a, Output x) {
    return addOperation(new OperationDescription(
        'Igamma', _scope.uniqueName('Igamma'), [a, x], {}));
  }

  Output igammac(Output a, Output x) {
    return addOperation(new OperationDescription(
        'Igammac', _scope.uniqueName('Igammac'), [a, x], {}));
  }

  Output mod(Output x, Output y) {
    return addOperation(
        new OperationDescription('Mod', _scope.uniqueName('Mod'), [x, y], {}));
  }

  Output maximum(Output x, Output y) {
    return addOperation(new OperationDescription(
        'Maximum', _scope.uniqueName('Maximum'), [x, y], {}));
  }

  Output squaredDifference(Output x, Output y) {
    return addOperation(new OperationDescription('SquaredDifference',
        _scope.uniqueName('SquaredDifference'), [x, y], {}));
  }

  Output resourceCountUpTo(Output resource, {@required int limit}) {
    return addOperation(new OperationDescription('ResourceCountUpTo',
        _scope.uniqueName('ResourceCountUpTo'), [resource], {'limit': limit}));
  }

  Output realDiv(Output x, Output y) {
    return addOperation(new OperationDescription(
        'RealDiv', _scope.uniqueName('RealDiv'), [x, y], {}));
  }

  Output truncateDiv(Output x, Output y) {
    return addOperation(new OperationDescription(
        'TruncateDiv', _scope.uniqueName('TruncateDiv'), [x, y], {}));
  }

  Output asString(Output input,
      {int precision: -1,
      bool scientific: false,
      bool shortest: false,
      int width: -1,
      String fill}) {
    return addOperation(
        new OperationDescription('AsString', _scope.uniqueName('AsString'), [
      input
    ], {
      'precision': precision,
      'scientific': scientific,
      'shortest': shortest,
      'width': width,
      'fill': fill
    }));
  }

  Output addV2(Output x, Output y) {
    return addOperation(new OperationDescription(
        'AddV2', _scope.uniqueName('AddV2'), [x, y], {}));
  }

  Output resourceGather(Output resource, Output indices,
      {bool validateIndices: true,
      @required DataType dtype,
      @required DataType tindices}) {
    return addOperation(new OperationDescription(
        'ResourceGather', _scope.uniqueName('ResourceGather'), [
      resource,
      indices
    ], {
      'validate_indices': validateIndices,
      'dtype': dtype,
      'Tindices': tindices
    }));
  }

  Output add(Output x, Output y) {
    return addOperation(
        new OperationDescription('Add', _scope.uniqueName('Add'), [x, y], {}));
  }

  Output floor(Output x) {
    return addOperation(
        new OperationDescription('Floor', _scope.uniqueName('Floor'), [x], {}));
  }

  Output ceil(Output x) {
    return addOperation(
        new OperationDescription('Ceil', _scope.uniqueName('Ceil'), [x], {}));
  }

  Output isInf(Output x) {
    return addOperation(
        new OperationDescription('IsInf', _scope.uniqueName('IsInf'), [x], {}));
  }

  Output padV2(Output input, Output paddings, Output constantValues,
      {DataType tpaddings: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'PadV2',
        _scope.uniqueName('PadV2'),
        [input, paddings, constantValues],
        {'Tpaddings': tpaddings}));
  }

  Output cos(Output x) {
    return addOperation(
        new OperationDescription('Cos', _scope.uniqueName('Cos'), [x], {}));
  }

  @Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayV3')
  Output tensorArray(Output size,
      {@required DataType dtype,
      bool dynamicSize: false,
      bool clearAfterRead: true,
      String tensorArrayName,
      List<int> elementShape}) {
    return addOperation(new OperationDescription(
        'TensorArray', _scope.uniqueName('TensorArray'), [
      size
    ], {
      'dtype': dtype,
      'dynamic_size': dynamicSize,
      'clear_after_read': clearAfterRead,
      'tensor_array_name': tensorArrayName,
      'element_shape': elementShape
    }));
  }

  Output variable(
      {@required List<int> shape,
      @required DataType dtype,
      String container,
      String sharedName}) {
    return addOperation(new OperationDescription(
        'Variable', _scope.uniqueName('Variable'), [], {
      'shape': shape,
      'dtype': dtype,
      'container': container,
      'shared_name': sharedName
    }));
  }

  Output sigmoidGrad(Output y, Output dy) {
    return addOperation(new OperationDescription(
        'SigmoidGrad', _scope.uniqueName('SigmoidGrad'), [y, dy], {}));
  }

  Output digamma(Output x) {
    return addOperation(new OperationDescription(
        'Digamma', _scope.uniqueName('Digamma'), [x], {}));
  }

  Output acosh(Output x) {
    return addOperation(
        new OperationDescription('Acosh', _scope.uniqueName('Acosh'), [x], {}));
  }

  Output resourceApplyProximalAdagrad(
      Output var_, Output accum, Output lr, Output l1, Output l2, Output grad,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyProximalAdagrad',
        _scope.uniqueName('ResourceApplyProximalAdagrad'),
        [var_, accum, lr, l1, l2, grad],
        {'use_locking': useLocking}));
  }

  Output asin(Output x) {
    return addOperation(
        new OperationDescription('Asin', _scope.uniqueName('Asin'), [x], {}));
  }

  Output log1p(Output x) {
    return addOperation(
        new OperationDescription('Log1p', _scope.uniqueName('Log1p'), [x], {}));
  }

  @Deprecated('DEPRECATED at GraphDef version 16: Use TensorArraySizeV3')
  Output tensorArraySize(Output handle, Output flowIn) {
    return addOperation(new OperationDescription('TensorArraySize',
        _scope.uniqueName('TensorArraySize'), [handle, flowIn], {}));
  }

  Output exp(Output x) {
    return addOperation(
        new OperationDescription('Exp', _scope.uniqueName('Exp'), [x], {}));
  }

  Output mutableHashTableOfTensors(
      {String container,
      String sharedName,
      bool useNodeNameSharing: false,
      @required DataType keyDtype,
      @required DataType valueDtype,
      List<int> valueShape}) {
    return addOperation(new OperationDescription('MutableHashTableOfTensors',
        _scope.uniqueName('MutableHashTableOfTensors'), [], {
      'container': container,
      'shared_name': sharedName,
      'use_node_name_sharing': useNodeNameSharing,
      'key_dtype': keyDtype,
      'value_dtype': valueDtype,
      'value_shape': valueShape
    }));
  }

  Output scatterNdAdd(Output ref, Output indices, Output updates,
      {@required DataType tindices, bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ScatterNdAdd',
        _scope.uniqueName('ScatterNdAdd'),
        [ref, indices, updates],
        {'Tindices': tindices, 'use_locking': useLocking}));
  }

  Output deserializeIterator(Output resourceHandle, Output serialized) {
    return addOperation(new OperationDescription(
        'DeserializeIterator',
        _scope.uniqueName('DeserializeIterator'),
        [resourceHandle, serialized],
        {}));
  }

  Output rsqrtGrad(Output y, Output dy) {
    return addOperation(new OperationDescription(
        'RsqrtGrad', _scope.uniqueName('RsqrtGrad'), [y, dy], {}));
  }

  Output rsqrt(Output x) {
    return addOperation(
        new OperationDescription('Rsqrt', _scope.uniqueName('Rsqrt'), [x], {}));
  }

  Output initializeTableFromTextFile(Output tableHandle, Output filename,
      {@required int keyIndex,
      @required int valueIndex,
      int vocabSize: -1,
      String delimiter: '	'}) {
    return addOperation(new OperationDescription('InitializeTableFromTextFile',
        _scope.uniqueName('InitializeTableFromTextFile'), [
      tableHandle,
      filename
    ], {
      'key_index': keyIndex,
      'value_index': valueIndex,
      'vocab_size': vocabSize,
      'delimiter': delimiter
    }));
  }

  Output sqrtGrad(Output y, Output dy) {
    return addOperation(new OperationDescription(
        'SqrtGrad', _scope.uniqueName('SqrtGrad'), [y, dy], {}));
  }

  Output invGrad(Output y, Output dy) {
    return addOperation(new OperationDescription(
        'InvGrad', _scope.uniqueName('InvGrad'), [y, dy], {}));
  }

  Output inv(Output x) {
    return addOperation(
        new OperationDescription('Inv', _scope.uniqueName('Inv'), [x], {}));
  }

  Output accumulateNV2(List<Output> inputs,
      {@required int n, @required List<int> shape}) {
    return addOperation(new OperationDescription(
        'AccumulateNV2',
        _scope.uniqueName('AccumulateNV2'),
        [inputs],
        {'N': n, 'shape': shape}));
  }

  @Deprecated('DEPRECATED at GraphDef version 14: Use MatrixSetDiag')
  Output batchMatrixSetDiag(Output input, Output diagonal) {
    return addOperation(new OperationDescription('BatchMatrixSetDiag',
        _scope.uniqueName('BatchMatrixSetDiag'), [input, diagonal], {}));
  }

  Output segmentMean(Output data, Output segmentIds,
      {@required DataType tindices}) {
    return addOperation(new OperationDescription(
        'SegmentMean',
        _scope.uniqueName('SegmentMean'),
        [data, segmentIds],
        {'Tindices': tindices}));
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 22: Replaced by QuantizeAndDequantizeV2')
  Output quantizeAndDequantize(Output input,
      {bool signedInput: true,
      int numBits: 8,
      bool rangeGiven: false,
      double inputMin: 0.0,
      double inputMax: 0.0}) {
    return addOperation(new OperationDescription(
        'QuantizeAndDequantize', _scope.uniqueName('QuantizeAndDequantize'), [
      input
    ], {
      'signed_input': signedInput,
      'num_bits': numBits,
      'range_given': rangeGiven,
      'input_min': inputMin,
      'input_max': inputMax
    }));
  }

  Output sparseSegmentSqrtN(Output data, Output indices, Output segmentIds,
      {DataType tidx: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'SparseSegmentSqrtN',
        _scope.uniqueName('SparseSegmentSqrtN'),
        [data, indices, segmentIds],
        {'Tidx': tidx}));
  }

  Output depthToSpace(Output input,
      {@required int blockSize, String dataFormat: 'NHWC'}) {
    return addOperation(new OperationDescription(
        'DepthToSpace',
        _scope.uniqueName('DepthToSpace'),
        [input],
        {'block_size': blockSize, 'data_format': dataFormat}));
  }

  Output spaceToDepth(Output input,
      {@required int blockSize, String dataFormat: 'NHWC'}) {
    return addOperation(new OperationDescription(
        'SpaceToDepth',
        _scope.uniqueName('SpaceToDepth'),
        [input],
        {'block_size': blockSize, 'data_format': dataFormat}));
  }

  Output quantizeAndDequantizeV3(
      Output input, Output inputMin, Output inputMax, Output numBits,
      {bool signedInput: true, bool rangeGiven: true}) {
    return addOperation(new OperationDescription(
        'QuantizeAndDequantizeV3',
        _scope.uniqueName('QuantizeAndDequantizeV3'),
        [input, inputMin, inputMax, numBits],
        {'signed_input': signedInput, 'range_given': rangeGiven}));
  }

  Output mul(Output x, Output y) {
    return addOperation(
        new OperationDescription('Mul', _scope.uniqueName('Mul'), [x, y], {}));
  }

  Output batchToSpace(Output input, Output crops,
      {@required int blockSize, DataType tidx: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'BatchToSpace',
        _scope.uniqueName('BatchToSpace'),
        [input, crops],
        {'block_size': blockSize, 'Tidx': tidx}));
  }

  Output spaceToBatch(Output input, Output paddings,
      {DataType tpaddings: DataType.DT_INT32, @required int blockSize}) {
    return addOperation(new OperationDescription(
        'SpaceToBatch',
        _scope.uniqueName('SpaceToBatch'),
        [input, paddings],
        {'Tpaddings': tpaddings, 'block_size': blockSize}));
  }

  Output expandDims(Output input, Output dim,
      {DataType tdim: DataType.DT_INT32}) {
    return addOperation(new OperationDescription('ExpandDims',
        _scope.uniqueName('ExpandDims'), [input, dim], {'Tdim': tdim}));
  }

  Output placeholderWithDefault(Output input,
      {@required DataType dtype, @required List<int> shape}) {
    return addOperation(new OperationDescription(
        'PlaceholderWithDefault',
        _scope.uniqueName('PlaceholderWithDefault'),
        [input],
        {'dtype': dtype, 'shape': shape}));
  }

  Output applyMomentum(
      Output var_, Output accum, Output lr, Output grad, Output momentum,
      {bool useLocking: false, bool useNesterov: false}) {
    return addOperation(new OperationDescription(
        'ApplyMomentum',
        _scope.uniqueName('ApplyMomentum'),
        [var_, accum, lr, grad, momentum],
        {'use_locking': useLocking, 'use_nesterov': useNesterov}));
  }

  Output acos(Output x) {
    return addOperation(
        new OperationDescription('Acos', _scope.uniqueName('Acos'), [x], {}));
  }

  Output placeholder({@required DataType dtype, List<int> shape}) {
    return addOperation(new OperationDescription(
        'Placeholder',
        _scope.uniqueName('Placeholder'),
        [],
        {'dtype': dtype, 'shape': shape}));
  }

  Output mirrorPadGrad(Output input, Output paddings,
      {DataType tpaddings: DataType.DT_INT32, @required String mode}) {
    return addOperation(new OperationDescription(
        'MirrorPadGrad',
        _scope.uniqueName('MirrorPadGrad'),
        [input, paddings],
        {'Tpaddings': tpaddings, 'mode': mode}));
  }

  Output matrixSolveLs(Output matrix, Output rhs, Output l2Regularizer,
      {bool fast: true}) {
    return addOperation(new OperationDescription(
        'MatrixSolveLs',
        _scope.uniqueName('MatrixSolveLs'),
        [matrix, rhs, l2Regularizer],
        {'fast': fast}));
  }

  Output mirrorPad(Output input, Output paddings,
      {DataType tpaddings: DataType.DT_INT32, @required String mode}) {
    return addOperation(new OperationDescription(
        'MirrorPad',
        _scope.uniqueName('MirrorPad'),
        [input, paddings],
        {'Tpaddings': tpaddings, 'mode': mode}));
  }

  Output pad(Output input, Output paddings,
      {DataType tpaddings: DataType.DT_INT32}) {
    return addOperation(new OperationDescription('Pad',
        _scope.uniqueName('Pad'), [input, paddings], {'Tpaddings': tpaddings}));
  }

  Output broadcastArgs(Output s0, Output s1) {
    return addOperation(new OperationDescription(
        'BroadcastArgs', _scope.uniqueName('BroadcastArgs'), [s0, s1], {}));
  }

  Output resourceStridedSliceAssign(
      Output ref, Output begin, Output end, Output strides, Output value,
      {@required DataType index,
      int beginMask: 0,
      int endMask: 0,
      int ellipsisMask: 0,
      int newAxisMask: 0,
      int shrinkAxisMask: 0}) {
    return addOperation(new OperationDescription('ResourceStridedSliceAssign',
        _scope.uniqueName('ResourceStridedSliceAssign'), [
      ref,
      begin,
      end,
      strides,
      value
    ], {
      'Index': index,
      'begin_mask': beginMask,
      'end_mask': endMask,
      'ellipsis_mask': ellipsisMask,
      'new_axis_mask': newAxisMask,
      'shrink_axis_mask': shrinkAxisMask
    }));
  }

  Output truncateMod(Output x, Output y) {
    return addOperation(new OperationDescription(
        'TruncateMod', _scope.uniqueName('TruncateMod'), [x, y], {}));
  }

  Output resourceApplyFtrl(Output var_, Output accum, Output linear,
      Output grad, Output lr, Output l1, Output l2, Output lrPower,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyFtrl',
        _scope.uniqueName('ResourceApplyFtrl'),
        [var_, accum, linear, grad, lr, l1, l2, lrPower],
        {'use_locking': useLocking}));
  }

  Output stridedSliceGrad(
      Output shape, Output begin, Output end, Output strides, Output dy,
      {@required DataType index,
      int beginMask: 0,
      int endMask: 0,
      int ellipsisMask: 0,
      int newAxisMask: 0,
      int shrinkAxisMask: 0}) {
    return addOperation(new OperationDescription(
        'StridedSliceGrad', _scope.uniqueName('StridedSliceGrad'), [
      shape,
      begin,
      end,
      strides,
      dy
    ], {
      'Index': index,
      'begin_mask': beginMask,
      'end_mask': endMask,
      'ellipsis_mask': ellipsisMask,
      'new_axis_mask': newAxisMask,
      'shrink_axis_mask': shrinkAxisMask
    }));
  }

  Output stridedSlice(Output input, Output begin, Output end, Output strides,
      {@required DataType index,
      int beginMask: 0,
      int endMask: 0,
      int ellipsisMask: 0,
      int newAxisMask: 0,
      int shrinkAxisMask: 0}) {
    return addOperation(new OperationDescription(
        'StridedSlice', _scope.uniqueName('StridedSlice'), [
      input,
      begin,
      end,
      strides
    ], {
      'Index': index,
      'begin_mask': beginMask,
      'end_mask': endMask,
      'ellipsis_mask': ellipsisMask,
      'new_axis_mask': newAxisMask,
      'shrink_axis_mask': shrinkAxisMask
    }));
  }

  Output lMDBReader({String container, String sharedName}) {
    return addOperation(new OperationDescription(
        'LMDBReader',
        _scope.uniqueName('LMDBReader'),
        [],
        {'container': container, 'shared_name': sharedName}));
  }

  Output slice(Output input, Output begin, Output size,
      {@required DataType index}) {
    return addOperation(new OperationDescription('Slice',
        _scope.uniqueName('Slice'), [input, begin, size], {'Index': index}));
  }

  Output scatterNd(Output indices, Output updates, Output shape,
      {@required DataType tindices}) {
    return addOperation(new OperationDescription(
        'ScatterNd',
        _scope.uniqueName('ScatterNd'),
        [indices, updates, shape],
        {'Tindices': tindices}));
  }

  Output argMax(Output input, Output dimension,
      {DataType tidx: DataType.DT_INT32,
      DataType outputType: DataType.DT_INT64}) {
    return addOperation(new OperationDescription(
        'ArgMax',
        _scope.uniqueName('ArgMax'),
        [input, dimension],
        {'Tidx': tidx, 'output_type': outputType}));
  }

  Output reshape(Output tensor, Output shape,
      {DataType tshape: DataType.DT_INT32}) {
    return addOperation(new OperationDescription('Reshape',
        _scope.uniqueName('Reshape'), [tensor, shape], {'Tshape': tshape}));
  }

  Output checkNumerics(Output tensor, {@required String message}) {
    return addOperation(new OperationDescription('CheckNumerics',
        _scope.uniqueName('CheckNumerics'), [tensor], {'message': message}));
  }

  Output stopGradient(Output input) {
    return addOperation(new OperationDescription(
        'StopGradient', _scope.uniqueName('StopGradient'), [input], {}));
  }

  Output debugGradientIdentity(Output input) {
    return addOperation(new OperationDescription('DebugGradientIdentity',
        _scope.uniqueName('DebugGradientIdentity'), [input], {}));
  }

  Output refIdentity(Output input) {
    return addOperation(new OperationDescription(
        'RefIdentity', _scope.uniqueName('RefIdentity'), [input], {}));
  }

  Output round(Output x) {
    return addOperation(
        new OperationDescription('Round', _scope.uniqueName('Round'), [x], {}));
  }

  Output sparseTensorDenseAdd(
      Output aIndices, Output aValues, Output aShape, Output b,
      {@required DataType tindices}) {
    return addOperation(new OperationDescription(
        'SparseTensorDenseAdd',
        _scope.uniqueName('SparseTensorDenseAdd'),
        [aIndices, aValues, aShape, b],
        {'Tindices': tindices}));
  }

  Output snapshot(Output input) {
    return addOperation(new OperationDescription(
        'Snapshot', _scope.uniqueName('Snapshot'), [input], {}));
  }

  Output size(Output input, {DataType outType: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'Size', _scope.uniqueName('Size'), [input], {'out_type': outType}));
  }

  Output scalarSummary(Output tags, Output values) {
    return addOperation(new OperationDescription('ScalarSummary',
        _scope.uniqueName('ScalarSummary'), [tags, values], {}));
  }

  Output identity(Output input) {
    return addOperation(new OperationDescription(
        'Identity', _scope.uniqueName('Identity'), [input], {}));
  }

  Output reverseV2(Output tensor, Output axis,
      {DataType tidx: DataType.DT_INT32}) {
    return addOperation(new OperationDescription('ReverseV2',
        _scope.uniqueName('ReverseV2'), [tensor, axis], {'Tidx': tidx}));
  }

  Output reverse(Output tensor, Output dims) {
    return addOperation(new OperationDescription(
        'Reverse', _scope.uniqueName('Reverse'), [tensor, dims], {}));
  }

  Output matrixDiagPart(Output input) {
    return addOperation(new OperationDescription(
        'MatrixDiagPart', _scope.uniqueName('MatrixDiagPart'), [input], {}));
  }

  Output matrixSetDiag(Output input, Output diagonal) {
    return addOperation(new OperationDescription('MatrixSetDiag',
        _scope.uniqueName('MatrixSetDiag'), [input, diagonal], {}));
  }

  Output statelessTruncatedNormal(Output shape, Output seed,
      {DataType dtype: DataType.DT_FLOAT, DataType tseed: DataType.DT_INT64}) {
    return addOperation(new OperationDescription(
        'StatelessTruncatedNormal',
        _scope.uniqueName('StatelessTruncatedNormal'),
        [shape, seed],
        {'dtype': dtype, 'Tseed': tseed}));
  }

  Output matrixDiag(Output diagonal) {
    return addOperation(new OperationDescription(
        'MatrixDiag', _scope.uniqueName('MatrixDiag'), [diagonal], {}));
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 23: Placeholder now behaves the same as PlaceholderV2.')
  Output placeholderV2({@required DataType dtype, @required List<int> shape}) {
    return addOperation(new OperationDescription(
        'PlaceholderV2',
        _scope.uniqueName('PlaceholderV2'),
        [],
        {'dtype': dtype, 'shape': shape}));
  }

  Output diagPart(Output input) {
    return addOperation(new OperationDescription(
        'DiagPart', _scope.uniqueName('DiagPart'), [input], {}));
  }

  Output onesLike(Output x) {
    return addOperation(new OperationDescription(
        'OnesLike', _scope.uniqueName('OnesLike'), [x], {}));
  }

  Output guaranteeConst(Output input) {
    return addOperation(new OperationDescription(
        'GuaranteeConst', _scope.uniqueName('GuaranteeConst'), [input], {}));
  }

  Output immutableConst(
      {@required DataType dtype,
      @required List<int> shape,
      @required String memoryRegionName}) {
    return addOperation(new OperationDescription(
        'ImmutableConst', _scope.uniqueName('ImmutableConst'), [], {
      'dtype': dtype,
      'shape': shape,
      'memory_region_name': memoryRegionName
    }));
  }

  Output fill(Output dims, Output value,
      {DataType indexType: DataType.DT_INT32}) {
    return addOperation(new OperationDescription('Fill',
        _scope.uniqueName('Fill'), [dims, value], {'index_type': indexType}));
  }

  Output applyCenteredRMSProp(Output var_, Output mg, Output ms, Output mom,
      Output lr, Output rho, Output momentum, Output epsilon, Output grad,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ApplyCenteredRMSProp',
        _scope.uniqueName('ApplyCenteredRMSProp'),
        [var_, mg, ms, mom, lr, rho, momentum, epsilon, grad],
        {'use_locking': useLocking}));
  }

  Output const_({@required Output value, @required DataType dtype}) {
    return addOperation(new OperationDescription('Const',
        _scope.uniqueName('Const'), [], {'value': value, 'dtype': dtype}));
  }

  Output splitV(Output value, Output sizeSplits, Output splitDim,
      {@required int numSplit, DataType tlen: DataType.DT_INT64}) {
    return addOperation(new OperationDescription(
        'SplitV',
        _scope.uniqueName('SplitV'),
        [value, sizeSplits, splitDim],
        {'num_split': numSplit, 'Tlen': tlen}));
  }

  Output split(Output splitDim, Output value, {@required int numSplit}) {
    return addOperation(new OperationDescription(
        'Split',
        _scope.uniqueName('Split'),
        [splitDim, value],
        {'num_split': numSplit}));
  }

  Output concatV2(List<Output> values, Output axis,
      {@required int n, DataType tidx: DataType.DT_INT32}) {
    return addOperation(new OperationDescription('ConcatV2',
        _scope.uniqueName('ConcatV2'), [values, axis], {'N': n, 'Tidx': tidx}));
  }

  Output resourceApplyPowerSign(Output var_, Output m, Output lr,
      Output logbase, Output signDecay, Output beta, Output grad,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyPowerSign',
        _scope.uniqueName('ResourceApplyPowerSign'),
        [var_, m, lr, logbase, signDecay, beta, grad],
        {'use_locking': useLocking}));
  }

  Output concat(Output concatDim, List<Output> values, {@required int n}) {
    return addOperation(new OperationDescription(
        'Concat', _scope.uniqueName('Concat'), [concatDim, values], {'N': n}));
  }

  Output leftShift(Output x, Output y) {
    return addOperation(new OperationDescription(
        'LeftShift', _scope.uniqueName('LeftShift'), [x, y], {}));
  }

  @Deprecated('DEPRECATED at GraphDef version 19: Use TensorArrayGradV3')
  Output tensorArrayScatter(
      Output handle, Output indices, Output value, Output flowIn) {
    return addOperation(new OperationDescription(
        'TensorArrayScatter',
        _scope.uniqueName('TensorArrayScatter'),
        [handle, indices, value, flowIn],
        {}));
  }

  Output bitwiseOr(Output x, Output y) {
    return addOperation(new OperationDescription(
        'BitwiseOr', _scope.uniqueName('BitwiseOr'), [x, y], {}));
  }

  Output applyAddSign(Output var_, Output m, Output lr, Output alpha,
      Output signDecay, Output beta, Output grad,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ApplyAddSign',
        _scope.uniqueName('ApplyAddSign'),
        [var_, m, lr, alpha, signDecay, beta, grad],
        {'use_locking': useLocking}));
  }

  Output bitwiseAnd(Output x, Output y) {
    return addOperation(new OperationDescription(
        'BitwiseAnd', _scope.uniqueName('BitwiseAnd'), [x, y], {}));
  }

  Output populationCount(Output x) {
    return addOperation(new OperationDescription(
        'PopulationCount', _scope.uniqueName('PopulationCount'), [x], {}));
  }

  Output decodePng(Output contents,
      {int channels: 0, DataType dtype: DataType.DT_UINT8}) {
    return addOperation(new OperationDescription(
        'DecodePng',
        _scope.uniqueName('DecodePng'),
        [contents],
        {'channels': channels, 'dtype': dtype}));
  }

  Output invert(Output x) {
    return addOperation(new OperationDescription(
        'Invert', _scope.uniqueName('Invert'), [x], {}));
  }

  Output fact() {
    return addOperation(
        new OperationDescription('Fact', _scope.uniqueName('Fact'), [], {}));
  }

  Output resizeBicubicGrad(Output grads, Output originalImage,
      {bool alignCorners: false}) {
    return addOperation(new OperationDescription(
        'ResizeBicubicGrad',
        _scope.uniqueName('ResizeBicubicGrad'),
        [grads, originalImage],
        {'align_corners': alignCorners}));
  }

  Output sparseApplyMomentum(Output var_, Output accum, Output lr, Output grad,
      Output indices, Output momentum,
      {@required DataType tindices,
      bool useLocking: false,
      bool useNesterov: false}) {
    return addOperation(new OperationDescription(
        'SparseApplyMomentum', _scope.uniqueName('SparseApplyMomentum'), [
      var_,
      accum,
      lr,
      grad,
      indices,
      momentum
    ], {
      'Tindices': tindices,
      'use_locking': useLocking,
      'use_nesterov': useNesterov
    }));
  }

  Output serializeIterator(Output resourceHandle) {
    return addOperation(new OperationDescription('SerializeIterator',
        _scope.uniqueName('SerializeIterator'), [resourceHandle], {}));
  }

  Output resourceApplyCenteredRMSProp(
      Output var_,
      Output mg,
      Output ms,
      Output mom,
      Output lr,
      Output rho,
      Output momentum,
      Output epsilon,
      Output grad,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyCenteredRMSProp',
        _scope.uniqueName('ResourceApplyCenteredRMSProp'),
        [var_, mg, ms, mom, lr, rho, momentum, epsilon, grad],
        {'use_locking': useLocking}));
  }

  Output resourceApplyRMSProp(Output var_, Output ms, Output mom, Output lr,
      Output rho, Output momentum, Output epsilon, Output grad,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyRMSProp',
        _scope.uniqueName('ResourceApplyRMSProp'),
        [var_, ms, mom, lr, rho, momentum, epsilon, grad],
        {'use_locking': useLocking}));
  }

  Output zerosLike(Output x) {
    return addOperation(new OperationDescription(
        'ZerosLike', _scope.uniqueName('ZerosLike'), [x], {}));
  }

  Output concatOffset(Output concatDim, List<Output> shape, {@required int n}) {
    return addOperation(new OperationDescription('ConcatOffset',
        _scope.uniqueName('ConcatOffset'), [concatDim, shape], {'N': n}));
  }

  Output sigmoid(Output x) {
    return addOperation(new OperationDescription(
        'Sigmoid', _scope.uniqueName('Sigmoid'), [x], {}));
  }

  Output resourceSparseApplyAdadelta(
      Output var_,
      Output accum,
      Output accumUpdate,
      Output lr,
      Output rho,
      Output epsilon,
      Output grad,
      Output indices,
      {@required DataType tindices,
      bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyAdadelta',
        _scope.uniqueName('ResourceSparseApplyAdadelta'),
        [var_, accum, accumUpdate, lr, rho, epsilon, grad, indices],
        {'Tindices': tindices, 'use_locking': useLocking}));
  }

  Output resourceApplyAdam(
      Output var_,
      Output m,
      Output v,
      Output beta1Power,
      Output beta2Power,
      Output lr,
      Output beta1,
      Output beta2,
      Output epsilon,
      Output grad,
      {bool useLocking: false,
      bool useNesterov: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyAdam',
        _scope.uniqueName('ResourceApplyAdam'),
        [var_, m, v, beta1Power, beta2Power, lr, beta1, beta2, epsilon, grad],
        {'use_locking': useLocking, 'use_nesterov': useNesterov}));
  }

  Output resourceSparseApplyMomentum(Output var_, Output accum, Output lr,
      Output grad, Output indices, Output momentum,
      {@required DataType tindices,
      bool useLocking: false,
      bool useNesterov: false}) {
    return addOperation(new OperationDescription('ResourceSparseApplyMomentum',
        _scope.uniqueName('ResourceSparseApplyMomentum'), [
      var_,
      accum,
      lr,
      grad,
      indices,
      momentum
    ], {
      'Tindices': tindices,
      'use_locking': useLocking,
      'use_nesterov': useNesterov
    }));
  }

  Output resourceApplyMomentum(
      Output var_, Output accum, Output lr, Output grad, Output momentum,
      {bool useLocking: false, bool useNesterov: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyMomentum',
        _scope.uniqueName('ResourceApplyMomentum'),
        [var_, accum, lr, grad, momentum],
        {'use_locking': useLocking, 'use_nesterov': useNesterov}));
  }

  Output parallelConcat(List<Output> values,
      {@required int n, @required List<int> shape}) {
    return addOperation(new OperationDescription(
        'ParallelConcat',
        _scope.uniqueName('ParallelConcat'),
        [values],
        {'N': n, 'shape': shape}));
  }

  Output editDistance(
      Output hypothesisIndices,
      Output hypothesisValues,
      Output hypothesisShape,
      Output truthIndices,
      Output truthValues,
      Output truthShape,
      {bool normalize: true}) {
    return addOperation(new OperationDescription(
        'EditDistance', _scope.uniqueName('EditDistance'), [
      hypothesisIndices,
      hypothesisValues,
      hypothesisShape,
      truthIndices,
      truthValues,
      truthShape
    ], {
      'normalize': normalize
    }));
  }

  Output resourceApplyFtrlV2(
      Output var_,
      Output accum,
      Output linear,
      Output grad,
      Output lr,
      Output l1,
      Output l2,
      Output l2Shrinkage,
      Output lrPower,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyFtrlV2',
        _scope.uniqueName('ResourceApplyFtrlV2'),
        [var_, accum, linear, grad, lr, l1, l2, l2Shrinkage, lrPower],
        {'use_locking': useLocking}));
  }

  Output stackPop(Output handle, {@required DataType elemType}) {
    return addOperation(new OperationDescription('StackPop',
        _scope.uniqueName('StackPop'), [handle], {'elem_type': elemType}));
  }

  Output sparseApplyFtrlV2(
      Output var_,
      Output accum,
      Output linear,
      Output grad,
      Output indices,
      Output lr,
      Output l1,
      Output l2,
      Output l2Shrinkage,
      Output lrPower,
      {@required DataType tindices,
      bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'SparseApplyFtrlV2',
        _scope.uniqueName('SparseApplyFtrlV2'),
        [var_, accum, linear, grad, indices, lr, l1, l2, l2Shrinkage, lrPower],
        {'Tindices': tindices, 'use_locking': useLocking}));
  }

  Output resourceSparseApplyFtrl(
      Output var_,
      Output accum,
      Output linear,
      Output grad,
      Output indices,
      Output lr,
      Output l1,
      Output l2,
      Output lrPower,
      {@required DataType tindices,
      bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyFtrl',
        _scope.uniqueName('ResourceSparseApplyFtrl'),
        [var_, accum, linear, grad, indices, lr, l1, l2, lrPower],
        {'Tindices': tindices, 'use_locking': useLocking}));
  }

  Output sign(Output x) {
    return addOperation(
        new OperationDescription('Sign', _scope.uniqueName('Sign'), [x], {}));
  }

  Output resourceApplyAddSign(Output var_, Output m, Output lr, Output alpha,
      Output signDecay, Output beta, Output grad,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyAddSign',
        _scope.uniqueName('ResourceApplyAddSign'),
        [var_, m, lr, alpha, signDecay, beta, grad],
        {'use_locking': useLocking}));
  }

  Output neg(Output x) {
    return addOperation(
        new OperationDescription('Neg', _scope.uniqueName('Neg'), [x], {}));
  }

  Output resourceSparseApplyProximalAdagrad(Output var_, Output accum,
      Output lr, Output l1, Output l2, Output grad, Output indices,
      {@required DataType tindices, bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyProximalAdagrad',
        _scope.uniqueName('ResourceSparseApplyProximalAdagrad'),
        [var_, accum, lr, l1, l2, grad, indices],
        {'Tindices': tindices, 'use_locking': useLocking}));
  }

  Output bitcast(Output input, {@required DataType type}) {
    return addOperation(new OperationDescription(
        'Bitcast', _scope.uniqueName('Bitcast'), [input], {'type': type}));
  }

  Output sparseToDense(Output sparseIndices, Output outputShape,
      Output sparseValues, Output defaultValue,
      {bool validateIndices: true, @required DataType tindices}) {
    return addOperation(new OperationDescription(
        'SparseToDense',
        _scope.uniqueName('SparseToDense'),
        [sparseIndices, outputShape, sparseValues, defaultValue],
        {'validate_indices': validateIndices, 'Tindices': tindices}));
  }

  Output resourceApplyAdagradDA(
      Output var_,
      Output gradientAccumulator,
      Output gradientSquaredAccumulator,
      Output grad,
      Output lr,
      Output l1,
      Output l2,
      Output globalStep,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyAdagradDA', _scope.uniqueName('ResourceApplyAdagradDA'), [
      var_,
      gradientAccumulator,
      gradientSquaredAccumulator,
      grad,
      lr,
      l1,
      l2,
      globalStep
    ], {
      'use_locking': useLocking
    }));
  }

  Output sparseApplyAdagradDA(
      Output var_,
      Output gradientAccumulator,
      Output gradientSquaredAccumulator,
      Output grad,
      Output indices,
      Output lr,
      Output l1,
      Output l2,
      Output globalStep,
      {@required DataType tindices,
      bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'SparseApplyAdagradDA', _scope.uniqueName('SparseApplyAdagradDA'), [
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
      'Tindices': tindices,
      'use_locking': useLocking
    }));
  }

  Output resourceSparseApplyAdagrad(
      Output var_, Output accum, Output lr, Output grad, Output indices,
      {@required DataType tindices, bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyAdagrad',
        _scope.uniqueName('ResourceSparseApplyAdagrad'),
        [var_, accum, lr, grad, indices],
        {'Tindices': tindices, 'use_locking': useLocking}));
  }

  Output sqrt(Output x) {
    return addOperation(
        new OperationDescription('Sqrt', _scope.uniqueName('Sqrt'), [x], {}));
  }

  Output resourceApplyAdagrad(Output var_, Output accum, Output lr, Output grad,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyAdagrad',
        _scope.uniqueName('ResourceApplyAdagrad'),
        [var_, accum, lr, grad],
        {'use_locking': useLocking}));
  }

  Output applyAdadelta(Output var_, Output accum, Output accumUpdate, Output lr,
      Output rho, Output epsilon, Output grad,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ApplyAdadelta',
        _scope.uniqueName('ApplyAdadelta'),
        [var_, accum, accumUpdate, lr, rho, epsilon, grad],
        {'use_locking': useLocking}));
  }

  Output cholesky(Output input) {
    return addOperation(new OperationDescription(
        'Cholesky', _scope.uniqueName('Cholesky'), [input], {}));
  }

  Output sparseSegmentSqrtNWithNumSegments(
      Output data, Output indices, Output segmentIds, Output numSegments,
      {DataType tidx: DataType.DT_INT32,
      DataType tnumsegments: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'SparseSegmentSqrtNWithNumSegments',
        _scope.uniqueName('SparseSegmentSqrtNWithNumSegments'),
        [data, indices, segmentIds, numSegments],
        {'Tidx': tidx, 'Tnumsegments': tnumsegments}));
  }

  Output resourceApplyProximalGradientDescent(
      Output var_, Output alpha, Output l1, Output l2, Output delta,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyProximalGradientDescent',
        _scope.uniqueName('ResourceApplyProximalGradientDescent'),
        [var_, alpha, l1, l2, delta],
        {'use_locking': useLocking}));
  }

  Output tile(Output input, Output multiples,
      {DataType tmultiples: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'Tile',
        _scope.uniqueName('Tile'),
        [input, multiples],
        {'Tmultiples': tmultiples}));
  }

  Output sparseApplyProximalGradientDescent(Output var_, Output alpha,
      Output l1, Output l2, Output grad, Output indices,
      {@required DataType tindices, bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'SparseApplyProximalGradientDescent',
        _scope.uniqueName('SparseApplyProximalGradientDescent'),
        [var_, alpha, l1, l2, grad, indices],
        {'Tindices': tindices, 'use_locking': useLocking}));
  }

  Output applyProximalGradientDescent(
      Output var_, Output alpha, Output l1, Output l2, Output delta,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ApplyProximalGradientDescent',
        _scope.uniqueName('ApplyProximalGradientDescent'),
        [var_, alpha, l1, l2, delta],
        {'use_locking': useLocking}));
  }

  Output matrixLogarithm(Output input) {
    return addOperation(new OperationDescription(
        'MatrixLogarithm', _scope.uniqueName('MatrixLogarithm'), [input], {}));
  }

  Output resourceApplyGradientDescent(Output var_, Output alpha, Output delta,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyGradientDescent',
        _scope.uniqueName('ResourceApplyGradientDescent'),
        [var_, alpha, delta],
        {'use_locking': useLocking}));
  }

  Output cosh(Output x) {
    return addOperation(
        new OperationDescription('Cosh', _scope.uniqueName('Cosh'), [x], {}));
  }

  Output applyGradientDescent(Output var_, Output alpha, Output delta,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ApplyGradientDescent',
        _scope.uniqueName('ApplyGradientDescent'),
        [var_, alpha, delta],
        {'use_locking': useLocking}));
  }

  Output l2Loss(Output t) {
    return addOperation(new OperationDescription(
        'L2Loss', _scope.uniqueName('L2Loss'), [t], {}));
  }

  Output cast(Output x, {@required DataType srcT, @required DataType dstT}) {
    return addOperation(new OperationDescription(
        'Cast', _scope.uniqueName('Cast'), [x], {'SrcT': srcT, 'DstT': dstT}));
  }

  Output segmentMax(Output data, Output segmentIds,
      {@required DataType tindices}) {
    return addOperation(new OperationDescription(
        'SegmentMax',
        _scope.uniqueName('SegmentMax'),
        [data, segmentIds],
        {'Tindices': tindices}));
  }

  Output countUpTo(Output ref, {@required int limit}) {
    return addOperation(new OperationDescription(
        'CountUpTo', _scope.uniqueName('CountUpTo'), [ref], {'limit': limit}));
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 9: Use tf.nn.batch_normalization()')
  Output batchNormWithGlobalNormalization(
      Output t, Output m, Output v, Output beta, Output gamma,
      {@required double varianceEpsilon,
      @required bool scaleAfterNormalization}) {
    return addOperation(new OperationDescription(
        'BatchNormWithGlobalNormalization',
        _scope.uniqueName('BatchNormWithGlobalNormalization'), [
      t,
      m,
      v,
      beta,
      gamma
    ], {
      'variance_epsilon': varianceEpsilon,
      'scale_after_normalization': scaleAfterNormalization
    }));
  }

  Output fakeQuantWithMinMaxArgs(Output inputs,
      {double min: -6.0,
      double max: 6.0,
      int numBits: 8,
      bool narrowRange: false}) {
    return addOperation(new OperationDescription('FakeQuantWithMinMaxArgs',
        _scope.uniqueName('FakeQuantWithMinMaxArgs'), [
      inputs
    ], {
      'min': min,
      'max': max,
      'num_bits': numBits,
      'narrow_range': narrowRange
    }));
  }

  Output resourceScatterNdUpdate(Output ref, Output indices, Output updates,
      {@required DataType tindices, bool useLocking: true}) {
    return addOperation(new OperationDescription(
        'ResourceScatterNdUpdate',
        _scope.uniqueName('ResourceScatterNdUpdate'),
        [ref, indices, updates],
        {'Tindices': tindices, 'use_locking': useLocking}));
  }

  Output scatterNdUpdate(Output ref, Output indices, Output updates,
      {@required DataType tindices, bool useLocking: true}) {
    return addOperation(new OperationDescription(
        'ScatterNdUpdate',
        _scope.uniqueName('ScatterNdUpdate'),
        [ref, indices, updates],
        {'Tindices': tindices, 'use_locking': useLocking}));
  }

  Output scatterMul(Output ref, Output indices, Output updates,
      {@required DataType tindices, bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ScatterMul',
        _scope.uniqueName('ScatterMul'),
        [ref, indices, updates],
        {'Tindices': tindices, 'use_locking': useLocking}));
  }

  Output scatterSub(Output ref, Output indices, Output updates,
      {@required DataType tindices, bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ScatterSub',
        _scope.uniqueName('ScatterSub'),
        [ref, indices, updates],
        {'Tindices': tindices, 'use_locking': useLocking}));
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 13: Use MatrixTriangularSolve instead.')
  Output batchMatrixTriangularSolve(Output matrix, Output rhs,
      {bool lower: true, bool adjoint: false}) {
    return addOperation(new OperationDescription(
        'BatchMatrixTriangularSolve',
        _scope.uniqueName('BatchMatrixTriangularSolve'),
        [matrix, rhs],
        {'lower': lower, 'adjoint': adjoint}));
  }

  Output mean(Output input, Output reductionIndices,
      {bool keepDims: false, DataType tidx: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'Mean',
        _scope.uniqueName('Mean'),
        [input, reductionIndices],
        {'keep_dims': keepDims, 'Tidx': tidx}));
  }

  Output scatterAdd(Output ref, Output indices, Output updates,
      {@required DataType tindices, bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ScatterAdd',
        _scope.uniqueName('ScatterAdd'),
        [ref, indices, updates],
        {'Tindices': tindices, 'use_locking': useLocking}));
  }

  Output scatterUpdate(Output ref, Output indices, Output updates,
      {@required DataType tindices, bool useLocking: true}) {
    return addOperation(new OperationDescription(
        'ScatterUpdate',
        _scope.uniqueName('ScatterUpdate'),
        [ref, indices, updates],
        {'Tindices': tindices, 'use_locking': useLocking}));
  }

  Output assignSub(Output ref, Output value, {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'AssignSub',
        _scope.uniqueName('AssignSub'),
        [ref, value],
        {'use_locking': useLocking}));
  }

  Output assignAdd(Output ref, Output value, {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'AssignAdd',
        _scope.uniqueName('AssignAdd'),
        [ref, value],
        {'use_locking': useLocking}));
  }

  Output betainc(Output a, Output b, Output x) {
    return addOperation(new OperationDescription(
        'Betainc', _scope.uniqueName('Betainc'), [a, b, x], {}));
  }

  Output assign(Output ref, Output value,
      {bool validateShape: true, bool useLocking: true}) {
    return addOperation(new OperationDescription(
        'Assign',
        _scope.uniqueName('Assign'),
        [ref, value],
        {'validate_shape': validateShape, 'use_locking': useLocking}));
  }

  Output isVariableInitialized(Output ref, {@required DataType dtype}) {
    return addOperation(new OperationDescription('IsVariableInitialized',
        _scope.uniqueName('IsVariableInitialized'), [ref], {'dtype': dtype}));
  }

  Output variableV2(
      {@required List<int> shape,
      @required DataType dtype,
      String container,
      String sharedName}) {
    return addOperation(new OperationDescription(
        'VariableV2', _scope.uniqueName('VariableV2'), [], {
      'shape': shape,
      'dtype': dtype,
      'container': container,
      'shared_name': sharedName
    }));
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
  Output writeAudioSummary(
      Output writer, Output step, Output tag, Output tensor, Output sampleRate,
      {int maxOutputs: 3}) {
    return addOperation(new OperationDescription(
        'WriteAudioSummary',
        _scope.uniqueName('WriteAudioSummary'),
        [writer, step, tag, tensor, sampleRate],
        {'max_outputs': maxOutputs}));
  }

  @Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayCloseV3')
  Output tensorArrayClose(Output handle) {
    return addOperation(new OperationDescription('TensorArrayClose',
        _scope.uniqueName('TensorArrayClose'), [handle], {}));
  }

  Output matrixBandPart(Output input, Output numLower, Output numUpper,
      {DataType tindex: DataType.DT_INT64}) {
    return addOperation(new OperationDescription(
        'MatrixBandPart',
        _scope.uniqueName('MatrixBandPart'),
        [input, numLower, numUpper],
        {'Tindex': tindex}));
  }

  Output matrixSolve(Output matrix, Output rhs, {bool adjoint: false}) {
    return addOperation(new OperationDescription('MatrixSolve',
        _scope.uniqueName('MatrixSolve'), [matrix, rhs], {'adjoint': adjoint}));
  }

  Output writeFile(Output filename, Output contents) {
    return addOperation(new OperationDescription(
        'WriteFile', _scope.uniqueName('WriteFile'), [filename, contents], {}));
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
  Output writeImageSummary(
      Output writer, Output step, Output tag, Output tensor, Output badColor,
      {int maxImages: 3}) {
    return addOperation(new OperationDescription(
        'WriteImageSummary',
        _scope.uniqueName('WriteImageSummary'),
        [writer, step, tag, tensor, badColor],
        {'max_images': maxImages}));
  }

  Output tan(Output x) {
    return addOperation(
        new OperationDescription('Tan', _scope.uniqueName('Tan'), [x], {}));
  }

  /// Writes a `Summary` protocol buffer with a histogram.
  /// The generated
  /// [`Summary`](https://www.tensorflow.org/code/tensorflow/core/framework/summary.proto)
  /// has one summary value containing a histogram for `values`.
  /// This op reports an `InvalidArgument` error if any value is not finite.
  Output writeHistogramSummary(
      Output writer, Output step, Output tag, Output values) {
    return addOperation(new OperationDescription(
        'WriteHistogramSummary',
        _scope.uniqueName('WriteHistogramSummary'),
        [writer, step, tag, values],
        {}));
  }

  Output batchMatMul(Output x, Output y, {bool adjX: false, bool adjY: false}) {
    return addOperation(new OperationDescription(
        'BatchMatMul',
        _scope.uniqueName('BatchMatMul'),
        [x, y],
        {'adj_x': adjX, 'adj_y': adjY}));
  }

  /// Outputs a `Summary` protocol buffer with a tensor.
  Output writeSummary(Output writer, Output step, Output tensor, Output tag,
      Output summaryMetadata) {
    return addOperation(new OperationDescription(
        'WriteSummary',
        _scope.uniqueName('WriteSummary'),
        [writer, step, tensor, tag, summaryMetadata],
        {}));
  }

  /// Flushes the writer's unwritten events.
  Output flushSummaryWriter(Output writer) {
    return addOperation(new OperationDescription('FlushSummaryWriter',
        _scope.uniqueName('FlushSummaryWriter'), [writer], {}));
  }

  /// Creates summary database writer accessible by given resource handle.
  /// This can be used to write tensors from the execution graph directly
  /// to a database. Only SQLite is supported right now. This function
  /// will create the schema if it doesn't exist. Entries in the Users,
  /// Experiments, and Runs tables will be created automatically if they
  /// don't already exist.
  Output createSummaryDbWriter(Output writer, Output dbUri,
      Output experimentName, Output runName, Output userName) {
    return addOperation(new OperationDescription(
        'CreateSummaryDbWriter',
        _scope.uniqueName('CreateSummaryDbWriter'),
        [writer, dbUri, experimentName, runName, userName],
        {}));
  }

  Output sparseApplyRMSProp(Output var_, Output ms, Output mom, Output lr,
      Output rho, Output momentum, Output epsilon, Output grad, Output indices,
      {@required DataType tindices, bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'SparseApplyRMSProp',
        _scope.uniqueName('SparseApplyRMSProp'),
        [var_, ms, mom, lr, rho, momentum, epsilon, grad, indices],
        {'Tindices': tindices, 'use_locking': useLocking}));
  }

  /// Returns a handle to be used to access a summary writer.
  /// The summary writer is an in-graph resource which can be used by ops to write
  /// summaries to event files.
  Output summaryWriter({String sharedName, String container}) {
    return addOperation(new OperationDescription(
        'SummaryWriter',
        _scope.uniqueName('SummaryWriter'),
        [],
        {'shared_name': sharedName, 'container': container}));
  }

  Output substr(Output input, Output pos, Output len) {
    return addOperation(new OperationDescription(
        'Substr', _scope.uniqueName('Substr'), [input, pos, len], {}));
  }

  Output decodeBase64(Output input) {
    return addOperation(new OperationDescription(
        'DecodeBase64', _scope.uniqueName('DecodeBase64'), [input], {}));
  }

  Output encodeBase64(Output input, {bool pad: false}) {
    return addOperation(new OperationDescription('EncodeBase64',
        _scope.uniqueName('EncodeBase64'), [input], {'pad': pad}));
  }

  Output stringJoin(List<Output> inputs, {@required int n, String separator}) {
    return addOperation(new OperationDescription(
        'StringJoin',
        _scope.uniqueName('StringJoin'),
        [inputs],
        {'N': n, 'separator': separator}));
  }

  Output softsign(Output features) {
    return addOperation(new OperationDescription(
        'Softsign', _scope.uniqueName('Softsign'), [features], {}));
  }

  Output stringToHashBucket(Output stringTensor, {@required int numBuckets}) {
    return addOperation(new OperationDescription(
        'StringToHashBucket',
        _scope.uniqueName('StringToHashBucket'),
        [stringTensor],
        {'num_buckets': numBuckets}));
  }

  Output isFinite(Output x) {
    return addOperation(new OperationDescription(
        'IsFinite', _scope.uniqueName('IsFinite'), [x], {}));
  }

  Output regexReplace(Output input, Output pattern, Output rewrite,
      {bool replaceGlobal: true}) {
    return addOperation(new OperationDescription(
        'RegexReplace',
        _scope.uniqueName('RegexReplace'),
        [input, pattern, rewrite],
        {'replace_global': replaceGlobal}));
  }

  Output applyAdagrad(Output var_, Output accum, Output lr, Output grad,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ApplyAdagrad',
        _scope.uniqueName('ApplyAdagrad'),
        [var_, accum, lr, grad],
        {'use_locking': useLocking}));
  }

  Output statelessRandomNormal(Output shape, Output seed,
      {DataType dtype: DataType.DT_FLOAT, DataType tseed: DataType.DT_INT64}) {
    return addOperation(new OperationDescription(
        'StatelessRandomNormal',
        _scope.uniqueName('StatelessRandomNormal'),
        [shape, seed],
        {'dtype': dtype, 'Tseed': tseed}));
  }

  Output statelessRandomUniform(Output shape, Output seed,
      {DataType dtype: DataType.DT_FLOAT, DataType tseed: DataType.DT_INT64}) {
    return addOperation(new OperationDescription(
        'StatelessRandomUniform',
        _scope.uniqueName('StatelessRandomUniform'),
        [shape, seed],
        {'dtype': dtype, 'Tseed': tseed}));
  }

  Output randomGamma(Output shape, Output alpha,
      {int seed: 0, int seed2: 0, @required DataType s}) {
    return addOperation(new OperationDescription(
        'RandomGamma',
        _scope.uniqueName('RandomGamma'),
        [shape, alpha],
        {'seed': seed, 'seed2': seed2, 'S': s}));
  }

  Output randomShuffle(Output value, {int seed: 0, int seed2: 0}) {
    return addOperation(new OperationDescription(
        'RandomShuffle',
        _scope.uniqueName('RandomShuffle'),
        [value],
        {'seed': seed, 'seed2': seed2}));
  }

  Output invertPermutation(Output x) {
    return addOperation(new OperationDescription(
        'InvertPermutation', _scope.uniqueName('InvertPermutation'), [x], {}));
  }

  Output readFile(Output filename) {
    return addOperation(new OperationDescription(
        'ReadFile', _scope.uniqueName('ReadFile'), [filename], {}));
  }

  Output truncatedNormal(Output shape,
      {int seed: 0, int seed2: 0, @required DataType dtype}) {
    return addOperation(new OperationDescription(
        'TruncatedNormal',
        _scope.uniqueName('TruncatedNormal'),
        [shape],
        {'seed': seed, 'seed2': seed2, 'dtype': dtype}));
  }

  Output erf(Output x) {
    return addOperation(
        new OperationDescription('Erf', _scope.uniqueName('Erf'), [x], {}));
  }

  Output randomStandardNormal(Output shape,
      {int seed: 0, int seed2: 0, @required DataType dtype}) {
    return addOperation(new OperationDescription(
        'RandomStandardNormal',
        _scope.uniqueName('RandomStandardNormal'),
        [shape],
        {'seed': seed, 'seed2': seed2, 'dtype': dtype}));
  }

  Output erfc(Output x) {
    return addOperation(
        new OperationDescription('Erfc', _scope.uniqueName('Erfc'), [x], {}));
  }

  Output randomUniformInt(Output shape, Output minval, Output maxval,
      {int seed: 0, int seed2: 0, @required DataType tout}) {
    return addOperation(new OperationDescription(
        'RandomUniformInt',
        _scope.uniqueName('RandomUniformInt'),
        [shape, minval, maxval],
        {'seed': seed, 'seed2': seed2, 'Tout': tout}));
  }

  Output randomUniform(Output shape,
      {int seed: 0, int seed2: 0, @required DataType dtype}) {
    return addOperation(new OperationDescription(
        'RandomUniform',
        _scope.uniqueName('RandomUniform'),
        [shape],
        {'seed': seed, 'seed2': seed2, 'dtype': dtype}));
  }

  Output scatterNdSub(Output ref, Output indices, Output updates,
      {@required DataType tindices, bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ScatterNdSub',
        _scope.uniqueName('ScatterNdSub'),
        [ref, indices, updates],
        {'Tindices': tindices, 'use_locking': useLocking}));
  }

  Output addManySparseToTensorsMap(
      Output sparseIndices, Output sparseValues, Output sparseShape,
      {String container, String sharedName}) {
    return addOperation(new OperationDescription(
        'AddManySparseToTensorsMap',
        _scope.uniqueName('AddManySparseToTensorsMap'),
        [sparseIndices, sparseValues, sparseShape],
        {'container': container, 'shared_name': sharedName}));
  }

  Output biasAddGrad(Output outBackprop, {String dataFormat: 'NHWC'}) {
    return addOperation(new OperationDescription(
        'BiasAddGrad',
        _scope.uniqueName('BiasAddGrad'),
        [outBackprop],
        {'data_format': dataFormat}));
  }

  Output elu(Output features) {
    return addOperation(new OperationDescription(
        'Elu', _scope.uniqueName('Elu'), [features], {}));
  }

  Output addSparseToTensorsMap(
      Output sparseIndices, Output sparseValues, Output sparseShape,
      {String container, String sharedName}) {
    return addOperation(new OperationDescription(
        'AddSparseToTensorsMap',
        _scope.uniqueName('AddSparseToTensorsMap'),
        [sparseIndices, sparseValues, sparseShape],
        {'container': container, 'shared_name': sharedName}));
  }

  Output preventGradient(Output input, {String message}) {
    return addOperation(new OperationDescription('PreventGradient',
        _scope.uniqueName('PreventGradient'), [input], {'message': message}));
  }

  Output sparseSoftmax(Output spIndices, Output spValues, Output spShape) {
    return addOperation(new OperationDescription(
        'SparseSoftmax',
        _scope.uniqueName('SparseSoftmax'),
        [spIndices, spValues, spShape],
        {}));
  }

  Output sparseDenseCwiseAdd(
      Output spIndices, Output spValues, Output spShape, Output dense) {
    return addOperation(new OperationDescription(
        'SparseDenseCwiseAdd',
        _scope.uniqueName('SparseDenseCwiseAdd'),
        [spIndices, spValues, spShape, dense],
        {}));
  }

  Output getSessionHandle(Output value) {
    return addOperation(new OperationDescription('GetSessionHandle',
        _scope.uniqueName('GetSessionHandle'), [value], {}));
  }

  Output sparseDenseCwiseMul(
      Output spIndices, Output spValues, Output spShape, Output dense) {
    return addOperation(new OperationDescription(
        'SparseDenseCwiseMul',
        _scope.uniqueName('SparseDenseCwiseMul'),
        [spIndices, spValues, spShape, dense],
        {}));
  }

  Output relu6(Output features) {
    return addOperation(new OperationDescription(
        'Relu6', _scope.uniqueName('Relu6'), [features], {}));
  }

  Output readerSerializeStateV2(Output readerHandle) {
    return addOperation(new OperationDescription('ReaderSerializeStateV2',
        _scope.uniqueName('ReaderSerializeStateV2'), [readerHandle], {}));
  }

  Output destroyResourceOp(Output resource, {bool ignoreLookupError: true}) {
    return addOperation(new OperationDescription(
        'DestroyResourceOp',
        _scope.uniqueName('DestroyResourceOp'),
        [resource],
        {'ignore_lookup_error': ignoreLookupError}));
  }

  Output histogramFixedWidth(Output values, Output valueRange, Output nbins,
      {DataType dtype: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'HistogramFixedWidth',
        _scope.uniqueName('HistogramFixedWidth'),
        [values, valueRange, nbins],
        {'dtype': dtype}));
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayWriteV3')
  Output tensorArrayWriteV2(
      Output handle, Output index, Output value, Output flowIn) {
    return addOperation(new OperationDescription(
        'TensorArrayWriteV2',
        _scope.uniqueName('TensorArrayWriteV2'),
        [handle, index, value, flowIn],
        {}));
  }

  Output sdcaShrinkL1(List<Output> weights,
      {@required int numFeatures, @required double l1, @required double l2}) {
    return addOperation(new OperationDescription(
        'SdcaShrinkL1',
        _scope.uniqueName('SdcaShrinkL1'),
        [weights],
        {'num_features': numFeatures, 'l1': l1, 'l2': l2}));
  }

  Output consumeMutexLock(Output mutexLock) {
    return addOperation(new OperationDescription('ConsumeMutexLock',
        _scope.uniqueName('ConsumeMutexLock'), [mutexLock], {}));
  }

  Output dataFormatVecPermute(Output x,
      {String srcFormat: 'NHWC', String dstFormat: 'NCHW'}) {
    return addOperation(new OperationDescription(
        'DataFormatVecPermute',
        _scope.uniqueName('DataFormatVecPermute'),
        [x],
        {'src_format': srcFormat, 'dst_format': dstFormat}));
  }

  @Deprecated('DEPRECATED at GraphDef version 13: Use CholeskyGrad instead.')
  Output batchCholeskyGrad(Output l, Output grad) {
    return addOperation(new OperationDescription('BatchCholeskyGrad',
        _scope.uniqueName('BatchCholeskyGrad'), [l, grad], {}));
  }

  Output resourceScatterAdd(Output resource, Output indices, Output updates,
      {@required DataType dtype, @required DataType tindices}) {
    return addOperation(new OperationDescription(
        'ResourceScatterAdd',
        _scope.uniqueName('ResourceScatterAdd'),
        [resource, indices, updates],
        {'dtype': dtype, 'Tindices': tindices}));
  }

  Output barrierReadySize(Output handle) {
    return addOperation(new OperationDescription('BarrierReadySize',
        _scope.uniqueName('BarrierReadySize'), [handle], {}));
  }

  Output sparseTensorDenseMatMul(
      Output aIndices, Output aValues, Output aShape, Output b,
      {DataType tindices: DataType.DT_INT64,
      bool adjointA: false,
      bool adjointB: false}) {
    return addOperation(new OperationDescription(
        'SparseTensorDenseMatMul',
        _scope.uniqueName('SparseTensorDenseMatMul'),
        [aIndices, aValues, aShape, b],
        {'Tindices': tindices, 'adjoint_a': adjointA, 'adjoint_b': adjointB}));
  }

  Output unsortedSegmentMin(Output data, Output segmentIds, Output numSegments,
      {@required DataType tindices, DataType tnumsegments: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'UnsortedSegmentMin',
        _scope.uniqueName('UnsortedSegmentMin'),
        [data, segmentIds, numSegments],
        {'Tindices': tindices, 'Tnumsegments': tnumsegments}));
  }

  Output segmentMin(Output data, Output segmentIds,
      {@required DataType tindices}) {
    return addOperation(new OperationDescription(
        'SegmentMin',
        _scope.uniqueName('SegmentMin'),
        [data, segmentIds],
        {'Tindices': tindices}));
  }

  Output resourceSparseApplyRMSProp(
      Output var_,
      Output ms,
      Output mom,
      Output lr,
      Output rho,
      Output momentum,
      Output epsilon,
      Output grad,
      Output indices,
      {@required DataType tindices,
      bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyRMSProp',
        _scope.uniqueName('ResourceSparseApplyRMSProp'),
        [var_, ms, mom, lr, rho, momentum, epsilon, grad, indices],
        {'Tindices': tindices, 'use_locking': useLocking}));
  }

  @Deprecated('DEPRECATED at GraphDef version 15: Use IFFT2D')
  Output batchIFFT2D(Output input) {
    return addOperation(new OperationDescription(
        'BatchIFFT2D', _scope.uniqueName('BatchIFFT2D'), [input], {}));
  }

  Output stringToNumber(Output stringTensor,
      {DataType outType: DataType.DT_FLOAT}) {
    return addOperation(new OperationDescription(
        'StringToNumber',
        _scope.uniqueName('StringToNumber'),
        [stringTensor],
        {'out_type': outType}));
  }

  Output decodeJSONExample(Output jsonExamples) {
    return addOperation(new OperationDescription('DecodeJSONExample',
        _scope.uniqueName('DecodeJSONExample'), [jsonExamples], {}));
  }

  Output scatterDiv(Output ref, Output indices, Output updates,
      {@required DataType tindices, bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ScatterDiv',
        _scope.uniqueName('ScatterDiv'),
        [ref, indices, updates],
        {'Tindices': tindices, 'use_locking': useLocking}));
  }

  Output serializeTensor(Output tensor) {
    return addOperation(new OperationDescription(
        'SerializeTensor', _scope.uniqueName('SerializeTensor'), [tensor], {}));
  }

  Output parseTensor(Output serialized, {@required DataType outType}) {
    return addOperation(new OperationDescription('ParseTensor',
        _scope.uniqueName('ParseTensor'), [serialized], {'out_type': outType}));
  }

  Output scatterNdNonAliasingAdd(Output input, Output indices, Output updates,
      {@required DataType tindices}) {
    return addOperation(new OperationDescription(
        'ScatterNdNonAliasingAdd',
        _scope.uniqueName('ScatterNdNonAliasingAdd'),
        [input, indices, updates],
        {'Tindices': tindices}));
  }

  Output multinomial(Output logits, Output numSamples,
      {int seed: 0, int seed2: 0, DataType outputDtype: DataType.DT_INT64}) {
    return addOperation(new OperationDescription(
        'Multinomial',
        _scope.uniqueName('Multinomial'),
        [logits, numSamples],
        {'seed': seed, 'seed2': seed2, 'output_dtype': outputDtype}));
  }

  Output decodeCompressed(Output bytes, {String compressionType}) {
    return addOperation(new OperationDescription(
        'DecodeCompressed',
        _scope.uniqueName('DecodeCompressed'),
        [bytes],
        {'compression_type': compressionType}));
  }

  Output sdcaFprint(Output input) {
    return addOperation(new OperationDescription(
        'SdcaFprint', _scope.uniqueName('SdcaFprint'), [input], {}));
  }

  Output readerNumRecordsProducedV2(Output readerHandle) {
    return addOperation(new OperationDescription('ReaderNumRecordsProducedV2',
        _scope.uniqueName('ReaderNumRecordsProducedV2'), [readerHandle], {}));
  }

  Output decodeRaw(Output bytes,
      {@required DataType outType, bool littleEndian: true}) {
    return addOperation(new OperationDescription(
        'DecodeRaw',
        _scope.uniqueName('DecodeRaw'),
        [bytes],
        {'out_type': outType, 'little_endian': littleEndian}));
  }

  @Deprecated('DEPRECATED at GraphDef version 15: Use IFFT3D')
  Output batchIFFT3D(Output input) {
    return addOperation(new OperationDescription(
        'BatchIFFT3D', _scope.uniqueName('BatchIFFT3D'), [input], {}));
  }

  Output adjustHue(Output images, Output delta) {
    return addOperation(new OperationDescription(
        'AdjustHue', _scope.uniqueName('AdjustHue'), [images, delta], {}));
  }

  @Deprecated('DEPRECATED at GraphDef version 15: Use FFT3D')
  Output batchFFT3D(Output input) {
    return addOperation(new OperationDescription(
        'BatchFFT3D', _scope.uniqueName('BatchFFT3D'), [input], {}));
  }

  Output textLineReaderV2(
      {int skipHeaderLines: 0, String container, String sharedName}) {
    return addOperation(new OperationDescription(
        'TextLineReaderV2', _scope.uniqueName('TextLineReaderV2'), [], {
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
    return addOperation(new OperationDescription('FixedLengthRecordReaderV2',
        _scope.uniqueName('FixedLengthRecordReaderV2'), [], {
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
        _scope.uniqueName('IdentityReaderV2'),
        [],
        {'container': container, 'shared_name': sharedName}));
  }

  Output iRFFT3D(Output input, Output fftLength) {
    return addOperation(new OperationDescription(
        'IRFFT3D', _scope.uniqueName('IRFFT3D'), [input, fftLength], {}));
  }

  Output applyFtrl(Output var_, Output accum, Output linear, Output grad,
      Output lr, Output l1, Output l2, Output lrPower,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ApplyFtrl',
        _scope.uniqueName('ApplyFtrl'),
        [var_, accum, linear, grad, lr, l1, l2, lrPower],
        {'use_locking': useLocking}));
  }

  Output iRFFT(Output input, Output fftLength) {
    return addOperation(new OperationDescription(
        'IRFFT', _scope.uniqueName('IRFFT'), [input, fftLength], {}));
  }

  Output rFFT(Output input, Output fftLength) {
    return addOperation(new OperationDescription(
        'RFFT', _scope.uniqueName('RFFT'), [input, fftLength], {}));
  }

  Output iFFT3D(Output input) {
    return addOperation(new OperationDescription(
        'IFFT3D', _scope.uniqueName('IFFT3D'), [input], {}));
  }

  Output fFT3D(Output input) {
    return addOperation(new OperationDescription(
        'FFT3D', _scope.uniqueName('FFT3D'), [input], {}));
  }

  Output lessEqual(Output x, Output y) {
    return addOperation(new OperationDescription(
        'LessEqual', _scope.uniqueName('LessEqual'), [x, y], {}));
  }

  Output timestamp() {
    return addOperation(new OperationDescription(
        'Timestamp', _scope.uniqueName('Timestamp'), [], {}));
  }

  Output stackV2(Output maxSize,
      {@required DataType elemType, String stackName}) {
    return addOperation(new OperationDescription(
        'StackV2',
        _scope.uniqueName('StackV2'),
        [maxSize],
        {'elem_type': elemType, 'stack_name': stackName}));
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 3: TileGrad has been replaced with reduce_sum')
  Output tileGrad(Output input, Output multiples) {
    return addOperation(new OperationDescription(
        'TileGrad', _scope.uniqueName('TileGrad'), [input, multiples], {}));
  }

  @Deprecated('DEPRECATED at GraphDef version 15: Use AudioSummaryV2.')
  Output audioSummary(Output tag, Output tensor,
      {@required double sampleRate, int maxOutputs: 3}) {
    return addOperation(new OperationDescription(
        'AudioSummary',
        _scope.uniqueName('AudioSummary'),
        [tag, tensor],
        {'sample_rate': sampleRate, 'max_outputs': maxOutputs}));
  }

  Output unbatch(Output batchedTensor, Output batchIndex, Output id,
      {@required int timeoutMicros, String container, String sharedName}) {
    return addOperation(
        new OperationDescription('Unbatch', _scope.uniqueName('Unbatch'), [
      batchedTensor,
      batchIndex,
      id
    ], {
      'timeout_micros': timeoutMicros,
      'container': container,
      'shared_name': sharedName
    }));
  }

  Output tensorSummaryV2(
      Output tag, Output tensor, Output serializedSummaryMetadata) {
    return addOperation(new OperationDescription(
        'TensorSummaryV2',
        _scope.uniqueName('TensorSummaryV2'),
        [tag, tensor, serializedSummaryMetadata],
        {}));
  }

  Output quantizeAndDequantizeV2(Output input, Output inputMin, Output inputMax,
      {bool signedInput: true, int numBits: 8, bool rangeGiven: false}) {
    return addOperation(new OperationDescription('QuantizeAndDequantizeV2',
        _scope.uniqueName('QuantizeAndDequantizeV2'), [
      input,
      inputMin,
      inputMax
    ], {
      'signed_input': signedInput,
      'num_bits': numBits,
      'range_given': rangeGiven
    }));
  }

  @Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayWriteV3')
  Output tensorArrayWrite(
      Output handle, Output index, Output value, Output flowIn) {
    return addOperation(new OperationDescription(
        'TensorArrayWrite',
        _scope.uniqueName('TensorArrayWrite'),
        [handle, index, value, flowIn],
        {}));
  }

  Output transpose(Output x, Output perm, {DataType tperm: DataType.DT_INT32}) {
    return addOperation(new OperationDescription('Transpose',
        _scope.uniqueName('Transpose'), [x, perm], {'Tperm': tperm}));
  }

  Output controlTrigger() {
    return addOperation(new OperationDescription(
        'ControlTrigger', _scope.uniqueName('ControlTrigger'), [], {}));
  }

  Output parallelDynamicStitch(List<Output> indices, List<Output> data,
      {@required int n}) {
    return addOperation(new OperationDescription('ParallelDynamicStitch',
        _scope.uniqueName('ParallelDynamicStitch'), [indices, data], {'N': n}));
  }

  Output nextIteration(Output data) {
    return addOperation(new OperationDescription(
        'NextIteration', _scope.uniqueName('NextIteration'), [data], {}));
  }

  Output initializeTableV2(Output tableHandle, Output keys, Output values,
      {@required DataType tkey, @required DataType tval}) {
    return addOperation(new OperationDescription(
        'InitializeTableV2',
        _scope.uniqueName('InitializeTableV2'),
        [tableHandle, keys, values],
        {'Tkey': tkey, 'Tval': tval}));
  }

  Output imag(Output input, {DataType tout: DataType.DT_FLOAT}) {
    return addOperation(new OperationDescription(
        'Imag', _scope.uniqueName('Imag'), [input], {'Tout': tout}));
  }

  @Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayGradV3')
  Output tensorArrayGrad(Output handle, Output flowIn,
      {@required String source}) {
    return addOperation(new OperationDescription(
        'TensorArrayGrad',
        _scope.uniqueName('TensorArrayGrad'),
        [handle, flowIn],
        {'source': source}));
  }

  Output mutableDenseHashTable(Output emptyKey,
      {String container,
      String sharedName,
      bool useNodeNameSharing: false,
      @required DataType keyDtype,
      @required DataType valueDtype,
      List<int> valueShape,
      int initialNumBuckets: 131072,
      double maxLoadFactor: 0.800000011920929}) {
    return addOperation(new OperationDescription(
        'MutableDenseHashTable', _scope.uniqueName('MutableDenseHashTable'), [
      emptyKey
    ], {
      'container': container,
      'shared_name': sharedName,
      'use_node_name_sharing': useNodeNameSharing,
      'key_dtype': keyDtype,
      'value_dtype': valueDtype,
      'value_shape': valueShape,
      'initial_num_buckets': initialNumBuckets,
      'max_load_factor': maxLoadFactor
    }));
  }

  Output oneHot(Output indices, Output depth, Output onValue, Output offValue,
      {int axis: -1, DataType tI: DataType.DT_INT64}) {
    return addOperation(new OperationDescription(
        'OneHot',
        _scope.uniqueName('OneHot'),
        [indices, depth, onValue, offValue],
        {'axis': axis, 'TI': tI}));
  }

  Output mutableHashTableOfTensorsV2(
      {String container,
      String sharedName,
      bool useNodeNameSharing: false,
      @required DataType keyDtype,
      @required DataType valueDtype,
      List<int> valueShape}) {
    return addOperation(new OperationDescription('MutableHashTableOfTensorsV2',
        _scope.uniqueName('MutableHashTableOfTensorsV2'), [], {
      'container': container,
      'shared_name': sharedName,
      'use_node_name_sharing': useNodeNameSharing,
      'key_dtype': keyDtype,
      'value_dtype': valueDtype,
      'value_shape': valueShape
    }));
  }

  Output softplus(Output features) {
    return addOperation(new OperationDescription(
        'Softplus', _scope.uniqueName('Softplus'), [features], {}));
  }

  Output mutableHashTableV2(
      {String container,
      String sharedName,
      bool useNodeNameSharing: false,
      @required DataType keyDtype,
      @required DataType valueDtype}) {
    return addOperation(new OperationDescription(
        'MutableHashTableV2', _scope.uniqueName('MutableHashTableV2'), [], {
      'container': container,
      'shared_name': sharedName,
      'use_node_name_sharing': useNodeNameSharing,
      'key_dtype': keyDtype,
      'value_dtype': valueDtype
    }));
  }

  /// Writes a `Summary` protocol buffer with scalar values.
  /// The input `tag` and `value` must have the scalars.
  Output writeScalarSummary(
      Output writer, Output step, Output tag, Output value) {
    return addOperation(new OperationDescription(
        'WriteScalarSummary',
        _scope.uniqueName('WriteScalarSummary'),
        [writer, step, tag, value],
        {}));
  }

  Output reduceJoin(Output inputs, Output reductionIndices,
      {bool keepDims: false, String separator}) {
    return addOperation(new OperationDescription(
        'ReduceJoin',
        _scope.uniqueName('ReduceJoin'),
        [inputs, reductionIndices],
        {'keep_dims': keepDims, 'separator': separator}));
  }

  Output shardedFilespec(Output basename, Output numShards) {
    return addOperation(new OperationDescription('ShardedFilespec',
        _scope.uniqueName('ShardedFilespec'), [basename, numShards], {}));
  }

  Output iFFT2D(Output input) {
    return addOperation(new OperationDescription(
        'IFFT2D', _scope.uniqueName('IFFT2D'), [input], {}));
  }

  Output hashTableV2(
      {String container,
      String sharedName,
      bool useNodeNameSharing: false,
      @required DataType keyDtype,
      @required DataType valueDtype}) {
    return addOperation(new OperationDescription(
        'HashTableV2', _scope.uniqueName('HashTableV2'), [], {
      'container': container,
      'shared_name': sharedName,
      'use_node_name_sharing': useNodeNameSharing,
      'key_dtype': keyDtype,
      'value_dtype': valueDtype
    }));
  }

  Output hashTable(
      {String container,
      String sharedName,
      bool useNodeNameSharing: false,
      @required DataType keyDtype,
      @required DataType valueDtype}) {
    return addOperation(new OperationDescription(
        'HashTable', _scope.uniqueName('HashTable'), [], {
      'container': container,
      'shared_name': sharedName,
      'use_node_name_sharing': useNodeNameSharing,
      'key_dtype': keyDtype,
      'value_dtype': valueDtype
    }));
  }

  Output sparseDenseCwiseDiv(
      Output spIndices, Output spValues, Output spShape, Output dense) {
    return addOperation(new OperationDescription(
        'SparseDenseCwiseDiv',
        _scope.uniqueName('SparseDenseCwiseDiv'),
        [spIndices, spValues, spShape, dense],
        {}));
  }

  Output lookupTableImport(Output tableHandle, Output keys, Output values,
      {@required DataType tin, @required DataType tout}) {
    return addOperation(new OperationDescription(
        'LookupTableImport',
        _scope.uniqueName('LookupTableImport'),
        [tableHandle, keys, values],
        {'Tin': tin, 'Tout': tout}));
  }

  Output assignVariableOp(Output resource, Output value,
      {@required DataType dtype}) {
    return addOperation(new OperationDescription(
        'AssignVariableOp',
        _scope.uniqueName('AssignVariableOp'),
        [resource, value],
        {'dtype': dtype}));
  }

  Output lookupTableSize(Output tableHandle) {
    return addOperation(new OperationDescription('LookupTableSize',
        _scope.uniqueName('LookupTableSize'), [tableHandle], {}));
  }

  Output lookupTableInsert(Output tableHandle, Output keys, Output values,
      {@required DataType tin, @required DataType tout}) {
    return addOperation(new OperationDescription(
        'LookupTableInsert',
        _scope.uniqueName('LookupTableInsert'),
        [tableHandle, keys, values],
        {'Tin': tin, 'Tout': tout}));
  }

  Output initializeTable(Output tableHandle, Output keys, Output values,
      {@required DataType tkey, @required DataType tval}) {
    return addOperation(new OperationDescription(
        'InitializeTable',
        _scope.uniqueName('InitializeTable'),
        [tableHandle, keys, values],
        {'Tkey': tkey, 'Tval': tval}));
  }

  Output variableShape(Output input, {DataType outType: DataType.DT_INT32}) {
    return addOperation(new OperationDescription('VariableShape',
        _scope.uniqueName('VariableShape'), [input], {'out_type': outType}));
  }

  Output tensorListReserve(Output elementShape, Output numElements,
      {@required DataType elementDtype, @required DataType shapeType}) {
    return addOperation(new OperationDescription(
        'TensorListReserve',
        _scope.uniqueName('TensorListReserve'),
        [elementShape, numElements],
        {'element_dtype': elementDtype, 'shape_type': shapeType}));
  }

  Output tensorListElementShape(Output inputHandle,
      {@required DataType shapeType}) {
    return addOperation(new OperationDescription(
        'TensorListElementShape',
        _scope.uniqueName('TensorListElementShape'),
        [inputHandle],
        {'shape_type': shapeType}));
  }

  Output tensorListStack(Output inputHandle,
      {@required DataType elementDtype, int numElements: -1}) {
    return addOperation(new OperationDescription(
        'TensorListStack',
        _scope.uniqueName('TensorListStack'),
        [inputHandle],
        {'element_dtype': elementDtype, 'num_elements': numElements}));
  }

  Output emptyTensorList(Output elementShape,
      {@required DataType elementDtype, @required DataType shapeType}) {
    return addOperation(new OperationDescription(
        'EmptyTensorList',
        _scope.uniqueName('EmptyTensorList'),
        [elementShape],
        {'element_dtype': elementDtype, 'shape_type': shapeType}));
  }

  @Deprecated('DEPRECATED at GraphDef version 13: Use MatrixSolveLs instead.')
  Output batchMatrixSolveLs(Output matrix, Output rhs, Output l2Regularizer,
      {bool fast: true}) {
    return addOperation(new OperationDescription(
        'BatchMatrixSolveLs',
        _scope.uniqueName('BatchMatrixSolveLs'),
        [matrix, rhs, l2Regularizer],
        {'fast': fast}));
  }

  Output gatherV2(Output params, Output indices, Output axis,
      {@required DataType tparams,
      @required DataType tindices,
      @required DataType taxis}) {
    return addOperation(new OperationDescription(
        'GatherV2',
        _scope.uniqueName('GatherV2'),
        [params, indices, axis],
        {'Tparams': tparams, 'Tindices': tindices, 'Taxis': taxis}));
  }

  @Deprecated('DEPRECATED at GraphDef version 13: Use MatrixSolve instead.')
  Output batchMatrixSolve(Output matrix, Output rhs, {bool adjoint: false}) {
    return addOperation(new OperationDescription(
        'BatchMatrixSolve',
        _scope.uniqueName('BatchMatrixSolve'),
        [matrix, rhs],
        {'adjoint': adjoint}));
  }

  Output applyProximalAdagrad(
      Output var_, Output accum, Output lr, Output l1, Output l2, Output grad,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ApplyProximalAdagrad',
        _scope.uniqueName('ApplyProximalAdagrad'),
        [var_, accum, lr, l1, l2, grad],
        {'use_locking': useLocking}));
  }

  Output sparseSegmentMeanGrad(
      Output grad, Output indices, Output segmentIds, Output outputDim0,
      {DataType tidx: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'SparseSegmentMeanGrad',
        _scope.uniqueName('SparseSegmentMeanGrad'),
        [grad, indices, segmentIds, outputDim0],
        {'Tidx': tidx}));
  }

  Output pack(List<Output> values, {@required int n, int axis: 0}) {
    return addOperation(new OperationDescription(
        'Pack', _scope.uniqueName('Pack'), [values], {'N': n, 'axis': axis}));
  }

  Output barrierClose(Output handle, {bool cancelPendingEnqueues: false}) {
    return addOperation(new OperationDescription(
        'BarrierClose',
        _scope.uniqueName('BarrierClose'),
        [handle],
        {'cancel_pending_enqueues': cancelPendingEnqueues}));
  }

  Output choleskyGrad(Output l, Output grad) {
    return addOperation(new OperationDescription(
        'CholeskyGrad', _scope.uniqueName('CholeskyGrad'), [l, grad], {}));
  }

  Output gatherNd(Output params, Output indices,
      {@required DataType tparams, @required DataType tindices}) {
    return addOperation(new OperationDescription(
        'GatherNd',
        _scope.uniqueName('GatherNd'),
        [params, indices],
        {'Tparams': tparams, 'Tindices': tindices}));
  }

  Output queueCloseV2(Output handle, {bool cancelPendingEnqueues: false}) {
    return addOperation(new OperationDescription(
        'QueueCloseV2',
        _scope.uniqueName('QueueCloseV2'),
        [handle],
        {'cancel_pending_enqueues': cancelPendingEnqueues}));
  }

  Output matrixExponential(Output input) {
    return addOperation(new OperationDescription('MatrixExponential',
        _scope.uniqueName('MatrixExponential'), [input], {}));
  }

  Output matrixDeterminant(Output input) {
    return addOperation(new OperationDescription('MatrixDeterminant',
        _scope.uniqueName('MatrixDeterminant'), [input], {}));
  }

  Output shape(Output input, {DataType outType: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'Shape', _scope.uniqueName('Shape'), [input], {'out_type': outType}));
  }

  Output asinh(Output x) {
    return addOperation(
        new OperationDescription('Asinh', _scope.uniqueName('Asinh'), [x], {}));
  }

  Output lookupTableFindV2(Output tableHandle, Output keys, Output defaultValue,
      {@required DataType tin, @required DataType tout}) {
    return addOperation(new OperationDescription(
        'LookupTableFindV2',
        _scope.uniqueName('LookupTableFindV2'),
        [tableHandle, keys, defaultValue],
        {'Tin': tin, 'Tout': tout}));
  }

  Output where(Output input) {
    return addOperation(new OperationDescription(
        'Where', _scope.uniqueName('Where'), [input], {}));
  }

  Output applyFtrlV2(Output var_, Output accum, Output linear, Output grad,
      Output lr, Output l1, Output l2, Output l2Shrinkage, Output lrPower,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ApplyFtrlV2',
        _scope.uniqueName('ApplyFtrlV2'),
        [var_, accum, linear, grad, lr, l1, l2, l2Shrinkage, lrPower],
        {'use_locking': useLocking}));
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayCloseV3')
  Output tensorArrayCloseV2(Output handle) {
    return addOperation(new OperationDescription('TensorArrayCloseV2',
        _scope.uniqueName('TensorArrayCloseV2'), [handle], {}));
  }

  Output readerReset(Output readerHandle) {
    return addOperation(new OperationDescription(
        'ReaderReset', _scope.uniqueName('ReaderReset'), [readerHandle], {}));
  }

  Output audioSummaryV2(Output tag, Output tensor, Output sampleRate,
      {int maxOutputs: 3}) {
    return addOperation(new OperationDescription(
        'AudioSummaryV2',
        _scope.uniqueName('AudioSummaryV2'),
        [tag, tensor, sampleRate],
        {'max_outputs': maxOutputs}));
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayReadV3')
  Output tensorArrayReadV2(Output handle, Output index, Output flowIn,
      {@required DataType dtype}) {
    return addOperation(new OperationDescription(
        'TensorArrayReadV2',
        _scope.uniqueName('TensorArrayReadV2'),
        [handle, index, flowIn],
        {'dtype': dtype}));
  }

  Output readerRestoreStateV2(Output readerHandle, Output state) {
    return addOperation(new OperationDescription('ReaderRestoreStateV2',
        _scope.uniqueName('ReaderRestoreStateV2'), [readerHandle, state], {}));
  }

  Output setSize(Output setIndices, Output setValues, Output setShape,
      {bool validateIndices: true}) {
    return addOperation(new OperationDescription(
        'SetSize',
        _scope.uniqueName('SetSize'),
        [setIndices, setValues, setShape],
        {'validate_indices': validateIndices}));
  }

  @Deprecated('DEPRECATED at GraphDef version 13: Use Cholesky instead.')
  Output batchCholesky(Output input) {
    return addOperation(new OperationDescription(
        'BatchCholesky', _scope.uniqueName('BatchCholesky'), [input], {}));
  }

  @Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayGatherV3')
  Output tensorArrayGather(Output handle, Output indices, Output flowIn,
      {@required DataType dtype, List<int> elementShape}) {
    return addOperation(new OperationDescription(
        'TensorArrayGather',
        _scope.uniqueName('TensorArrayGather'),
        [handle, indices, flowIn],
        {'dtype': dtype, 'element_shape': elementShape}));
  }

  Output resizeArea(Output images, Output size, {bool alignCorners: false}) {
    return addOperation(new OperationDescription(
        'ResizeArea',
        _scope.uniqueName('ResizeArea'),
        [images, size],
        {'align_corners': alignCorners}));
  }

  Output readerRestoreState(Output readerHandle, Output state) {
    return addOperation(new OperationDescription('ReaderRestoreState',
        _scope.uniqueName('ReaderRestoreState'), [readerHandle, state], {}));
  }

  Output readerSerializeState(Output readerHandle) {
    return addOperation(new OperationDescription('ReaderSerializeState',
        _scope.uniqueName('ReaderSerializeState'), [readerHandle], {}));
  }

  Output matrixTriangularSolve(Output matrix, Output rhs,
      {bool lower: true, bool adjoint: false}) {
    return addOperation(new OperationDescription(
        'MatrixTriangularSolve',
        _scope.uniqueName('MatrixTriangularSolve'),
        [matrix, rhs],
        {'lower': lower, 'adjoint': adjoint}));
  }

  Output select(Output condition, Output t, Output e) {
    return addOperation(new OperationDescription(
        'Select', _scope.uniqueName('Select'), [condition, t, e], {}));
  }

  Output log(Output x) {
    return addOperation(
        new OperationDescription('Log', _scope.uniqueName('Log'), [x], {}));
  }

  Output iRFFT2D(Output input, Output fftLength) {
    return addOperation(new OperationDescription(
        'IRFFT2D', _scope.uniqueName('IRFFT2D'), [input, fftLength], {}));
  }

  Output mutableDenseHashTableV2(Output emptyKey,
      {String container,
      String sharedName,
      bool useNodeNameSharing: false,
      @required DataType keyDtype,
      @required DataType valueDtype,
      List<int> valueShape,
      int initialNumBuckets: 131072,
      double maxLoadFactor: 0.800000011920929}) {
    return addOperation(new OperationDescription('MutableDenseHashTableV2',
        _scope.uniqueName('MutableDenseHashTableV2'), [
      emptyKey
    ], {
      'container': container,
      'shared_name': sharedName,
      'use_node_name_sharing': useNodeNameSharing,
      'key_dtype': keyDtype,
      'value_dtype': valueDtype,
      'value_shape': valueShape,
      'initial_num_buckets': initialNumBuckets,
      'max_load_factor': maxLoadFactor
    }));
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 26: Use FixedLengthRecordReaderV2')
  Output fixedLengthRecordReader(
      {int headerBytes: 0,
      @required int recordBytes,
      int footerBytes: 0,
      int hopBytes: 0,
      String container,
      String sharedName}) {
    return addOperation(new OperationDescription('FixedLengthRecordReader',
        _scope.uniqueName('FixedLengthRecordReader'), [], {
      'header_bytes': headerBytes,
      'record_bytes': recordBytes,
      'footer_bytes': footerBytes,
      'hop_bytes': hopBytes,
      'container': container,
      'shared_name': sharedName
    }));
  }

  Output recordInput(
      {@required String filePattern,
      int fileRandomSeed: 301,
      double fileShuffleShiftRatio: 0.0,
      int fileBufferSize: 10000,
      int fileParallelism: 16,
      int batchSize: 32,
      String compressionType}) {
    return addOperation(new OperationDescription(
        'RecordInput', _scope.uniqueName('RecordInput'), [], {
      'file_pattern': filePattern,
      'file_random_seed': fileRandomSeed,
      'file_shuffle_shift_ratio': fileShuffleShiftRatio,
      'file_buffer_size': fileBufferSize,
      'file_parallelism': fileParallelism,
      'batch_size': batchSize,
      'compression_type': compressionType
    }));
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TextLineReaderV2')
  Output textLineReader(
      {int skipHeaderLines: 0, String container, String sharedName}) {
    return addOperation(new OperationDescription(
        'TextLineReader', _scope.uniqueName('TextLineReader'), [], {
      'skip_header_lines': skipHeaderLines,
      'container': container,
      'shared_name': sharedName
    }));
  }

  Output restoreSlice(
      Output filePattern, Output tensorName, Output shapeAndSlice,
      {@required DataType dt, int preferredShard: -1}) {
    return addOperation(new OperationDescription(
        'RestoreSlice',
        _scope.uniqueName('RestoreSlice'),
        [filePattern, tensorName, shapeAndSlice],
        {'dt': dt, 'preferred_shard': preferredShard}));
  }

  Output refExit(Output data) {
    return addOperation(new OperationDescription(
        'RefExit', _scope.uniqueName('RefExit'), [data], {}));
  }

  Output notEqual(Output x, Output y) {
    return addOperation(new OperationDescription(
        'NotEqual', _scope.uniqueName('NotEqual'), [x, y], {}));
  }

  Output nonMaxSuppression(Output boxes, Output scores, Output maxOutputSize,
      {double iouThreshold: 0.5}) {
    return addOperation(new OperationDescription(
        'NonMaxSuppression',
        _scope.uniqueName('NonMaxSuppression'),
        [boxes, scores, maxOutputSize],
        {'iou_threshold': iouThreshold}));
  }

  Output batchToSpaceND(Output input, Output blockShape, Output crops,
      {DataType tblockShape: DataType.DT_INT32,
      DataType tcrops: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'BatchToSpaceND',
        _scope.uniqueName('BatchToSpaceND'),
        [input, blockShape, crops],
        {'Tblock_shape': tblockShape, 'Tcrops': tcrops}));
  }

  Output cropAndResizeGradBoxes(
      Output grads, Output image, Output boxes, Output boxInd,
      {String method: 'bilinear'}) {
    return addOperation(new OperationDescription(
        'CropAndResizeGradBoxes',
        _scope.uniqueName('CropAndResizeGradBoxes'),
        [grads, image, boxes, boxInd],
        {'method': method}));
  }

  Output extractGlimpse(Output input, Output size, Output offsets,
      {bool centered: true, bool normalized: true, bool uniformNoise: true}) {
    return addOperation(new OperationDescription(
        'ExtractGlimpse', _scope.uniqueName('ExtractGlimpse'), [
      input,
      size,
      offsets
    ], {
      'centered': centered,
      'normalized': normalized,
      'uniform_noise': uniformNoise
    }));
  }

  Output rightShift(Output x, Output y) {
    return addOperation(new OperationDescription(
        'RightShift', _scope.uniqueName('RightShift'), [x, y], {}));
  }

  Output decodeBmp(Output contents, {int channels: 0}) {
    return addOperation(new OperationDescription('DecodeBmp',
        _scope.uniqueName('DecodeBmp'), [contents], {'channels': channels}));
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 13: Use MatrixDeterminant instead.')
  Output batchMatrixDeterminant(Output input) {
    return addOperation(new OperationDescription('BatchMatrixDeterminant',
        _scope.uniqueName('BatchMatrixDeterminant'), [input], {}));
  }

  @Deprecated('DEPRECATED at GraphDef version 15: Use IFFT')
  Output batchIFFT(Output input) {
    return addOperation(new OperationDescription(
        'BatchIFFT', _scope.uniqueName('BatchIFFT'), [input], {}));
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayScatterV3')
  Output tensorArrayScatterV2(
      Output handle, Output indices, Output value, Output flowIn) {
    return addOperation(new OperationDescription(
        'TensorArrayScatterV2',
        _scope.uniqueName('TensorArrayScatterV2'),
        [handle, indices, value, flowIn],
        {}));
  }

  Output rGBToHSV(Output images) {
    return addOperation(new OperationDescription(
        'RGBToHSV', _scope.uniqueName('RGBToHSV'), [images], {}));
  }

  Output decodeGif(Output contents) {
    return addOperation(new OperationDescription(
        'DecodeGif', _scope.uniqueName('DecodeGif'), [contents], {}));
  }

  Output assignSubVariableOp(Output resource, Output value,
      {@required DataType dtype}) {
    return addOperation(new OperationDescription(
        'AssignSubVariableOp',
        _scope.uniqueName('AssignSubVariableOp'),
        [resource, value],
        {'dtype': dtype}));
  }

  Output unravelIndex(Output indices, Output dims,
      {DataType tidx: DataType.DT_INT32}) {
    return addOperation(new OperationDescription('UnravelIndex',
        _scope.uniqueName('UnravelIndex'), [indices, dims], {'Tidx': tidx}));
  }

  Output enter(Output data,
      {@required String frameName,
      bool isConstant: false,
      int parallelIterations: 10}) {
    return addOperation(
        new OperationDescription('Enter', _scope.uniqueName('Enter'), [
      data
    ], {
      'frame_name': frameName,
      'is_constant': isConstant,
      'parallel_iterations': parallelIterations
    }));
  }

  Output encodePng(Output image, {int compression: -1}) {
    return addOperation(new OperationDescription('EncodePng',
        _scope.uniqueName('EncodePng'), [image], {'compression': compression}));
  }

  Output serializeManySparse(
      Output sparseIndices, Output sparseValues, Output sparseShape,
      {DataType outType: DataType.DT_STRING}) {
    return addOperation(new OperationDescription(
        'SerializeManySparse',
        _scope.uniqueName('SerializeManySparse'),
        [sparseIndices, sparseValues, sparseShape],
        {'out_type': outType}));
  }

  Output tensorListFromTensor(Output tensor, Output elementShape,
      {@required DataType elementDtype, @required DataType shapeType}) {
    return addOperation(new OperationDescription(
        'TensorListFromTensor',
        _scope.uniqueName('TensorListFromTensor'),
        [tensor, elementShape],
        {'element_dtype': elementDtype, 'shape_type': shapeType}));
  }

  Output adjustSaturation(Output images, Output scale) {
    return addOperation(new OperationDescription('AdjustSaturation',
        _scope.uniqueName('AdjustSaturation'), [images, scale], {}));
  }

  Output adjustContrastv2(Output images, Output contrastFactor) {
    return addOperation(new OperationDescription('AdjustContrastv2',
        _scope.uniqueName('AdjustContrastv2'), [images, contrastFactor], {}));
  }

  Output extractJpegShape(Output contents,
      {DataType outputType: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'ExtractJpegShape',
        _scope.uniqueName('ExtractJpegShape'),
        [contents],
        {'output_type': outputType}));
  }

  Output decodeAndCropJpeg(Output contents, Output cropWindow,
      {int channels: 0,
      int ratio: 1,
      bool fancyUpscaling: true,
      bool tryRecoverTruncated: false,
      double acceptableFraction: 1.0,
      String dctMethod}) {
    return addOperation(new OperationDescription(
        'DecodeAndCropJpeg', _scope.uniqueName('DecodeAndCropJpeg'), [
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

  Output decodeJpeg(Output contents,
      {int channels: 0,
      int ratio: 1,
      bool fancyUpscaling: true,
      bool tryRecoverTruncated: false,
      double acceptableFraction: 1.0,
      String dctMethod}) {
    return addOperation(new OperationDescription(
        'DecodeJpeg', _scope.uniqueName('DecodeJpeg'), [
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

  Output lookupTableSizeV2(Output tableHandle) {
    return addOperation(new OperationDescription('LookupTableSizeV2',
        _scope.uniqueName('LookupTableSizeV2'), [tableHandle], {}));
  }

  Output lookupTableImportV2(Output tableHandle, Output keys, Output values,
      {@required DataType tin, @required DataType tout}) {
    return addOperation(new OperationDescription(
        'LookupTableImportV2',
        _scope.uniqueName('LookupTableImportV2'),
        [tableHandle, keys, values],
        {'Tin': tin, 'Tout': tout}));
  }

  Output tensorArrayCloseV3(Output handle) {
    return addOperation(new OperationDescription('TensorArrayCloseV3',
        _scope.uniqueName('TensorArrayCloseV3'), [handle], {}));
  }

  Output fractionalMaxPoolGrad(Output origInput, Output origOutput,
      Output outBackprop, Output rowPoolingSequence, Output colPoolingSequence,
      {bool overlapping: false}) {
    return addOperation(new OperationDescription(
        'FractionalMaxPoolGrad', _scope.uniqueName('FractionalMaxPoolGrad'), [
      origInput,
      origOutput,
      outBackprop,
      rowPoolingSequence,
      colPoolingSequence
    ], {
      'overlapping': overlapping
    }));
  }

  Output iteratorSetStatsAggregator(
      Output iteratorHandle, Output statsAggregatorHandle) {
    return addOperation(new OperationDescription(
        'IteratorSetStatsAggregator',
        _scope.uniqueName('IteratorSetStatsAggregator'),
        [iteratorHandle, statsAggregatorHandle],
        {}));
  }

  Output encodeJpeg(Output image,
      {String format,
      int quality: 95,
      bool progressive: false,
      bool optimizeSize: false,
      bool chromaDownsampling: true,
      String densityUnit: 'in',
      int xDensity: 300,
      int yDensity: 300,
      String xmpMetadata}) {
    return addOperation(new OperationDescription(
        'EncodeJpeg', _scope.uniqueName('EncodeJpeg'), [
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

  Output rank(Output input) {
    return addOperation(new OperationDescription(
        'Rank', _scope.uniqueName('Rank'), [input], {}));
  }

  Output resourceScatterUpdate(Output resource, Output indices, Output updates,
      {@required DataType dtype, @required DataType tindices}) {
    return addOperation(new OperationDescription(
        'ResourceScatterUpdate',
        _scope.uniqueName('ResourceScatterUpdate'),
        [resource, indices, updates],
        {'dtype': dtype, 'Tindices': tindices}));
  }

  Output stackCloseV2(Output handle) {
    return addOperation(new OperationDescription(
        'StackCloseV2', _scope.uniqueName('StackCloseV2'), [handle], {}));
  }

  Output abs(Output x) {
    return addOperation(
        new OperationDescription('Abs', _scope.uniqueName('Abs'), [x], {}));
  }

  Output gather(Output params, Output indices,
      {bool validateIndices: true,
      @required DataType tparams,
      @required DataType tindices}) {
    return addOperation(new OperationDescription(
        'Gather', _scope.uniqueName('Gather'), [
      params,
      indices
    ], {
      'validate_indices': validateIndices,
      'Tparams': tparams,
      'Tindices': tindices
    }));
  }

  Output tensorArrayReadV3(Output handle, Output index, Output flowIn,
      {@required DataType dtype}) {
    return addOperation(new OperationDescription(
        'TensorArrayReadV3',
        _scope.uniqueName('TensorArrayReadV3'),
        [handle, index, flowIn],
        {'dtype': dtype}));
  }

  Output resourceSparseApplyFtrlV2(
      Output var_,
      Output accum,
      Output linear,
      Output grad,
      Output indices,
      Output lr,
      Output l1,
      Output l2,
      Output l2Shrinkage,
      Output lrPower,
      {@required DataType tindices,
      bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyFtrlV2',
        _scope.uniqueName('ResourceSparseApplyFtrlV2'),
        [var_, accum, linear, grad, indices, lr, l1, l2, l2Shrinkage, lrPower],
        {'Tindices': tindices, 'use_locking': useLocking}));
  }

  Output encodeWav(Output audio, Output sampleRate) {
    return addOperation(new OperationDescription(
        'EncodeWav', _scope.uniqueName('EncodeWav'), [audio, sampleRate], {}));
  }

  Output statsAggregatorHandle({String container, String sharedName}) {
    return addOperation(new OperationDescription(
        'StatsAggregatorHandle',
        _scope.uniqueName('StatsAggregatorHandle'),
        [],
        {'container': container, 'shared_name': sharedName}));
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 8: Random crop is now pure Python')
  Output randomCrop(Output image, Output size, {int seed: 0, int seed2: 0}) {
    return addOperation(new OperationDescription(
        'RandomCrop',
        _scope.uniqueName('RandomCrop'),
        [image, size],
        {'seed': seed, 'seed2': seed2}));
  }

  Output diag(Output diagonal) {
    return addOperation(new OperationDescription(
        'Diag', _scope.uniqueName('Diag'), [diagonal], {}));
  }

  Output tensorListGetItem(Output inputHandle, Output index,
      {@required DataType elementDtype}) {
    return addOperation(new OperationDescription(
        'TensorListGetItem',
        _scope.uniqueName('TensorListGetItem'),
        [inputHandle, index],
        {'element_dtype': elementDtype}));
  }

  Output sparseSegmentSqrtNGrad(
      Output grad, Output indices, Output segmentIds, Output outputDim0,
      {DataType tidx: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'SparseSegmentSqrtNGrad',
        _scope.uniqueName('SparseSegmentSqrtNGrad'),
        [grad, indices, segmentIds, outputDim0],
        {'Tidx': tidx}));
  }

  Output varIsInitializedOp(Output resource) {
    return addOperation(new OperationDescription('VarIsInitializedOp',
        _scope.uniqueName('VarIsInitializedOp'), [resource], {}));
  }

  Output fakeQuantWithMinMaxVarsPerChannel(
      Output inputs, Output min, Output max,
      {int numBits: 8, bool narrowRange: false}) {
    return addOperation(new OperationDescription(
        'FakeQuantWithMinMaxVarsPerChannel',
        _scope.uniqueName('FakeQuantWithMinMaxVarsPerChannel'),
        [inputs, min, max],
        {'num_bits': numBits, 'narrow_range': narrowRange}));
  }

  Output resourceSparseApplyAdagradDA(
      Output var_,
      Output gradientAccumulator,
      Output gradientSquaredAccumulator,
      Output grad,
      Output indices,
      Output lr,
      Output l1,
      Output l2,
      Output globalStep,
      {@required DataType tindices,
      bool useLocking: false}) {
    return addOperation(new OperationDescription('ResourceSparseApplyAdagradDA',
        _scope.uniqueName('ResourceSparseApplyAdagradDA'), [
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
      'Tindices': tindices,
      'use_locking': useLocking
    }));
  }

  Output tFRecordDataset(
      Output filenames, Output compressionType, Output bufferSize) {
    return addOperation(new OperationDescription(
        'TFRecordDataset',
        _scope.uniqueName('TFRecordDataset'),
        [filenames, compressionType, bufferSize],
        {}));
  }

  Output linSpace(Output start, Output stop, Output num,
      {DataType tidx: DataType.DT_INT32}) {
    return addOperation(new OperationDescription('LinSpace',
        _scope.uniqueName('LinSpace'), [start, stop, num], {'Tidx': tidx}));
  }

  Output fixedLengthRecordDataset(Output filenames, Output headerBytes,
      Output recordBytes, Output footerBytes, Output bufferSize) {
    return addOperation(new OperationDescription(
        'FixedLengthRecordDataset',
        _scope.uniqueName('FixedLengthRecordDataset'),
        [filenames, headerBytes, recordBytes, footerBytes, bufferSize],
        {}));
  }

  Output sparseApplyProximalAdagrad(Output var_, Output accum, Output lr,
      Output l1, Output l2, Output grad, Output indices,
      {@required DataType tindices, bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'SparseApplyProximalAdagrad',
        _scope.uniqueName('SparseApplyProximalAdagrad'),
        [var_, accum, lr, l1, l2, grad, indices],
        {'Tindices': tindices, 'use_locking': useLocking}));
  }

  Output sinh(Output x) {
    return addOperation(
        new OperationDescription('Sinh', _scope.uniqueName('Sinh'), [x], {}));
  }

  @Deprecated('DEPRECATED at GraphDef version 14: Use MatrixDiag')
  Output batchMatrixDiag(Output diagonal) {
    return addOperation(new OperationDescription('BatchMatrixDiag',
        _scope.uniqueName('BatchMatrixDiag'), [diagonal], {}));
  }

  Output segmentSum(Output data, Output segmentIds,
      {@required DataType tindices}) {
    return addOperation(new OperationDescription(
        'SegmentSum',
        _scope.uniqueName('SegmentSum'),
        [data, segmentIds],
        {'Tindices': tindices}));
  }

  Output textLineDataset(
      Output filenames, Output compressionType, Output bufferSize) {
    return addOperation(new OperationDescription(
        'TextLineDataset',
        _scope.uniqueName('TextLineDataset'),
        [filenames, compressionType, bufferSize],
        {}));
  }

  Output dataFormatDimMap(Output x,
      {String srcFormat: 'NHWC', String dstFormat: 'NCHW'}) {
    return addOperation(new OperationDescription(
        'DataFormatDimMap',
        _scope.uniqueName('DataFormatDimMap'),
        [x],
        {'src_format': srcFormat, 'dst_format': dstFormat}));
  }

  Output stackClose(Output handle) {
    return addOperation(new OperationDescription(
        'StackClose', _scope.uniqueName('StackClose'), [handle], {}));
  }

  Output sparseSegmentMeanWithNumSegments(
      Output data, Output indices, Output segmentIds, Output numSegments,
      {DataType tidx: DataType.DT_INT32,
      DataType tnumsegments: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'SparseSegmentMeanWithNumSegments',
        _scope.uniqueName('SparseSegmentMeanWithNumSegments'),
        [data, indices, segmentIds, numSegments],
        {'Tidx': tidx, 'Tnumsegments': tnumsegments}));
  }

  Output resizeBicubic(Output images, Output size, {bool alignCorners: false}) {
    return addOperation(new OperationDescription(
        'ResizeBicubic',
        _scope.uniqueName('ResizeBicubic'),
        [images, size],
        {'align_corners': alignCorners}));
  }

  Output hSVToRGB(Output images) {
    return addOperation(new OperationDescription(
        'HSVToRGB', _scope.uniqueName('HSVToRGB'), [images], {}));
  }

  Output maxPoolV2(Output input, Output ksize, Output strides,
      {@required String padding, String dataFormat: 'NHWC'}) {
    return addOperation(new OperationDescription(
        'MaxPoolV2',
        _scope.uniqueName('MaxPoolV2'),
        [input, ksize, strides],
        {'padding': padding, 'data_format': dataFormat}));
  }

  Output randomPoissonV2(Output shape, Output rate,
      {int seed: 0,
      int seed2: 0,
      @required DataType s,
      DataType r: DataType.DT_DOUBLE,
      DataType dtype: DataType.DT_INT64}) {
    return addOperation(new OperationDescription(
        'RandomPoissonV2',
        _scope.uniqueName('RandomPoissonV2'),
        [shape, rate],
        {'seed': seed, 'seed2': seed2, 'S': s, 'R': r, 'dtype': dtype}));
  }

  Output readerNumRecordsProduced(Output readerHandle) {
    return addOperation(new OperationDescription('ReaderNumRecordsProduced',
        _scope.uniqueName('ReaderNumRecordsProduced'), [readerHandle], {}));
  }

  Output unpack(Output value, {@required int num, int axis: 0}) {
    return addOperation(new OperationDescription('Unpack',
        _scope.uniqueName('Unpack'), [value], {'num': num, 'axis': axis}));
  }

  @Deprecated('DEPRECATED at GraphDef version 13: Use MatrixInverse instead.')
  Output batchMatrixInverse(Output input, {bool adjoint: false}) {
    return addOperation(new OperationDescription(
        'BatchMatrixInverse',
        _scope.uniqueName('BatchMatrixInverse'),
        [input],
        {'adjoint': adjoint}));
  }

  Output sparseApplyCenteredRMSProp(
      Output var_,
      Output mg,
      Output ms,
      Output mom,
      Output lr,
      Output rho,
      Output momentum,
      Output epsilon,
      Output grad,
      Output indices,
      {@required DataType tindices,
      bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'SparseApplyCenteredRMSProp',
        _scope.uniqueName('SparseApplyCenteredRMSProp'),
        [var_, mg, ms, mom, lr, rho, momentum, epsilon, grad, indices],
        {'Tindices': tindices, 'use_locking': useLocking}));
  }

  Output resourceSparseApplyCenteredRMSProp(
      Output var_,
      Output mg,
      Output ms,
      Output mom,
      Output lr,
      Output rho,
      Output momentum,
      Output epsilon,
      Output grad,
      Output indices,
      {@required DataType tindices,
      bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyCenteredRMSProp',
        _scope.uniqueName('ResourceSparseApplyCenteredRMSProp'),
        [var_, mg, ms, mom, lr, rho, momentum, epsilon, grad, indices],
        {'Tindices': tindices, 'use_locking': useLocking}));
  }

  Output queueSizeV2(Output handle) {
    return addOperation(new OperationDescription(
        'QueueSizeV2', _scope.uniqueName('QueueSizeV2'), [handle], {}));
  }

  Output mergeV2Checkpoints(Output checkpointPrefixes, Output destinationPrefix,
      {bool deleteOldDirs: true}) {
    return addOperation(new OperationDescription(
        'MergeV2Checkpoints',
        _scope.uniqueName('MergeV2Checkpoints'),
        [checkpointPrefixes, destinationPrefix],
        {'delete_old_dirs': deleteOldDirs}));
  }

  Output queueClose(Output handle, {bool cancelPendingEnqueues: false}) {
    return addOperation(new OperationDescription(
        'QueueClose',
        _scope.uniqueName('QueueClose'),
        [handle],
        {'cancel_pending_enqueues': cancelPendingEnqueues}));
  }

  Output addN(List<Output> inputs, {@required int n}) {
    return addOperation(new OperationDescription(
        'AddN', _scope.uniqueName('AddN'), [inputs], {'N': n}));
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayV3')
  Output tensorArrayV2(Output size,
      {@required DataType dtype,
      List<int> elementShape,
      bool dynamicSize: false,
      bool clearAfterRead: true,
      String tensorArrayName}) {
    return addOperation(new OperationDescription(
        'TensorArrayV2', _scope.uniqueName('TensorArrayV2'), [
      size
    ], {
      'dtype': dtype,
      'element_shape': elementShape,
      'dynamic_size': dynamicSize,
      'clear_after_read': clearAfterRead,
      'tensor_array_name': tensorArrayName
    }));
  }

  Output range(Output start, Output limit, Output delta,
      {DataType tidx: DataType.DT_INT32}) {
    return addOperation(new OperationDescription('Range',
        _scope.uniqueName('Range'), [start, limit, delta], {'Tidx': tidx}));
  }

  Output sparseTensorSliceDataset(
      Output indices, Output values, Output denseShape,
      {@required DataType tvalues}) {
    return addOperation(new OperationDescription(
        'SparseTensorSliceDataset',
        _scope.uniqueName('SparseTensorSliceDataset'),
        [indices, values, denseShape],
        {'Tvalues': tvalues}));
  }

  Output tensorArrayWriteV3(
      Output handle, Output index, Output value, Output flowIn) {
    return addOperation(new OperationDescription(
        'TensorArrayWriteV3',
        _scope.uniqueName('TensorArrayWriteV3'),
        [handle, index, value, flowIn],
        {}));
  }

  Output histogramSummary(Output tag, Output values) {
    return addOperation(new OperationDescription('HistogramSummary',
        _scope.uniqueName('HistogramSummary'), [tag, values], {}));
  }

  Output stackPopV2(Output handle, {@required DataType elemType}) {
    return addOperation(new OperationDescription('StackPopV2',
        _scope.uniqueName('StackPopV2'), [handle], {'elem_type': elemType}));
  }

  Output lRN(Output input,
      {int depthRadius: 5,
      double bias: 1.0,
      double alpha: 1.0,
      double beta: 0.5}) {
    return addOperation(new OperationDescription(
        'LRN', _scope.uniqueName('LRN'), [
      input
    ], {
      'depth_radius': depthRadius,
      'bias': bias,
      'alpha': alpha,
      'beta': beta
    }));
  }

  Output sparseAccumulatorApplyGradient(Output handle, Output localStep,
      Output gradientIndices, Output gradientValues, Output gradientShape,
      {@required DataType dtype, @required bool hasKnownShape}) {
    return addOperation(new OperationDescription(
        'SparseAccumulatorApplyGradient',
        _scope.uniqueName('SparseAccumulatorApplyGradient'),
        [handle, localStep, gradientIndices, gradientValues, gradientShape],
        {'dtype': dtype, 'has_known_shape': hasKnownShape}));
  }

  Output statsAggregatorSummary(Output iterator) {
    return addOperation(new OperationDescription('StatsAggregatorSummary',
        _scope.uniqueName('StatsAggregatorSummary'), [iterator], {}));
  }

  Output equal(Output x, Output y) {
    return addOperation(new OperationDescription(
        'Equal', _scope.uniqueName('Equal'), [x, y], {}));
  }

  Output lookupTableInsertV2(Output tableHandle, Output keys, Output values,
      {@required DataType tin, @required DataType tout}) {
    return addOperation(new OperationDescription(
        'LookupTableInsertV2',
        _scope.uniqueName('LookupTableInsertV2'),
        [tableHandle, keys, values],
        {'Tin': tin, 'Tout': tout}));
  }

  Output barrierInsertMany(Output handle, Output keys, Output values,
      {@required int componentIndex}) {
    return addOperation(new OperationDescription(
        'BarrierInsertMany',
        _scope.uniqueName('BarrierInsertMany'),
        [handle, keys, values],
        {'component_index': componentIndex}));
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArraySplitV3')
  Output tensorArraySplitV2(
      Output handle, Output value, Output lengths, Output flowIn) {
    return addOperation(new OperationDescription(
        'TensorArraySplitV2',
        _scope.uniqueName('TensorArraySplitV2'),
        [handle, value, lengths, flowIn],
        {}));
  }

  @Deprecated('DEPRECATED at GraphDef version 15: Use FFT2D')
  Output batchFFT2D(Output input) {
    return addOperation(new OperationDescription(
        'BatchFFT2D', _scope.uniqueName('BatchFFT2D'), [input], {}));
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 11: Use SelfAdjointEigV2 instead.')
  Output selfAdjointEig(Output input) {
    return addOperation(new OperationDescription(
        'SelfAdjointEig', _scope.uniqueName('SelfAdjointEig'), [input], {}));
  }

  Output readerResetV2(Output readerHandle) {
    return addOperation(new OperationDescription('ReaderResetV2',
        _scope.uniqueName('ReaderResetV2'), [readerHandle], {}));
  }

  Output refNextIteration(Output data) {
    return addOperation(new OperationDescription(
        'RefNextIteration', _scope.uniqueName('RefNextIteration'), [data], {}));
  }

  Output rFFT2D(Output input, Output fftLength) {
    return addOperation(new OperationDescription(
        'RFFT2D', _scope.uniqueName('RFFT2D'), [input, fftLength], {}));
  }

  Output less(Output x, Output y) {
    return addOperation(new OperationDescription(
        'Less', _scope.uniqueName('Less'), [x, y], {}));
  }

  /// Creates a summary file writer accessible by the given resource handle.
  Output createSummaryFileWriter(Output writer, Output logdir, Output maxQueue,
      Output flushMillis, Output filenameSuffix) {
    return addOperation(new OperationDescription(
        'CreateSummaryFileWriter',
        _scope.uniqueName('CreateSummaryFileWriter'),
        [writer, logdir, maxQueue, flushMillis, filenameSuffix],
        {}));
  }

  Output queueIsClosedV2(Output handle) {
    return addOperation(new OperationDescription(
        'QueueIsClosedV2', _scope.uniqueName('QueueIsClosedV2'), [handle], {}));
  }

  Output sparseReduceSum(Output inputIndices, Output inputValues,
      Output inputShape, Output reductionAxes,
      {bool keepDims: false}) {
    return addOperation(new OperationDescription(
        'SparseReduceSum',
        _scope.uniqueName('SparseReduceSum'),
        [inputIndices, inputValues, inputShape, reductionAxes],
        {'keep_dims': keepDims}));
  }

  Output zeta(Output x, Output q) {
    return addOperation(new OperationDescription(
        'Zeta', _scope.uniqueName('Zeta'), [x, q], {}));
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayGradV3')
  Output tensorArrayGradV2(Output handle, Output flowIn,
      {@required String source}) {
    return addOperation(new OperationDescription(
        'TensorArrayGradV2',
        _scope.uniqueName('TensorArrayGradV2'),
        [handle, flowIn],
        {'source': source}));
  }

  Output shapeN(List<Output> input,
      {@required int n, DataType outType: DataType.DT_INT32}) {
    return addOperation(new OperationDescription('ShapeN',
        _scope.uniqueName('ShapeN'), [input], {'N': n, 'out_type': outType}));
  }

  Output imageSummary(Output tag, Output tensor,
      {int maxImages: 3, Output badColor}) {
    return addOperation(new OperationDescription(
        'ImageSummary',
        _scope.uniqueName('ImageSummary'),
        [tag, tensor],
        {'max_images': maxImages, 'bad_color': badColor}));
  }

  Output wholeFileReaderV2({String container, String sharedName}) {
    return addOperation(new OperationDescription(
        'WholeFileReaderV2',
        _scope.uniqueName('WholeFileReaderV2'),
        [],
        {'container': container, 'shared_name': sharedName}));
  }

  Output mfcc(Output spectrogram, Output sampleRate,
      {double upperFrequencyLimit: 4000.0,
      double lowerFrequencyLimit: 20.0,
      int filterbankChannelCount: 40,
      int dctCoefficientCount: 13}) {
    return addOperation(
        new OperationDescription('Mfcc', _scope.uniqueName('Mfcc'), [
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
  Output batchMatrixDiagPart(Output input) {
    return addOperation(new OperationDescription('BatchMatrixDiagPart',
        _scope.uniqueName('BatchMatrixDiagPart'), [input], {}));
  }

  @Deprecated('DEPRECATED at GraphDef version 2: Use AdjustContrastv2 instead')
  Output adjustContrast(
      Output images, Output contrastFactor, Output minValue, Output maxValue) {
    return addOperation(new OperationDescription(
        'AdjustContrast',
        _scope.uniqueName('AdjustContrast'),
        [images, contrastFactor, minValue, maxValue],
        {}));
  }

  Output resizeNearestNeighbor(Output images, Output size,
      {bool alignCorners: false}) {
    return addOperation(new OperationDescription(
        'ResizeNearestNeighbor',
        _scope.uniqueName('ResizeNearestNeighbor'),
        [images, size],
        {'align_corners': alignCorners}));
  }

  Output atanh(Output x) {
    return addOperation(
        new OperationDescription('Atanh', _scope.uniqueName('Atanh'), [x], {}));
  }

  Output makeIterator(Output dataset, Output iterator) {
    return addOperation(new OperationDescription('MakeIterator',
        _scope.uniqueName('MakeIterator'), [dataset, iterator], {}));
  }

  Output parameterizedTruncatedNormal(
      Output shape, Output means, Output stdevs, Output minvals, Output maxvals,
      {int seed: 0, int seed2: 0, @required DataType dtype}) {
    return addOperation(new OperationDescription(
        'ParameterizedTruncatedNormal',
        _scope.uniqueName('ParameterizedTruncatedNormal'),
        [shape, means, stdevs, minvals, maxvals],
        {'seed': seed, 'seed2': seed2, 'dtype': dtype}));
  }

  Output assignAddVariableOp(Output resource, Output value,
      {@required DataType dtype}) {
    return addOperation(new OperationDescription(
        'AssignAddVariableOp',
        _scope.uniqueName('AssignAddVariableOp'),
        [resource, value],
        {'dtype': dtype}));
  }

  Output isNan(Output x) {
    return addOperation(
        new OperationDescription('IsNan', _scope.uniqueName('IsNan'), [x], {}));
  }

  Output tensorListPushBack(Output inputHandle, Output tensor,
      {@required DataType elementDtype}) {
    return addOperation(new OperationDescription(
        'TensorListPushBack',
        _scope.uniqueName('TensorListPushBack'),
        [inputHandle, tensor],
        {'element_dtype': elementDtype}));
  }

  Output reciprocalGrad(Output y, Output dy) {
    return addOperation(new OperationDescription(
        'ReciprocalGrad', _scope.uniqueName('ReciprocalGrad'), [y, dy], {}));
  }

  Output deleteSessionTensor(Output handle) {
    return addOperation(new OperationDescription('DeleteSessionTensor',
        _scope.uniqueName('DeleteSessionTensor'), [handle], {}));
  }

  Output getSessionHandleV2(Output value) {
    return addOperation(new OperationDescription('GetSessionHandleV2',
        _scope.uniqueName('GetSessionHandleV2'), [value], {}));
  }

  @Deprecated('DEPRECATED at GraphDef version 14: Use MatrixBandPart')
  Output batchMatrixBandPart(Output input, Output numLower, Output numUpper) {
    return addOperation(new OperationDescription(
        'BatchMatrixBandPart',
        _scope.uniqueName('BatchMatrixBandPart'),
        [input, numLower, numUpper],
        {}));
  }

  Output div(Output x, Output y) {
    return addOperation(
        new OperationDescription('Div', _scope.uniqueName('Div'), [x, y], {}));
  }

  /// Flushes and closes the summary writer.
  /// Also removes it from the resource manager. To reopen, use another
  /// CreateSummaryFileWriter op.
  Output closeSummaryWriter(Output writer) {
    return addOperation(new OperationDescription('CloseSummaryWriter',
        _scope.uniqueName('CloseSummaryWriter'), [writer], {}));
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArraySizeV3')
  Output tensorArraySizeV2(Output handle, Output flowIn) {
    return addOperation(new OperationDescription('TensorArraySizeV2',
        _scope.uniqueName('TensorArraySizeV2'), [handle, flowIn], {}));
  }

  Output floorMod(Output x, Output y) {
    return addOperation(new OperationDescription(
        'FloorMod', _scope.uniqueName('FloorMod'), [x, y], {}));
  }

  Output matchingFiles(Output pattern) {
    return addOperation(new OperationDescription(
        'MatchingFiles', _scope.uniqueName('MatchingFiles'), [pattern], {}));
  }

  Output restore(Output filePattern, Output tensorName,
      {@required DataType dt, int preferredShard: -1}) {
    return addOperation(new OperationDescription(
        'Restore',
        _scope.uniqueName('Restore'),
        [filePattern, tensorName],
        {'dt': dt, 'preferred_shard': preferredShard}));
  }

  Output tanh(Output x) {
    return addOperation(
        new OperationDescription('Tanh', _scope.uniqueName('Tanh'), [x], {}));
  }

  Output cropAndResizeGradImage(
      Output grads, Output boxes, Output boxInd, Output imageSize,
      {String method: 'bilinear'}) {
    return addOperation(new OperationDescription(
        'CropAndResizeGradImage',
        _scope.uniqueName('CropAndResizeGradImage'),
        [grads, boxes, boxInd, imageSize],
        {'method': method}));
  }

  Output accumulatorTakeGradient(Output handle, Output numRequired,
      {@required DataType dtype}) {
    return addOperation(new OperationDescription(
        'AccumulatorTakeGradient',
        _scope.uniqueName('AccumulatorTakeGradient'),
        [handle, numRequired],
        {'dtype': dtype}));
  }

  Output stridedSliceAssign(
      Output ref, Output begin, Output end, Output strides, Output value,
      {@required DataType index,
      int beginMask: 0,
      int endMask: 0,
      int ellipsisMask: 0,
      int newAxisMask: 0,
      int shrinkAxisMask: 0}) {
    return addOperation(new OperationDescription(
        'StridedSliceAssign', _scope.uniqueName('StridedSliceAssign'), [
      ref,
      begin,
      end,
      strides,
      value
    ], {
      'Index': index,
      'begin_mask': beginMask,
      'end_mask': endMask,
      'ellipsis_mask': ellipsisMask,
      'new_axis_mask': newAxisMask,
      'shrink_axis_mask': shrinkAxisMask
    }));
  }

  Output varHandleOp(
      {String container,
      String sharedName,
      @required DataType dtype,
      @required List<int> shape}) {
    return addOperation(new OperationDescription(
        'VarHandleOp', _scope.uniqueName('VarHandleOp'), [], {
      'container': container,
      'shared_name': sharedName,
      'dtype': dtype,
      'shape': shape
    }));
  }

  Output rFFT3D(Output input, Output fftLength) {
    return addOperation(new OperationDescription(
        'RFFT3D', _scope.uniqueName('RFFT3D'), [input, fftLength], {}));
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayGatherV3')
  Output tensorArrayGatherV2(Output handle, Output indices, Output flowIn,
      {@required DataType dtype, List<int> elementShape}) {
    return addOperation(new OperationDescription(
        'TensorArrayGatherV2',
        _scope.uniqueName('TensorArrayGatherV2'),
        [handle, indices, flowIn],
        {'dtype': dtype, 'element_shape': elementShape}));
  }

  Output dynamicPartition(Output data, Output partitions,
      {@required int numPartitions}) {
    return addOperation(new OperationDescription(
        'DynamicPartition',
        _scope.uniqueName('DynamicPartition'),
        [data, partitions],
        {'num_partitions': numPartitions}));
  }

  Output fakeQueue(Output resource) {
    return addOperation(new OperationDescription(
        'FakeQueue', _scope.uniqueName('FakeQueue'), [resource], {}));
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 16: Use TensorArrayGatherV3 with RangeOp')
  Output tensorArrayPack(Output handle, Output flowIn,
      {@required DataType dtype, List<int> elementShape}) {
    return addOperation(new OperationDescription(
        'TensorArrayPack',
        _scope.uniqueName('TensorArrayPack'),
        [handle, flowIn],
        {'dtype': dtype, 'element_shape': elementShape}));
  }

  Output tanhGrad(Output y, Output dy) {
    return addOperation(new OperationDescription(
        'TanhGrad', _scope.uniqueName('TanhGrad'), [y, dy], {}));
  }

  Output loopCond(Output input) {
    return addOperation(new OperationDescription(
        'LoopCond', _scope.uniqueName('LoopCond'), [input], {}));
  }

  Output sparseReduceMax(Output inputIndices, Output inputValues,
      Output inputShape, Output reductionAxes,
      {bool keepDims: false}) {
    return addOperation(new OperationDescription(
        'SparseReduceMax',
        _scope.uniqueName('SparseReduceMax'),
        [inputIndices, inputValues, inputShape, reductionAxes],
        {'keep_dims': keepDims}));
  }

  Output unsortedSegmentMax(Output data, Output segmentIds, Output numSegments,
      {@required DataType tindices, DataType tnumsegments: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'UnsortedSegmentMax',
        _scope.uniqueName('UnsortedSegmentMax'),
        [data, segmentIds, numSegments],
        {'Tindices': tindices, 'Tnumsegments': tnumsegments}));
  }

  Output audioSpectrogram(Output input,
      {@required int windowSize,
      @required int stride,
      bool magnitudeSquared: false}) {
    return addOperation(new OperationDescription(
        'AudioSpectrogram', _scope.uniqueName('AudioSpectrogram'), [
      input
    ], {
      'window_size': windowSize,
      'stride': stride,
      'magnitude_squared': magnitudeSquared
    }));
  }

  @Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayReadV3')
  Output tensorArrayRead(Output handle, Output index, Output flowIn,
      {@required DataType dtype}) {
    return addOperation(new OperationDescription(
        'TensorArrayRead',
        _scope.uniqueName('TensorArrayRead'),
        [handle, index, flowIn],
        {'dtype': dtype}));
  }

  Output mutableHashTable(
      {String container,
      String sharedName,
      bool useNodeNameSharing: false,
      @required DataType keyDtype,
      @required DataType valueDtype}) {
    return addOperation(new OperationDescription(
        'MutableHashTable', _scope.uniqueName('MutableHashTable'), [], {
      'container': container,
      'shared_name': sharedName,
      'use_node_name_sharing': useNodeNameSharing,
      'key_dtype': keyDtype,
      'value_dtype': valueDtype
    }));
  }

  Output tensorArraySizeV3(Output handle, Output flowIn) {
    return addOperation(new OperationDescription('TensorArraySizeV3',
        _scope.uniqueName('TensorArraySizeV3'), [handle, flowIn], {}));
  }

  Output applyAdam(
      Output var_,
      Output m,
      Output v,
      Output beta1Power,
      Output beta2Power,
      Output lr,
      Output beta1,
      Output beta2,
      Output epsilon,
      Output grad,
      {bool useLocking: false,
      bool useNesterov: false}) {
    return addOperation(new OperationDescription(
        'ApplyAdam',
        _scope.uniqueName('ApplyAdam'),
        [var_, m, v, beta1Power, beta2Power, lr, beta1, beta2, epsilon, grad],
        {'use_locking': useLocking, 'use_nesterov': useNesterov}));
  }

  Output mergeSummary(List<Output> inputs, {@required int n}) {
    return addOperation(new OperationDescription(
        'MergeSummary', _scope.uniqueName('MergeSummary'), [inputs], {'N': n}));
  }

  Output fFT(Output input) {
    return addOperation(
        new OperationDescription('FFT', _scope.uniqueName('FFT'), [input], {}));
  }

  Output resourceApplyAdadelta(Output var_, Output accum, Output accumUpdate,
      Output lr, Output rho, Output epsilon, Output grad,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceApplyAdadelta',
        _scope.uniqueName('ResourceApplyAdadelta'),
        [var_, accum, accumUpdate, lr, rho, epsilon, grad],
        {'use_locking': useLocking}));
  }

  Output debugGradientRefIdentity(Output input) {
    return addOperation(new OperationDescription('DebugGradientRefIdentity',
        _scope.uniqueName('DebugGradientRefIdentity'), [input], {}));
  }

  Output floorDiv(Output x, Output y) {
    return addOperation(new OperationDescription(
        'FloorDiv', _scope.uniqueName('FloorDiv'), [x, y], {}));
  }

  Output applyAdagradDA(
      Output var_,
      Output gradientAccumulator,
      Output gradientSquaredAccumulator,
      Output grad,
      Output lr,
      Output l1,
      Output l2,
      Output globalStep,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ApplyAdagradDA', _scope.uniqueName('ApplyAdagradDA'), [
      var_,
      gradientAccumulator,
      gradientSquaredAccumulator,
      grad,
      lr,
      l1,
      l2,
      globalStep
    ], {
      'use_locking': useLocking
    }));
  }

  Output square(Output x) {
    return addOperation(new OperationDescription(
        'Square', _scope.uniqueName('Square'), [x], {}));
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use IdentityReaderV2')
  Output identityReader({String container, String sharedName}) {
    return addOperation(new OperationDescription(
        'IdentityReader',
        _scope.uniqueName('IdentityReader'),
        [],
        {'container': container, 'shared_name': sharedName}));
  }

  Output tensorArrayScatterV3(
      Output handle, Output indices, Output value, Output flowIn) {
    return addOperation(new OperationDescription(
        'TensorArrayScatterV3',
        _scope.uniqueName('TensorArrayScatterV3'),
        [handle, indices, value, flowIn],
        {}));
  }

  Output biasAddV1(Output value, Output bias) {
    return addOperation(new OperationDescription(
        'BiasAddV1', _scope.uniqueName('BiasAddV1'), [value, bias], {}));
  }

  Output logicalOr(Output x, Output y) {
    return addOperation(new OperationDescription(
        'LogicalOr', _scope.uniqueName('LogicalOr'), [x, y], {}));
  }

  Output stackPush(Output handle, Output elem, {bool swapMemory: false}) {
    return addOperation(new OperationDescription(
        'StackPush',
        _scope.uniqueName('StackPush'),
        [handle, elem],
        {'swap_memory': swapMemory}));
  }

  Output tFRecordReaderV2(
      {String container, String sharedName, String compressionType}) {
    return addOperation(new OperationDescription(
        'TFRecordReaderV2', _scope.uniqueName('TFRecordReaderV2'), [], {
      'container': container,
      'shared_name': sharedName,
      'compression_type': compressionType
    }));
  }

  Output lookupTableFind(Output tableHandle, Output keys, Output defaultValue,
      {@required DataType tin, @required DataType tout}) {
    return addOperation(new OperationDescription(
        'LookupTableFind',
        _scope.uniqueName('LookupTableFind'),
        [tableHandle, keys, defaultValue],
        {'Tin': tin, 'Tout': tout}));
  }

  Output dynamicStitch(List<Output> indices, List<Output> data,
      {@required int n}) {
    return addOperation(new OperationDescription('DynamicStitch',
        _scope.uniqueName('DynamicStitch'), [indices, data], {'N': n}));
  }

  Output sparseApplyAdadelta(Output var_, Output accum, Output accumUpdate,
      Output lr, Output rho, Output epsilon, Output grad, Output indices,
      {@required DataType tindices, bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'SparseApplyAdadelta',
        _scope.uniqueName('SparseApplyAdadelta'),
        [var_, accum, accumUpdate, lr, rho, epsilon, grad, indices],
        {'Tindices': tindices, 'use_locking': useLocking}));
  }

  Output complexAbs(Output x, {DataType tout: DataType.DT_FLOAT}) {
    return addOperation(new OperationDescription(
        'ComplexAbs', _scope.uniqueName('ComplexAbs'), [x], {'Tout': tout}));
  }

  Output serializeSparse(
      Output sparseIndices, Output sparseValues, Output sparseShape,
      {DataType outType: DataType.DT_STRING}) {
    return addOperation(new OperationDescription(
        'SerializeSparse',
        _scope.uniqueName('SerializeSparse'),
        [sparseIndices, sparseValues, sparseShape],
        {'out_type': outType}));
  }

  Output bitwiseXor(Output x, Output y) {
    return addOperation(new OperationDescription(
        'BitwiseXor', _scope.uniqueName('BitwiseXor'), [x, y], {}));
  }

  Output tensorListSetItem(Output inputHandle, Output index, Output item,
      {@required DataType elementDtype}) {
    return addOperation(new OperationDescription(
        'TensorListSetItem',
        _scope.uniqueName('TensorListSetItem'),
        [inputHandle, index, item],
        {'element_dtype': elementDtype}));
  }

  Output stack({@required DataType elemType, String stackName}) {
    return addOperation(new OperationDescription(
        'Stack',
        _scope.uniqueName('Stack'),
        [],
        {'elem_type': elemType, 'stack_name': stackName}));
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TFRecordReaderV2')
  Output tFRecordReader(
      {String container, String sharedName, String compressionType}) {
    return addOperation(new OperationDescription(
        'TFRecordReader', _scope.uniqueName('TFRecordReader'), [], {
      'container': container,
      'shared_name': sharedName,
      'compression_type': compressionType
    }));
  }

  Output sparseConditionalAccumulator(
      {@required DataType dtype,
      @required List<int> shape,
      String container,
      String sharedName}) {
    return addOperation(new OperationDescription('SparseConditionalAccumulator',
        _scope.uniqueName('SparseConditionalAccumulator'), [], {
      'dtype': dtype,
      'shape': shape,
      'container': container,
      'shared_name': sharedName
    }));
  }

  Output conditionalAccumulator(
      {@required DataType dtype,
      @required List<int> shape,
      String container,
      String sharedName}) {
    return addOperation(new OperationDescription('ConditionalAccumulator',
        _scope.uniqueName('ConditionalAccumulator'), [], {
      'dtype': dtype,
      'shape': shape,
      'container': container,
      'shared_name': sharedName
    }));
  }

  @Deprecated('DEPRECATED at GraphDef version 15: Use FFT')
  Output batchFFT(Output input) {
    return addOperation(new OperationDescription(
        'BatchFFT', _scope.uniqueName('BatchFFT'), [input], {}));
  }

  Output accumulatorNumAccumulated(Output handle) {
    return addOperation(new OperationDescription('AccumulatorNumAccumulated',
        _scope.uniqueName('AccumulatorNumAccumulated'), [handle], {}));
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 11: Use SelfAdjointEigV2 instead.')
  Output batchSelfAdjointEig(Output input) {
    return addOperation(new OperationDescription('BatchSelfAdjointEig',
        _scope.uniqueName('BatchSelfAdjointEig'), [input], {}));
  }

  Output minimum(Output x, Output y) {
    return addOperation(new OperationDescription(
        'Minimum', _scope.uniqueName('Minimum'), [x, y], {}));
  }

  Output queueIsClosed(Output handle) {
    return addOperation(new OperationDescription(
        'QueueIsClosed', _scope.uniqueName('QueueIsClosed'), [handle], {}));
  }

  Output tensorArraySplitV3(
      Output handle, Output value, Output lengths, Output flowIn) {
    return addOperation(new OperationDescription(
        'TensorArraySplitV3',
        _scope.uniqueName('TensorArraySplitV3'),
        [handle, value, lengths, flowIn],
        {}));
  }

  Output sparseApplyFtrl(Output var_, Output accum, Output linear, Output grad,
      Output indices, Output lr, Output l1, Output l2, Output lrPower,
      {@required DataType tindices, bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'SparseApplyFtrl',
        _scope.uniqueName('SparseApplyFtrl'),
        [var_, accum, linear, grad, indices, lr, l1, l2, lrPower],
        {'Tindices': tindices, 'use_locking': useLocking}));
  }

  Output resourceSparseApplyProximalGradientDescent(Output var_, Output alpha,
      Output l1, Output l2, Output grad, Output indices,
      {@required DataType tindices, bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ResourceSparseApplyProximalGradientDescent',
        _scope.uniqueName('ResourceSparseApplyProximalGradientDescent'),
        [var_, alpha, l1, l2, grad, indices],
        {'Tindices': tindices, 'use_locking': useLocking}));
  }

  Output sparseSegmentSum(Output data, Output indices, Output segmentIds,
      {DataType tidx: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'SparseSegmentSum',
        _scope.uniqueName('SparseSegmentSum'),
        [data, indices, segmentIds],
        {'Tidx': tidx}));
  }

  Output rint(Output x) {
    return addOperation(
        new OperationDescription('Rint', _scope.uniqueName('Rint'), [x], {}));
  }

  Output abort({String errorMsg, bool exitWithoutError: false}) {
    return addOperation(new OperationDescription(
        'Abort',
        _scope.uniqueName('Abort'),
        [],
        {'error_msg': errorMsg, 'exit_without_error': exitWithoutError}));
  }

  Output shardedFilename(Output basename, Output shard, Output numShards) {
    return addOperation(new OperationDescription(
        'ShardedFilename',
        _scope.uniqueName('ShardedFilename'),
        [basename, shard, numShards],
        {}));
  }

  Output matrixInverse(Output input, {bool adjoint: false}) {
    return addOperation(new OperationDescription('MatrixInverse',
        _scope.uniqueName('MatrixInverse'), [input], {'adjoint': adjoint}));
  }

  @Deprecated('DEPRECATED at GraphDef version 25: Replaced by RandomPoissonV2')
  Output randomPoisson(Output shape, Output rate,
      {int seed: 0,
      int seed2: 0,
      @required DataType s,
      @required DataType dtype}) {
    return addOperation(new OperationDescription(
        'RandomPoisson',
        _scope.uniqueName('RandomPoisson'),
        [shape, rate],
        {'seed': seed, 'seed2': seed2, 'S': s, 'dtype': dtype}));
  }

  Output noOp() {
    return addOperation(
        new OperationDescription('NoOp', _scope.uniqueName('NoOp'), [], {}));
  }

  Output loadAndRemapMatrix(Output ckptPath, Output oldTensorName,
      Output rowRemapping, Output colRemapping, Output initializingValues,
      {@required int numRows, @required int numCols, int maxRowsInMemory: -1}) {
    return addOperation(new OperationDescription(
        'LoadAndRemapMatrix', _scope.uniqueName('LoadAndRemapMatrix'), [
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

  Output spaceToBatchND(Output input, Output blockShape, Output paddings,
      {DataType tblockShape: DataType.DT_INT32,
      DataType tpaddings: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'SpaceToBatchND',
        _scope.uniqueName('SpaceToBatchND'),
        [input, blockShape, paddings],
        {'Tblock_shape': tblockShape, 'Tpaddings': tpaddings}));
  }

  Output resizeNearestNeighborGrad(Output grads, Output size,
      {bool alignCorners: false}) {
    return addOperation(new OperationDescription(
        'ResizeNearestNeighborGrad',
        _scope.uniqueName('ResizeNearestNeighborGrad'),
        [grads, size],
        {'align_corners': alignCorners}));
  }

  Output temporaryVariable(
      {@required List<int> shape, @required DataType dtype, String varName}) {
    return addOperation(new OperationDescription(
        'TemporaryVariable',
        _scope.uniqueName('TemporaryVariable'),
        [],
        {'shape': shape, 'dtype': dtype, 'var_name': varName}));
  }

  Output resizeBilinear(Output images, Output size,
      {bool alignCorners: false}) {
    return addOperation(new OperationDescription(
        'ResizeBilinear',
        _scope.uniqueName('ResizeBilinear'),
        [images, size],
        {'align_corners': alignCorners}));
  }

  Output fakeQuantWithMinMaxVars(Output inputs, Output min, Output max,
      {int numBits: 8, bool narrowRange: false}) {
    return addOperation(new OperationDescription(
        'FakeQuantWithMinMaxVars',
        _scope.uniqueName('FakeQuantWithMinMaxVars'),
        [inputs, min, max],
        {'num_bits': numBits, 'narrow_range': narrowRange}));
  }

  Output barrierIncompleteSize(Output handle) {
    return addOperation(new OperationDescription('BarrierIncompleteSize',
        _scope.uniqueName('BarrierIncompleteSize'), [handle], {}));
  }

  Output logicalNot(Output x) {
    return addOperation(new OperationDescription(
        'LogicalNot', _scope.uniqueName('LogicalNot'), [x], {}));
  }

  Output sparseApplyAdagrad(
      Output var_, Output accum, Output lr, Output grad, Output indices,
      {@required DataType tindices, bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'SparseApplyAdagrad',
        _scope.uniqueName('SparseApplyAdagrad'),
        [var_, accum, lr, grad, indices],
        {'Tindices': tindices, 'use_locking': useLocking}));
  }

  Output queueSize(Output handle) {
    return addOperation(new OperationDescription(
        'QueueSize', _scope.uniqueName('QueueSize'), [handle], {}));
  }

  Output iFFT(Output input) {
    return addOperation(new OperationDescription(
        'IFFT', _scope.uniqueName('IFFT'), [input], {}));
  }

  Output atan(Output x) {
    return addOperation(
        new OperationDescription('Atan', _scope.uniqueName('Atan'), [x], {}));
  }

  Output fakeQuantWithMinMaxArgsGradient(Output gradients, Output inputs,
      {double min: -6.0,
      double max: 6.0,
      int numBits: 8,
      bool narrowRange: false}) {
    return addOperation(new OperationDescription(
        'FakeQuantWithMinMaxArgsGradient',
        _scope.uniqueName('FakeQuantWithMinMaxArgsGradient'), [
      gradients,
      inputs
    ], {
      'min': min,
      'max': max,
      'num_bits': numBits,
      'narrow_range': narrowRange
    }));
  }

  Output tensorListLength(Output inputHandle) {
    return addOperation(new OperationDescription('TensorListLength',
        _scope.uniqueName('TensorListLength'), [inputHandle], {}));
  }

  Output pow(Output x, Output y) {
    return addOperation(
        new OperationDescription('Pow', _scope.uniqueName('Pow'), [x, y], {}));
  }

  Output applyRMSProp(Output var_, Output ms, Output mom, Output lr, Output rho,
      Output momentum, Output epsilon, Output grad,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ApplyRMSProp',
        _scope.uniqueName('ApplyRMSProp'),
        [var_, ms, mom, lr, rho, momentum, epsilon, grad],
        {'use_locking': useLocking}));
  }

  Output stackPushV2(Output handle, Output elem, {bool swapMemory: false}) {
    return addOperation(new OperationDescription(
        'StackPushV2',
        _scope.uniqueName('StackPushV2'),
        [handle, elem],
        {'swap_memory': swapMemory}));
  }

  Output mutexLock(Output mutex) {
    return addOperation(new OperationDescription(
        'MutexLock', _scope.uniqueName('MutexLock'), [mutex], {}));
  }

  Output fFT2D(Output input) {
    return addOperation(new OperationDescription(
        'FFT2D', _scope.uniqueName('FFT2D'), [input], {}));
  }

  Output mutexV2({String container, String sharedName}) {
    return addOperation(new OperationDescription(
        'MutexV2',
        _scope.uniqueName('MutexV2'),
        [],
        {'container': container, 'shared_name': sharedName}));
  }

  Output nonMaxSuppressionV2(
      Output boxes, Output scores, Output maxOutputSize, Output iouThreshold) {
    return addOperation(new OperationDescription(
        'NonMaxSuppressionV2',
        _scope.uniqueName('NonMaxSuppressionV2'),
        [boxes, scores, maxOutputSize, iouThreshold],
        {}));
  }

  Output drawBoundingBoxes(Output images, Output boxes) {
    return addOperation(new OperationDescription('DrawBoundingBoxes',
        _scope.uniqueName('DrawBoundingBoxes'), [images, boxes], {}));
  }

  Output refEnter(Output data,
      {@required String frameName,
      bool isConstant: false,
      int parallelIterations: 10}) {
    return addOperation(
        new OperationDescription('RefEnter', _scope.uniqueName('RefEnter'), [
      data
    ], {
      'frame_name': frameName,
      'is_constant': isConstant,
      'parallel_iterations': parallelIterations
    }));
  }

  @Deprecated('DEPRECATED at GraphDef version 16: Use TensorArraySplitV3')
  Output tensorArraySplit(
      Output handle, Output value, Output lengths, Output flowIn) {
    return addOperation(new OperationDescription(
        'TensorArraySplit',
        _scope.uniqueName('TensorArraySplit'),
        [handle, value, lengths, flowIn],
        {}));
  }

  Output applyPowerSign(Output var_, Output m, Output lr, Output logbase,
      Output signDecay, Output beta, Output grad,
      {bool useLocking: false}) {
    return addOperation(new OperationDescription(
        'ApplyPowerSign',
        _scope.uniqueName('ApplyPowerSign'),
        [var_, m, lr, logbase, signDecay, beta, grad],
        {'use_locking': useLocking}));
  }

  Output initializeTableFromTextFileV2(Output tableHandle, Output filename,
      {@required int keyIndex,
      @required int valueIndex,
      int vocabSize: -1,
      String delimiter: '	'}) {
    return addOperation(new OperationDescription(
        'InitializeTableFromTextFileV2',
        _scope.uniqueName('InitializeTableFromTextFileV2'), [
      tableHandle,
      filename
    ], {
      'key_index': keyIndex,
      'value_index': valueIndex,
      'vocab_size': vocabSize,
      'delimiter': delimiter
    }));
  }

  Output exit(Output data) {
    return addOperation(new OperationDescription(
        'Exit', _scope.uniqueName('Exit'), [data], {}));
  }

  Output accumulatorSetGlobalStep(Output handle, Output newGlobalStep) {
    return addOperation(new OperationDescription(
        'AccumulatorSetGlobalStep',
        _scope.uniqueName('AccumulatorSetGlobalStep'),
        [handle, newGlobalStep],
        {}));
  }

  Output cumprod(Output x, Output axis,
      {bool exclusive: false,
      bool reverse: false,
      DataType tidx: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'Cumprod',
        _scope.uniqueName('Cumprod'),
        [x, axis],
        {'exclusive': exclusive, 'reverse': reverse, 'Tidx': tidx}));
  }

  Output refSelect(Output index, List<Output> inputs, {@required int n}) {
    return addOperation(new OperationDescription('RefSelect',
        _scope.uniqueName('RefSelect'), [index, inputs], {'N': n}));
  }

  Output reverseSequence(Output input, Output seqLengths,
      {@required int seqDim,
      int batchDim: 0,
      DataType tlen: DataType.DT_INT64}) {
    return addOperation(new OperationDescription(
        'ReverseSequence',
        _scope.uniqueName('ReverseSequence'),
        [input, seqLengths],
        {'seq_dim': seqDim, 'batch_dim': batchDim, 'Tlen': tlen}));
  }

  Output tensorArrayGatherV3(Output handle, Output indices, Output flowIn,
      {@required DataType dtype, List<int> elementShape}) {
    return addOperation(new OperationDescription(
        'TensorArrayGatherV3',
        _scope.uniqueName('TensorArrayGatherV3'),
        [handle, indices, flowIn],
        {'dtype': dtype, 'element_shape': elementShape}));
  }

  Output greater(Output x, Output y) {
    return addOperation(new OperationDescription(
        'Greater', _scope.uniqueName('Greater'), [x, y], {}));
  }

  Output readerNumWorkUnitsCompleted(Output readerHandle) {
    return addOperation(new OperationDescription('ReaderNumWorkUnitsCompleted',
        _scope.uniqueName('ReaderNumWorkUnitsCompleted'), [readerHandle], {}));
  }

  Output stringToHashBucketFast(Output input, {@required int numBuckets}) {
    return addOperation(new OperationDescription(
        'StringToHashBucketFast',
        _scope.uniqueName('StringToHashBucketFast'),
        [input],
        {'num_buckets': numBuckets}));
  }

  Output unbatchGrad(
      Output originalInput, Output batchIndex, Output grad, Output id,
      {String container, String sharedName}) {
    return addOperation(new OperationDescription(
        'UnbatchGrad',
        _scope.uniqueName('UnbatchGrad'),
        [originalInput, batchIndex, grad, id],
        {'container': container, 'shared_name': sharedName}));
  }

  Output argMin(Output input, Output dimension,
      {DataType tidx: DataType.DT_INT32,
      DataType outputType: DataType.DT_INT64}) {
    return addOperation(new OperationDescription(
        'ArgMin',
        _scope.uniqueName('ArgMin'),
        [input, dimension],
        {'Tidx': tidx, 'output_type': outputType}));
  }

  Output reciprocal(Output x) {
    return addOperation(new OperationDescription(
        'Reciprocal', _scope.uniqueName('Reciprocal'), [x], {}));
  }

  Output readerNumWorkUnitsCompletedV2(Output readerHandle) {
    return addOperation(new OperationDescription(
        'ReaderNumWorkUnitsCompletedV2',
        _scope.uniqueName('ReaderNumWorkUnitsCompletedV2'),
        [readerHandle],
        {}));
  }

  Output unsortedSegmentProd(Output data, Output segmentIds, Output numSegments,
      {@required DataType tindices, DataType tnumsegments: DataType.DT_INT32}) {
    return addOperation(new OperationDescription(
        'UnsortedSegmentProd',
        _scope.uniqueName('UnsortedSegmentProd'),
        [data, segmentIds, numSegments],
        {'Tindices': tindices, 'Tnumsegments': tnumsegments}));
  }

  Output inTopK(Output predictions, Output targets, {@required int k}) {
    return addOperation(new OperationDescription('InTopK',
        _scope.uniqueName('InTopK'), [predictions, targets], {'k': k}));
  }

  Output sub(Output x, Output y) {
    return addOperation(
        new OperationDescription('Sub', _scope.uniqueName('Sub'), [x, y], {}));
  }

  Output angle(Output input, {DataType tout: DataType.DT_FLOAT}) {
    return addOperation(new OperationDescription(
        'Angle', _scope.uniqueName('Angle'), [input], {'Tout': tout}));
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 20: Use TensorArrayScatterV3 with RangeOp')
  Output tensorArrayUnpack(Output handle, Output value, Output flowIn) {
    return addOperation(new OperationDescription('TensorArrayUnpack',
        _scope.uniqueName('TensorArrayUnpack'), [handle, value, flowIn], {}));
  }

  Output iteratorToStringHandle(Output resourceHandle) {
    return addOperation(new OperationDescription('IteratorToStringHandle',
        _scope.uniqueName('IteratorToStringHandle'), [resourceHandle], {}));
  }

  Output conjugateTranspose(Output x, Output perm,
      {DataType tperm: DataType.DT_INT32}) {
    return addOperation(new OperationDescription('ConjugateTranspose',
        _scope.uniqueName('ConjugateTranspose'), [x, perm], {'Tperm': tperm}));
  }

  Output destroyTemporaryVariable(Output ref, {@required String varName}) {
    return addOperation(new OperationDescription(
        'DestroyTemporaryVariable',
        _scope.uniqueName('DestroyTemporaryVariable'),
        [ref],
        {'var_name': varName}));
  }

  Output wholeFileReader({String container, String sharedName}) {
    return addOperation(new OperationDescription(
        'WholeFileReader',
        _scope.uniqueName('WholeFileReader'),
        [],
        {'container': container, 'shared_name': sharedName}));
  }
}
