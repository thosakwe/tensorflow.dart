// GENERATED CODE. DO NOT MODIFY BY HAND.

part of tensorflow;

class QuantizedBatchNormWithGlobalNormalizationOutput<T> {
  QuantizedBatchNormWithGlobalNormalizationOutput(
      this.op, this.result, this.resultMin, this.resultMax);

  Operation op;

  final Output<T> result;

  final Output<double> resultMin;

  final Output<double> resultMax;
}

class QuantizedReluXOutput<T> {
  QuantizedReluXOutput(
      this.op, this.activations, this.minActivations, this.maxActivations);

  Operation op;

  final Output<T> activations;

  final Output<double> minActivations;

  final Output<double> maxActivations;
}

class QuantizedReluOutput<T> {
  QuantizedReluOutput(
      this.op, this.activations, this.minActivations, this.maxActivations);

  Operation op;

  final Output<T> activations;

  final Output<double> minActivations;

  final Output<double> maxActivations;
}

class TopKV2Output<T> {
  TopKV2Output(this.op, this.values, this.indices);

  Operation op;

  final Output<T> values;

  final Output<int> indices;
}

class TopKOutput<T> {
  TopKOutput(this.op, this.values, this.indices);

  Operation op;

  final Output<T> values;

  final Output<int> indices;
}

class SparseSoftmaxCrossEntropyWithLogitsOutput<T> {
  SparseSoftmaxCrossEntropyWithLogitsOutput(this.op, this.loss, this.backprop);

  Operation op;

  final Output<T> loss;

  final Output<T> backprop;
}

class FusedBatchNormV2Output<T> {
  FusedBatchNormV2Output(this.op, this.y, this.batchMean, this.batchVariance,
      this.reserveSpace1, this.reserveSpace2);

  Operation op;

  final Output<T> y;

  final Output<T> batchMean;

  final Output<T> batchVariance;

  final Output<T> reserveSpace1;

  final Output<T> reserveSpace2;
}

class FusedBatchNormOutput<T> {
  FusedBatchNormOutput(this.op, this.y, this.batchMean, this.batchVariance,
      this.reserveSpace1, this.reserveSpace2);

  Operation op;

  final Output<T> y;

  final Output<T> batchMean;

  final Output<T> batchVariance;

  final Output<T> reserveSpace1;

  final Output<T> reserveSpace2;
}

class RequantizationRangeOutput<T> {
  RequantizationRangeOutput(this.op, this.outputMin, this.outputMax);

  Operation op;

  final Output<double> outputMin;

  final Output<double> outputMax;
}

class QuantizeDownAndShrinkRangeOutput<T> {
  QuantizeDownAndShrinkRangeOutput(
      this.op, this.output, this.outputMin, this.outputMax);

  Operation op;

  final Output<T> output;

  final Output<double> outputMin;

  final Output<double> outputMax;
}

class QuantizedMatMulOutput<T> {
  QuantizedMatMulOutput(this.op, this.out, this.minOut, this.maxOut);

  Operation op;

  final Output<T> out;

  final Output<double> minOut;

  final Output<double> maxOut;
}

class BatchNormWithGlobalNormalizationGradOutput<T> {
  BatchNormWithGlobalNormalizationGradOutput(
      this.op, this.dx, this.dm, this.dv, this.db, this.dg);

  Operation op;

  final Output<T> dx;

  final Output<T> dm;

  final Output<T> dv;

  final Output<T> db;

  final Output<T> dg;
}

class SampleDistortedBoundingBoxV2Output<T> {
  SampleDistortedBoundingBoxV2Output(
      this.op, this.begin, this.size, this.bboxes);

  Operation op;

  final Output<T> begin;

  final Output<T> size;

  final Output<double> bboxes;
}

class SparseReduceSumSparseOutput<T> {
  SparseReduceSumSparseOutput(
      this.op, this.outputIndices, this.outputValues, this.outputShape);

  Operation op;

  final Output<int> outputIndices;

  final Output<T> outputValues;

  final Output<int> outputShape;
}

class QuantizeV2Output<T> {
  QuantizeV2Output(this.op, this.output, this.outputMin, this.outputMax);

  Operation op;

  final Output<T> output;

  final Output<double> outputMin;

  final Output<double> outputMax;
}

class UniformCandidateSamplerOutput {
  UniformCandidateSamplerOutput(this.op, this.sampledCandidates,
      this.trueExpectedCount, this.sampledExpectedCount);

  Operation op;

  final Output<int> sampledCandidates;

  final Output<double> trueExpectedCount;

  final Output<double> sampledExpectedCount;
}

class RequantizeOutput<T> {
  RequantizeOutput(this.op, this.output, this.outputMin, this.outputMax);

  Operation op;

  final Output<T> output;

  final Output<double> outputMin;

  final Output<double> outputMax;
}

class QuantizedInstanceNormOutput<T> {
  QuantizedInstanceNormOutput(this.op, this.y, this.yMin, this.yMax);

  Operation op;

  final Output<T> y;

  final Output<double> yMin;

  final Output<double> yMax;
}

class QuantizedMaxPoolOutput<T> {
  QuantizedMaxPoolOutput(this.op, this.output, this.minOutput, this.maxOutput);

  Operation op;

  final Output<T> output;

  final Output<double> minOutput;

  final Output<double> maxOutput;
}

class TensorArrayV3Output {
  TensorArrayV3Output(this.op, this.handle, this.flow);

  Operation op;

  final Output handle;

  final Output<double> flow;
}

class BroadcastGradientArgsOutput<T> {
  BroadcastGradientArgsOutput(this.op, this.r0, this.r1);

  Operation op;

  final Output<T> r0;

  final Output<T> r1;
}

class QuantizedRelu6Output<T> {
  QuantizedRelu6Output(
      this.op, this.activations, this.minActivations, this.maxActivations);

  Operation op;

  final Output<T> activations;

  final Output<double> minActivations;

  final Output<double> maxActivations;
}

class UniqueWithCountsV2Output<T> {
  UniqueWithCountsV2Output(this.op, this.y, this.idx, this.count);

  Operation op;

  final Output<T> y;

  final Output<T> idx;

  final Output<T> count;
}

class UniqueV2Output<T> {
  UniqueV2Output(this.op, this.y, this.idx);

  Operation op;

  final Output<T> y;

  final Output<T> idx;
}

class UniqueOutput<T> {
  UniqueOutput(this.op, this.y, this.idx);

  Operation op;

  final Output<T> y;

  final Output<T> idx;
}

class FakeQuantWithMinMaxVarsGradientOutput {
  FakeQuantWithMinMaxVarsGradientOutput(this.op, this.backpropsWrtInput,
      this.backpropWrtMin, this.backpropWrtMax);

  Operation op;

  final Output<double> backpropsWrtInput;

  final Output<double> backpropWrtMin;

  final Output<double> backpropWrtMax;
}

class FakeQuantWithMinMaxVarsPerChannelGradientOutput {
  FakeQuantWithMinMaxVarsPerChannelGradientOutput(this.op,
      this.backpropsWrtInput, this.backpropWrtMin, this.backpropWrtMax);

  Operation op;

  final Output<double> backpropsWrtInput;

  final Output<double> backpropWrtMin;

  final Output<double> backpropWrtMax;
}

class ParseSingleExampleOutput<T> {
  ParseSingleExampleOutput(this.op, this.sparseIndices, this.sparseValues,
      this.sparseShapes, this.denseValues);

  Operation op;

  final Output<int> sparseIndices;

  final Output<T> sparseValues;

  final Output<int> sparseShapes;

  final Output<T> denseValues;
}

class SkipgramOutput {
  SkipgramOutput(this.op, this.vocabWord, this.vocabFreq, this.wordsPerEpoch,
      this.currentEpoch, this.totalWordsProcessed, this.examples, this.labels);

  Operation op;

  final Output<String> vocabWord;

  final Output<int> vocabFreq;

  final Output<int> wordsPerEpoch;

  final Output<int> currentEpoch;

  final Output<int> totalWordsProcessed;

  final Output<int> examples;

  final Output<int> labels;
}

class UniqueWithCountsOutput<T> {
  UniqueWithCountsOutput(this.op, this.y, this.idx, this.count);

  Operation op;

  final Output<T> y;

  final Output<T> idx;

  final Output<T> count;
}

class BarrierTakeManyOutput<T> {
  BarrierTakeManyOutput(this.op, this.indices, this.keys, this.values);

  Operation op;

  final Output<int> indices;

  final Output<String> keys;

  final Output<T> values;
}

class TensorArrayConcatV2Output<T> {
  TensorArrayConcatV2Output(this.op, this.value, this.lengths);

  Operation op;

  final Output<T> value;

  final Output<int> lengths;
}

class BatchOutput<T> {
  BatchOutput(this.op, this.batchedTensors, this.batchIndex, this.id);

  Operation op;

  final Output<T> batchedTensors;

  final Output<int> batchIndex;

  final Output<int> id;
}

class QuantizedAddOutput<T> {
  QuantizedAddOutput(this.op, this.z, this.minZ, this.maxZ);

  Operation op;

  final Output<T> z;

  final Output<double> minZ;

  final Output<double> maxZ;
}

class QuantizedResizeBilinearOutput<T> {
  QuantizedResizeBilinearOutput(
      this.op, this.resizedImages, this.outMin, this.outMax);

  Operation op;

  final Output<T> resizedImages;

  final Output<double> outMin;

  final Output<double> outMax;
}

class SparseFillEmptyRowsGradOutput<T> {
  SparseFillEmptyRowsGradOutput(this.op, this.dValues, this.dDefaultValue);

  Operation op;

  final Output<T> dValues;

  final Output<T> dDefaultValue;
}

class QuantizedConv2DOutput<T> {
  QuantizedConv2DOutput(this.op, this.output, this.minOutput, this.maxOutput);

  Operation op;

  final Output<T> output;

  final Output<double> minOutput;

  final Output<double> maxOutput;
}

class SparseFillEmptyRowsOutput<T> {
  SparseFillEmptyRowsOutput(this.op, this.outputIndices, this.outputValues,
      this.emptyRowIndicator, this.reverseIndexMap);

  Operation op;

  final Output<int> outputIndices;

  final Output<T> outputValues;

  final Output<bool> emptyRowIndicator;

  final Output<int> reverseIndexMap;
}

class SparseSparseMaximumOutput<T> {
  SparseSparseMaximumOutput(this.op, this.outputIndices, this.outputValues);

  Operation op;

  final Output<int> outputIndices;

  final Output<T> outputValues;
}

class SparseReorderOutput<T> {
  SparseReorderOutput(this.op, this.outputIndices, this.outputValues);

  Operation op;

  final Output<int> outputIndices;

  final Output<T> outputValues;
}

class SparseSplitOutput<T> {
  SparseSplitOutput(
      this.op, this.outputIndices, this.outputValues, this.outputShape);

  Operation op;

  final Output<int> outputIndices;

  final Output<T> outputValues;

  final Output<int> outputShape;
}

class DenseToSparseSetOperationOutput<T> {
  DenseToSparseSetOperationOutput(
      this.op, this.resultIndices, this.resultValues, this.resultShape);

  Operation op;

  final Output<int> resultIndices;

  final Output<T> resultValues;

  final Output<int> resultShape;
}

class QuantizedBiasAddOutput<T> {
  QuantizedBiasAddOutput(this.op, this.output, this.minOut, this.maxOut);

  Operation op;

  final Output<T> output;

  final Output<double> minOut;

  final Output<double> maxOut;
}

class FusedBatchNormGradV2Output<T> {
  FusedBatchNormGradV2Output(this.op, this.xBackprop, this.scaleBackprop,
      this.offsetBackprop, this.reserveSpace3, this.reserveSpace4);

  Operation op;

  final Output<T> xBackprop;

  final Output<T> scaleBackprop;

  final Output<T> offsetBackprop;

  final Output<T> reserveSpace3;

  final Output<T> reserveSpace4;
}

class CTCBeamSearchDecoderOutput {
  CTCBeamSearchDecoderOutput(this.op, this.decodedIndices, this.decodedValues,
      this.decodedShape, this.logProbability);

  Operation op;

  final Output<int> decodedIndices;

  final Output<int> decodedValues;

  final Output<int> decodedShape;

  final Output<double> logProbability;
}

class SparseSparseMinimumOutput<T> {
  SparseSparseMinimumOutput(this.op, this.outputIndices, this.outputValues);

  Operation op;

  final Output<int> outputIndices;

  final Output<T> outputValues;
}

class SparseConcatOutput<T> {
  SparseConcatOutput(
      this.op, this.outputIndices, this.outputValues, this.outputShape);

  Operation op;

  final Output<int> outputIndices;

  final Output<T> outputValues;

  final Output<int> outputShape;
}

class LookupTableExportV2Output<T> {
  LookupTableExportV2Output(this.op, this.keys, this.values);

  Operation op;

  final Output<T> keys;

  final Output<T> values;
}

class ParseSingleSequenceExampleOutput<T> {
  ParseSingleSequenceExampleOutput(
      this.op,
      this.contextSparseIndices,
      this.contextSparseValues,
      this.contextSparseShapes,
      this.contextDenseValues,
      this.featureListSparseIndices,
      this.featureListSparseValues,
      this.featureListSparseShapes,
      this.featureListDenseValues);

  Operation op;

  final Output<int> contextSparseIndices;

  final Output<T> contextSparseValues;

  final Output<int> contextSparseShapes;

  final Output<T> contextDenseValues;

  final Output<int> featureListSparseIndices;

  final Output<T> featureListSparseValues;

  final Output<int> featureListSparseShapes;

  final Output<T> featureListDenseValues;
}

class LookupTableExportOutput<T> {
  LookupTableExportOutput(this.op, this.keys, this.values);

  Operation op;

  final Output<T> keys;

  final Output<T> values;
}

class BatchSvdOutput<T> {
  BatchSvdOutput(this.op, this.s, this.u, this.v);

  Operation op;

  final Output<T> s;

  final Output<T> u;

  final Output<T> v;
}

class SvdOutput<T> {
  SvdOutput(this.op, this.s, this.u, this.v);

  Operation op;

  final Output<T> s;

  final Output<T> u;

  final Output<T> v;
}

class QrOutput<T> {
  QrOutput(this.op, this.q, this.r);

  Operation op;

  final Output<T> q;

  final Output<T> r;
}

class SparseCrossOutput<T> {
  SparseCrossOutput(
      this.op, this.outputIndices, this.outputValues, this.outputShape);

  Operation op;

  final Output<int> outputIndices;

  final Output<T> outputValues;

  final Output<int> outputShape;
}

class SelfAdjointEigV2Output<T> {
  SelfAdjointEigV2Output(this.op, this.e, this.v);

  Operation op;

  final Output<T> e;

  final Output<T> v;
}

class QuantizedConcatOutput<T> {
  QuantizedConcatOutput(this.op, this.output, this.outputMin, this.outputMax);

  Operation op;

  final Output<T> output;

  final Output<double> outputMin;

  final Output<double> outputMax;
}

class SparseSliceOutput<T> {
  SparseSliceOutput(
      this.op, this.outputIndices, this.outputValues, this.outputShape);

  Operation op;

  final Output<int> outputIndices;

  final Output<T> outputValues;

  final Output<int> outputShape;
}

class ReaderReadOutput {
  ReaderReadOutput(this.op, this.key, this.value);

  Operation op;

  final Output<String> key;

  final Output<String> value;
}

class SparseAddGradOutput<T> {
  SparseAddGradOutput(this.op, this.aValGrad, this.bValGrad);

  Operation op;

  final Output<T> aValGrad;

  final Output<T> bValGrad;
}

class SampleDistortedBoundingBoxOutput<T> {
  SampleDistortedBoundingBoxOutput(this.op, this.begin, this.size, this.bboxes);

  Operation op;

  final Output<T> begin;

  final Output<T> size;

  final Output<double> bboxes;
}

class ListDiffOutput<T> {
  ListDiffOutput(this.op, this.out, this.idx);

  Operation op;

  final Output<T> out;

  final Output<T> idx;
}

class FusedBatchNormGradOutput<T> {
  FusedBatchNormGradOutput(this.op, this.xBackprop, this.scaleBackprop,
      this.offsetBackprop, this.reserveSpace3, this.reserveSpace4);

  Operation op;

  final Output<T> xBackprop;

  final Output<T> scaleBackprop;

  final Output<T> offsetBackprop;

  final Output<T> reserveSpace3;

  final Output<T> reserveSpace4;
}

class TensorArrayConcatOutput<T> {
  TensorArrayConcatOutput(this.op, this.value, this.lengths);

  Operation op;

  final Output<T> value;

  final Output<int> lengths;
}

class StringSplitOutput {
  StringSplitOutput(this.op, this.indices, this.values, this.shape);

  Operation op;

  final Output<int> indices;

  final Output<String> values;

  final Output<int> shape;
}

class ThreadUnsafeUnigramCandidateSamplerOutput {
  ThreadUnsafeUnigramCandidateSamplerOutput(this.op, this.sampledCandidates,
      this.trueExpectedCount, this.sampledExpectedCount);

  Operation op;

  final Output<int> sampledCandidates;

  final Output<double> trueExpectedCount;

  final Output<double> sampledExpectedCount;
}

class SwitchOutput<T> {
  SwitchOutput(this.op, this.outputFalse, this.outputTrue);

  Operation op;

  final Output<T> outputFalse;

  final Output<T> outputTrue;
}

class CTCLossOutput {
  CTCLossOutput(this.op, this.loss, this.gradient);

  Operation op;

  final Output<double> loss;

  final Output<double> gradient;
}

class SparseReduceMaxSparseOutput<T> {
  SparseReduceMaxSparseOutput(
      this.op, this.outputIndices, this.outputValues, this.outputShape);

  Operation op;

  final Output<int> outputIndices;

  final Output<T> outputValues;

  final Output<int> outputShape;
}

class QuantizedMulOutput<T> {
  QuantizedMulOutput(this.op, this.z, this.minZ, this.maxZ);

  Operation op;

  final Output<T> z;

  final Output<double> minZ;

  final Output<double> maxZ;
}

class TensorListPopBackOutput<T> {
  TensorListPopBackOutput(this.op, this.outputHandle, this.tensor);

  Operation op;

  final Output outputHandle;

  final Output<T> tensor;
}

class ReaderReadUpToV2Output {
  ReaderReadUpToV2Output(this.op, this.keys, this.values);

  Operation op;

  final Output<String> keys;

  final Output<String> values;
}

class ReaderReadUpToOutput {
  ReaderReadUpToOutput(this.op, this.keys, this.values);

  Operation op;

  final Output<String> keys;

  final Output<String> values;
}

class FractionalAvgPoolOutput<T> {
  FractionalAvgPoolOutput(
      this.op, this.output, this.rowPoolingSequence, this.colPoolingSequence);

  Operation op;

  final Output<T> output;

  final Output<int> rowPoolingSequence;

  final Output<int> colPoolingSequence;
}

class RefMergeOutput<T> {
  RefMergeOutput(this.op, this.output, this.valueIndex);

  Operation op;

  final Output<T> output;

  final Output<int> valueIndex;
}

class SparseToSparseSetOperationOutput<T> {
  SparseToSparseSetOperationOutput(
      this.op, this.resultIndices, this.resultValues, this.resultShape);

  Operation op;

  final Output<int> resultIndices;

  final Output<T> resultValues;

  final Output<int> resultShape;
}

class DeserializeSparseOutput<T> {
  DeserializeSparseOutput(
      this.op, this.sparseIndices, this.sparseValues, this.sparseShape);

  Operation op;

  final Output<int> sparseIndices;

  final Output<T> sparseValues;

  final Output<int> sparseShape;
}

class DenseToDenseSetOperationOutput<T> {
  DenseToDenseSetOperationOutput(
      this.op, this.resultIndices, this.resultValues, this.resultShape);

  Operation op;

  final Output<int> resultIndices;

  final Output<T> resultValues;

  final Output<int> resultShape;
}

class SoftmaxCrossEntropyWithLogitsOutput<T> {
  SoftmaxCrossEntropyWithLogitsOutput(this.op, this.loss, this.backprop);

  Operation op;

  final Output<T> loss;

  final Output<T> backprop;
}

class MapUnstageNoKeyOutput<T> {
  MapUnstageNoKeyOutput(this.op, this.key, this.values);

  Operation op;

  final Output<int> key;

  final Output<T> values;
}

class ParseExampleOutput<T> {
  ParseExampleOutput(this.op, this.sparseIndices, this.sparseValues,
      this.sparseShapes, this.denseValues);

  Operation op;

  final Output<int> sparseIndices;

  final Output<T> sparseValues;

  final Output<int> sparseShapes;

  final Output<T> denseValues;
}

class CTCGreedyDecoderOutput {
  CTCGreedyDecoderOutput(this.op, this.decodedIndices, this.decodedValues,
      this.decodedShape, this.logProbability);

  Operation op;

  final Output<int> decodedIndices;

  final Output<int> decodedValues;

  final Output<int> decodedShape;

  final Output<double> logProbability;
}

class QuantizedReshapeOutput<T> {
  QuantizedReshapeOutput(this.op, this.output, this.outputMin, this.outputMax);

  Operation op;

  final Output<T> output;

  final Output<double> outputMin;

  final Output<double> outputMax;
}

class ComputeAccidentalHitsOutput {
  ComputeAccidentalHitsOutput(this.op, this.indices, this.ids, this.weights);

  Operation op;

  final Output<int> indices;

  final Output<int> ids;

  final Output<double> weights;
}

class BatchSelfAdjointEigV2Output<T> {
  BatchSelfAdjointEigV2Output(this.op, this.e, this.v);

  Operation op;

  final Output<T> e;

  final Output<T> v;
}

class TensorArrayConcatV3Output<T> {
  TensorArrayConcatV3Output(this.op, this.value, this.lengths);

  Operation op;

  final Output<T> value;

  final Output<int> lengths;
}

class TensorArrayGradV3Output {
  TensorArrayGradV3Output(this.op, this.gradHandle, this.flowOut);

  Operation op;

  final Output gradHandle;

  final Output<double> flowOut;
}

class RefSwitchOutput<T> {
  RefSwitchOutput(this.op, this.outputFalse, this.outputTrue);

  Operation op;

  final Output<T> outputFalse;

  final Output<T> outputTrue;
}

class LogUniformCandidateSamplerOutput {
  LogUniformCandidateSamplerOutput(this.op, this.sampledCandidates,
      this.trueExpectedCount, this.sampledExpectedCount);

  Operation op;

  final Output<int> sampledCandidates;

  final Output<double> trueExpectedCount;

  final Output<double> sampledExpectedCount;
}

class SparseReshapeOutput {
  SparseReshapeOutput(this.op, this.outputIndices, this.outputShape);

  Operation op;

  final Output<int> outputIndices;

  final Output<int> outputShape;
}

class SparseAddOutput<T> {
  SparseAddOutput(this.op, this.sumIndices, this.sumValues, this.sumShape);

  Operation op;

  final Output<int> sumIndices;

  final Output<T> sumValues;

  final Output<int> sumShape;
}

class DeserializeManySparseOutput<T> {
  DeserializeManySparseOutput(
      this.op, this.sparseIndices, this.sparseValues, this.sparseShape);

  Operation op;

  final Output<int> sparseIndices;

  final Output<T> sparseValues;

  final Output<int> sparseShape;
}

class OrderedMapUnstageNoKeyOutput<T> {
  OrderedMapUnstageNoKeyOutput(this.op, this.key, this.values);

  Operation op;

  final Output<int> key;

  final Output<T> values;
}

class MergeOutput<T> {
  MergeOutput(this.op, this.output, this.valueIndex);

  Operation op;

  final Output<T> output;

  final Output<int> valueIndex;
}

class FixedUnigramCandidateSamplerOutput {
  FixedUnigramCandidateSamplerOutput(this.op, this.sampledCandidates,
      this.trueExpectedCount, this.sampledExpectedCount);

  Operation op;

  final Output<int> sampledCandidates;

  final Output<double> trueExpectedCount;

  final Output<double> sampledExpectedCount;
}

class LearnedUnigramCandidateSamplerOutput {
  LearnedUnigramCandidateSamplerOutput(this.op, this.sampledCandidates,
      this.trueExpectedCount, this.sampledExpectedCount);

  Operation op;

  final Output<int> sampledCandidates;

  final Output<double> trueExpectedCount;

  final Output<double> sampledExpectedCount;
}

class AllCandidateSamplerOutput {
  AllCandidateSamplerOutput(this.op, this.sampledCandidates,
      this.trueExpectedCount, this.sampledExpectedCount);

  Operation op;

  final Output<int> sampledCandidates;

  final Output<double> trueExpectedCount;

  final Output<double> sampledExpectedCount;
}

class LogMatrixDeterminantOutput<T> {
  LogMatrixDeterminantOutput(this.op, this.sign, this.logAbsDeterminant);

  Operation op;

  final Output<T> sign;

  final Output<T> logAbsDeterminant;
}

class SdcaOptimizerOutput {
  SdcaOptimizerOutput(this.op, this.outExampleStateData,
      this.outDeltaSparseWeights, this.outDeltaDenseWeights);

  Operation op;

  final Output<double> outExampleStateData;

  final Output<double> outDeltaSparseWeights;

  final Output<double> outDeltaDenseWeights;
}

class MaxPoolWithArgmaxOutput<T> {
  MaxPoolWithArgmaxOutput(this.op, this.output, this.argmax);

  Operation op;

  final Output<T> output;

  final Output<T> argmax;
}

class QuantizedAvgPoolOutput<T> {
  QuantizedAvgPoolOutput(this.op, this.output, this.minOutput, this.maxOutput);

  Operation op;

  final Output<T> output;

  final Output<double> minOutput;

  final Output<double> maxOutput;
}

class ReaderReadV2Output {
  ReaderReadV2Output(this.op, this.key, this.value);

  Operation op;

  final Output<String> key;

  final Output<String> value;
}

class DecodeWavOutput {
  DecodeWavOutput(this.op, this.audio, this.sampleRate);

  Operation op;

  final Output<double> audio;

  final Output<int> sampleRate;
}

class FractionalMaxPoolOutput<T> {
  FractionalMaxPoolOutput(
      this.op, this.output, this.rowPoolingSequence, this.colPoolingSequence);

  Operation op;

  final Output<T> output;

  final Output<int> rowPoolingSequence;

  final Output<int> colPoolingSequence;
}

class GenerateVocabRemappingOutput {
  GenerateVocabRemappingOutput(this.op, this.remapping, this.numPresent);

  Operation op;

  final Output<int> remapping;

  final Output<int> numPresent;
}

class SparseAccumulatorTakeGradientOutput<T> {
  SparseAccumulatorTakeGradientOutput(
      this.op, this.indices, this.values, this.shape);

  Operation op;

  final Output<int> indices;

  final Output<T> values;

  final Output<int> shape;
}

class TakeManySparseFromTensorsMapOutput<T> {
  TakeManySparseFromTensorsMapOutput(
      this.op, this.sparseIndices, this.sparseValues, this.sparseShape);

  Operation op;

  final Output<int> sparseIndices;

  final Output<T> sparseValues;

  final Output<int> sparseShape;
}

class Graph extends _Graph {
  Graph() : super();

  Graph._fromPointer(int _pointer) : super._fromPointer(_pointer);

  /// Import a serialized representation of a TensorFlow graph.
  static Graph importGraphDef(GraphDef graphDef, {String prefix}) {
    return _Graph.importGraphDef(graphDef, prefix: prefix);
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
          {DataType tinput,
          DataType outType,
          double varianceEpsilon,
          bool scaleAfterNormalization}) {
    var op$ = newOperation('QuantizedBatchNormWithGlobalNormalization',
        _scope.uniqueName('QuantizedBatchNormWithGlobalNormalization'));
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
        result$, result$[0], result$[1], result$[2]);
  }

  QuantizedReluXOutput quantizedReluX<T>(
      Output<T> features,
      Output<double> maxValue,
      Output<double> minFeatures,
      Output<double> maxFeatures,
      {DataType tinput,
      DataType outType: DataType.DT_QUINT8}) {
    var op$ =
        newOperation('QuantizedReluX', _scope.uniqueName('QuantizedReluX'));
    op$.addInput(features);
    op$.addInput(maxValue);
    op$.addInput(minFeatures);
    op$.addInput(maxFeatures);
    op$.setAttrType('Tinput', tinput);
    op$.setAttrType('out_type', outType);
    var result$ = op$.finish();
    return new QuantizedReluXOutput<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  QuantizedReluOutput quantizedRelu<T>(Output<T> features,
      Output<double> minFeatures, Output<double> maxFeatures,
      {DataType tinput, DataType outType: DataType.DT_QUINT8}) {
    var op$ = newOperation('QuantizedRelu', _scope.uniqueName('QuantizedRelu'));
    op$.addInput(features);
    op$.addInput(minFeatures);
    op$.addInput(maxFeatures);
    op$.setAttrType('Tinput', tinput);
    op$.setAttrType('out_type', outType);
    var result$ = op$.finish();
    return new QuantizedReluOutput<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  Output<T> fractionalAvgPoolGrad<T>(
      Output<int> origInputTensorShape,
      Output<T> outBackprop,
      Output<int> rowPoolingSequence,
      Output<int> colPoolingSequence,
      {bool overlapping: false}) {
    var op$ = newOperation(
        'FractionalAvgPoolGrad', _scope.uniqueName('FractionalAvgPoolGrad'));
    op$.addInput(origInputTensorShape);
    op$.addInput(outBackprop);
    op$.addInput(rowPoolingSequence);
    op$.addInput(colPoolingSequence);
    op$.setAttrBool('overlapping', overlapping);
    return op$.finish()[0];
  }

  Output<T> nthElement<T>(Output<T> input, Output<int> n,
      {bool reverse: false}) {
    var op$ = newOperation('NthElement', _scope.uniqueName('NthElement'));
    op$.addInput(input);
    op$.addInput(n);
    op$.setAttrBool('reverse', reverse);
    return op$.finish()[0];
  }

  TopKV2Output topKV2<T>(Output<T> input, Output<int> k, {bool sorted: true}) {
    var op$ = newOperation('TopKV2', _scope.uniqueName('TopKV2'));
    op$.addInput(input);
    op$.addInput(k);
    op$.setAttrBool('sorted', sorted);
    var result$ = op$.finish();
    return new TopKV2Output<T>(result$, result$[0], result$[1]);
  }

  @Deprecated('DEPRECATED at GraphDef version 7: Use TopKV2 instead')
  TopKOutput topK<T>(Output<T> input, {int k, bool sorted: true}) {
    var op$ = newOperation('TopK', _scope.uniqueName('TopK'));
    op$.addInput(input);
    op$.setAttrInt('k', k);
    op$.setAttrBool('sorted', sorted);
    var result$ = op$.finish();
    return new TopKOutput<T>(result$, result$[0], result$[1]);
  }

  Output<bool> inTopKV2<T>(
      Output<double> predictions, Output<T> targets, Output<T> k) {
    var op$ = newOperation('InTopKV2', _scope.uniqueName('InTopKV2'));
    op$.addInput(predictions);
    op$.addInput(targets);
    op$.addInput(k);
    return op$.finish()[0];
  }

  SparseSoftmaxCrossEntropyWithLogitsOutput
      sparseSoftmaxCrossEntropyWithLogits<T>(
          Output<T> features, Output<T> labels,
          {DataType tlabels: DataType.DT_INT64}) {
    var op$ = newOperation('SparseSoftmaxCrossEntropyWithLogits',
        _scope.uniqueName('SparseSoftmaxCrossEntropyWithLogits'));
    op$.addInput(features);
    op$.addInput(labels);
    op$.setAttrType('Tlabels', tlabels);
    var result$ = op$.finish();
    return new SparseSoftmaxCrossEntropyWithLogitsOutput<T>(
        result$, result$[0], result$[1]);
  }

  Output<T> logSoftmax<T>(Output<T> logits) {
    var op$ = newOperation('LogSoftmax', _scope.uniqueName('LogSoftmax'));
    op$.addInput(logits);
    return op$.finish()[0];
  }

  Output<T> softmax<T>(Output<T> logits) {
    var op$ = newOperation('Softmax', _scope.uniqueName('Softmax'));
    op$.addInput(logits);
    return op$.finish()[0];
  }

  Output<T> softsignGrad<T>(Output<T> gradients, Output<T> features) {
    var op$ = newOperation('SoftsignGrad', _scope.uniqueName('SoftsignGrad'));
    op$.addInput(gradients);
    op$.addInput(features);
    return op$.finish()[0];
  }

  Output<T> softplusGrad<T>(Output<T> gradients, Output<T> features) {
    var op$ = newOperation('SoftplusGrad', _scope.uniqueName('SoftplusGrad'));
    op$.addInput(gradients);
    op$.addInput(features);
    return op$.finish()[0];
  }

  Output<T> seluGrad<T>(Output<T> gradients, Output<T> outputs) {
    var op$ = newOperation('SeluGrad', _scope.uniqueName('SeluGrad'));
    op$.addInput(gradients);
    op$.addInput(outputs);
    return op$.finish()[0];
  }

  Output<T> selu<T>(Output<T> features) {
    var op$ = newOperation('Selu', _scope.uniqueName('Selu'));
    op$.addInput(features);
    return op$.finish()[0];
  }

  Output<T> eluGrad<T>(Output<T> gradients, Output<T> outputs) {
    var op$ = newOperation('EluGrad', _scope.uniqueName('EluGrad'));
    op$.addInput(gradients);
    op$.addInput(outputs);
    return op$.finish()[0];
  }

  Output<T> relu6Grad<T>(Output<T> gradients, Output<T> features) {
    var op$ = newOperation('Relu6Grad', _scope.uniqueName('Relu6Grad'));
    op$.addInput(gradients);
    op$.addInput(features);
    return op$.finish()[0];
  }

  Output<T> reluGrad<T>(Output<T> gradients, Output<T> features) {
    var op$ = newOperation('ReluGrad', _scope.uniqueName('ReluGrad'));
    op$.addInput(gradients);
    op$.addInput(features);
    return op$.finish()[0];
  }

  Output<bool> all<T>(Output<bool> input, Output<T> reductionIndices,
      {bool keepDims: false, DataType tidx: DataType.DT_INT32}) {
    var op$ = newOperation('All', _scope.uniqueName('All'));
    op$.addInput(input);
    op$.addInput(reductionIndices);
    op$.setAttrBool('keep_dims', keepDims);
    op$.setAttrType('Tidx', tidx);
    return op$.finish()[0];
  }

  Output<T> dilation2DBackpropInput<T>(
      Output<T> input, Output<T> filter, Output<T> outBackprop,
      {List<int> strides, List<int> rates, String padding}) {
    var op$ = newOperation('Dilation2DBackpropInput',
        _scope.uniqueName('Dilation2DBackpropInput'));
    op$.addInput(input);
    op$.addInput(filter);
    op$.addInput(outBackprop);
    op$.setAttrIntList('strides', strides);
    op$.setAttrIntList('rates', rates);
    op$.setAttrString('padding', padding);
    return op$.finish()[0];
  }

  Output<T> maxPoolGradGradV2<T>(Output<T> origInput, Output<T> origOutput,
      Output<T> grad, Output<int> ksize, Output<int> strides,
      {String padding, String dataFormat: 'NHWC'}) {
    var op$ = newOperation(
        'MaxPoolGradGradV2', _scope.uniqueName('MaxPoolGradGradV2'));
    op$.addInput(origInput);
    op$.addInput(origOutput);
    op$.addInput(grad);
    op$.addInput(ksize);
    op$.addInput(strides);
    op$.setAttrString('padding', padding);
    op$.setAttrString('data_format', dataFormat);
    return op$.finish()[0];
  }

  Output<T> maxPoolGradGrad<T>(
      Output<T> origInput, Output<T> origOutput, Output<T> grad,
      {List<int> ksize,
      List<int> strides,
      String padding,
      String dataFormat: 'NHWC'}) {
    var op$ =
        newOperation('MaxPoolGradGrad', _scope.uniqueName('MaxPoolGradGrad'));
    op$.addInput(origInput);
    op$.addInput(origOutput);
    op$.addInput(grad);
    op$.setAttrIntList('ksize', ksize);
    op$.setAttrIntList('strides', strides);
    op$.setAttrString('padding', padding);
    op$.setAttrString('data_format', dataFormat);
    return op$.finish()[0];
  }

  Output<T> maxPoolGradV2<T>(Output<T> origInput, Output<T> origOutput,
      Output<T> grad, Output<int> ksize, Output<int> strides,
      {String padding, String dataFormat: 'NHWC'}) {
    var op$ = newOperation('MaxPoolGradV2', _scope.uniqueName('MaxPoolGradV2'));
    op$.addInput(origInput);
    op$.addInput(origOutput);
    op$.addInput(grad);
    op$.addInput(ksize);
    op$.addInput(strides);
    op$.setAttrString('padding', padding);
    op$.setAttrString('data_format', dataFormat);
    return op$.finish()[0];
  }

  Output<T> roll<T>(Output<T> input, Output<T> shift, Output<T> axis,
      {DataType tshift, DataType taxis}) {
    var op$ = newOperation('Roll', _scope.uniqueName('Roll'));
    op$.addInput(input);
    op$.addInput(shift);
    op$.addInput(axis);
    op$.setAttrType('Tshift', tshift);
    op$.setAttrType('Taxis', taxis);
    return op$.finish()[0];
  }

  Output<T> maxPoolGrad<T>(
      Output<T> origInput, Output<T> origOutput, Output<T> grad,
      {List<int> ksize,
      List<int> strides,
      String padding,
      String dataFormat: 'NHWC'}) {
    var op$ = newOperation('MaxPoolGrad', _scope.uniqueName('MaxPoolGrad'));
    op$.addInput(origInput);
    op$.addInput(origOutput);
    op$.addInput(grad);
    op$.setAttrIntList('ksize', ksize);
    op$.setAttrIntList('strides', strides);
    op$.setAttrString('padding', padding);
    op$.setAttrString('data_format', dataFormat);
    return op$.finish()[0];
  }

  Output<T> lRNGrad<T>(
      Output<T> inputGrads, Output<T> inputImage, Output<T> outputImage,
      {int depthRadius: 5,
      double bias: 1.0,
      double alpha: 1.0,
      double beta: 0.5}) {
    var op$ = newOperation('LRNGrad', _scope.uniqueName('LRNGrad'));
    op$.addInput(inputGrads);
    op$.addInput(inputImage);
    op$.addInput(outputImage);
    op$.setAttrInt('depth_radius', depthRadius);
    op$.setAttrFloat('bias', bias);
    op$.setAttrFloat('alpha', alpha);
    op$.setAttrFloat('beta', beta);
    return op$.finish()[0];
  }

  Output<T> maxPool3DGradGrad<T>(
      Output<T> origInput, Output<T> origOutput, Output<T> grad,
      {List<int> ksize,
      List<int> strides,
      String padding,
      String dataFormat: 'NDHWC'}) {
    var op$ = newOperation(
        'MaxPool3DGradGrad', _scope.uniqueName('MaxPool3DGradGrad'));
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
  Output<T> conv3DBackpropFilter<T>(
      Output<T> input, Output<T> filter, Output<T> outBackprop,
      {List<int> strides, String padding}) {
    var op$ = newOperation(
        'Conv3DBackpropFilter', _scope.uniqueName('Conv3DBackpropFilter'));
    op$.addInput(input);
    op$.addInput(filter);
    op$.addInput(outBackprop);
    op$.setAttrIntList('strides', strides);
    op$.setAttrString('padding', padding);
    return op$.finish()[0];
  }

  Output<T> conv3D<T>(Output<T> input, Output<T> filter,
      {List<int> strides,
      String padding,
      String dataFormat: 'NDHWC',
      List<int> dilations}) {
    var op$ = newOperation('Conv3D', _scope.uniqueName('Conv3D'));
    op$.addInput(input);
    op$.addInput(filter);
    op$.setAttrIntList('strides', strides);
    op$.setAttrString('padding', padding);
    op$.setAttrString('data_format', dataFormat);
    op$.setAttrIntList('dilations', dilations);
    return op$.finish()[0];
  }

  Output<double> cropAndResize<T>(Output<T> image, Output<double> boxes,
      Output<int> boxInd, Output<int> cropSize,
      {String method: 'bilinear', double extrapolationValue: 0.0}) {
    var op$ = newOperation('CropAndResize', _scope.uniqueName('CropAndResize'));
    op$.addInput(image);
    op$.addInput(boxes);
    op$.addInput(boxInd);
    op$.addInput(cropSize);
    op$.setAttrString('method', method);
    op$.setAttrFloat('extrapolation_value', extrapolationValue);
    return op$.finish()[0];
  }

  Output<T> depthwiseConv2dNativeBackpropFilter<T>(
      Output<T> input, Output<int> filterSizes, Output<T> outBackprop,
      {List<int> strides,
      String padding,
      String dataFormat: 'NHWC',
      List<int> dilations}) {
    var op$ = newOperation('DepthwiseConv2dNativeBackpropFilter',
        _scope.uniqueName('DepthwiseConv2dNativeBackpropFilter'));
    op$.addInput(input);
    op$.addInput(filterSizes);
    op$.addInput(outBackprop);
    op$.setAttrIntList('strides', strides);
    op$.setAttrString('padding', padding);
    op$.setAttrString('data_format', dataFormat);
    op$.setAttrIntList('dilations', dilations);
    return op$.finish()[0];
  }

  Output<T> expm1<T>(Output<T> x) {
    var op$ = newOperation('Expm1', _scope.uniqueName('Expm1'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<T> conv2DBackpropInput<T>(
      Output<int> inputSizes, Output<T> filter, Output<T> outBackprop,
      {List<int> strides,
      bool useCudnnOnGpu: true,
      String padding,
      String dataFormat: 'NHWC',
      List<int> dilations}) {
    var op$ = newOperation(
        'Conv2DBackpropInput', _scope.uniqueName('Conv2DBackpropInput'));
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

  Output<T> conv2D<T>(Output<T> input, Output<T> filter,
      {List<int> strides,
      bool useCudnnOnGpu: true,
      String padding,
      String dataFormat: 'NHWC',
      List<int> dilations}) {
    var op$ = newOperation('Conv2D', _scope.uniqueName('Conv2D'));
    op$.addInput(input);
    op$.addInput(filter);
    op$.setAttrIntList('strides', strides);
    op$.setAttrBool('use_cudnn_on_gpu', useCudnnOnGpu);
    op$.setAttrString('padding', padding);
    op$.setAttrString('data_format', dataFormat);
    op$.setAttrIntList('dilations', dilations);
    return op$.finish()[0];
  }

  Output<T> biasAdd<T>(Output<T> value, Output<T> bias,
      {String dataFormat: 'NHWC'}) {
    var op$ = newOperation('BiasAdd', _scope.uniqueName('BiasAdd'));
    op$.addInput(value);
    op$.addInput(bias);
    op$.setAttrString('data_format', dataFormat);
    return op$.finish()[0];
  }

  Output<T> sin<T>(Output<T> x) {
    var op$ = newOperation('Sin', _scope.uniqueName('Sin'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  FusedBatchNormV2Output fusedBatchNormV2<T>(Output<T> x, Output<T> scale,
      Output<T> offset, Output<T> mean, Output<T> variance,
      {DataType u,
      double epsilon: 0.00009999999747378752,
      String dataFormat: 'NHWC',
      bool isTraining: true}) {
    var op$ =
        newOperation('FusedBatchNormV2', _scope.uniqueName('FusedBatchNormV2'));
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
    return new FusedBatchNormV2Output<T>(
        result$, result$[0], result$[1], result$[2], result$[3], result$[4]);
  }

  Output<double> sparseMatMul<T>(Output<T> a, Output<T> b,
      {bool transposeA: false,
      bool transposeB: false,
      bool aIsSparse: false,
      bool bIsSparse: false,
      DataType ta: DataType.DT_FLOAT,
      DataType tb: DataType.DT_FLOAT}) {
    var op$ = newOperation('SparseMatMul', _scope.uniqueName('SparseMatMul'));
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

  FusedBatchNormOutput fusedBatchNorm<T>(Output<T> x, Output<T> scale,
      Output<T> offset, Output<T> mean, Output<T> variance,
      {double epsilon: 0.00009999999747378752,
      String dataFormat: 'NHWC',
      bool isTraining: true}) {
    var op$ =
        newOperation('FusedBatchNorm', _scope.uniqueName('FusedBatchNorm'));
    op$.addInput(x);
    op$.addInput(scale);
    op$.addInput(offset);
    op$.addInput(mean);
    op$.addInput(variance);
    op$.setAttrFloat('epsilon', epsilon);
    op$.setAttrString('data_format', dataFormat);
    op$.setAttrBool('is_training', isTraining);
    var result$ = op$.finish();
    return new FusedBatchNormOutput<T>(
        result$, result$[0], result$[1], result$[2], result$[3], result$[4]);
  }

  Output<T> readVariableOp<T>(Output resource, {DataType dtype}) {
    dtype ??= inferType(resource);
    var op$ =
        newOperation('ReadVariableOp', _scope.uniqueName('ReadVariableOp'));
    op$.addInput(resource);
    op$.setAttrType('dtype', dtype);
    return op$.finish()[0];
  }

  Output<T> lgamma<T>(Output<T> x) {
    var op$ = newOperation('Lgamma', _scope.uniqueName('Lgamma'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  RequantizationRangeOutput requantizationRange<T>(
      Output<T> input, Output<double> inputMin, Output<double> inputMax,
      {DataType tinput}) {
    var op$ = newOperation(
        'RequantizationRange', _scope.uniqueName('RequantizationRange'));
    op$.addInput(input);
    op$.addInput(inputMin);
    op$.addInput(inputMax);
    op$.setAttrType('Tinput', tinput);
    var result$ = op$.finish();
    return new RequantizationRangeOutput<T>(result$, result$[0], result$[1]);
  }

  Output compareAndBitpack<T>(Output<T> input, Output<T> threshold) {
    var op$ = newOperation(
        'CompareAndBitpack', _scope.uniqueName('CompareAndBitpack'));
    op$.addInput(input);
    op$.addInput(threshold);
    return op$.finish()[0];
  }

  QuantizeDownAndShrinkRangeOutput quantizeDownAndShrinkRange<T>(
      Output<T> input, Output<double> inputMin, Output<double> inputMax,
      {DataType tinput, DataType outType}) {
    var op$ = newOperation('QuantizeDownAndShrinkRange',
        _scope.uniqueName('QuantizeDownAndShrinkRange'));
    op$.addInput(input);
    op$.addInput(inputMin);
    op$.addInput(inputMax);
    op$.setAttrType('Tinput', tinput);
    op$.setAttrType('out_type', outType);
    var result$ = op$.finish();
    return new QuantizeDownAndShrinkRangeOutput<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  QuantizedMatMulOutput quantizedMatMul<T>(
      Output<T> a,
      Output<T> b,
      Output<double> minA,
      Output<double> maxA,
      Output<double> minB,
      Output<double> maxB,
      {DataType t1,
      DataType t2,
      DataType toutput: DataType.DT_QINT32,
      bool transposeA: false,
      bool transposeB: false,
      DataType tactivation: DataType.DT_QUINT8}) {
    var op$ =
        newOperation('QuantizedMatMul', _scope.uniqueName('QuantizedMatMul'));
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
        result$, result$[0], result$[1], result$[2]);
  }

  Output<T> cumsum<T>(Output<T> x, Output<T> axis,
      {bool exclusive: false,
      bool reverse: false,
      DataType tidx: DataType.DT_INT32}) {
    var op$ = newOperation('Cumsum', _scope.uniqueName('Cumsum'));
    op$.addInput(x);
    op$.addInput(axis);
    op$.setAttrBool('exclusive', exclusive);
    op$.setAttrBool('reverse', reverse);
    op$.setAttrType('Tidx', tidx);
    return op$.finish()[0];
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 9: Use tf.nn.batch_normalization()')
  BatchNormWithGlobalNormalizationGradOutput
      batchNormWithGlobalNormalizationGrad<T>(Output<T> t, Output<T> m,
          Output<T> v, Output<T> gamma, Output<T> backprop,
          {double varianceEpsilon, bool scaleAfterNormalization}) {
    var op$ = newOperation('BatchNormWithGlobalNormalizationGrad',
        _scope.uniqueName('BatchNormWithGlobalNormalizationGrad'));
    op$.addInput(t);
    op$.addInput(m);
    op$.addInput(v);
    op$.addInput(gamma);
    op$.addInput(backprop);
    op$.setAttrFloat('variance_epsilon', varianceEpsilon);
    op$.setAttrBool('scale_after_normalization', scaleAfterNormalization);
    var result$ = op$.finish();
    return new BatchNormWithGlobalNormalizationGradOutput<T>(
        result$, result$[0], result$[1], result$[2], result$[3], result$[4]);
  }

  Output<T> bincount<T>(Output<int> arr, Output<int> size, Output<T> weights) {
    var op$ = newOperation('Bincount', _scope.uniqueName('Bincount'));
    op$.addInput(arr);
    op$.addInput(size);
    op$.addInput(weights);
    return op$.finish()[0];
  }

  Output<T> cross<T>(Output<T> a, Output<T> b) {
    var op$ = newOperation('Cross', _scope.uniqueName('Cross'));
    op$.addInput(a);
    op$.addInput(b);
    return op$.finish()[0];
  }

  Output<T> conj<T>(Output<T> input) {
    var op$ = newOperation('Conj', _scope.uniqueName('Conj'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  Output<T> real<T>(Output<T> input, {DataType tout: DataType.DT_FLOAT}) {
    var op$ = newOperation('Real', _scope.uniqueName('Real'));
    op$.addInput(input);
    op$.setAttrType('Tout', tout);
    return op$.finish()[0];
  }

  Output<double> dequantize<T>(
      Output<T> input, Output<double> minRange, Output<double> maxRange,
      {String mode: 'MIN_COMBINED'}) {
    var op$ = newOperation('Dequantize', _scope.uniqueName('Dequantize'));
    op$.addInput(input);
    op$.addInput(minRange);
    op$.addInput(maxRange);
    op$.setAttrString('mode', mode);
    return op$.finish()[0];
  }

  Output<T> complex<T>(Output<T> real, Output<T> imag,
      {DataType tout: DataType.DT_COMPLEX64}) {
    var op$ = newOperation('Complex', _scope.uniqueName('Complex'));
    op$.addInput(real);
    op$.addInput(imag);
    op$.setAttrType('Tout', tout);
    return op$.finish()[0];
  }

  Output<bool> any<T>(Output<bool> input, Output<T> reductionIndices,
      {bool keepDims: false, DataType tidx: DataType.DT_INT32}) {
    var op$ = newOperation('Any', _scope.uniqueName('Any'));
    op$.addInput(input);
    op$.addInput(reductionIndices);
    op$.setAttrBool('keep_dims', keepDims);
    op$.setAttrType('Tidx', tidx);
    return op$.finish()[0];
  }

  Output<T> sparseSegmentMean<T>(
      Output<T> data, Output<T> indices, Output<int> segmentIds,
      {DataType tidx: DataType.DT_INT32}) {
    var op$ = newOperation(
        'SparseSegmentMean', _scope.uniqueName('SparseSegmentMean'));
    op$.addInput(data);
    op$.addInput(indices);
    op$.addInput(segmentIds);
    op$.setAttrType('Tidx', tidx);
    return op$.finish()[0];
  }

  Output<T> sparseSegmentSumWithNumSegments<T>(Output<T> data,
      Output<T> indices, Output<int> segmentIds, Output<T> numSegments,
      {DataType tidx: DataType.DT_INT32,
      DataType tnumsegments: DataType.DT_INT32}) {
    var op$ = newOperation('SparseSegmentSumWithNumSegments',
        _scope.uniqueName('SparseSegmentSumWithNumSegments'));
    op$.addInput(data);
    op$.addInput(indices);
    op$.addInput(segmentIds);
    op$.addInput(numSegments);
    op$.setAttrType('Tidx', tidx);
    op$.setAttrType('Tnumsegments', tnumsegments);
    return op$.finish()[0];
  }

  Output<T> unsortedSegmentSum<T>(
      Output<T> data, Output<T> segmentIds, Output<T> numSegments,
      {DataType tindices, DataType tnumsegments: DataType.DT_INT32}) {
    var op$ = newOperation(
        'UnsortedSegmentSum', _scope.uniqueName('UnsortedSegmentSum'));
    op$.addInput(data);
    op$.addInput(segmentIds);
    op$.addInput(numSegments);
    op$.setAttrType('Tindices', tindices);
    op$.setAttrType('Tnumsegments', tnumsegments);
    return op$.finish()[0];
  }

  Output<T> atan2<T>(Output<T> y, Output<T> x) {
    var op$ = newOperation('Atan2', _scope.uniqueName('Atan2'));
    op$.addInput(y);
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<T> segmentProd<T>(Output<T> data, Output<T> segmentIds,
      {DataType tindices}) {
    var op$ = newOperation('SegmentProd', _scope.uniqueName('SegmentProd'));
    op$.addInput(data);
    op$.addInput(segmentIds);
    op$.setAttrType('Tindices', tindices);
    return op$.finish()[0];
  }

  Output<T> resizeBilinearGrad<T>(Output<double> grads, Output<T> originalImage,
      {bool alignCorners: false}) {
    var op$ = newOperation(
        'ResizeBilinearGrad', _scope.uniqueName('ResizeBilinearGrad'));
    op$.addInput(grads);
    op$.addInput(originalImage);
    op$.setAttrBool('align_corners', alignCorners);
    return op$.finish()[0];
  }

  Output<T> max<T>(Output<T> input, Output<T> reductionIndices,
      {bool keepDims: false, DataType tidx: DataType.DT_INT32}) {
    var op$ = newOperation('Max', _scope.uniqueName('Max'));
    op$.addInput(input);
    op$.addInput(reductionIndices);
    op$.setAttrBool('keep_dims', keepDims);
    op$.setAttrType('Tidx', tidx);
    return op$.finish()[0];
  }

  Output<T> getSessionTensor<T>(Output<String> handle, {DataType dtype}) {
    dtype ??= inferType(handle);
    var op$ =
        newOperation('GetSessionTensor', _scope.uniqueName('GetSessionTensor'));
    op$.addInput(handle);
    op$.setAttrType('dtype', dtype);
    return op$.finish()[0];
  }

  Output<T> min<T>(Output<T> input, Output<T> reductionIndices,
      {bool keepDims: false, DataType tidx: DataType.DT_INT32}) {
    var op$ = newOperation('Min', _scope.uniqueName('Min'));
    op$.addInput(input);
    op$.addInput(reductionIndices);
    op$.setAttrBool('keep_dims', keepDims);
    op$.setAttrType('Tidx', tidx);
    return op$.finish()[0];
  }

  SampleDistortedBoundingBoxV2Output sampleDistortedBoundingBoxV2<T>(
      Output<T> imageSize,
      Output<double> boundingBoxes,
      Output<double> minObjectCovered,
      {int seed: 0,
      int seed2: 0,
      List<double> aspectRatioRange,
      List<double> areaRange,
      int maxAttempts: 100,
      bool useImageIfNoBoundingBoxes: false}) {
    var op$ = newOperation('SampleDistortedBoundingBoxV2',
        _scope.uniqueName('SampleDistortedBoundingBoxV2'));
    op$.addInput(imageSize);
    op$.addInput(boundingBoxes);
    op$.addInput(minObjectCovered);
    op$.setAttrInt('seed', seed);
    op$.setAttrInt('seed2', seed2);
    op$.setAttrFloatList('aspect_ratio_range', aspectRatioRange);
    op$.setAttrFloatList('area_range', areaRange);
    op$.setAttrInt('max_attempts', maxAttempts);
    op$.setAttrBool(
        'use_image_if_no_bounding_boxes', useImageIfNoBoundingBoxes);
    var result$ = op$.finish();
    return new SampleDistortedBoundingBoxV2Output<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  void accumulatorApplyGradient<T>(
      Output<String> handle, Output<int> localStep, Output<T> gradient,
      {DataType dtype}) {
    dtype ??= inferType(handle);
    var op$ = newOperation('AccumulatorApplyGradient',
        _scope.uniqueName('AccumulatorApplyGradient'));
    op$.addInput(handle);
    op$.addInput(localStep);
    op$.addInput(gradient);
    op$.setAttrType('dtype', dtype);
    op$.finish();
  }

  Output<T> prod<T>(Output<T> input, Output<T> reductionIndices,
      {bool keepDims: false, DataType tidx: DataType.DT_INT32}) {
    var op$ = newOperation('Prod', _scope.uniqueName('Prod'));
    op$.addInput(input);
    op$.addInput(reductionIndices);
    op$.setAttrBool('keep_dims', keepDims);
    op$.setAttrType('Tidx', tidx);
    return op$.finish()[0];
  }

  Output<T> sum<T>(Output<T> input, Output<T> reductionIndices,
      {bool keepDims: false, DataType tidx: DataType.DT_INT32}) {
    var op$ = newOperation('Sum', _scope.uniqueName('Sum'));
    op$.addInput(input);
    op$.addInput(reductionIndices);
    op$.setAttrBool('keep_dims', keepDims);
    op$.setAttrType('Tidx', tidx);
    return op$.finish()[0];
  }

  Output<T> relu<T>(Output<T> features) {
    var op$ = newOperation('Relu', _scope.uniqueName('Relu'));
    op$.addInput(features);
    return op$.finish()[0];
  }

  SparseReduceSumSparseOutput sparseReduceSumSparse<T>(Output<int> inputIndices,
      Output<T> inputValues, Output<int> inputShape, Output<int> reductionAxes,
      {bool keepDims: false}) {
    var op$ = newOperation(
        'SparseReduceSumSparse', _scope.uniqueName('SparseReduceSumSparse'));
    op$.addInput(inputIndices);
    op$.addInput(inputValues);
    op$.addInput(inputShape);
    op$.addInput(reductionAxes);
    op$.setAttrBool('keep_dims', keepDims);
    var result$ = op$.finish();
    return new SparseReduceSumSparseOutput<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  Output<T> matMul<T>(Output<T> a, Output<T> b,
      {bool transposeA: false, bool transposeB: false}) {
    var op$ = newOperation('MatMul', _scope.uniqueName('MatMul'));
    op$.addInput(a);
    op$.addInput(b);
    op$.setAttrBool('transpose_a', transposeA);
    op$.setAttrBool('transpose_b', transposeB);
    return op$.finish()[0];
  }

  Output<bool> logicalAnd(Output<bool> x, Output<bool> y) {
    var op$ = newOperation('LogicalAnd', _scope.uniqueName('LogicalAnd'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  /// Writes a `GraphDef` protocol buffer to a `SummaryWriter`.
  void writeGraphSummary(
      Output writer, Output<int> step, Output<String> tensor) {
    var op$ = newOperation(
        'WriteGraphSummary', _scope.uniqueName('WriteGraphSummary'));
    op$.addInput(writer);
    op$.addInput(step);
    op$.addInput(tensor);
    op$.finish();
  }

  Output<bool> approximateEqual<T>(Output<T> x, Output<T> y,
      {double tolerance: 0.000009999999747378752}) {
    var op$ =
        newOperation('ApproximateEqual', _scope.uniqueName('ApproximateEqual'));
    op$.addInput(x);
    op$.addInput(y);
    op$.setAttrFloat('tolerance', tolerance);
    return op$.finish()[0];
  }

  QuantizeV2Output quantizeV2<T>(
      Output<double> input, Output<double> minRange, Output<double> maxRange,
      {String mode: 'MIN_COMBINED', String roundMode: 'HALF_AWAY_FROM_ZERO'}) {
    var op$ = newOperation('QuantizeV2', _scope.uniqueName('QuantizeV2'));
    op$.addInput(input);
    op$.addInput(minRange);
    op$.addInput(maxRange);
    op$.setAttrString('mode', mode);
    op$.setAttrString('round_mode', roundMode);
    var result$ = op$.finish();
    return new QuantizeV2Output<T>(result$, result$[0], result$[1], result$[2]);
  }

  Output<bool> greaterEqual<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation('GreaterEqual', _scope.uniqueName('GreaterEqual'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  Output<T> polygamma<T>(Output<T> a, Output<T> x) {
    var op$ = newOperation('Polygamma', _scope.uniqueName('Polygamma'));
    op$.addInput(a);
    op$.addInput(x);
    return op$.finish()[0];
  }

  /// Outputs a `tf.Event` protocol buffer.
  /// When CreateSummaryDbWriter is being used, this op can be useful for
  /// importing data from event logs.
  void importEvent(Output writer, Output<String> event) {
    var op$ = newOperation('ImportEvent', _scope.uniqueName('ImportEvent'));
    op$.addInput(writer);
    op$.addInput(event);
    op$.finish();
  }

  Output<T> igamma<T>(Output<T> a, Output<T> x) {
    var op$ = newOperation('Igamma', _scope.uniqueName('Igamma'));
    op$.addInput(a);
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<T> igammac<T>(Output<T> a, Output<T> x) {
    var op$ = newOperation('Igammac', _scope.uniqueName('Igammac'));
    op$.addInput(a);
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<T> mod<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation('Mod', _scope.uniqueName('Mod'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  Output<T> maximum<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation('Maximum', _scope.uniqueName('Maximum'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  Output<T> squaredDifference<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation(
        'SquaredDifference', _scope.uniqueName('SquaredDifference'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  Output<T> resourceCountUpTo<T>(Output resource, {int limit}) {
    var op$ = newOperation(
        'ResourceCountUpTo', _scope.uniqueName('ResourceCountUpTo'));
    op$.addInput(resource);
    op$.setAttrInt('limit', limit);
    return op$.finish()[0];
  }

  Output<T> realDiv<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation('RealDiv', _scope.uniqueName('RealDiv'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  Output<T> truncateDiv<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation('TruncateDiv', _scope.uniqueName('TruncateDiv'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  Output<T> conv3DBackpropFilterV2<T>(
      Output<T> input, Output<int> filterSizes, Output<T> outBackprop,
      {List<int> strides,
      String padding,
      String dataFormat: 'NDHWC',
      List<int> dilations}) {
    var op$ = newOperation(
        'Conv3DBackpropFilterV2', _scope.uniqueName('Conv3DBackpropFilterV2'));
    op$.addInput(input);
    op$.addInput(filterSizes);
    op$.addInput(outBackprop);
    op$.setAttrIntList('strides', strides);
    op$.setAttrString('padding', padding);
    op$.setAttrString('data_format', dataFormat);
    op$.setAttrIntList('dilations', dilations);
    return op$.finish()[0];
  }

  Output<String> asString<T>(Output<T> input,
      {int precision: -1,
      bool scientific: false,
      bool shortest: false,
      int width: -1,
      String fill}) {
    var op$ = newOperation('AsString', _scope.uniqueName('AsString'));
    op$.addInput(input);
    op$.setAttrInt('precision', precision);
    op$.setAttrBool('scientific', scientific);
    op$.setAttrBool('shortest', shortest);
    op$.setAttrInt('width', width);
    op$.setAttrString('fill', fill);
    return op$.finish()[0];
  }

  Output<T> addV2<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation('AddV2', _scope.uniqueName('AddV2'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  UniformCandidateSamplerOutput uniformCandidateSampler(Output<int> trueClasses,
      {int numTrue,
      int numSampled,
      bool unique,
      int rangeMax,
      int seed: 0,
      int seed2: 0}) {
    var op$ = newOperation('UniformCandidateSampler',
        _scope.uniqueName('UniformCandidateSampler'));
    op$.addInput(trueClasses);
    op$.setAttrInt('num_true', numTrue);
    op$.setAttrInt('num_sampled', numSampled);
    op$.setAttrBool('unique', unique);
    op$.setAttrInt('range_max', rangeMax);
    op$.setAttrInt('seed', seed);
    op$.setAttrInt('seed2', seed2);
    var result$ = op$.finish();
    return new UniformCandidateSamplerOutput(
        result$, result$[0], result$[1], result$[2]);
  }

  Output<T> resourceGather<T>(Output resource, Output<T> indices,
      {bool validateIndices: true, DataType dtype, DataType tindices}) {
    dtype ??= inferType(resource);
    var op$ =
        newOperation('ResourceGather', _scope.uniqueName('ResourceGather'));
    op$.addInput(resource);
    op$.addInput(indices);
    op$.setAttrBool('validate_indices', validateIndices);
    op$.setAttrType('dtype', dtype);
    op$.setAttrType('Tindices', tindices);
    return op$.finish()[0];
  }

  Output<T> add<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation('Add', _scope.uniqueName('Add'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  Output<T> floor<T>(Output<T> x) {
    var op$ = newOperation('Floor', _scope.uniqueName('Floor'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<T> ceil<T>(Output<T> x) {
    var op$ = newOperation('Ceil', _scope.uniqueName('Ceil'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<T> maxPool3D<T>(Output<T> input,
      {List<int> ksize,
      List<int> strides,
      String padding,
      String dataFormat: 'NDHWC'}) {
    var op$ = newOperation('MaxPool3D', _scope.uniqueName('MaxPool3D'));
    op$.addInput(input);
    op$.setAttrIntList('ksize', ksize);
    op$.setAttrIntList('strides', strides);
    op$.setAttrString('padding', padding);
    op$.setAttrString('data_format', dataFormat);
    return op$.finish()[0];
  }

  Output<bool> isInf<T>(Output<T> x) {
    var op$ = newOperation('IsInf', _scope.uniqueName('IsInf'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<T> padV2<T>(
      Output<T> input, Output<T> paddings, Output<T> constantValues,
      {DataType tpaddings: DataType.DT_INT32}) {
    var op$ = newOperation('PadV2', _scope.uniqueName('PadV2'));
    op$.addInput(input);
    op$.addInput(paddings);
    op$.addInput(constantValues);
    op$.setAttrType('Tpaddings', tpaddings);
    return op$.finish()[0];
  }

  Output<T> cos<T>(Output<T> x) {
    var op$ = newOperation('Cos', _scope.uniqueName('Cos'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayV3')
  Output<String> tensorArray(Output<int> size,
      {DataType dtype,
      bool dynamicSize: false,
      bool clearAfterRead: true,
      String tensorArrayName,
      Shape elementShape}) {
    dtype ??= inferType(size);
    var op$ = newOperation('TensorArray', _scope.uniqueName('TensorArray'));
    op$.addInput(size);
    op$.setAttrType('dtype', dtype);
    op$.setAttrBool('dynamic_size', dynamicSize);
    op$.setAttrBool('clear_after_read', clearAfterRead);
    op$.setAttrString('tensor_array_name', tensorArrayName);
    op$.setAttrShape('element_shape', elementShape);
    return op$.finish()[0];
  }

  Output<T> variable<T>(
      {Shape shape,
      @required DataType dtype,
      String container,
      String sharedName}) {
    var op$ = newOperation('Variable', _scope.uniqueName('Variable'));
    op$.setAttrShape('shape', shape);
    op$.setAttrType('dtype', dtype);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  Output<T> sigmoidGrad<T>(Output<T> y, Output<T> dy) {
    var op$ = newOperation('SigmoidGrad', _scope.uniqueName('SigmoidGrad'));
    op$.addInput(y);
    op$.addInput(dy);
    return op$.finish()[0];
  }

  Output<T> digamma<T>(Output<T> x) {
    var op$ = newOperation('Digamma', _scope.uniqueName('Digamma'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<T> acosh<T>(Output<T> x) {
    var op$ = newOperation('Acosh', _scope.uniqueName('Acosh'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  void resourceApplyProximalAdagrad<T>(Output var$, Output accum, Output<T> lr,
      Output<T> l1, Output<T> l2, Output<T> grad,
      {bool useLocking: false}) {
    var op$ = newOperation('ResourceApplyProximalAdagrad',
        _scope.uniqueName('ResourceApplyProximalAdagrad'));
    op$.addInput(var$);
    op$.addInput(accum);
    op$.addInput(lr);
    op$.addInput(l1);
    op$.addInput(l2);
    op$.addInput(grad);
    op$.setAttrBool('use_locking', useLocking);
    op$.finish();
  }

  Output<T> asin<T>(Output<T> x) {
    var op$ = newOperation('Asin', _scope.uniqueName('Asin'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<T> log1p<T>(Output<T> x) {
    var op$ = newOperation('Log1p', _scope.uniqueName('Log1p'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 16: Use TensorArraySizeV3')
  Output<int> tensorArraySize(Output<String> handle, Output<double> flowIn) {
    var op$ =
        newOperation('TensorArraySize', _scope.uniqueName('TensorArraySize'));
    op$.addInput(handle);
    op$.addInput(flowIn);
    return op$.finish()[0];
  }

  RequantizeOutput requantize<T>(
      Output<T> input,
      Output<double> inputMin,
      Output<double> inputMax,
      Output<double> requestedOutputMin,
      Output<double> requestedOutputMax,
      {DataType tinput,
      DataType outType}) {
    var op$ = newOperation('Requantize', _scope.uniqueName('Requantize'));
    op$.addInput(input);
    op$.addInput(inputMin);
    op$.addInput(inputMax);
    op$.addInput(requestedOutputMin);
    op$.addInput(requestedOutputMax);
    op$.setAttrType('Tinput', tinput);
    op$.setAttrType('out_type', outType);
    var result$ = op$.finish();
    return new RequantizeOutput<T>(result$, result$[0], result$[1], result$[2]);
  }

  Output<T> exp<T>(Output<T> x) {
    var op$ = newOperation('Exp', _scope.uniqueName('Exp'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<String> mutableHashTableOfTensors(
      {String container,
      String sharedName,
      bool useNodeNameSharing: false,
      DataType keyDtype,
      DataType valueDtype,
      Shape valueShape}) {
    var op$ = newOperation('MutableHashTableOfTensors',
        _scope.uniqueName('MutableHashTableOfTensors'));
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    op$.setAttrBool('use_node_name_sharing', useNodeNameSharing);
    op$.setAttrType('key_dtype', keyDtype);
    op$.setAttrType('value_dtype', valueDtype);
    op$.setAttrShape('value_shape', valueShape);
    return op$.finish()[0];
  }

  Output<T> scatterNdAdd<T>(Output<T> ref, Output<T> indices, Output<T> updates,
      {DataType tindices, bool useLocking: false}) {
    var op$ = newOperation('ScatterNdAdd', _scope.uniqueName('ScatterNdAdd'));
    op$.addInput(ref);
    op$.addInput(indices);
    op$.addInput(updates);
    op$.setAttrType('Tindices', tindices);
    op$.setAttrBool('use_locking', useLocking);
    return op$.finish()[0];
  }

  Output<T> dilation2D<T>(Output<T> input, Output<T> filter,
      {List<int> strides, List<int> rates, String padding}) {
    var op$ = newOperation('Dilation2D', _scope.uniqueName('Dilation2D'));
    op$.addInput(input);
    op$.addInput(filter);
    op$.setAttrIntList('strides', strides);
    op$.setAttrIntList('rates', rates);
    op$.setAttrString('padding', padding);
    return op$.finish()[0];
  }

  void deserializeIterator(Output resourceHandle, Output serialized) {
    var op$ = newOperation(
        'DeserializeIterator', _scope.uniqueName('DeserializeIterator'));
    op$.addInput(resourceHandle);
    op$.addInput(serialized);
    op$.finish();
  }

  Output<T> rsqrtGrad<T>(Output<T> y, Output<T> dy) {
    var op$ = newOperation('RsqrtGrad', _scope.uniqueName('RsqrtGrad'));
    op$.addInput(y);
    op$.addInput(dy);
    return op$.finish()[0];
  }

  QuantizedInstanceNormOutput quantizedInstanceNorm<T>(
      Output<T> x, Output<double> xMin, Output<double> xMax,
      {bool outputRangeGiven: false,
      double givenYMin: 0.0,
      double givenYMax: 0.0,
      double varianceEpsilon: 0.000009999999747378752,
      double minSeparation: 0.0010000000474974513}) {
    var op$ = newOperation(
        'QuantizedInstanceNorm', _scope.uniqueName('QuantizedInstanceNorm'));
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
        result$, result$[0], result$[1], result$[2]);
  }

  Output<T> rsqrt<T>(Output<T> x) {
    var op$ = newOperation('Rsqrt', _scope.uniqueName('Rsqrt'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  void initializeTableFromTextFile(
      Output<String> tableHandle, Output<String> filename,
      {int keyIndex,
      int valueIndex,
      int vocabSize: -1,
      String delimiter: '	'}) {
    var op$ = newOperation('InitializeTableFromTextFile',
        _scope.uniqueName('InitializeTableFromTextFile'));
    op$.addInput(tableHandle);
    op$.addInput(filename);
    op$.setAttrInt('key_index', keyIndex);
    op$.setAttrInt('value_index', valueIndex);
    op$.setAttrInt('vocab_size', vocabSize);
    op$.setAttrString('delimiter', delimiter);
    op$.finish();
  }

  Output<T> sqrtGrad<T>(Output<T> y, Output<T> dy) {
    var op$ = newOperation('SqrtGrad', _scope.uniqueName('SqrtGrad'));
    op$.addInput(y);
    op$.addInput(dy);
    return op$.finish()[0];
  }

  Output<T> invGrad<T>(Output<T> y, Output<T> dy) {
    var op$ = newOperation('InvGrad', _scope.uniqueName('InvGrad'));
    op$.addInput(y);
    op$.addInput(dy);
    return op$.finish()[0];
  }

  Output<T> inv<T>(Output<T> x) {
    var op$ = newOperation('Inv', _scope.uniqueName('Inv'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<T> accumulateNV2<T>(List<Output<T>> inputs, {int n, Shape shape}) {
    var op$ = newOperation('AccumulateNV2', _scope.uniqueName('AccumulateNV2'));
    op$.addInputList(inputs);
    op$.setAttrInt('N', n);
    op$.setAttrShape('shape', shape);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 14: Use MatrixSetDiag')
  Output<T> batchMatrixSetDiag<T>(Output<T> input, Output<T> diagonal) {
    var op$ = newOperation(
        'BatchMatrixSetDiag', _scope.uniqueName('BatchMatrixSetDiag'));
    op$.addInput(input);
    op$.addInput(diagonal);
    return op$.finish()[0];
  }

  Output<T> segmentMean<T>(Output<T> data, Output<T> segmentIds,
      {DataType tindices}) {
    var op$ = newOperation('SegmentMean', _scope.uniqueName('SegmentMean'));
    op$.addInput(data);
    op$.addInput(segmentIds);
    op$.setAttrType('Tindices', tindices);
    return op$.finish()[0];
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 22: Replaced by QuantizeAndDequantizeV2')
  Output<T> quantizeAndDequantize<T>(Output<T> input,
      {bool signedInput: true,
      int numBits: 8,
      bool rangeGiven: false,
      double inputMin: 0.0,
      double inputMax: 0.0}) {
    var op$ = newOperation(
        'QuantizeAndDequantize', _scope.uniqueName('QuantizeAndDequantize'));
    op$.addInput(input);
    op$.setAttrBool('signed_input', signedInput);
    op$.setAttrInt('num_bits', numBits);
    op$.setAttrBool('range_given', rangeGiven);
    op$.setAttrFloat('input_min', inputMin);
    op$.setAttrFloat('input_max', inputMax);
    return op$.finish()[0];
  }

  Output<T> sparseSegmentSqrtN<T>(
      Output<T> data, Output<T> indices, Output<int> segmentIds,
      {DataType tidx: DataType.DT_INT32}) {
    var op$ = newOperation(
        'SparseSegmentSqrtN', _scope.uniqueName('SparseSegmentSqrtN'));
    op$.addInput(data);
    op$.addInput(indices);
    op$.addInput(segmentIds);
    op$.setAttrType('Tidx', tidx);
    return op$.finish()[0];
  }

  Output<T> depthToSpace<T>(Output<T> input,
      {int blockSize, String dataFormat: 'NHWC'}) {
    var op$ = newOperation('DepthToSpace', _scope.uniqueName('DepthToSpace'));
    op$.addInput(input);
    op$.setAttrInt('block_size', blockSize);
    op$.setAttrString('data_format', dataFormat);
    return op$.finish()[0];
  }

  Output<T> spaceToDepth<T>(Output<T> input,
      {int blockSize, String dataFormat: 'NHWC'}) {
    var op$ = newOperation('SpaceToDepth', _scope.uniqueName('SpaceToDepth'));
    op$.addInput(input);
    op$.setAttrInt('block_size', blockSize);
    op$.setAttrString('data_format', dataFormat);
    return op$.finish()[0];
  }

  Output<T> quantizeAndDequantizeV3<T>(Output<T> input, Output<T> inputMin,
      Output<T> inputMax, Output<int> numBits,
      {bool signedInput: true, bool rangeGiven: true}) {
    var op$ = newOperation('QuantizeAndDequantizeV3',
        _scope.uniqueName('QuantizeAndDequantizeV3'));
    op$.addInput(input);
    op$.addInput(inputMin);
    op$.addInput(inputMax);
    op$.addInput(numBits);
    op$.setAttrBool('signed_input', signedInput);
    op$.setAttrBool('range_given', rangeGiven);
    return op$.finish()[0];
  }

  Output<T> mul<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation('Mul', _scope.uniqueName('Mul'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  Output<T> batchToSpace<T>(Output<T> input, Output<T> crops,
      {int blockSize, DataType tidx: DataType.DT_INT32}) {
    var op$ = newOperation('BatchToSpace', _scope.uniqueName('BatchToSpace'));
    op$.addInput(input);
    op$.addInput(crops);
    op$.setAttrInt('block_size', blockSize);
    op$.setAttrType('Tidx', tidx);
    return op$.finish()[0];
  }

  Output<T> spaceToBatch<T>(Output<T> input, Output<T> paddings,
      {DataType tpaddings: DataType.DT_INT32, int blockSize}) {
    var op$ = newOperation('SpaceToBatch', _scope.uniqueName('SpaceToBatch'));
    op$.addInput(input);
    op$.addInput(paddings);
    op$.setAttrType('Tpaddings', tpaddings);
    op$.setAttrInt('block_size', blockSize);
    return op$.finish()[0];
  }

  Output<T> squeeze<T>(Output<T> input, {List<int> squeezeDims}) {
    var op$ = newOperation('Squeeze', _scope.uniqueName('Squeeze'));
    op$.addInput(input);
    op$.setAttrIntList('squeeze_dims', squeezeDims);
    return op$.finish()[0];
  }

  Output<T> expandDims<T>(Output<T> input, Output<T> dim,
      {DataType tdim: DataType.DT_INT32}) {
    var op$ = newOperation('ExpandDims', _scope.uniqueName('ExpandDims'));
    op$.addInput(input);
    op$.addInput(dim);
    op$.setAttrType('Tdim', tdim);
    return op$.finish()[0];
  }

  Output<T> placeholderWithDefault<T>(Output<T> input,
      {DataType dtype, Shape shape}) {
    dtype ??= inferType(input);
    var op$ = newOperation(
        'PlaceholderWithDefault', _scope.uniqueName('PlaceholderWithDefault'));
    op$.addInput(input);
    op$.setAttrType('dtype', dtype);
    op$.setAttrShape('shape', shape);
    return op$.finish()[0];
  }

  Output<T> applyMomentum<T>(Output<T> var$, Output<T> accum, Output<T> lr,
      Output<T> grad, Output<T> momentum,
      {bool useLocking: false, bool useNesterov: false}) {
    var op$ = newOperation('ApplyMomentum', _scope.uniqueName('ApplyMomentum'));
    op$.addInput(var$);
    op$.addInput(accum);
    op$.addInput(lr);
    op$.addInput(grad);
    op$.addInput(momentum);
    op$.setAttrBool('use_locking', useLocking);
    op$.setAttrBool('use_nesterov', useNesterov);
    return op$.finish()[0];
  }

  Output<T> acos<T>(Output<T> x) {
    var op$ = newOperation('Acos', _scope.uniqueName('Acos'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<T> placeholder<T>({@required DataType dtype, Shape shape}) {
    var op$ = newOperation('Placeholder', _scope.uniqueName('Placeholder'));
    op$.setAttrType('dtype', dtype);
    op$.setAttrShape('shape', shape);
    return op$.finish()[0];
  }

  QuantizedMaxPoolOutput quantizedMaxPool<T>(
      Output<T> input, Output<double> minInput, Output<double> maxInput,
      {List<int> ksize, List<int> strides, String padding}) {
    var op$ =
        newOperation('QuantizedMaxPool', _scope.uniqueName('QuantizedMaxPool'));
    op$.addInput(input);
    op$.addInput(minInput);
    op$.addInput(maxInput);
    op$.setAttrIntList('ksize', ksize);
    op$.setAttrIntList('strides', strides);
    op$.setAttrString('padding', padding);
    var result$ = op$.finish();
    return new QuantizedMaxPoolOutput<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  Output<T> mirrorPadGrad<T>(Output<T> input, Output<T> paddings,
      {DataType tpaddings: DataType.DT_INT32, String mode}) {
    var op$ = newOperation('MirrorPadGrad', _scope.uniqueName('MirrorPadGrad'));
    op$.addInput(input);
    op$.addInput(paddings);
    op$.setAttrType('Tpaddings', tpaddings);
    op$.setAttrString('mode', mode);
    return op$.finish()[0];
  }

  TensorArrayV3Output tensorArrayV3(Output<int> size,
      {DataType dtype,
      Shape elementShape,
      bool dynamicSize: false,
      bool clearAfterRead: true,
      bool identicalElementShapes: false,
      String tensorArrayName}) {
    dtype ??= inferType(size);
    var op$ = newOperation('TensorArrayV3', _scope.uniqueName('TensorArrayV3'));
    op$.addInput(size);
    op$.setAttrType('dtype', dtype);
    op$.setAttrShape('element_shape', elementShape);
    op$.setAttrBool('dynamic_size', dynamicSize);
    op$.setAttrBool('clear_after_read', clearAfterRead);
    op$.setAttrBool('identical_element_shapes', identicalElementShapes);
    op$.setAttrString('tensor_array_name', tensorArrayName);
    var result$ = op$.finish();
    return new TensorArrayV3Output(result$, result$[0], result$[1]);
  }

  Output<T> matrixSolveLs<T>(
      Output<T> matrix, Output<T> rhs, Output l2Regularizer,
      {bool fast: true}) {
    var op$ = newOperation('MatrixSolveLs', _scope.uniqueName('MatrixSolveLs'));
    op$.addInput(matrix);
    op$.addInput(rhs);
    op$.addInput(l2Regularizer);
    op$.setAttrBool('fast', fast);
    return op$.finish()[0];
  }

  Output<T> mirrorPad<T>(Output<T> input, Output<T> paddings,
      {DataType tpaddings: DataType.DT_INT32, String mode}) {
    var op$ = newOperation('MirrorPad', _scope.uniqueName('MirrorPad'));
    op$.addInput(input);
    op$.addInput(paddings);
    op$.setAttrType('Tpaddings', tpaddings);
    op$.setAttrString('mode', mode);
    return op$.finish()[0];
  }

  Output<T> pad<T>(Output<T> input, Output<T> paddings,
      {DataType tpaddings: DataType.DT_INT32}) {
    var op$ = newOperation('Pad', _scope.uniqueName('Pad'));
    op$.addInput(input);
    op$.addInput(paddings);
    op$.setAttrType('Tpaddings', tpaddings);
    return op$.finish()[0];
  }

  BroadcastGradientArgsOutput broadcastGradientArgs<T>(
      Output<T> s0, Output<T> s1) {
    var op$ = newOperation(
        'BroadcastGradientArgs', _scope.uniqueName('BroadcastGradientArgs'));
    op$.addInput(s0);
    op$.addInput(s1);
    var result$ = op$.finish();
    return new BroadcastGradientArgsOutput<T>(result$, result$[0], result$[1]);
  }

  Output<T> broadcastArgs<T>(Output<T> s0, Output<T> s1) {
    var op$ = newOperation('BroadcastArgs', _scope.uniqueName('BroadcastArgs'));
    op$.addInput(s0);
    op$.addInput(s1);
    return op$.finish()[0];
  }

  QuantizedRelu6Output quantizedRelu6<T>(Output<T> features,
      Output<double> minFeatures, Output<double> maxFeatures,
      {DataType tinput, DataType outType: DataType.DT_QUINT8}) {
    var op$ =
        newOperation('QuantizedRelu6', _scope.uniqueName('QuantizedRelu6'));
    op$.addInput(features);
    op$.addInput(minFeatures);
    op$.addInput(maxFeatures);
    op$.setAttrType('Tinput', tinput);
    op$.setAttrType('out_type', outType);
    var result$ = op$.finish();
    return new QuantizedRelu6Output<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  void resourceStridedSliceAssign<T>(Output ref, Output<T> begin, Output<T> end,
      Output<T> strides, Output<T> value,
      {DataType index,
      int beginMask: 0,
      int endMask: 0,
      int ellipsisMask: 0,
      int newAxisMask: 0,
      int shrinkAxisMask: 0}) {
    var op$ = newOperation('ResourceStridedSliceAssign',
        _scope.uniqueName('ResourceStridedSliceAssign'));
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
    op$.finish();
  }

  Output<T> truncateMod<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation('TruncateMod', _scope.uniqueName('TruncateMod'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  void resourceApplyFtrl<T>(
      Output var$,
      Output accum,
      Output linear,
      Output<T> grad,
      Output<T> lr,
      Output<T> l1,
      Output<T> l2,
      Output<T> lrPower,
      {bool useLocking: false}) {
    var op$ = newOperation(
        'ResourceApplyFtrl', _scope.uniqueName('ResourceApplyFtrl'));
    op$.addInput(var$);
    op$.addInput(accum);
    op$.addInput(linear);
    op$.addInput(grad);
    op$.addInput(lr);
    op$.addInput(l1);
    op$.addInput(l2);
    op$.addInput(lrPower);
    op$.setAttrBool('use_locking', useLocking);
    op$.finish();
  }

  Output<T> stridedSliceGrad<T>(Output<T> shape, Output<T> begin, Output<T> end,
      Output<T> strides, Output<T> dy,
      {DataType index,
      int beginMask: 0,
      int endMask: 0,
      int ellipsisMask: 0,
      int newAxisMask: 0,
      int shrinkAxisMask: 0}) {
    var op$ =
        newOperation('StridedSliceGrad', _scope.uniqueName('StridedSliceGrad'));
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

  Output<T> stridedSlice<T>(
      Output<T> input, Output<T> begin, Output<T> end, Output<T> strides,
      {DataType index,
      int beginMask: 0,
      int endMask: 0,
      int ellipsisMask: 0,
      int newAxisMask: 0,
      int shrinkAxisMask: 0}) {
    var op$ = newOperation('StridedSlice', _scope.uniqueName('StridedSlice'));
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

  Output<String> lMDBReader({String container, String sharedName}) {
    var op$ = newOperation('LMDBReader', _scope.uniqueName('LMDBReader'));
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  Output<T> slice<T>(Output<T> input, Output<T> begin, Output<T> size,
      {DataType index}) {
    var op$ = newOperation('Slice', _scope.uniqueName('Slice'));
    op$.addInput(input);
    op$.addInput(begin);
    op$.addInput(size);
    op$.setAttrType('Index', index);
    return op$.finish()[0];
  }

  UniqueWithCountsV2Output uniqueWithCountsV2<T>(Output<T> x, Output<T> axis,
      {DataType taxis: DataType.DT_INT64, DataType outIdx: DataType.DT_INT32}) {
    var op$ = newOperation(
        'UniqueWithCountsV2', _scope.uniqueName('UniqueWithCountsV2'));
    op$.addInput(x);
    op$.addInput(axis);
    op$.setAttrType('Taxis', taxis);
    op$.setAttrType('out_idx', outIdx);
    var result$ = op$.finish();
    return new UniqueWithCountsV2Output<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  UniqueV2Output uniqueV2<T>(Output<T> x, Output<T> axis,
      {DataType taxis: DataType.DT_INT64, DataType outIdx: DataType.DT_INT32}) {
    var op$ = newOperation('UniqueV2', _scope.uniqueName('UniqueV2'));
    op$.addInput(x);
    op$.addInput(axis);
    op$.setAttrType('Taxis', taxis);
    op$.setAttrType('out_idx', outIdx);
    var result$ = op$.finish();
    return new UniqueV2Output<T>(result$, result$[0], result$[1]);
  }

  Output<T> scatterNd<T>(Output<T> indices, Output<T> updates, Output<T> shape,
      {DataType tindices}) {
    var op$ = newOperation('ScatterNd', _scope.uniqueName('ScatterNd'));
    op$.addInput(indices);
    op$.addInput(updates);
    op$.addInput(shape);
    op$.setAttrType('Tindices', tindices);
    return op$.finish()[0];
  }

  UniqueOutput unique<T>(Output<T> x, {DataType outIdx: DataType.DT_INT32}) {
    var op$ = newOperation('Unique', _scope.uniqueName('Unique'));
    op$.addInput(x);
    op$.setAttrType('out_idx', outIdx);
    var result$ = op$.finish();
    return new UniqueOutput<T>(result$, result$[0], result$[1]);
  }

  Output<T> argMax<T>(Output<T> input, Output<T> dimension,
      {DataType tidx: DataType.DT_INT32,
      DataType outputType: DataType.DT_INT64}) {
    var op$ = newOperation('ArgMax', _scope.uniqueName('ArgMax'));
    op$.addInput(input);
    op$.addInput(dimension);
    op$.setAttrType('Tidx', tidx);
    op$.setAttrType('output_type', outputType);
    return op$.finish()[0];
  }

  Output<T> reshape<T>(Output<T> tensor, Output<T> shape,
      {DataType tshape: DataType.DT_INT32}) {
    var op$ = newOperation('Reshape', _scope.uniqueName('Reshape'));
    op$.addInput(tensor);
    op$.addInput(shape);
    op$.setAttrType('Tshape', tshape);
    return op$.finish()[0];
  }

  Output<T> checkNumerics<T>(Output<T> tensor, {String message}) {
    var op$ = newOperation('CheckNumerics', _scope.uniqueName('CheckNumerics'));
    op$.addInput(tensor);
    op$.setAttrString('message', message);
    return op$.finish()[0];
  }

  Output<T> stopGradient<T>(Output<T> input) {
    var op$ = newOperation('StopGradient', _scope.uniqueName('StopGradient'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  Output<T> debugGradientIdentity<T>(Output<T> input) {
    var op$ = newOperation(
        'DebugGradientIdentity', _scope.uniqueName('DebugGradientIdentity'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  Output<T> refIdentity<T>(Output<T> input) {
    var op$ = newOperation('RefIdentity', _scope.uniqueName('RefIdentity'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  Output zipDataset(List<Output> inputDatasets,
      {List<DataType> outputTypes, List<Shape> outputShapes, int n}) {
    var op$ = newOperation('ZipDataset', _scope.uniqueName('ZipDataset'));
    op$.addInputList(inputDatasets);
    op$.setAttrTypeList('output_types', outputTypes);
    op$.setAttrShapeList('output_shapes', outputShapes);
    op$.setAttrInt('N', n);
    return op$.finish()[0];
  }

  Output<T> round<T>(Output<T> x) {
    var op$ = newOperation('Round', _scope.uniqueName('Round'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<T> identityN<T>(List<Output<T>> input, {List<DataType> t}) {
    var op$ = newOperation('IdentityN', _scope.uniqueName('IdentityN'));
    op$.addInputList(input);
    op$.setAttrTypeList('T', t);
    return op$.finish()[0];
  }

  Output<T> sparseTensorDenseAdd<T>(
      Output<T> aIndices, Output<T> aValues, Output<T> aShape, Output<T> b,
      {DataType tindices}) {
    var op$ = newOperation(
        'SparseTensorDenseAdd', _scope.uniqueName('SparseTensorDenseAdd'));
    op$.addInput(aIndices);
    op$.addInput(aValues);
    op$.addInput(aShape);
    op$.addInput(b);
    op$.setAttrType('Tindices', tindices);
    return op$.finish()[0];
  }

  Output<T> snapshot<T>(Output<T> input) {
    var op$ = newOperation('Snapshot', _scope.uniqueName('Snapshot'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  FakeQuantWithMinMaxVarsGradientOutput fakeQuantWithMinMaxVarsGradient(
      Output<double> gradients,
      Output<double> inputs,
      Output<double> min,
      Output<double> max,
      {int numBits: 8,
      bool narrowRange: false}) {
    var op$ = newOperation('FakeQuantWithMinMaxVarsGradient',
        _scope.uniqueName('FakeQuantWithMinMaxVarsGradient'));
    op$.addInput(gradients);
    op$.addInput(inputs);
    op$.addInput(min);
    op$.addInput(max);
    op$.setAttrInt('num_bits', numBits);
    op$.setAttrBool('narrow_range', narrowRange);
    var result$ = op$.finish();
    return new FakeQuantWithMinMaxVarsGradientOutput(
        result$, result$[0], result$[1], result$[2]);
  }

  Output<T> size<T>(Output<T> input, {DataType outType: DataType.DT_INT32}) {
    var op$ = newOperation('Size', _scope.uniqueName('Size'));
    op$.addInput(input);
    op$.setAttrType('out_type', outType);
    return op$.finish()[0];
  }

  Output<String> scalarSummary<T>(Output<String> tags, Output<T> values) {
    var op$ = newOperation('ScalarSummary', _scope.uniqueName('ScalarSummary'));
    op$.addInput(tags);
    op$.addInput(values);
    return op$.finish()[0];
  }

  Output<T> identity<T>(Output<T> input) {
    var op$ = newOperation('Identity', _scope.uniqueName('Identity'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  Output<T> reverseV2<T>(Output<T> tensor, Output<T> axis,
      {DataType tidx: DataType.DT_INT32}) {
    var op$ = newOperation('ReverseV2', _scope.uniqueName('ReverseV2'));
    op$.addInput(tensor);
    op$.addInput(axis);
    op$.setAttrType('Tidx', tidx);
    return op$.finish()[0];
  }

  Output<T> reverse<T>(Output<T> tensor, Output<bool> dims) {
    var op$ = newOperation('Reverse', _scope.uniqueName('Reverse'));
    op$.addInput(tensor);
    op$.addInput(dims);
    return op$.finish()[0];
  }

  Output<T> matrixDiagPart<T>(Output<T> input) {
    var op$ =
        newOperation('MatrixDiagPart', _scope.uniqueName('MatrixDiagPart'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  Output<T> matrixSetDiag<T>(Output<T> input, Output<T> diagonal) {
    var op$ = newOperation('MatrixSetDiag', _scope.uniqueName('MatrixSetDiag'));
    op$.addInput(input);
    op$.addInput(diagonal);
    return op$.finish()[0];
  }

  Output<T> statelessTruncatedNormal<T>(Output<T> shape, Output<T> seed,
      {DataType dtype: DataType.DT_FLOAT, DataType tseed: DataType.DT_INT64}) {
    dtype ??= inferType(shape);
    var op$ = newOperation('StatelessTruncatedNormal',
        _scope.uniqueName('StatelessTruncatedNormal'));
    op$.addInput(shape);
    op$.addInput(seed);
    op$.setAttrType('dtype', dtype);
    op$.setAttrType('Tseed', tseed);
    return op$.finish()[0];
  }

  Output<T> matrixDiag<T>(Output<T> diagonal) {
    var op$ = newOperation('MatrixDiag', _scope.uniqueName('MatrixDiag'));
    op$.addInput(diagonal);
    return op$.finish()[0];
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 23: Placeholder now behaves the same as PlaceholderV2.')
  Output<T> placeholderV2<T>({@required DataType dtype, Shape shape}) {
    var op$ = newOperation('PlaceholderV2', _scope.uniqueName('PlaceholderV2'));
    op$.setAttrType('dtype', dtype);
    op$.setAttrShape('shape', shape);
    return op$.finish()[0];
  }

  Output<T> diagPart<T>(Output<T> input) {
    var op$ = newOperation('DiagPart', _scope.uniqueName('DiagPart'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  FakeQuantWithMinMaxVarsPerChannelGradientOutput
      fakeQuantWithMinMaxVarsPerChannelGradient(Output<double> gradients,
          Output<double> inputs, Output<double> min, Output<double> max,
          {int numBits: 8, bool narrowRange: false}) {
    var op$ = newOperation('FakeQuantWithMinMaxVarsPerChannelGradient',
        _scope.uniqueName('FakeQuantWithMinMaxVarsPerChannelGradient'));
    op$.addInput(gradients);
    op$.addInput(inputs);
    op$.addInput(min);
    op$.addInput(max);
    op$.setAttrInt('num_bits', numBits);
    op$.setAttrBool('narrow_range', narrowRange);
    var result$ = op$.finish();
    return new FakeQuantWithMinMaxVarsPerChannelGradientOutput(
        result$, result$[0], result$[1], result$[2]);
  }

  Output<T> onesLike<T>(Output<T> x) {
    var op$ = newOperation('OnesLike', _scope.uniqueName('OnesLike'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  ParseSingleExampleOutput parseSingleExample<T>(
      Output<String> serialized, List<Output<T>> denseDefaults,
      {int numSparse,
      List<String> sparseKeys,
      List<String> denseKeys,
      List<DataType> sparseTypes,
      List<DataType> tdense,
      List<Shape> denseShapes}) {
    var op$ = newOperation(
        'ParseSingleExample', _scope.uniqueName('ParseSingleExample'));
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
        result$, result$[0], result$[1], result$[2], result$[3]);
  }

  Output<T> guaranteeConst<T>(Output<T> input) {
    var op$ =
        newOperation('GuaranteeConst', _scope.uniqueName('GuaranteeConst'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  Output<T> immutableConst<T>(
      {@required DataType dtype, Shape shape, String memoryRegionName}) {
    var op$ =
        newOperation('ImmutableConst', _scope.uniqueName('ImmutableConst'));
    op$.setAttrType('dtype', dtype);
    op$.setAttrShape('shape', shape);
    op$.setAttrString('memory_region_name', memoryRegionName);
    return op$.finish()[0];
  }

  Output<T> fill<T>(Output<T> dims, Output<T> value,
      {DataType indexType: DataType.DT_INT32}) {
    var op$ = newOperation('Fill', _scope.uniqueName('Fill'));
    op$.addInput(dims);
    op$.addInput(value);
    op$.setAttrType('index_type', indexType);
    return op$.finish()[0];
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
      {bool useLocking: false}) {
    var op$ = newOperation(
        'ApplyCenteredRMSProp', _scope.uniqueName('ApplyCenteredRMSProp'));
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

  Output<T> const$<T>({Tensor value, @required DataType dtype}) {
    var op$ = newOperation('Const', _scope.uniqueName('Const'));
    op$.setAttrTensor('value', value);
    op$.setAttrType('dtype', dtype);
    return op$.finish()[0];
  }

  Output<T> splitV<T>(
      Output<T> value, Output<T> sizeSplits, Output<int> splitDim,
      {int numSplit, DataType tlen: DataType.DT_INT64}) {
    var op$ = newOperation('SplitV', _scope.uniqueName('SplitV'));
    op$.addInput(value);
    op$.addInput(sizeSplits);
    op$.addInput(splitDim);
    op$.setAttrInt('num_split', numSplit);
    op$.setAttrType('Tlen', tlen);
    return op$.finish()[0];
  }

  Output<T> split<T>(Output<int> splitDim, Output<T> value, {int numSplit}) {
    var op$ = newOperation('Split', _scope.uniqueName('Split'));
    op$.addInput(splitDim);
    op$.addInput(value);
    op$.setAttrInt('num_split', numSplit);
    return op$.finish()[0];
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 19: Moving word2vec into tensorflow_models/tutorials and deprecating its ops here as a result')
  void negTrain(Output<double> wIn, Output<double> wOut, Output<int> examples,
      Output<int> labels, Output<double> lr,
      {List<int> vocabCount, int numNegativeSamples}) {
    var op$ = newOperation('NegTrain', _scope.uniqueName('NegTrain'));
    op$.addInput(wIn);
    op$.addInput(wOut);
    op$.addInput(examples);
    op$.addInput(labels);
    op$.addInput(lr);
    op$.setAttrIntList('vocab_count', vocabCount);
    op$.setAttrInt('num_negative_samples', numNegativeSamples);
    op$.finish();
  }

  Output<T> concatV2<T>(List<Output<T>> values, Output<T> axis,
      {int n, DataType tidx: DataType.DT_INT32}) {
    var op$ = newOperation('ConcatV2', _scope.uniqueName('ConcatV2'));
    op$.addInputList(values);
    op$.addInput(axis);
    op$.setAttrInt('N', n);
    op$.setAttrType('Tidx', tidx);
    return op$.finish()[0];
  }

  void resourceApplyPowerSign<T>(Output var$, Output m, Output<T> lr,
      Output<T> logbase, Output<T> signDecay, Output<T> beta, Output<T> grad,
      {bool useLocking: false}) {
    var op$ = newOperation(
        'ResourceApplyPowerSign', _scope.uniqueName('ResourceApplyPowerSign'));
    op$.addInput(var$);
    op$.addInput(m);
    op$.addInput(lr);
    op$.addInput(logbase);
    op$.addInput(signDecay);
    op$.addInput(beta);
    op$.addInput(grad);
    op$.setAttrBool('use_locking', useLocking);
    op$.finish();
  }

  Output<T> concat<T>(Output<int> concatDim, List<Output<T>> values, {int n}) {
    var op$ = newOperation('Concat', _scope.uniqueName('Concat'));
    op$.addInput(concatDim);
    op$.addInputList(values);
    op$.setAttrInt('N', n);
    return op$.finish()[0];
  }

  Output<T> leftShift<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation('LeftShift', _scope.uniqueName('LeftShift'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 19: Use TensorArrayGradV3')
  Output<double> tensorArrayScatter<T>(Output<String> handle,
      Output<int> indices, Output<T> value, Output<double> flowIn) {
    var op$ = newOperation(
        'TensorArrayScatter', _scope.uniqueName('TensorArrayScatter'));
    op$.addInput(handle);
    op$.addInput(indices);
    op$.addInput(value);
    op$.addInput(flowIn);
    return op$.finish()[0];
  }

  Output<T> bitwiseOr<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation('BitwiseOr', _scope.uniqueName('BitwiseOr'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  Output<T> applyAddSign<T>(Output<T> var$, Output<T> m, Output<T> lr,
      Output<T> alpha, Output<T> signDecay, Output<T> beta, Output<T> grad,
      {bool useLocking: false}) {
    var op$ = newOperation('ApplyAddSign', _scope.uniqueName('ApplyAddSign'));
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

  Output<T> bitwiseAnd<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation('BitwiseAnd', _scope.uniqueName('BitwiseAnd'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  Output populationCount<T>(Output<T> x) {
    var op$ =
        newOperation('PopulationCount', _scope.uniqueName('PopulationCount'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<T> decodePng<T>(Output<String> contents,
      {int channels: 0, DataType dtype: DataType.DT_UINT8}) {
    dtype ??= inferType(contents);
    var op$ = newOperation('DecodePng', _scope.uniqueName('DecodePng'));
    op$.addInput(contents);
    op$.setAttrInt('channels', channels);
    op$.setAttrType('dtype', dtype);
    return op$.finish()[0];
  }

  Output<T> invert<T>(Output<T> x) {
    var op$ = newOperation('Invert', _scope.uniqueName('Invert'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<String> fact() {
    var op$ = newOperation('Fact', _scope.uniqueName('Fact'));
    return op$.finish()[0];
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 19: Moving word2vec into tensorflow_models/tutorials and deprecating its ops here as a result')
  SkipgramOutput skipgram(
      {String filename,
      int batchSize,
      int windowSize: 5,
      int minCount: 5,
      double subsample: 0.0010000000474974513}) {
    var op$ = newOperation('Skipgram', _scope.uniqueName('Skipgram'));
    op$.setAttrString('filename', filename);
    op$.setAttrInt('batch_size', batchSize);
    op$.setAttrInt('window_size', windowSize);
    op$.setAttrInt('min_count', minCount);
    op$.setAttrFloat('subsample', subsample);
    var result$ = op$.finish();
    return new SkipgramOutput(result$, result$[0], result$[1], result$[2],
        result$[3], result$[4], result$[5], result$[6]);
  }

  Output<T> resizeBicubicGrad<T>(Output<double> grads, Output<T> originalImage,
      {bool alignCorners: false}) {
    var op$ = newOperation(
        'ResizeBicubicGrad', _scope.uniqueName('ResizeBicubicGrad'));
    op$.addInput(grads);
    op$.addInput(originalImage);
    op$.setAttrBool('align_corners', alignCorners);
    return op$.finish()[0];
  }

  Output<T> sparseApplyMomentum<T>(Output<T> var$, Output<T> accum,
      Output<T> lr, Output<T> grad, Output<T> indices, Output<T> momentum,
      {DataType tindices, bool useLocking: false, bool useNesterov: false}) {
    var op$ = newOperation(
        'SparseApplyMomentum', _scope.uniqueName('SparseApplyMomentum'));
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

  UniqueWithCountsOutput uniqueWithCounts<T>(Output<T> x,
      {DataType outIdx: DataType.DT_INT32}) {
    var op$ =
        newOperation('UniqueWithCounts', _scope.uniqueName('UniqueWithCounts'));
    op$.addInput(x);
    op$.setAttrType('out_idx', outIdx);
    var result$ = op$.finish();
    return new UniqueWithCountsOutput<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  Output serializeIterator(Output resourceHandle) {
    var op$ = newOperation(
        'SerializeIterator', _scope.uniqueName('SerializeIterator'));
    op$.addInput(resourceHandle);
    return op$.finish()[0];
  }

  void resourceApplyCenteredRMSProp<T>(
      Output var$,
      Output mg,
      Output ms,
      Output mom,
      Output<T> lr,
      Output<T> rho,
      Output<T> momentum,
      Output<T> epsilon,
      Output<T> grad,
      {bool useLocking: false}) {
    var op$ = newOperation('ResourceApplyCenteredRMSProp',
        _scope.uniqueName('ResourceApplyCenteredRMSProp'));
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
    op$.finish();
  }

  Output<T> maxPool3DGrad<T>(
      Output<T> origInput, Output<T> origOutput, Output<T> grad,
      {List<int> ksize,
      List<int> strides,
      String padding,
      String dataFormat: 'NDHWC',
      DataType tInput: DataType.DT_FLOAT}) {
    var op$ = newOperation('MaxPool3DGrad', _scope.uniqueName('MaxPool3DGrad'));
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

  void resourceApplyRMSProp<T>(Output var$, Output ms, Output mom, Output<T> lr,
      Output<T> rho, Output<T> momentum, Output<T> epsilon, Output<T> grad,
      {bool useLocking: false}) {
    var op$ = newOperation(
        'ResourceApplyRMSProp', _scope.uniqueName('ResourceApplyRMSProp'));
    op$.addInput(var$);
    op$.addInput(ms);
    op$.addInput(mom);
    op$.addInput(lr);
    op$.addInput(rho);
    op$.addInput(momentum);
    op$.addInput(epsilon);
    op$.addInput(grad);
    op$.setAttrBool('use_locking', useLocking);
    op$.finish();
  }

  Output<T> zerosLike<T>(Output<T> x) {
    var op$ = newOperation('ZerosLike', _scope.uniqueName('ZerosLike'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<int> concatOffset(Output<int> concatDim, List<Output<int>> shape,
      {int n}) {
    var op$ = newOperation('ConcatOffset', _scope.uniqueName('ConcatOffset'));
    op$.addInput(concatDim);
    op$.addInputList(shape);
    op$.setAttrInt('N', n);
    return op$.finish()[0];
  }

  Output<T> sigmoid<T>(Output<T> x) {
    var op$ = newOperation('Sigmoid', _scope.uniqueName('Sigmoid'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  void resourceSparseApplyAdadelta<T>(
      Output var$,
      Output accum,
      Output accumUpdate,
      Output<T> lr,
      Output<T> rho,
      Output<T> epsilon,
      Output<T> grad,
      Output<T> indices,
      {DataType tindices,
      bool useLocking: false}) {
    var op$ = newOperation('ResourceSparseApplyAdadelta',
        _scope.uniqueName('ResourceSparseApplyAdadelta'));
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
    op$.finish();
  }

  void resourceApplyAdam<T>(
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
      {bool useLocking: false,
      bool useNesterov: false}) {
    var op$ = newOperation(
        'ResourceApplyAdam', _scope.uniqueName('ResourceApplyAdam'));
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
    op$.finish();
  }

  void resourceSparseApplyMomentum<T>(Output var$, Output accum, Output<T> lr,
      Output<T> grad, Output<T> indices, Output<T> momentum,
      {DataType tindices, bool useLocking: false, bool useNesterov: false}) {
    var op$ = newOperation('ResourceSparseApplyMomentum',
        _scope.uniqueName('ResourceSparseApplyMomentum'));
    op$.addInput(var$);
    op$.addInput(accum);
    op$.addInput(lr);
    op$.addInput(grad);
    op$.addInput(indices);
    op$.addInput(momentum);
    op$.setAttrType('Tindices', tindices);
    op$.setAttrBool('use_locking', useLocking);
    op$.setAttrBool('use_nesterov', useNesterov);
    op$.finish();
  }

  void resourceApplyMomentum<T>(Output var$, Output accum, Output<T> lr,
      Output<T> grad, Output<T> momentum,
      {bool useLocking: false, bool useNesterov: false}) {
    var op$ = newOperation(
        'ResourceApplyMomentum', _scope.uniqueName('ResourceApplyMomentum'));
    op$.addInput(var$);
    op$.addInput(accum);
    op$.addInput(lr);
    op$.addInput(grad);
    op$.addInput(momentum);
    op$.setAttrBool('use_locking', useLocking);
    op$.setAttrBool('use_nesterov', useNesterov);
    op$.finish();
  }

  Output<T> parallelConcat<T>(List<Output<T>> values, {int n, Shape shape}) {
    var op$ =
        newOperation('ParallelConcat', _scope.uniqueName('ParallelConcat'));
    op$.addInputList(values);
    op$.setAttrInt('N', n);
    op$.setAttrShape('shape', shape);
    return op$.finish()[0];
  }

  Output<T> avgPoolGrad<T>(Output<int> origInputShape, Output<T> grad,
      {List<int> ksize,
      List<int> strides,
      String padding,
      String dataFormat: 'NHWC'}) {
    var op$ = newOperation('AvgPoolGrad', _scope.uniqueName('AvgPoolGrad'));
    op$.addInput(origInputShape);
    op$.addInput(grad);
    op$.setAttrIntList('ksize', ksize);
    op$.setAttrIntList('strides', strides);
    op$.setAttrString('padding', padding);
    op$.setAttrString('data_format', dataFormat);
    return op$.finish()[0];
  }

  Output<double> editDistance<T>(
      Output<int> hypothesisIndices,
      Output<T> hypothesisValues,
      Output<int> hypothesisShape,
      Output<int> truthIndices,
      Output<T> truthValues,
      Output<int> truthShape,
      {bool normalize: true}) {
    var op$ = newOperation('EditDistance', _scope.uniqueName('EditDistance'));
    op$.addInput(hypothesisIndices);
    op$.addInput(hypothesisValues);
    op$.addInput(hypothesisShape);
    op$.addInput(truthIndices);
    op$.addInput(truthValues);
    op$.addInput(truthShape);
    op$.setAttrBool('normalize', normalize);
    return op$.finish()[0];
  }

  void resourceApplyFtrlV2<T>(
      Output var$,
      Output accum,
      Output linear,
      Output<T> grad,
      Output<T> lr,
      Output<T> l1,
      Output<T> l2,
      Output<T> l2Shrinkage,
      Output<T> lrPower,
      {bool useLocking: false}) {
    var op$ = newOperation(
        'ResourceApplyFtrlV2', _scope.uniqueName('ResourceApplyFtrlV2'));
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
    op$.finish();
  }

  Output<T> stackPop<T>(Output<String> handle, {DataType elemType}) {
    var op$ = newOperation('StackPop', _scope.uniqueName('StackPop'));
    op$.addInput(handle);
    op$.setAttrType('elem_type', elemType);
    return op$.finish()[0];
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
      {DataType tindices,
      bool useLocking: false}) {
    var op$ = newOperation(
        'SparseApplyFtrlV2', _scope.uniqueName('SparseApplyFtrlV2'));
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

  void resourceSparseApplyFtrl<T>(
      Output var$,
      Output accum,
      Output linear,
      Output<T> grad,
      Output<T> indices,
      Output<T> lr,
      Output<T> l1,
      Output<T> l2,
      Output<T> lrPower,
      {DataType tindices,
      bool useLocking: false}) {
    var op$ = newOperation('ResourceSparseApplyFtrl',
        _scope.uniqueName('ResourceSparseApplyFtrl'));
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
    op$.finish();
  }

  Output<T> sign<T>(Output<T> x) {
    var op$ = newOperation('Sign', _scope.uniqueName('Sign'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  void resourceApplyAddSign<T>(Output var$, Output m, Output<T> lr,
      Output<T> alpha, Output<T> signDecay, Output<T> beta, Output<T> grad,
      {bool useLocking: false}) {
    var op$ = newOperation(
        'ResourceApplyAddSign', _scope.uniqueName('ResourceApplyAddSign'));
    op$.addInput(var$);
    op$.addInput(m);
    op$.addInput(lr);
    op$.addInput(alpha);
    op$.addInput(signDecay);
    op$.addInput(beta);
    op$.addInput(grad);
    op$.setAttrBool('use_locking', useLocking);
    op$.finish();
  }

  Output<T> neg<T>(Output<T> x) {
    var op$ = newOperation('Neg', _scope.uniqueName('Neg'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<String> barrier(
      {List<DataType> componentTypes,
      List<Shape> shapes,
      int capacity: -1,
      String container,
      String sharedName}) {
    var op$ = newOperation('Barrier', _scope.uniqueName('Barrier'));
    op$.setAttrTypeList('component_types', componentTypes);
    op$.setAttrShapeList('shapes', shapes);
    op$.setAttrInt('capacity', capacity);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  void resourceSparseApplyProximalAdagrad<T>(
      Output var$,
      Output accum,
      Output<T> lr,
      Output<T> l1,
      Output<T> l2,
      Output<T> grad,
      Output<T> indices,
      {DataType tindices,
      bool useLocking: false}) {
    var op$ = newOperation('ResourceSparseApplyProximalAdagrad',
        _scope.uniqueName('ResourceSparseApplyProximalAdagrad'));
    op$.addInput(var$);
    op$.addInput(accum);
    op$.addInput(lr);
    op$.addInput(l1);
    op$.addInput(l2);
    op$.addInput(grad);
    op$.addInput(indices);
    op$.setAttrType('Tindices', tindices);
    op$.setAttrBool('use_locking', useLocking);
    op$.finish();
  }

  Output<T> bitcast<T>(Output<T> input, {DataType type}) {
    var op$ = newOperation('Bitcast', _scope.uniqueName('Bitcast'));
    op$.addInput(input);
    op$.setAttrType('type', type);
    return op$.finish()[0];
  }

  Output<T> sparseToDense<T>(Output<T> sparseIndices, Output<T> outputShape,
      Output<T> sparseValues, Output<T> defaultValue,
      {bool validateIndices: true, DataType tindices}) {
    var op$ = newOperation('SparseToDense', _scope.uniqueName('SparseToDense'));
    op$.addInput(sparseIndices);
    op$.addInput(outputShape);
    op$.addInput(sparseValues);
    op$.addInput(defaultValue);
    op$.setAttrBool('validate_indices', validateIndices);
    op$.setAttrType('Tindices', tindices);
    return op$.finish()[0];
  }

  void resourceApplyAdagradDA<T>(
      Output var$,
      Output gradientAccumulator,
      Output gradientSquaredAccumulator,
      Output<T> grad,
      Output<T> lr,
      Output<T> l1,
      Output<T> l2,
      Output<int> globalStep,
      {bool useLocking: false}) {
    var op$ = newOperation(
        'ResourceApplyAdagradDA', _scope.uniqueName('ResourceApplyAdagradDA'));
    op$.addInput(var$);
    op$.addInput(gradientAccumulator);
    op$.addInput(gradientSquaredAccumulator);
    op$.addInput(grad);
    op$.addInput(lr);
    op$.addInput(l1);
    op$.addInput(l2);
    op$.addInput(globalStep);
    op$.setAttrBool('use_locking', useLocking);
    op$.finish();
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
      {DataType tindices,
      bool useLocking: false}) {
    var op$ = newOperation(
        'SparseApplyAdagradDA', _scope.uniqueName('SparseApplyAdagradDA'));
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

  void resourceSparseApplyAdagrad<T>(Output var$, Output accum, Output<T> lr,
      Output<T> grad, Output<T> indices,
      {DataType tindices, bool useLocking: false}) {
    var op$ = newOperation('ResourceSparseApplyAdagrad',
        _scope.uniqueName('ResourceSparseApplyAdagrad'));
    op$.addInput(var$);
    op$.addInput(accum);
    op$.addInput(lr);
    op$.addInput(grad);
    op$.addInput(indices);
    op$.setAttrType('Tindices', tindices);
    op$.setAttrBool('use_locking', useLocking);
    op$.finish();
  }

  Output<T> sqrt<T>(Output<T> x) {
    var op$ = newOperation('Sqrt', _scope.uniqueName('Sqrt'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  void resourceApplyAdagrad<T>(
      Output var$, Output accum, Output<T> lr, Output<T> grad,
      {bool useLocking: false}) {
    var op$ = newOperation(
        'ResourceApplyAdagrad', _scope.uniqueName('ResourceApplyAdagrad'));
    op$.addInput(var$);
    op$.addInput(accum);
    op$.addInput(lr);
    op$.addInput(grad);
    op$.setAttrBool('use_locking', useLocking);
    op$.finish();
  }

  Output<T> applyAdadelta<T>(
      Output<T> var$,
      Output<T> accum,
      Output<T> accumUpdate,
      Output<T> lr,
      Output<T> rho,
      Output<T> epsilon,
      Output<T> grad,
      {bool useLocking: false}) {
    var op$ = newOperation('ApplyAdadelta', _scope.uniqueName('ApplyAdadelta'));
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

  Output<T> cholesky<T>(Output<T> input) {
    var op$ = newOperation('Cholesky', _scope.uniqueName('Cholesky'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  Output<T> sparseSegmentSqrtNWithNumSegments<T>(Output<T> data,
      Output<T> indices, Output<int> segmentIds, Output<T> numSegments,
      {DataType tidx: DataType.DT_INT32,
      DataType tnumsegments: DataType.DT_INT32}) {
    var op$ = newOperation('SparseSegmentSqrtNWithNumSegments',
        _scope.uniqueName('SparseSegmentSqrtNWithNumSegments'));
    op$.addInput(data);
    op$.addInput(indices);
    op$.addInput(segmentIds);
    op$.addInput(numSegments);
    op$.setAttrType('Tidx', tidx);
    op$.setAttrType('Tnumsegments', tnumsegments);
    return op$.finish()[0];
  }

  void resourceApplyProximalGradientDescent<T>(
      Output var$, Output<T> alpha, Output<T> l1, Output<T> l2, Output<T> delta,
      {bool useLocking: false}) {
    var op$ = newOperation('ResourceApplyProximalGradientDescent',
        _scope.uniqueName('ResourceApplyProximalGradientDescent'));
    op$.addInput(var$);
    op$.addInput(alpha);
    op$.addInput(l1);
    op$.addInput(l2);
    op$.addInput(delta);
    op$.setAttrBool('use_locking', useLocking);
    op$.finish();
  }

  Output<T> tile<T>(Output<T> input, Output<T> multiples,
      {DataType tmultiples: DataType.DT_INT32}) {
    var op$ = newOperation('Tile', _scope.uniqueName('Tile'));
    op$.addInput(input);
    op$.addInput(multiples);
    op$.setAttrType('Tmultiples', tmultiples);
    return op$.finish()[0];
  }

  Output<T> sparseApplyProximalGradientDescent<T>(
      Output<T> var$,
      Output<T> alpha,
      Output<T> l1,
      Output<T> l2,
      Output<T> grad,
      Output<T> indices,
      {DataType tindices,
      bool useLocking: false}) {
    var op$ = newOperation('SparseApplyProximalGradientDescent',
        _scope.uniqueName('SparseApplyProximalGradientDescent'));
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

  void queueEnqueue<T>(Output<String> handle, List<Output<T>> components,
      {List<DataType> tcomponents, int timeoutMs: -1}) {
    var op$ = newOperation('QueueEnqueue', _scope.uniqueName('QueueEnqueue'));
    op$.addInput(handle);
    op$.addInputList(components);
    op$.setAttrTypeList('Tcomponents', tcomponents);
    op$.setAttrInt('timeout_ms', timeoutMs);
    op$.finish();
  }

  Output<int> stringToHashBucketStrong(Output<String> input,
      {int numBuckets, List<int> key}) {
    var op$ = newOperation('StringToHashBucketStrong',
        _scope.uniqueName('StringToHashBucketStrong'));
    op$.addInput(input);
    op$.setAttrInt('num_buckets', numBuckets);
    op$.setAttrIntList('key', key);
    return op$.finish()[0];
  }

  Output<T> applyProximalGradientDescent<T>(Output<T> var$, Output<T> alpha,
      Output<T> l1, Output<T> l2, Output<T> delta,
      {bool useLocking: false}) {
    var op$ = newOperation('ApplyProximalGradientDescent',
        _scope.uniqueName('ApplyProximalGradientDescent'));
    op$.addInput(var$);
    op$.addInput(alpha);
    op$.addInput(l1);
    op$.addInput(l2);
    op$.addInput(delta);
    op$.setAttrBool('use_locking', useLocking);
    return op$.finish()[0];
  }

  BarrierTakeManyOutput barrierTakeMany<T>(
      Output<String> handle, Output<int> numElements,
      {List<DataType> componentTypes,
      bool allowSmallBatch: false,
      bool waitForIncomplete: false,
      int timeoutMs: -1}) {
    var op$ =
        newOperation('BarrierTakeMany', _scope.uniqueName('BarrierTakeMany'));
    op$.addInput(handle);
    op$.addInput(numElements);
    op$.setAttrTypeList('component_types', componentTypes);
    op$.setAttrBool('allow_small_batch', allowSmallBatch);
    op$.setAttrBool('wait_for_incomplete', waitForIncomplete);
    op$.setAttrInt('timeout_ms', timeoutMs);
    var result$ = op$.finish();
    return new BarrierTakeManyOutput<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  Output<T> matrixLogarithm<T>(Output<T> input) {
    var op$ =
        newOperation('MatrixLogarithm', _scope.uniqueName('MatrixLogarithm'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  void resourceApplyGradientDescent<T>(
      Output var$, Output<T> alpha, Output<T> delta,
      {bool useLocking: false}) {
    var op$ = newOperation('ResourceApplyGradientDescent',
        _scope.uniqueName('ResourceApplyGradientDescent'));
    op$.addInput(var$);
    op$.addInput(alpha);
    op$.addInput(delta);
    op$.setAttrBool('use_locking', useLocking);
    op$.finish();
  }

  Output<T> cosh<T>(Output<T> x) {
    var op$ = newOperation('Cosh', _scope.uniqueName('Cosh'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<T> applyGradientDescent<T>(
      Output<T> var$, Output<T> alpha, Output<T> delta,
      {bool useLocking: false}) {
    var op$ = newOperation(
        'ApplyGradientDescent', _scope.uniqueName('ApplyGradientDescent'));
    op$.addInput(var$);
    op$.addInput(alpha);
    op$.addInput(delta);
    op$.setAttrBool('use_locking', useLocking);
    return op$.finish()[0];
  }

  Output<T> l2Loss<T>(Output<T> t) {
    var op$ = newOperation('L2Loss', _scope.uniqueName('L2Loss'));
    op$.addInput(t);
    return op$.finish()[0];
  }

  Output<T> cast<T>(Output<T> x, {DataType srcT, DataType dstT}) {
    var op$ = newOperation('Cast', _scope.uniqueName('Cast'));
    op$.addInput(x);
    op$.setAttrType('SrcT', srcT);
    op$.setAttrType('DstT', dstT);
    return op$.finish()[0];
  }

  Output<T> segmentMax<T>(Output<T> data, Output<T> segmentIds,
      {DataType tindices}) {
    var op$ = newOperation('SegmentMax', _scope.uniqueName('SegmentMax'));
    op$.addInput(data);
    op$.addInput(segmentIds);
    op$.setAttrType('Tindices', tindices);
    return op$.finish()[0];
  }

  Output<T> countUpTo<T>(Output<T> ref, {int limit}) {
    var op$ = newOperation('CountUpTo', _scope.uniqueName('CountUpTo'));
    op$.addInput(ref);
    op$.setAttrInt('limit', limit);
    return op$.finish()[0];
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 9: Use tf.nn.batch_normalization()')
  Output<T> batchNormWithGlobalNormalization<T>(
      Output<T> t, Output<T> m, Output<T> v, Output<T> beta, Output<T> gamma,
      {double varianceEpsilon, bool scaleAfterNormalization}) {
    var op$ = newOperation('BatchNormWithGlobalNormalization',
        _scope.uniqueName('BatchNormWithGlobalNormalization'));
    op$.addInput(t);
    op$.addInput(m);
    op$.addInput(v);
    op$.addInput(beta);
    op$.addInput(gamma);
    op$.setAttrFloat('variance_epsilon', varianceEpsilon);
    op$.setAttrBool('scale_after_normalization', scaleAfterNormalization);
    return op$.finish()[0];
  }

  Output<double> fakeQuantWithMinMaxArgs(Output<double> inputs,
      {double min: -6.0,
      double max: 6.0,
      int numBits: 8,
      bool narrowRange: false}) {
    var op$ = newOperation('FakeQuantWithMinMaxArgs',
        _scope.uniqueName('FakeQuantWithMinMaxArgs'));
    op$.addInput(inputs);
    op$.setAttrFloat('min', min);
    op$.setAttrFloat('max', max);
    op$.setAttrInt('num_bits', numBits);
    op$.setAttrBool('narrow_range', narrowRange);
    return op$.finish()[0];
  }

  void resourceScatterNdUpdate<T>(
      Output ref, Output<T> indices, Output<T> updates,
      {DataType tindices, bool useLocking: true}) {
    var op$ = newOperation('ResourceScatterNdUpdate',
        _scope.uniqueName('ResourceScatterNdUpdate'));
    op$.addInput(ref);
    op$.addInput(indices);
    op$.addInput(updates);
    op$.setAttrType('Tindices', tindices);
    op$.setAttrBool('use_locking', useLocking);
    op$.finish();
  }

  Output<T> scatterNdUpdate<T>(
      Output<T> ref, Output<T> indices, Output<T> updates,
      {DataType tindices, bool useLocking: true}) {
    var op$ =
        newOperation('ScatterNdUpdate', _scope.uniqueName('ScatterNdUpdate'));
    op$.addInput(ref);
    op$.addInput(indices);
    op$.addInput(updates);
    op$.setAttrType('Tindices', tindices);
    op$.setAttrBool('use_locking', useLocking);
    return op$.finish()[0];
  }

  Output<T> scatterMul<T>(Output<T> ref, Output<T> indices, Output<T> updates,
      {DataType tindices, bool useLocking: false}) {
    var op$ = newOperation('ScatterMul', _scope.uniqueName('ScatterMul'));
    op$.addInput(ref);
    op$.addInput(indices);
    op$.addInput(updates);
    op$.setAttrType('Tindices', tindices);
    op$.setAttrBool('use_locking', useLocking);
    return op$.finish()[0];
  }

  Output<T> scatterSub<T>(Output<T> ref, Output<T> indices, Output<T> updates,
      {DataType tindices, bool useLocking: false}) {
    var op$ = newOperation('ScatterSub', _scope.uniqueName('ScatterSub'));
    op$.addInput(ref);
    op$.addInput(indices);
    op$.addInput(updates);
    op$.setAttrType('Tindices', tindices);
    op$.setAttrBool('use_locking', useLocking);
    return op$.finish()[0];
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 13: Use MatrixTriangularSolve instead.')
  Output<T> batchMatrixTriangularSolve<T>(Output<T> matrix, Output<T> rhs,
      {bool lower: true, bool adjoint: false}) {
    var op$ = newOperation('BatchMatrixTriangularSolve',
        _scope.uniqueName('BatchMatrixTriangularSolve'));
    op$.addInput(matrix);
    op$.addInput(rhs);
    op$.setAttrBool('lower', lower);
    op$.setAttrBool('adjoint', adjoint);
    return op$.finish()[0];
  }

  Output<T> mean<T>(Output<T> input, Output<T> reductionIndices,
      {bool keepDims: false, DataType tidx: DataType.DT_INT32}) {
    var op$ = newOperation('Mean', _scope.uniqueName('Mean'));
    op$.addInput(input);
    op$.addInput(reductionIndices);
    op$.setAttrBool('keep_dims', keepDims);
    op$.setAttrType('Tidx', tidx);
    return op$.finish()[0];
  }

  Output<T> scatterAdd<T>(Output<T> ref, Output<T> indices, Output<T> updates,
      {DataType tindices, bool useLocking: false}) {
    var op$ = newOperation('ScatterAdd', _scope.uniqueName('ScatterAdd'));
    op$.addInput(ref);
    op$.addInput(indices);
    op$.addInput(updates);
    op$.setAttrType('Tindices', tindices);
    op$.setAttrBool('use_locking', useLocking);
    return op$.finish()[0];
  }

  Output<T> scatterUpdate<T>(
      Output<T> ref, Output<T> indices, Output<T> updates,
      {DataType tindices, bool useLocking: true}) {
    var op$ = newOperation('ScatterUpdate', _scope.uniqueName('ScatterUpdate'));
    op$.addInput(ref);
    op$.addInput(indices);
    op$.addInput(updates);
    op$.setAttrType('Tindices', tindices);
    op$.setAttrBool('use_locking', useLocking);
    return op$.finish()[0];
  }

  Output<T> assignSub<T>(Output<T> ref, Output<T> value,
      {bool useLocking: false}) {
    var op$ = newOperation('AssignSub', _scope.uniqueName('AssignSub'));
    op$.addInput(ref);
    op$.addInput(value);
    op$.setAttrBool('use_locking', useLocking);
    return op$.finish()[0];
  }

  Output<T> assignAdd<T>(Output<T> ref, Output<T> value,
      {bool useLocking: false}) {
    var op$ = newOperation('AssignAdd', _scope.uniqueName('AssignAdd'));
    op$.addInput(ref);
    op$.addInput(value);
    op$.setAttrBool('use_locking', useLocking);
    return op$.finish()[0];
  }

  Output<T> betainc<T>(Output<T> a, Output<T> b, Output<T> x) {
    var op$ = newOperation('Betainc', _scope.uniqueName('Betainc'));
    op$.addInput(a);
    op$.addInput(b);
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<T> assign<T>(Output<T> ref, Output<T> value,
      {bool validateShape: true, bool useLocking: true}) {
    var op$ = newOperation('Assign', _scope.uniqueName('Assign'));
    op$.addInput(ref);
    op$.addInput(value);
    op$.setAttrBool('validate_shape', validateShape);
    op$.setAttrBool('use_locking', useLocking);
    return op$.finish()[0];
  }

  Output<bool> isVariableInitialized<T>(Output<T> ref, {DataType dtype}) {
    dtype ??= inferType(ref);
    var op$ = newOperation(
        'IsVariableInitialized', _scope.uniqueName('IsVariableInitialized'));
    op$.addInput(ref);
    op$.setAttrType('dtype', dtype);
    return op$.finish()[0];
  }

  Output<T> variableV2<T>(
      {Shape shape,
      @required DataType dtype,
      String container,
      String sharedName}) {
    var op$ = newOperation('VariableV2', _scope.uniqueName('VariableV2'));
    op$.setAttrShape('shape', shape);
    op$.setAttrType('dtype', dtype);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  Output iteratorFromStringHandle(Output<String> stringHandle,
      {List<DataType> outputTypes, List<Shape> outputShapes}) {
    var op$ = newOperation('IteratorFromStringHandle',
        _scope.uniqueName('IteratorFromStringHandle'));
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
  void writeAudioSummary(Output writer, Output<int> step, Output<String> tag,
      Output<double> tensor, Output<double> sampleRate,
      {int maxOutputs: 3}) {
    var op$ = newOperation(
        'WriteAudioSummary', _scope.uniqueName('WriteAudioSummary'));
    op$.addInput(writer);
    op$.addInput(step);
    op$.addInput(tag);
    op$.addInput(tensor);
    op$.addInput(sampleRate);
    op$.setAttrInt('max_outputs', maxOutputs);
    op$.finish();
  }

  @Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayCloseV3')
  void tensorArrayClose(Output<String> handle) {
    var op$ =
        newOperation('TensorArrayClose', _scope.uniqueName('TensorArrayClose'));
    op$.addInput(handle);
    op$.finish();
  }

  Output<T> matrixBandPart<T>(
      Output<T> input, Output<T> numLower, Output<T> numUpper,
      {DataType tindex: DataType.DT_INT64}) {
    var op$ =
        newOperation('MatrixBandPart', _scope.uniqueName('MatrixBandPart'));
    op$.addInput(input);
    op$.addInput(numLower);
    op$.addInput(numUpper);
    op$.setAttrType('Tindex', tindex);
    return op$.finish()[0];
  }

  TensorArrayConcatV2Output tensorArrayConcatV2<T>(
      Output<String> handle, Output<double> flowIn,
      {DataType dtype, Shape elementShapeExcept0}) {
    dtype ??= inferType(handle);
    var op$ = newOperation(
        'TensorArrayConcatV2', _scope.uniqueName('TensorArrayConcatV2'));
    op$.addInput(handle);
    op$.addInput(flowIn);
    op$.setAttrType('dtype', dtype);
    op$.setAttrShape('element_shape_except0', elementShapeExcept0);
    var result$ = op$.finish();
    return new TensorArrayConcatV2Output<T>(result$, result$[0], result$[1]);
  }

  Output<T> matrixSolve<T>(Output<T> matrix, Output<T> rhs,
      {bool adjoint: false}) {
    var op$ = newOperation('MatrixSolve', _scope.uniqueName('MatrixSolve'));
    op$.addInput(matrix);
    op$.addInput(rhs);
    op$.setAttrBool('adjoint', adjoint);
    return op$.finish()[0];
  }

  void writeFile(Output<String> filename, Output<String> contents) {
    var op$ = newOperation('WriteFile', _scope.uniqueName('WriteFile'));
    op$.addInput(filename);
    op$.addInput(contents);
    op$.finish();
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
  void writeImageSummary<T>(Output writer, Output<int> step, Output<String> tag,
      Output<T> tensor, Output badColor,
      {int maxImages: 3}) {
    var op$ = newOperation(
        'WriteImageSummary', _scope.uniqueName('WriteImageSummary'));
    op$.addInput(writer);
    op$.addInput(step);
    op$.addInput(tag);
    op$.addInput(tensor);
    op$.addInput(badColor);
    op$.setAttrInt('max_images', maxImages);
    op$.finish();
  }

  Output<T> tan<T>(Output<T> x) {
    var op$ = newOperation('Tan', _scope.uniqueName('Tan'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  /// Writes a `Summary` protocol buffer with a histogram.
  /// The generated
  /// [`Summary`](https://www.tensorflow.org/code/tensorflow/core/framework/summary.proto)
  /// has one summary value containing a histogram for `values`.
  /// This op reports an `InvalidArgument` error if any value is not finite.
  void writeHistogramSummary<T>(
      Output writer, Output<int> step, Output<String> tag, Output<T> values) {
    var op$ = newOperation(
        'WriteHistogramSummary', _scope.uniqueName('WriteHistogramSummary'));
    op$.addInput(writer);
    op$.addInput(step);
    op$.addInput(tag);
    op$.addInput(values);
    op$.finish();
  }

  Output<T> batchMatMul<T>(Output<T> x, Output<T> y,
      {bool adjX: false, bool adjY: false}) {
    var op$ = newOperation('BatchMatMul', _scope.uniqueName('BatchMatMul'));
    op$.addInput(x);
    op$.addInput(y);
    op$.setAttrBool('adj_x', adjX);
    op$.setAttrBool('adj_y', adjY);
    return op$.finish()[0];
  }

  BatchOutput batch<T>(List<Output<T>> inTensors,
      {int numBatchThreads,
      int maxBatchSize,
      int maxEnqueuedBatches: 10,
      int batchTimeoutMicros,
      List<int> allowedBatchSizes,
      int gradTimeoutMicros,
      String container,
      String sharedName,
      String batchingQueue,
      List<DataType> t}) {
    var op$ = newOperation('Batch', _scope.uniqueName('Batch'));
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
    return new BatchOutput<T>(result$, result$[0], result$[1], result$[2]);
  }

  /// Outputs a `Summary` protocol buffer with a tensor.
  void writeSummary<T>(Output writer, Output<int> step, Output<T> tensor,
      Output<String> tag, Output<String> summaryMetadata) {
    var op$ = newOperation('WriteSummary', _scope.uniqueName('WriteSummary'));
    op$.addInput(writer);
    op$.addInput(step);
    op$.addInput(tensor);
    op$.addInput(tag);
    op$.addInput(summaryMetadata);
    op$.finish();
  }

  /// Flushes the writer's unwritten events.
  void flushSummaryWriter(Output writer) {
    var op$ = newOperation(
        'FlushSummaryWriter', _scope.uniqueName('FlushSummaryWriter'));
    op$.addInput(writer);
    op$.finish();
  }

  /// Creates summary database writer accessible by given resource handle.
  /// This can be used to write tensors from the execution graph directly
  /// to a database. Only SQLite is supported right now. This function
  /// will create the schema if it doesn't exist. Entries in the Users,
  /// Experiments, and Runs tables will be created automatically if they
  /// don't already exist.
  void createSummaryDbWriter(
      Output writer,
      Output<String> dbUri,
      Output<String> experimentName,
      Output<String> runName,
      Output<String> userName) {
    var op$ = newOperation(
        'CreateSummaryDbWriter', _scope.uniqueName('CreateSummaryDbWriter'));
    op$.addInput(writer);
    op$.addInput(dbUri);
    op$.addInput(experimentName);
    op$.addInput(runName);
    op$.addInput(userName);
    op$.finish();
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
      {DataType tindices,
      bool useLocking: false}) {
    var op$ = newOperation(
        'SparseApplyRMSProp', _scope.uniqueName('SparseApplyRMSProp'));
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
  Output summaryWriter({String sharedName, String container}) {
    var op$ = newOperation('SummaryWriter', _scope.uniqueName('SummaryWriter'));
    op$.setAttrString('shared_name', sharedName);
    op$.setAttrString('container', container);
    return op$.finish()[0];
  }

  Output<String> substr<T>(Output<String> input, Output<T> pos, Output<T> len) {
    var op$ = newOperation('Substr', _scope.uniqueName('Substr'));
    op$.addInput(input);
    op$.addInput(pos);
    op$.addInput(len);
    return op$.finish()[0];
  }

  Output<String> decodeBase64(Output<String> input) {
    var op$ = newOperation('DecodeBase64', _scope.uniqueName('DecodeBase64'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  Output<String> encodeBase64(Output<String> input, {bool pad: false}) {
    var op$ = newOperation('EncodeBase64', _scope.uniqueName('EncodeBase64'));
    op$.addInput(input);
    op$.setAttrBool('pad', pad);
    return op$.finish()[0];
  }

  Output<String> stringJoin(List<Output<String>> inputs,
      {int n, String separator}) {
    var op$ = newOperation('StringJoin', _scope.uniqueName('StringJoin'));
    op$.addInputList(inputs);
    op$.setAttrInt('N', n);
    op$.setAttrString('separator', separator);
    return op$.finish()[0];
  }

  Output<T> softsign<T>(Output<T> features) {
    var op$ = newOperation('Softsign', _scope.uniqueName('Softsign'));
    op$.addInput(features);
    return op$.finish()[0];
  }

  QuantizedAddOutput quantizedAdd<T>(
      Output<T> x,
      Output<T> y,
      Output<double> minX,
      Output<double> maxX,
      Output<double> minY,
      Output<double> maxY,
      {DataType t1,
      DataType t2,
      DataType toutput: DataType.DT_QINT32}) {
    var op$ = newOperation('QuantizedAdd', _scope.uniqueName('QuantizedAdd'));
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
        result$, result$[0], result$[1], result$[2]);
  }

  Output<int> stringToHashBucket(Output<String> stringTensor,
      {int numBuckets}) {
    var op$ = newOperation(
        'StringToHashBucket', _scope.uniqueName('StringToHashBucket'));
    op$.addInput(stringTensor);
    op$.setAttrInt('num_buckets', numBuckets);
    return op$.finish()[0];
  }

  Output<bool> isFinite<T>(Output<T> x) {
    var op$ = newOperation('IsFinite', _scope.uniqueName('IsFinite'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<String> regexReplace(
      Output<String> input, Output<String> pattern, Output<String> rewrite,
      {bool replaceGlobal: true}) {
    var op$ = newOperation('RegexReplace', _scope.uniqueName('RegexReplace'));
    op$.addInput(input);
    op$.addInput(pattern);
    op$.addInput(rewrite);
    op$.setAttrBool('replace_global', replaceGlobal);
    return op$.finish()[0];
  }

  Output<T> applyAdagrad<T>(
      Output<T> var$, Output<T> accum, Output<T> lr, Output<T> grad,
      {bool useLocking: false}) {
    var op$ = newOperation('ApplyAdagrad', _scope.uniqueName('ApplyAdagrad'));
    op$.addInput(var$);
    op$.addInput(accum);
    op$.addInput(lr);
    op$.addInput(grad);
    op$.setAttrBool('use_locking', useLocking);
    return op$.finish()[0];
  }

  Output<T> statelessRandomNormal<T>(Output<T> shape, Output<T> seed,
      {DataType dtype: DataType.DT_FLOAT, DataType tseed: DataType.DT_INT64}) {
    dtype ??= inferType(shape);
    var op$ = newOperation(
        'StatelessRandomNormal', _scope.uniqueName('StatelessRandomNormal'));
    op$.addInput(shape);
    op$.addInput(seed);
    op$.setAttrType('dtype', dtype);
    op$.setAttrType('Tseed', tseed);
    return op$.finish()[0];
  }

  Output<T> statelessRandomUniform<T>(Output<T> shape, Output<T> seed,
      {DataType dtype: DataType.DT_FLOAT, DataType tseed: DataType.DT_INT64}) {
    dtype ??= inferType(shape);
    var op$ = newOperation(
        'StatelessRandomUniform', _scope.uniqueName('StatelessRandomUniform'));
    op$.addInput(shape);
    op$.addInput(seed);
    op$.setAttrType('dtype', dtype);
    op$.setAttrType('Tseed', tseed);
    return op$.finish()[0];
  }

  QuantizedResizeBilinearOutput quantizedResizeBilinear<T>(Output<T> images,
      Output<int> size, Output<double> min, Output<double> max,
      {bool alignCorners: false}) {
    var op$ = newOperation('QuantizedResizeBilinear',
        _scope.uniqueName('QuantizedResizeBilinear'));
    op$.addInput(images);
    op$.addInput(size);
    op$.addInput(min);
    op$.addInput(max);
    op$.setAttrBool('align_corners', alignCorners);
    var result$ = op$.finish();
    return new QuantizedResizeBilinearOutput<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  Output<T> randomGamma<T>(Output<T> shape, Output<T> alpha,
      {int seed: 0, int seed2: 0, DataType s}) {
    var op$ = newOperation('RandomGamma', _scope.uniqueName('RandomGamma'));
    op$.addInput(shape);
    op$.addInput(alpha);
    op$.setAttrInt('seed', seed);
    op$.setAttrInt('seed2', seed2);
    op$.setAttrType('S', s);
    return op$.finish()[0];
  }

  Output<T> randomShuffle<T>(Output<T> value, {int seed: 0, int seed2: 0}) {
    var op$ = newOperation('RandomShuffle', _scope.uniqueName('RandomShuffle'));
    op$.addInput(value);
    op$.setAttrInt('seed', seed);
    op$.setAttrInt('seed2', seed2);
    return op$.finish()[0];
  }

  Output<T> invertPermutation<T>(Output<T> x) {
    var op$ = newOperation(
        'InvertPermutation', _scope.uniqueName('InvertPermutation'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<String> readFile(Output<String> filename) {
    var op$ = newOperation('ReadFile', _scope.uniqueName('ReadFile'));
    op$.addInput(filename);
    return op$.finish()[0];
  }

  Output<T> truncatedNormal<T>(Output<T> shape,
      {int seed: 0, int seed2: 0, DataType dtype}) {
    dtype ??= inferType(shape);
    var op$ =
        newOperation('TruncatedNormal', _scope.uniqueName('TruncatedNormal'));
    op$.addInput(shape);
    op$.setAttrInt('seed', seed);
    op$.setAttrInt('seed2', seed2);
    op$.setAttrType('dtype', dtype);
    return op$.finish()[0];
  }

  Output<T> erf<T>(Output<T> x) {
    var op$ = newOperation('Erf', _scope.uniqueName('Erf'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<T> randomStandardNormal<T>(Output<T> shape,
      {int seed: 0, int seed2: 0, DataType dtype}) {
    dtype ??= inferType(shape);
    var op$ = newOperation(
        'RandomStandardNormal', _scope.uniqueName('RandomStandardNormal'));
    op$.addInput(shape);
    op$.setAttrInt('seed', seed);
    op$.setAttrInt('seed2', seed2);
    op$.setAttrType('dtype', dtype);
    return op$.finish()[0];
  }

  Output<T> erfc<T>(Output<T> x) {
    var op$ = newOperation('Erfc', _scope.uniqueName('Erfc'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<T> randomUniformInt<T>(
      Output<T> shape, Output<T> minval, Output<T> maxval,
      {int seed: 0, int seed2: 0, DataType tout}) {
    var op$ =
        newOperation('RandomUniformInt', _scope.uniqueName('RandomUniformInt'));
    op$.addInput(shape);
    op$.addInput(minval);
    op$.addInput(maxval);
    op$.setAttrInt('seed', seed);
    op$.setAttrInt('seed2', seed2);
    op$.setAttrType('Tout', tout);
    return op$.finish()[0];
  }

  Output<T> randomUniform<T>(Output<T> shape,
      {int seed: 0, int seed2: 0, DataType dtype}) {
    dtype ??= inferType(shape);
    var op$ = newOperation('RandomUniform', _scope.uniqueName('RandomUniform'));
    op$.addInput(shape);
    op$.setAttrInt('seed', seed);
    op$.setAttrInt('seed2', seed2);
    op$.setAttrType('dtype', dtype);
    return op$.finish()[0];
  }

  SparseFillEmptyRowsGradOutput sparseFillEmptyRowsGrad<T>(
      Output<int> reverseIndexMap, Output<T> gradValues) {
    var op$ = newOperation('SparseFillEmptyRowsGrad',
        _scope.uniqueName('SparseFillEmptyRowsGrad'));
    op$.addInput(reverseIndexMap);
    op$.addInput(gradValues);
    var result$ = op$.finish();
    return new SparseFillEmptyRowsGradOutput<T>(
        result$, result$[0], result$[1]);
  }

  QuantizedConv2DOutput quantizedConv2D<T>(
      Output<T> input,
      Output<T> filter,
      Output<double> minInput,
      Output<double> maxInput,
      Output<double> minFilter,
      Output<double> maxFilter,
      {DataType tinput,
      DataType tfilter,
      DataType outType: DataType.DT_QINT32,
      List<int> strides,
      String padding,
      List<int> dilations}) {
    var op$ =
        newOperation('QuantizedConv2D', _scope.uniqueName('QuantizedConv2D'));
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
        result$, result$[0], result$[1], result$[2]);
  }

  Output<T> scatterNdSub<T>(Output<T> ref, Output<T> indices, Output<T> updates,
      {DataType tindices, bool useLocking: false}) {
    var op$ = newOperation('ScatterNdSub', _scope.uniqueName('ScatterNdSub'));
    op$.addInput(ref);
    op$.addInput(indices);
    op$.addInput(updates);
    op$.setAttrType('Tindices', tindices);
    op$.setAttrBool('use_locking', useLocking);
    return op$.finish()[0];
  }

  SparseFillEmptyRowsOutput sparseFillEmptyRows<T>(Output<int> indices,
      Output<T> values, Output<int> denseShape, Output<T> defaultValue) {
    var op$ = newOperation(
        'SparseFillEmptyRows', _scope.uniqueName('SparseFillEmptyRows'));
    op$.addInput(indices);
    op$.addInput(values);
    op$.addInput(denseShape);
    op$.addInput(defaultValue);
    var result$ = op$.finish();
    return new SparseFillEmptyRowsOutput<T>(
        result$, result$[0], result$[1], result$[2], result$[3]);
  }

  Output<int> addManySparseToTensorsMap<T>(Output<int> sparseIndices,
      Output<T> sparseValues, Output<int> sparseShape,
      {String container, String sharedName}) {
    var op$ = newOperation('AddManySparseToTensorsMap',
        _scope.uniqueName('AddManySparseToTensorsMap'));
    op$.addInput(sparseIndices);
    op$.addInput(sparseValues);
    op$.addInput(sparseShape);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  Output<T> biasAddGrad<T>(Output<T> outBackprop, {String dataFormat: 'NHWC'}) {
    var op$ = newOperation('BiasAddGrad', _scope.uniqueName('BiasAddGrad'));
    op$.addInput(outBackprop);
    op$.setAttrString('data_format', dataFormat);
    return op$.finish()[0];
  }

  Output<T> elu<T>(Output<T> features) {
    var op$ = newOperation('Elu', _scope.uniqueName('Elu'));
    op$.addInput(features);
    return op$.finish()[0];
  }

  Output<int> addSparseToTensorsMap<T>(Output<int> sparseIndices,
      Output<T> sparseValues, Output<int> sparseShape,
      {String container, String sharedName}) {
    var op$ = newOperation(
        'AddSparseToTensorsMap', _scope.uniqueName('AddSparseToTensorsMap'));
    op$.addInput(sparseIndices);
    op$.addInput(sparseValues);
    op$.addInput(sparseShape);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  SparseSparseMaximumOutput sparseSparseMaximum<T>(
      Output<int> aIndices,
      Output<T> aValues,
      Output<int> aShape,
      Output<int> bIndices,
      Output<T> bValues,
      Output<int> bShape) {
    var op$ = newOperation(
        'SparseSparseMaximum', _scope.uniqueName('SparseSparseMaximum'));
    op$.addInput(aIndices);
    op$.addInput(aValues);
    op$.addInput(aShape);
    op$.addInput(bIndices);
    op$.addInput(bValues);
    op$.addInput(bShape);
    var result$ = op$.finish();
    return new SparseSparseMaximumOutput<T>(result$, result$[0], result$[1]);
  }

  Output<T> preventGradient<T>(Output<T> input, {String message}) {
    var op$ =
        newOperation('PreventGradient', _scope.uniqueName('PreventGradient'));
    op$.addInput(input);
    op$.setAttrString('message', message);
    return op$.finish()[0];
  }

  Output<T> sparseSoftmax<T>(
      Output<int> spIndices, Output<T> spValues, Output<int> spShape) {
    var op$ = newOperation('SparseSoftmax', _scope.uniqueName('SparseSoftmax'));
    op$.addInput(spIndices);
    op$.addInput(spValues);
    op$.addInput(spShape);
    return op$.finish()[0];
  }

  Output<T> sparseDenseCwiseAdd<T>(Output<int> spIndices, Output<T> spValues,
      Output<int> spShape, Output<T> dense) {
    var op$ = newOperation(
        'SparseDenseCwiseAdd', _scope.uniqueName('SparseDenseCwiseAdd'));
    op$.addInput(spIndices);
    op$.addInput(spValues);
    op$.addInput(spShape);
    op$.addInput(dense);
    return op$.finish()[0];
  }

  Output<String> getSessionHandle<T>(Output<T> value) {
    var op$ =
        newOperation('GetSessionHandle', _scope.uniqueName('GetSessionHandle'));
    op$.addInput(value);
    return op$.finish()[0];
  }

  Output<T> fusedPadConv2D<T>(
      Output<T> input, Output<int> paddings, Output<T> filter,
      {String mode, List<int> strides, String padding}) {
    var op$ =
        newOperation('FusedPadConv2D', _scope.uniqueName('FusedPadConv2D'));
    op$.addInput(input);
    op$.addInput(paddings);
    op$.addInput(filter);
    op$.setAttrString('mode', mode);
    op$.setAttrIntList('strides', strides);
    op$.setAttrString('padding', padding);
    return op$.finish()[0];
  }

  Output<T> sparseDenseCwiseMul<T>(Output<int> spIndices, Output<T> spValues,
      Output<int> spShape, Output<T> dense) {
    var op$ = newOperation(
        'SparseDenseCwiseMul', _scope.uniqueName('SparseDenseCwiseMul'));
    op$.addInput(spIndices);
    op$.addInput(spValues);
    op$.addInput(spShape);
    op$.addInput(dense);
    return op$.finish()[0];
  }

  SparseReorderOutput sparseReorder<T>(
      Output<int> inputIndices, Output<T> inputValues, Output<int> inputShape) {
    var op$ = newOperation('SparseReorder', _scope.uniqueName('SparseReorder'));
    op$.addInput(inputIndices);
    op$.addInput(inputValues);
    op$.addInput(inputShape);
    var result$ = op$.finish();
    return new SparseReorderOutput<T>(result$, result$[0], result$[1]);
  }

  Output<T> relu6<T>(Output<T> features) {
    var op$ = newOperation('Relu6', _scope.uniqueName('Relu6'));
    op$.addInput(features);
    return op$.finish()[0];
  }

  Output<String> readerSerializeStateV2(Output readerHandle) {
    var op$ = newOperation(
        'ReaderSerializeStateV2', _scope.uniqueName('ReaderSerializeStateV2'));
    op$.addInput(readerHandle);
    return op$.finish()[0];
  }

  SparseSplitOutput sparseSplit<T>(Output<int> splitDim, Output<int> indices,
      Output<T> values, Output<int> shape,
      {int numSplit}) {
    var op$ = newOperation('SparseSplit', _scope.uniqueName('SparseSplit'));
    op$.addInput(splitDim);
    op$.addInput(indices);
    op$.addInput(values);
    op$.addInput(shape);
    op$.setAttrInt('num_split', numSplit);
    var result$ = op$.finish();
    return new SparseSplitOutput<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  void destroyResourceOp(Output resource, {bool ignoreLookupError: true}) {
    var op$ = newOperation(
        'DestroyResourceOp', _scope.uniqueName('DestroyResourceOp'));
    op$.addInput(resource);
    op$.setAttrBool('ignore_lookup_error', ignoreLookupError);
    op$.finish();
  }

  Output<T> histogramFixedWidth<T>(
      Output<T> values, Output<T> valueRange, Output<int> nbins,
      {DataType dtype: DataType.DT_INT32}) {
    dtype ??= inferType(values);
    var op$ = newOperation(
        'HistogramFixedWidth', _scope.uniqueName('HistogramFixedWidth'));
    op$.addInput(values);
    op$.addInput(valueRange);
    op$.addInput(nbins);
    op$.setAttrType('dtype', dtype);
    return op$.finish()[0];
  }

  Output iterator(
      {String sharedName,
      String container,
      List<DataType> outputTypes,
      List<Shape> outputShapes}) {
    var op$ = newOperation('Iterator', _scope.uniqueName('Iterator'));
    op$.setAttrString('shared_name', sharedName);
    op$.setAttrString('container', container);
    op$.setAttrTypeList('output_types', outputTypes);
    op$.setAttrShapeList('output_shapes', outputShapes);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayWriteV3')
  Output<double> tensorArrayWriteV2<T>(Output<String> handle, Output<int> index,
      Output<T> value, Output<double> flowIn) {
    var op$ = newOperation(
        'TensorArrayWriteV2', _scope.uniqueName('TensorArrayWriteV2'));
    op$.addInput(handle);
    op$.addInput(index);
    op$.addInput(value);
    op$.addInput(flowIn);
    return op$.finish()[0];
  }

  DenseToSparseSetOperationOutput denseToSparseSetOperation<T>(Output<T> set1,
      Output<int> set2Indices, Output<T> set2Values, Output<int> set2Shape,
      {String setOperation, bool validateIndices: true}) {
    var op$ = newOperation('DenseToSparseSetOperation',
        _scope.uniqueName('DenseToSparseSetOperation'));
    op$.addInput(set1);
    op$.addInput(set2Indices);
    op$.addInput(set2Values);
    op$.addInput(set2Shape);
    op$.setAttrString('set_operation', setOperation);
    op$.setAttrBool('validate_indices', validateIndices);
    var result$ = op$.finish();
    return new DenseToSparseSetOperationOutput<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  void sdcaShrinkL1(List<Output<double>> weights,
      {int numFeatures, double l1, double l2}) {
    var op$ = newOperation('SdcaShrinkL1', _scope.uniqueName('SdcaShrinkL1'));
    op$.addInputList(weights);
    op$.setAttrInt('num_features', numFeatures);
    op$.setAttrFloat('l1', l1);
    op$.setAttrFloat('l2', l2);
    op$.finish();
  }

  void consumeMutexLock(Output mutexLock) {
    var op$ =
        newOperation('ConsumeMutexLock', _scope.uniqueName('ConsumeMutexLock'));
    op$.addInput(mutexLock);
    op$.finish();
  }

  QuantizedBiasAddOutput quantizedBiasAdd<T>(
      Output<T> input,
      Output<T> bias,
      Output<double> minInput,
      Output<double> maxInput,
      Output<double> minBias,
      Output<double> maxBias,
      {DataType t1,
      DataType t2,
      DataType outType}) {
    var op$ =
        newOperation('QuantizedBiasAdd', _scope.uniqueName('QuantizedBiasAdd'));
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
        result$, result$[0], result$[1], result$[2]);
  }

  Output<T> dataFormatVecPermute<T>(Output<T> x,
      {String srcFormat: 'NHWC', String dstFormat: 'NCHW'}) {
    var op$ = newOperation(
        'DataFormatVecPermute', _scope.uniqueName('DataFormatVecPermute'));
    op$.addInput(x);
    op$.setAttrString('src_format', srcFormat);
    op$.setAttrString('dst_format', dstFormat);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 13: Use CholeskyGrad instead.')
  Output<T> batchCholeskyGrad<T>(Output<T> l, Output<T> grad) {
    var op$ = newOperation(
        'BatchCholeskyGrad', _scope.uniqueName('BatchCholeskyGrad'));
    op$.addInput(l);
    op$.addInput(grad);
    return op$.finish()[0];
  }

  void resourceScatterAdd<T>(
      Output resource, Output<T> indices, Output<T> updates,
      {DataType dtype, DataType tindices}) {
    dtype ??= inferType(resource);
    var op$ = newOperation(
        'ResourceScatterAdd', _scope.uniqueName('ResourceScatterAdd'));
    op$.addInput(resource);
    op$.addInput(indices);
    op$.addInput(updates);
    op$.setAttrType('dtype', dtype);
    op$.setAttrType('Tindices', tindices);
    op$.finish();
  }

  FusedBatchNormGradV2Output fusedBatchNormGradV2<T>(
      Output<T> yBackprop,
      Output<T> x,
      Output<double> scale,
      Output<T> reserveSpace1,
      Output<T> reserveSpace2,
      {DataType u,
      double epsilon: 0.00009999999747378752,
      String dataFormat: 'NHWC',
      bool isTraining: true}) {
    var op$ = newOperation(
        'FusedBatchNormGradV2', _scope.uniqueName('FusedBatchNormGradV2'));
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
    return new FusedBatchNormGradV2Output<T>(
        result$, result$[0], result$[1], result$[2], result$[3], result$[4]);
  }

  Output<int> barrierReadySize(Output<String> handle) {
    var op$ =
        newOperation('BarrierReadySize', _scope.uniqueName('BarrierReadySize'));
    op$.addInput(handle);
    return op$.finish()[0];
  }

  void mapStage<T>(Output<int> key, Output<int> indices, List<Output<T>> values,
      {int capacity: 0,
      int memoryLimit: 0,
      List<DataType> dtypes,
      List<DataType> fakeDtypes,
      String container,
      String sharedName}) {
    var op$ = newOperation('MapStage', _scope.uniqueName('MapStage'));
    op$.addInput(key);
    op$.addInput(indices);
    op$.addInputList(values);
    op$.setAttrInt('capacity', capacity);
    op$.setAttrInt('memory_limit', memoryLimit);
    op$.setAttrTypeList('dtypes', dtypes);
    op$.setAttrTypeList('fake_dtypes', fakeDtypes);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    op$.finish();
  }

  Output<T> sparseTensorDenseMatMul<T>(
      Output<T> aIndices, Output<T> aValues, Output<int> aShape, Output<T> b,
      {DataType tindices: DataType.DT_INT64,
      bool adjointA: false,
      bool adjointB: false}) {
    var op$ = newOperation('SparseTensorDenseMatMul',
        _scope.uniqueName('SparseTensorDenseMatMul'));
    op$.addInput(aIndices);
    op$.addInput(aValues);
    op$.addInput(aShape);
    op$.addInput(b);
    op$.setAttrType('Tindices', tindices);
    op$.setAttrBool('adjoint_a', adjointA);
    op$.setAttrBool('adjoint_b', adjointB);
    return op$.finish()[0];
  }

  Output<T> unsortedSegmentMin<T>(
      Output<T> data, Output<T> segmentIds, Output<T> numSegments,
      {DataType tindices, DataType tnumsegments: DataType.DT_INT32}) {
    var op$ = newOperation(
        'UnsortedSegmentMin', _scope.uniqueName('UnsortedSegmentMin'));
    op$.addInput(data);
    op$.addInput(segmentIds);
    op$.addInput(numSegments);
    op$.setAttrType('Tindices', tindices);
    op$.setAttrType('Tnumsegments', tnumsegments);
    return op$.finish()[0];
  }

  Output<T> segmentMin<T>(Output<T> data, Output<T> segmentIds,
      {DataType tindices}) {
    var op$ = newOperation('SegmentMin', _scope.uniqueName('SegmentMin'));
    op$.addInput(data);
    op$.addInput(segmentIds);
    op$.setAttrType('Tindices', tindices);
    return op$.finish()[0];
  }

  Output<T> remoteFusedGraphExecute<T>(List<Output<T>> inputs,
      {List<DataType> tinputs,
      List<DataType> toutputs,
      String serializedRemoteFusedGraphExecuteInfo}) {
    var op$ = newOperation('RemoteFusedGraphExecute',
        _scope.uniqueName('RemoteFusedGraphExecute'));
    op$.addInputList(inputs);
    op$.setAttrTypeList('Tinputs', tinputs);
    op$.setAttrTypeList('Toutputs', toutputs);
    op$.setAttrString('serialized_remote_fused_graph_execute_info',
        serializedRemoteFusedGraphExecuteInfo);
    return op$.finish()[0];
  }

  void resourceSparseApplyRMSProp<T>(
      Output var$,
      Output ms,
      Output mom,
      Output<T> lr,
      Output<T> rho,
      Output<T> momentum,
      Output<T> epsilon,
      Output<T> grad,
      Output<T> indices,
      {DataType tindices,
      bool useLocking: false}) {
    var op$ = newOperation('ResourceSparseApplyRMSProp',
        _scope.uniqueName('ResourceSparseApplyRMSProp'));
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
    op$.finish();
  }

  @Deprecated('DEPRECATED at GraphDef version 15: Use IFFT2D')
  Output batchIFFT2D(Output input) {
    var op$ = newOperation('BatchIFFT2D', _scope.uniqueName('BatchIFFT2D'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  Output<T> stringToNumber<T>(Output<String> stringTensor,
      {DataType outType: DataType.DT_FLOAT}) {
    var op$ =
        newOperation('StringToNumber', _scope.uniqueName('StringToNumber'));
    op$.addInput(stringTensor);
    op$.setAttrType('out_type', outType);
    return op$.finish()[0];
  }

  Output<String> decodeJSONExample(Output<String> jsonExamples) {
    var op$ = newOperation(
        'DecodeJSONExample', _scope.uniqueName('DecodeJSONExample'));
    op$.addInput(jsonExamples);
    return op$.finish()[0];
  }

  Output<String> tensorSummary<T>(Output<T> tensor,
      {String description, List<String> labels, String displayName}) {
    var op$ = newOperation('TensorSummary', _scope.uniqueName('TensorSummary'));
    op$.addInput(tensor);
    op$.setAttrString('description', description);
    op$.setAttrStringList('labels', labels);
    op$.setAttrString('display_name', displayName);
    return op$.finish()[0];
  }

  Output<T> scatterDiv<T>(Output<T> ref, Output<T> indices, Output<T> updates,
      {DataType tindices, bool useLocking: false}) {
    var op$ = newOperation('ScatterDiv', _scope.uniqueName('ScatterDiv'));
    op$.addInput(ref);
    op$.addInput(indices);
    op$.addInput(updates);
    op$.setAttrType('Tindices', tindices);
    op$.setAttrBool('use_locking', useLocking);
    return op$.finish()[0];
  }

  Output<String> serializeTensor<T>(Output<T> tensor) {
    var op$ =
        newOperation('SerializeTensor', _scope.uniqueName('SerializeTensor'));
    op$.addInput(tensor);
    return op$.finish()[0];
  }

  CTCBeamSearchDecoderOutput cTCBeamSearchDecoder(
      Output<double> inputs, Output<int> sequenceLength,
      {int beamWidth, int topPaths, bool mergeRepeated: true}) {
    var op$ = newOperation(
        'CTCBeamSearchDecoder', _scope.uniqueName('CTCBeamSearchDecoder'));
    op$.addInput(inputs);
    op$.addInput(sequenceLength);
    op$.setAttrInt('beam_width', beamWidth);
    op$.setAttrInt('top_paths', topPaths);
    op$.setAttrBool('merge_repeated', mergeRepeated);
    var result$ = op$.finish();
    return new CTCBeamSearchDecoderOutput(
        result$, result$[0], result$[1], result$[2], result$[3]);
  }

  Output<T> parseTensor<T>(Output<String> serialized, {DataType outType}) {
    var op$ = newOperation('ParseTensor', _scope.uniqueName('ParseTensor'));
    op$.addInput(serialized);
    op$.setAttrType('out_type', outType);
    return op$.finish()[0];
  }

  Output<T> scatterNdNonAliasingAdd<T>(
      Output<T> input, Output<T> indices, Output<T> updates,
      {DataType tindices}) {
    var op$ = newOperation('ScatterNdNonAliasingAdd',
        _scope.uniqueName('ScatterNdNonAliasingAdd'));
    op$.addInput(input);
    op$.addInput(indices);
    op$.addInput(updates);
    op$.setAttrType('Tindices', tindices);
    return op$.finish()[0];
  }

  Output<T> multinomial<T>(Output<T> logits, Output<int> numSamples,
      {int seed: 0, int seed2: 0, DataType outputDtype: DataType.DT_INT64}) {
    var op$ = newOperation('Multinomial', _scope.uniqueName('Multinomial'));
    op$.addInput(logits);
    op$.addInput(numSamples);
    op$.setAttrInt('seed', seed);
    op$.setAttrInt('seed2', seed2);
    op$.setAttrType('output_dtype', outputDtype);
    return op$.finish()[0];
  }

  Output<String> decodeCompressed(Output<String> bytes,
      {String compressionType}) {
    var op$ =
        newOperation('DecodeCompressed', _scope.uniqueName('DecodeCompressed'));
    op$.addInput(bytes);
    op$.setAttrString('compression_type', compressionType);
    return op$.finish()[0];
  }

  Output<int> sdcaFprint(Output<String> input) {
    var op$ = newOperation('SdcaFprint', _scope.uniqueName('SdcaFprint'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  Output<int> readerNumRecordsProducedV2(Output readerHandle) {
    var op$ = newOperation('ReaderNumRecordsProducedV2',
        _scope.uniqueName('ReaderNumRecordsProducedV2'));
    op$.addInput(readerHandle);
    return op$.finish()[0];
  }

  Output<T> decodeRaw<T>(Output<String> bytes,
      {DataType outType, bool littleEndian: true}) {
    var op$ = newOperation('DecodeRaw', _scope.uniqueName('DecodeRaw'));
    op$.addInput(bytes);
    op$.setAttrType('out_type', outType);
    op$.setAttrBool('little_endian', littleEndian);
    return op$.finish()[0];
  }

  void saveSlices<T>(Output<String> filename, Output<String> tensorNames,
      Output<String> shapesAndSlices, List<Output<T>> data,
      {List<DataType> t}) {
    var op$ = newOperation('SaveSlices', _scope.uniqueName('SaveSlices'));
    op$.addInput(filename);
    op$.addInput(tensorNames);
    op$.addInput(shapesAndSlices);
    op$.addInputList(data);
    op$.setAttrTypeList('T', t);
    op$.finish();
  }

  Output<T> avgPool3D<T>(Output<T> input,
      {List<int> ksize,
      List<int> strides,
      String padding,
      String dataFormat: 'NDHWC'}) {
    var op$ = newOperation('AvgPool3D', _scope.uniqueName('AvgPool3D'));
    op$.addInput(input);
    op$.setAttrIntList('ksize', ksize);
    op$.setAttrIntList('strides', strides);
    op$.setAttrString('padding', padding);
    op$.setAttrString('data_format', dataFormat);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 15: Use IFFT3D')
  Output batchIFFT3D(Output input) {
    var op$ = newOperation('BatchIFFT3D', _scope.uniqueName('BatchIFFT3D'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  Output<double> adjustHue(Output<double> images, Output<double> delta) {
    var op$ = newOperation('AdjustHue', _scope.uniqueName('AdjustHue'));
    op$.addInput(images);
    op$.addInput(delta);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 15: Use FFT3D')
  Output batchFFT3D(Output input) {
    var op$ = newOperation('BatchFFT3D', _scope.uniqueName('BatchFFT3D'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  SparseSparseMinimumOutput sparseSparseMinimum<T>(
      Output<int> aIndices,
      Output<T> aValues,
      Output<int> aShape,
      Output<int> bIndices,
      Output<T> bValues,
      Output<int> bShape) {
    var op$ = newOperation(
        'SparseSparseMinimum', _scope.uniqueName('SparseSparseMinimum'));
    op$.addInput(aIndices);
    op$.addInput(aValues);
    op$.addInput(aShape);
    op$.addInput(bIndices);
    op$.addInput(bValues);
    op$.addInput(bShape);
    var result$ = op$.finish();
    return new SparseSparseMinimumOutput<T>(result$, result$[0], result$[1]);
  }

  Output textLineReaderV2(
      {int skipHeaderLines: 0, String container, String sharedName}) {
    var op$ =
        newOperation('TextLineReaderV2', _scope.uniqueName('TextLineReaderV2'));
    op$.setAttrInt('skip_header_lines', skipHeaderLines);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  Output fixedLengthRecordReaderV2(
      {int headerBytes: 0,
      int recordBytes,
      int footerBytes: 0,
      int hopBytes: 0,
      String container,
      String sharedName,
      String encoding}) {
    var op$ = newOperation('FixedLengthRecordReaderV2',
        _scope.uniqueName('FixedLengthRecordReaderV2'));
    op$.setAttrInt('header_bytes', headerBytes);
    op$.setAttrInt('record_bytes', recordBytes);
    op$.setAttrInt('footer_bytes', footerBytes);
    op$.setAttrInt('hop_bytes', hopBytes);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    op$.setAttrString('encoding', encoding);
    return op$.finish()[0];
  }

  Output identityReaderV2({String container, String sharedName}) {
    var op$ =
        newOperation('IdentityReaderV2', _scope.uniqueName('IdentityReaderV2'));
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  Output<double> iRFFT3D(Output input, Output<int> fftLength) {
    var op$ = newOperation('IRFFT3D', _scope.uniqueName('IRFFT3D'));
    op$.addInput(input);
    op$.addInput(fftLength);
    return op$.finish()[0];
  }

  Output<T> applyFtrl<T>(
      Output<T> var$,
      Output<T> accum,
      Output<T> linear,
      Output<T> grad,
      Output<T> lr,
      Output<T> l1,
      Output<T> l2,
      Output<T> lrPower,
      {bool useLocking: false}) {
    var op$ = newOperation('ApplyFtrl', _scope.uniqueName('ApplyFtrl'));
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

  Output<double> iRFFT(Output input, Output<int> fftLength) {
    var op$ = newOperation('IRFFT', _scope.uniqueName('IRFFT'));
    op$.addInput(input);
    op$.addInput(fftLength);
    return op$.finish()[0];
  }

  Output rFFT(Output<double> input, Output<int> fftLength) {
    var op$ = newOperation('RFFT', _scope.uniqueName('RFFT'));
    op$.addInput(input);
    op$.addInput(fftLength);
    return op$.finish()[0];
  }

  Output iFFT3D(Output input) {
    var op$ = newOperation('IFFT3D', _scope.uniqueName('IFFT3D'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  Output fFT3D(Output input) {
    var op$ = newOperation('FFT3D', _scope.uniqueName('FFT3D'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  Output<bool> lessEqual<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation('LessEqual', _scope.uniqueName('LessEqual'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  Output timestamp() {
    var op$ = newOperation('Timestamp', _scope.uniqueName('Timestamp'));
    return op$.finish()[0];
  }

  Output paddedBatchDataset<T>(Output inputDataset, Output<int> batchSize,
      List<Output<int>> paddedShapes, List<Output<T>> paddingValues,
      {List<DataType> toutputTypes, List<Shape> outputShapes, int n}) {
    var op$ = newOperation(
        'PaddedBatchDataset', _scope.uniqueName('PaddedBatchDataset'));
    op$.addInput(inputDataset);
    op$.addInput(batchSize);
    op$.addInputList(paddedShapes);
    op$.addInputList(paddingValues);
    op$.setAttrTypeList('Toutput_types', toutputTypes);
    op$.setAttrShapeList('output_shapes', outputShapes);
    op$.setAttrInt('N', n);
    return op$.finish()[0];
  }

  Output stackV2(Output<int> maxSize, {DataType elemType, String stackName}) {
    var op$ = newOperation('StackV2', _scope.uniqueName('StackV2'));
    op$.addInput(maxSize);
    op$.setAttrType('elem_type', elemType);
    op$.setAttrString('stack_name', stackName);
    return op$.finish()[0];
  }

  Output<T> queueDequeueUpTo<T>(Output<String> handle, Output<int> n,
      {List<DataType> componentTypes, int timeoutMs: -1}) {
    var op$ =
        newOperation('QueueDequeueUpTo', _scope.uniqueName('QueueDequeueUpTo'));
    op$.addInput(handle);
    op$.addInput(n);
    op$.setAttrTypeList('component_types', componentTypes);
    op$.setAttrInt('timeout_ms', timeoutMs);
    return op$.finish()[0];
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 3: TileGrad has been replaced with reduce_sum')
  Output<T> tileGrad<T>(Output<T> input, Output<int> multiples) {
    var op$ = newOperation('TileGrad', _scope.uniqueName('TileGrad'));
    op$.addInput(input);
    op$.addInput(multiples);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 15: Use AudioSummaryV2.')
  Output<String> audioSummary(Output<String> tag, Output<double> tensor,
      {double sampleRate, int maxOutputs: 3}) {
    var op$ = newOperation('AudioSummary', _scope.uniqueName('AudioSummary'));
    op$.addInput(tag);
    op$.addInput(tensor);
    op$.setAttrFloat('sample_rate', sampleRate);
    op$.setAttrInt('max_outputs', maxOutputs);
    return op$.finish()[0];
  }

  Output<T> unbatch<T>(
      Output<T> batchedTensor, Output<int> batchIndex, Output<int> id,
      {int timeoutMicros, String container, String sharedName}) {
    var op$ = newOperation('Unbatch', _scope.uniqueName('Unbatch'));
    op$.addInput(batchedTensor);
    op$.addInput(batchIndex);
    op$.addInput(id);
    op$.setAttrInt('timeout_micros', timeoutMicros);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  Output<T> mapUnstage<T>(Output<int> key, Output<int> indices,
      {int capacity: 0,
      int memoryLimit: 0,
      List<DataType> dtypes,
      String container,
      String sharedName}) {
    var op$ = newOperation('MapUnstage', _scope.uniqueName('MapUnstage'));
    op$.addInput(key);
    op$.addInput(indices);
    op$.setAttrInt('capacity', capacity);
    op$.setAttrInt('memory_limit', memoryLimit);
    op$.setAttrTypeList('dtypes', dtypes);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  Output<String> tensorSummaryV2<T>(Output<String> tag, Output<T> tensor,
      Output<String> serializedSummaryMetadata) {
    var op$ =
        newOperation('TensorSummaryV2', _scope.uniqueName('TensorSummaryV2'));
    op$.addInput(tag);
    op$.addInput(tensor);
    op$.addInput(serializedSummaryMetadata);
    return op$.finish()[0];
  }

  Output<T> quantizeAndDequantizeV2<T>(
      Output<T> input, Output<T> inputMin, Output<T> inputMax,
      {bool signedInput: true, int numBits: 8, bool rangeGiven: false}) {
    var op$ = newOperation('QuantizeAndDequantizeV2',
        _scope.uniqueName('QuantizeAndDequantizeV2'));
    op$.addInput(input);
    op$.addInput(inputMin);
    op$.addInput(inputMax);
    op$.setAttrBool('signed_input', signedInput);
    op$.setAttrInt('num_bits', numBits);
    op$.setAttrBool('range_given', rangeGiven);
    return op$.finish()[0];
  }

  Output slideDataset(
      Output inputDataset, Output<int> windowSize, Output<int> stride,
      {List<DataType> outputTypes, List<Shape> outputShapes}) {
    var op$ = newOperation('SlideDataset', _scope.uniqueName('SlideDataset'));
    op$.addInput(inputDataset);
    op$.addInput(windowSize);
    op$.addInput(stride);
    op$.setAttrTypeList('output_types', outputTypes);
    op$.setAttrShapeList('output_shapes', outputShapes);
    return op$.finish()[0];
  }

  Output<T> print<T>(Output<T> input, List<Output<T>> data,
      {List<DataType> u, String message, int firstN: -1, int summarize: 3}) {
    var op$ = newOperation('Print', _scope.uniqueName('Print'));
    op$.addInput(input);
    op$.addInputList(data);
    op$.setAttrTypeList('U', u);
    op$.setAttrString('message', message);
    op$.setAttrInt('first_n', firstN);
    op$.setAttrInt('summarize', summarize);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayWriteV3')
  Output<double> tensorArrayWrite<T>(Output<String> handle, Output<int> index,
      Output<T> value, Output<double> flowIn) {
    var op$ =
        newOperation('TensorArrayWrite', _scope.uniqueName('TensorArrayWrite'));
    op$.addInput(handle);
    op$.addInput(index);
    op$.addInput(value);
    op$.addInput(flowIn);
    return op$.finish()[0];
  }

  Output<T> transpose<T>(Output<T> x, Output<T> perm,
      {DataType tperm: DataType.DT_INT32}) {
    var op$ = newOperation('Transpose', _scope.uniqueName('Transpose'));
    op$.addInput(x);
    op$.addInput(perm);
    op$.setAttrType('Tperm', tperm);
    return op$.finish()[0];
  }

  void assert$<T>(Output<bool> condition, List<Output<T>> data,
      {List<DataType> t, int summarize: 3}) {
    var op$ = newOperation('Assert', _scope.uniqueName('Assert'));
    op$.addInput(condition);
    op$.addInputList(data);
    op$.setAttrTypeList('T', t);
    op$.setAttrInt('summarize', summarize);
    op$.finish();
  }

  void controlTrigger() {
    var op$ =
        newOperation('ControlTrigger', _scope.uniqueName('ControlTrigger'));
    op$.finish();
  }

  Output<T> parallelDynamicStitch<T>(
      List<Output<int>> indices, List<Output<T>> data,
      {int n}) {
    var op$ = newOperation(
        'ParallelDynamicStitch', _scope.uniqueName('ParallelDynamicStitch'));
    op$.addInputList(indices);
    op$.addInputList(data);
    op$.setAttrInt('N', n);
    return op$.finish()[0];
  }

  Output<T> nextIteration<T>(Output<T> data) {
    var op$ = newOperation('NextIteration', _scope.uniqueName('NextIteration'));
    op$.addInput(data);
    return op$.finish()[0];
  }

  void initializeTableV2<T>(
      Output tableHandle, Output<T> keys, Output<T> values,
      {DataType tkey, DataType tval}) {
    var op$ = newOperation(
        'InitializeTableV2', _scope.uniqueName('InitializeTableV2'));
    op$.addInput(tableHandle);
    op$.addInput(keys);
    op$.addInput(values);
    op$.setAttrType('Tkey', tkey);
    op$.setAttrType('Tval', tval);
    op$.finish();
  }

  Output<T> imag<T>(Output<T> input, {DataType tout: DataType.DT_FLOAT}) {
    var op$ = newOperation('Imag', _scope.uniqueName('Imag'));
    op$.addInput(input);
    op$.setAttrType('Tout', tout);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayGradV3')
  Output<String> tensorArrayGrad(Output<String> handle, Output<double> flowIn,
      {String source}) {
    var op$ =
        newOperation('TensorArrayGrad', _scope.uniqueName('TensorArrayGrad'));
    op$.addInput(handle);
    op$.addInput(flowIn);
    op$.setAttrString('source', source);
    return op$.finish()[0];
  }

  Output<String> mutableDenseHashTable<T>(Output<T> emptyKey,
      {String container,
      String sharedName,
      bool useNodeNameSharing: false,
      DataType keyDtype,
      DataType valueDtype,
      Shape valueShape,
      int initialNumBuckets: 131072,
      double maxLoadFactor: 0.800000011920929}) {
    var op$ = newOperation(
        'MutableDenseHashTable', _scope.uniqueName('MutableDenseHashTable'));
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

  Output<T> oneHot<T>(Output<T> indices, Output<int> depth, Output<T> onValue,
      Output<T> offValue,
      {int axis: -1, DataType tI: DataType.DT_INT64}) {
    var op$ = newOperation('OneHot', _scope.uniqueName('OneHot'));
    op$.addInput(indices);
    op$.addInput(depth);
    op$.addInput(onValue);
    op$.addInput(offValue);
    op$.setAttrInt('axis', axis);
    op$.setAttrType('TI', tI);
    return op$.finish()[0];
  }

  Output mutableHashTableOfTensorsV2(
      {String container,
      String sharedName,
      bool useNodeNameSharing: false,
      DataType keyDtype,
      DataType valueDtype,
      Shape valueShape}) {
    var op$ = newOperation('MutableHashTableOfTensorsV2',
        _scope.uniqueName('MutableHashTableOfTensorsV2'));
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    op$.setAttrBool('use_node_name_sharing', useNodeNameSharing);
    op$.setAttrType('key_dtype', keyDtype);
    op$.setAttrType('value_dtype', valueDtype);
    op$.setAttrShape('value_shape', valueShape);
    return op$.finish()[0];
  }

  Output<T> softplus<T>(Output<T> features) {
    var op$ = newOperation('Softplus', _scope.uniqueName('Softplus'));
    op$.addInput(features);
    return op$.finish()[0];
  }

  Output mutableHashTableV2(
      {String container,
      String sharedName,
      bool useNodeNameSharing: false,
      DataType keyDtype,
      DataType valueDtype}) {
    var op$ = newOperation(
        'MutableHashTableV2', _scope.uniqueName('MutableHashTableV2'));
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    op$.setAttrBool('use_node_name_sharing', useNodeNameSharing);
    op$.setAttrType('key_dtype', keyDtype);
    op$.setAttrType('value_dtype', valueDtype);
    return op$.finish()[0];
  }

  /// Writes a `Summary` protocol buffer with scalar values.
  /// The input `tag` and `value` must have the scalars.
  void writeScalarSummary<T>(
      Output writer, Output<int> step, Output<String> tag, Output<T> value) {
    var op$ = newOperation(
        'WriteScalarSummary', _scope.uniqueName('WriteScalarSummary'));
    op$.addInput(writer);
    op$.addInput(step);
    op$.addInput(tag);
    op$.addInput(value);
    op$.finish();
  }

  Output<String> reduceJoin(Output<String> inputs, Output<int> reductionIndices,
      {bool keepDims: false, String separator}) {
    var op$ = newOperation('ReduceJoin', _scope.uniqueName('ReduceJoin'));
    op$.addInput(inputs);
    op$.addInput(reductionIndices);
    op$.setAttrBool('keep_dims', keepDims);
    op$.setAttrString('separator', separator);
    return op$.finish()[0];
  }

  SparseConcatOutput sparseConcat<T>(List<Output<int>> indices,
      List<Output<T>> values, List<Output<int>> shapes,
      {int concatDim, int n}) {
    var op$ = newOperation('SparseConcat', _scope.uniqueName('SparseConcat'));
    op$.addInputList(indices);
    op$.addInputList(values);
    op$.addInputList(shapes);
    op$.setAttrInt('concat_dim', concatDim);
    op$.setAttrInt('N', n);
    var result$ = op$.finish();
    return new SparseConcatOutput<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  Output<String> shardedFilespec(
      Output<String> basename, Output<int> numShards) {
    var op$ =
        newOperation('ShardedFilespec', _scope.uniqueName('ShardedFilespec'));
    op$.addInput(basename);
    op$.addInput(numShards);
    return op$.finish()[0];
  }

  Output iFFT2D(Output input) {
    var op$ = newOperation('IFFT2D', _scope.uniqueName('IFFT2D'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  Output hashTableV2(
      {String container,
      String sharedName,
      bool useNodeNameSharing: false,
      DataType keyDtype,
      DataType valueDtype}) {
    var op$ = newOperation('HashTableV2', _scope.uniqueName('HashTableV2'));
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    op$.setAttrBool('use_node_name_sharing', useNodeNameSharing);
    op$.setAttrType('key_dtype', keyDtype);
    op$.setAttrType('value_dtype', valueDtype);
    return op$.finish()[0];
  }

  Output<String> hashTable(
      {String container,
      String sharedName,
      bool useNodeNameSharing: false,
      DataType keyDtype,
      DataType valueDtype}) {
    var op$ = newOperation('HashTable', _scope.uniqueName('HashTable'));
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    op$.setAttrBool('use_node_name_sharing', useNodeNameSharing);
    op$.setAttrType('key_dtype', keyDtype);
    op$.setAttrType('value_dtype', valueDtype);
    return op$.finish()[0];
  }

  Output<T> sparseDenseCwiseDiv<T>(Output<int> spIndices, Output<T> spValues,
      Output<int> spShape, Output<T> dense) {
    var op$ = newOperation(
        'SparseDenseCwiseDiv', _scope.uniqueName('SparseDenseCwiseDiv'));
    op$.addInput(spIndices);
    op$.addInput(spValues);
    op$.addInput(spShape);
    op$.addInput(dense);
    return op$.finish()[0];
  }

  void lookupTableImport<T>(
      Output<String> tableHandle, Output<T> keys, Output<T> values,
      {DataType tin, DataType tout}) {
    var op$ = newOperation(
        'LookupTableImport', _scope.uniqueName('LookupTableImport'));
    op$.addInput(tableHandle);
    op$.addInput(keys);
    op$.addInput(values);
    op$.setAttrType('Tin', tin);
    op$.setAttrType('Tout', tout);
    op$.finish();
  }

  LookupTableExportV2Output lookupTableExportV2<T>(Output tableHandle,
      {DataType tkeys, DataType tvalues}) {
    var op$ = newOperation(
        'LookupTableExportV2', _scope.uniqueName('LookupTableExportV2'));
    op$.addInput(tableHandle);
    op$.setAttrType('Tkeys', tkeys);
    op$.setAttrType('Tvalues', tvalues);
    var result$ = op$.finish();
    return new LookupTableExportV2Output<T>(result$, result$[0], result$[1]);
  }

  void assignVariableOp<T>(Output resource, Output<T> value, {DataType dtype}) {
    dtype ??= inferType(resource);
    var op$ =
        newOperation('AssignVariableOp', _scope.uniqueName('AssignVariableOp'));
    op$.addInput(resource);
    op$.addInput(value);
    op$.setAttrType('dtype', dtype);
    op$.finish();
  }

  Output<int> lookupTableSize(Output<String> tableHandle) {
    var op$ =
        newOperation('LookupTableSize', _scope.uniqueName('LookupTableSize'));
    op$.addInput(tableHandle);
    return op$.finish()[0];
  }

  void lookupTableInsert<T>(
      Output<String> tableHandle, Output<T> keys, Output<T> values,
      {DataType tin, DataType tout}) {
    var op$ = newOperation(
        'LookupTableInsert', _scope.uniqueName('LookupTableInsert'));
    op$.addInput(tableHandle);
    op$.addInput(keys);
    op$.addInput(values);
    op$.setAttrType('Tin', tin);
    op$.setAttrType('Tout', tout);
    op$.finish();
  }

  void initializeTable<T>(
      Output<String> tableHandle, Output<T> keys, Output<T> values,
      {DataType tkey, DataType tval}) {
    var op$ =
        newOperation('InitializeTable', _scope.uniqueName('InitializeTable'));
    op$.addInput(tableHandle);
    op$.addInput(keys);
    op$.addInput(values);
    op$.setAttrType('Tkey', tkey);
    op$.setAttrType('Tval', tval);
    op$.finish();
  }

  Output<T> variableShape<T>(Output input,
      {DataType outType: DataType.DT_INT32}) {
    var op$ = newOperation('VariableShape', _scope.uniqueName('VariableShape'));
    op$.addInput(input);
    op$.setAttrType('out_type', outType);
    return op$.finish()[0];
  }

  Output tensorListReserve<T>(Output<T> elementShape, Output<int> numElements,
      {DataType elementDtype, DataType shapeType}) {
    var op$ = newOperation(
        'TensorListReserve', _scope.uniqueName('TensorListReserve'));
    op$.addInput(elementShape);
    op$.addInput(numElements);
    op$.setAttrType('element_dtype', elementDtype);
    op$.setAttrType('shape_type', shapeType);
    return op$.finish()[0];
  }

  Output<T> tensorListElementShape<T>(Output inputHandle,
      {DataType shapeType}) {
    var op$ = newOperation(
        'TensorListElementShape', _scope.uniqueName('TensorListElementShape'));
    op$.addInput(inputHandle);
    op$.setAttrType('shape_type', shapeType);
    return op$.finish()[0];
  }

  Output<T> tensorListStack<T>(Output inputHandle,
      {DataType elementDtype, int numElements: -1}) {
    var op$ =
        newOperation('TensorListStack', _scope.uniqueName('TensorListStack'));
    op$.addInput(inputHandle);
    op$.setAttrType('element_dtype', elementDtype);
    op$.setAttrInt('num_elements', numElements);
    return op$.finish()[0];
  }

  Output emptyTensorList<T>(Output<T> elementShape,
      {DataType elementDtype, DataType shapeType}) {
    var op$ =
        newOperation('EmptyTensorList', _scope.uniqueName('EmptyTensorList'));
    op$.addInput(elementShape);
    op$.setAttrType('element_dtype', elementDtype);
    op$.setAttrType('shape_type', shapeType);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 13: Use MatrixSolveLs instead.')
  Output<T> batchMatrixSolveLs<T>(
      Output<T> matrix, Output<T> rhs, Output l2Regularizer,
      {bool fast: true}) {
    var op$ = newOperation(
        'BatchMatrixSolveLs', _scope.uniqueName('BatchMatrixSolveLs'));
    op$.addInput(matrix);
    op$.addInput(rhs);
    op$.addInput(l2Regularizer);
    op$.setAttrBool('fast', fast);
    return op$.finish()[0];
  }

  ParseSingleSequenceExampleOutput parseSingleSequenceExample<T>(
      Output<String> serialized,
      Output<String> featureListDenseMissingAssumedEmpty,
      List<Output<String>> contextSparseKeys,
      List<Output<String>> contextDenseKeys,
      List<Output<String>> featureListSparseKeys,
      List<Output<String>> featureListDenseKeys,
      List<Output<T>> contextDenseDefaults,
      Output<String> debugName,
      {int ncontextSparse: 0,
      int ncontextDense: 0,
      int nfeatureListSparse: 0,
      int nfeatureListDense: 0,
      List<DataType> contextSparseTypes,
      List<DataType> tcontextDense,
      List<DataType> featureListDenseTypes,
      List<Shape> contextDenseShapes,
      List<DataType> featureListSparseTypes,
      List<Shape> featureListDenseShapes}) {
    var op$ = newOperation('ParseSingleSequenceExample',
        _scope.uniqueName('ParseSingleSequenceExample'));
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

  LookupTableExportOutput lookupTableExport<T>(Output<String> tableHandle,
      {DataType tkeys, DataType tvalues}) {
    var op$ = newOperation(
        'LookupTableExport', _scope.uniqueName('LookupTableExport'));
    op$.addInput(tableHandle);
    op$.setAttrType('Tkeys', tkeys);
    op$.setAttrType('Tvalues', tvalues);
    var result$ = op$.finish();
    return new LookupTableExportOutput<T>(result$, result$[0], result$[1]);
  }

  Output<T> gatherV2<T>(Output<T> params, Output<T> indices, Output<T> axis,
      {DataType tparams, DataType tindices, DataType taxis}) {
    var op$ = newOperation('GatherV2', _scope.uniqueName('GatherV2'));
    op$.addInput(params);
    op$.addInput(indices);
    op$.addInput(axis);
    op$.setAttrType('Tparams', tparams);
    op$.setAttrType('Tindices', tindices);
    op$.setAttrType('Taxis', taxis);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 13: Use Svd instead.')
  BatchSvdOutput batchSvd<T>(Output<T> input,
      {bool computeUv: true, bool fullMatrices: false}) {
    var op$ = newOperation('BatchSvd', _scope.uniqueName('BatchSvd'));
    op$.addInput(input);
    op$.setAttrBool('compute_uv', computeUv);
    op$.setAttrBool('full_matrices', fullMatrices);
    var result$ = op$.finish();
    return new BatchSvdOutput<T>(result$, result$[0], result$[1], result$[2]);
  }

  @Deprecated('DEPRECATED at GraphDef version 13: Use MatrixSolve instead.')
  Output<T> batchMatrixSolve<T>(Output<T> matrix, Output<T> rhs,
      {bool adjoint: false}) {
    var op$ =
        newOperation('BatchMatrixSolve', _scope.uniqueName('BatchMatrixSolve'));
    op$.addInput(matrix);
    op$.addInput(rhs);
    op$.setAttrBool('adjoint', adjoint);
    return op$.finish()[0];
  }

  Output<T> applyProximalAdagrad<T>(Output<T> var$, Output<T> accum,
      Output<T> lr, Output<T> l1, Output<T> l2, Output<T> grad,
      {bool useLocking: false}) {
    var op$ = newOperation(
        'ApplyProximalAdagrad', _scope.uniqueName('ApplyProximalAdagrad'));
    op$.addInput(var$);
    op$.addInput(accum);
    op$.addInput(lr);
    op$.addInput(l1);
    op$.addInput(l2);
    op$.addInput(grad);
    op$.setAttrBool('use_locking', useLocking);
    return op$.finish()[0];
  }

  Output<T> sparseSegmentMeanGrad<T>(Output<T> grad, Output<T> indices,
      Output<int> segmentIds, Output<int> outputDim0,
      {DataType tidx: DataType.DT_INT32}) {
    var op$ = newOperation(
        'SparseSegmentMeanGrad', _scope.uniqueName('SparseSegmentMeanGrad'));
    op$.addInput(grad);
    op$.addInput(indices);
    op$.addInput(segmentIds);
    op$.addInput(outputDim0);
    op$.setAttrType('Tidx', tidx);
    return op$.finish()[0];
  }

  SvdOutput svd<T>(Output<T> input,
      {bool computeUv: true, bool fullMatrices: false}) {
    var op$ = newOperation('Svd', _scope.uniqueName('Svd'));
    op$.addInput(input);
    op$.setAttrBool('compute_uv', computeUv);
    op$.setAttrBool('full_matrices', fullMatrices);
    var result$ = op$.finish();
    return new SvdOutput<T>(result$, result$[0], result$[1], result$[2]);
  }

  QrOutput qr<T>(Output<T> input, {bool fullMatrices: false}) {
    var op$ = newOperation('Qr', _scope.uniqueName('Qr'));
    op$.addInput(input);
    op$.setAttrBool('full_matrices', fullMatrices);
    var result$ = op$.finish();
    return new QrOutput<T>(result$, result$[0], result$[1]);
  }

  SparseCrossOutput sparseCross<T>(
      List<Output<int>> indices,
      List<Output<T>> values,
      List<Output<int>> shapes,
      List<Output<T>> denseInputs,
      {int n,
      bool hashedOutput,
      int numBuckets,
      int hashKey,
      List<DataType> sparseTypes,
      List<DataType> denseTypes,
      DataType outType,
      DataType internalType}) {
    var op$ = newOperation('SparseCross', _scope.uniqueName('SparseCross'));
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
        result$, result$[0], result$[1], result$[2]);
  }

  Output<T> pack<T>(List<Output<T>> values, {int n, int axis: 0}) {
    var op$ = newOperation('Pack', _scope.uniqueName('Pack'));
    op$.addInputList(values);
    op$.setAttrInt('N', n);
    op$.setAttrInt('axis', axis);
    return op$.finish()[0];
  }

  void barrierClose(Output<String> handle,
      {bool cancelPendingEnqueues: false}) {
    var op$ = newOperation('BarrierClose', _scope.uniqueName('BarrierClose'));
    op$.addInput(handle);
    op$.setAttrBool('cancel_pending_enqueues', cancelPendingEnqueues);
    op$.finish();
  }

  SelfAdjointEigV2Output selfAdjointEigV2<T>(Output<T> input,
      {bool computeV: true}) {
    var op$ =
        newOperation('SelfAdjointEigV2', _scope.uniqueName('SelfAdjointEigV2'));
    op$.addInput(input);
    op$.setAttrBool('compute_v', computeV);
    var result$ = op$.finish();
    return new SelfAdjointEigV2Output<T>(result$, result$[0], result$[1]);
  }

  Output<T> choleskyGrad<T>(Output<T> l, Output<T> grad) {
    var op$ = newOperation('CholeskyGrad', _scope.uniqueName('CholeskyGrad'));
    op$.addInput(l);
    op$.addInput(grad);
    return op$.finish()[0];
  }

  QuantizedConcatOutput quantizedConcat<T>(
      Output<int> concatDim,
      List<Output<T>> values,
      List<Output<double>> inputMins,
      List<Output<double>> inputMaxes,
      {int n}) {
    var op$ =
        newOperation('QuantizedConcat', _scope.uniqueName('QuantizedConcat'));
    op$.addInput(concatDim);
    op$.addInputList(values);
    op$.addInputList(inputMins);
    op$.addInputList(inputMaxes);
    op$.setAttrInt('N', n);
    var result$ = op$.finish();
    return new QuantizedConcatOutput<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  Output<T> gatherNd<T>(Output<T> params, Output<T> indices,
      {DataType tparams, DataType tindices}) {
    var op$ = newOperation('GatherNd', _scope.uniqueName('GatherNd'));
    op$.addInput(params);
    op$.addInput(indices);
    op$.setAttrType('Tparams', tparams);
    op$.setAttrType('Tindices', tindices);
    return op$.finish()[0];
  }

  Output<T> maxPool<T>(Output<T> input,
      {List<int> ksize,
      List<int> strides,
      String padding,
      String dataFormat: 'NHWC'}) {
    var op$ = newOperation('MaxPool', _scope.uniqueName('MaxPool'));
    op$.addInput(input);
    op$.setAttrIntList('ksize', ksize);
    op$.setAttrIntList('strides', strides);
    op$.setAttrString('padding', padding);
    op$.setAttrString('data_format', dataFormat);
    return op$.finish()[0];
  }

  void orderedMapClear(
      {int capacity: 0,
      int memoryLimit: 0,
      List<DataType> dtypes,
      String container,
      String sharedName}) {
    var op$ =
        newOperation('OrderedMapClear', _scope.uniqueName('OrderedMapClear'));
    op$.setAttrInt('capacity', capacity);
    op$.setAttrInt('memory_limit', memoryLimit);
    op$.setAttrTypeList('dtypes', dtypes);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    op$.finish();
  }

  void queueCloseV2(Output handle, {bool cancelPendingEnqueues: false}) {
    var op$ = newOperation('QueueCloseV2', _scope.uniqueName('QueueCloseV2'));
    op$.addInput(handle);
    op$.setAttrBool('cancel_pending_enqueues', cancelPendingEnqueues);
    op$.finish();
  }

  Output<T> matrixExponential<T>(Output<T> input) {
    var op$ = newOperation(
        'MatrixExponential', _scope.uniqueName('MatrixExponential'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  Output<T> matrixDeterminant<T>(Output<T> input) {
    var op$ = newOperation(
        'MatrixDeterminant', _scope.uniqueName('MatrixDeterminant'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  Output<T> shape<T>(Output<T> input, {DataType outType: DataType.DT_INT32}) {
    var op$ = newOperation('Shape', _scope.uniqueName('Shape'));
    op$.addInput(input);
    op$.setAttrType('out_type', outType);
    return op$.finish()[0];
  }

  Output<T> asinh<T>(Output<T> x) {
    var op$ = newOperation('Asinh', _scope.uniqueName('Asinh'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<T> lookupTableFindV2<T>(
      Output tableHandle, Output<T> keys, Output<T> defaultValue,
      {DataType tin, DataType tout}) {
    var op$ = newOperation(
        'LookupTableFindV2', _scope.uniqueName('LookupTableFindV2'));
    op$.addInput(tableHandle);
    op$.addInput(keys);
    op$.addInput(defaultValue);
    op$.setAttrType('Tin', tin);
    op$.setAttrType('Tout', tout);
    return op$.finish()[0];
  }

  Output<int> where<T>(Output<T> input) {
    var op$ = newOperation('Where', _scope.uniqueName('Where'));
    op$.addInput(input);
    return op$.finish()[0];
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
      {bool useLocking: false}) {
    var op$ = newOperation('ApplyFtrlV2', _scope.uniqueName('ApplyFtrlV2'));
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

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayCloseV3')
  void tensorArrayCloseV2(Output<String> handle) {
    var op$ = newOperation(
        'TensorArrayCloseV2', _scope.uniqueName('TensorArrayCloseV2'));
    op$.addInput(handle);
    op$.finish();
  }

  Output<T> avgPool3DGrad<T>(Output<int> origInputShape, Output<T> grad,
      {List<int> ksize,
      List<int> strides,
      String padding,
      String dataFormat: 'NDHWC'}) {
    var op$ = newOperation('AvgPool3DGrad', _scope.uniqueName('AvgPool3DGrad'));
    op$.addInput(origInputShape);
    op$.addInput(grad);
    op$.setAttrIntList('ksize', ksize);
    op$.setAttrIntList('strides', strides);
    op$.setAttrString('padding', padding);
    op$.setAttrString('data_format', dataFormat);
    return op$.finish()[0];
  }

  void readerReset(Output<String> readerHandle) {
    var op$ = newOperation('ReaderReset', _scope.uniqueName('ReaderReset'));
    op$.addInput(readerHandle);
    op$.finish();
  }

  SparseSliceOutput sparseSlice<T>(Output<int> indices, Output<T> values,
      Output<int> shape, Output<int> start, Output<int> size) {
    var op$ = newOperation('SparseSlice', _scope.uniqueName('SparseSlice'));
    op$.addInput(indices);
    op$.addInput(values);
    op$.addInput(shape);
    op$.addInput(start);
    op$.addInput(size);
    var result$ = op$.finish();
    return new SparseSliceOutput<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  Output<T> avgPool<T>(Output<T> value,
      {List<int> ksize,
      List<int> strides,
      String padding,
      String dataFormat: 'NHWC'}) {
    var op$ = newOperation('AvgPool', _scope.uniqueName('AvgPool'));
    op$.addInput(value);
    op$.setAttrIntList('ksize', ksize);
    op$.setAttrIntList('strides', strides);
    op$.setAttrString('padding', padding);
    op$.setAttrString('data_format', dataFormat);
    return op$.finish()[0];
  }

  Output<String> audioSummaryV2(
      Output<String> tag, Output<double> tensor, Output<double> sampleRate,
      {int maxOutputs: 3}) {
    var op$ =
        newOperation('AudioSummaryV2', _scope.uniqueName('AudioSummaryV2'));
    op$.addInput(tag);
    op$.addInput(tensor);
    op$.addInput(sampleRate);
    op$.setAttrInt('max_outputs', maxOutputs);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayReadV3')
  Output<T> tensorArrayReadV2<T>(
      Output<String> handle, Output<int> index, Output<double> flowIn,
      {DataType dtype}) {
    dtype ??= inferType(handle);
    var op$ = newOperation(
        'TensorArrayReadV2', _scope.uniqueName('TensorArrayReadV2'));
    op$.addInput(handle);
    op$.addInput(index);
    op$.addInput(flowIn);
    op$.setAttrType('dtype', dtype);
    return op$.finish()[0];
  }

  Output<T> stagePeek<T>(Output<int> index,
      {int capacity: 0,
      int memoryLimit: 0,
      List<DataType> dtypes,
      String container,
      String sharedName}) {
    var op$ = newOperation('StagePeek', _scope.uniqueName('StagePeek'));
    op$.addInput(index);
    op$.setAttrInt('capacity', capacity);
    op$.setAttrInt('memory_limit', memoryLimit);
    op$.setAttrTypeList('dtypes', dtypes);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  void readerRestoreStateV2(Output readerHandle, Output<String> state) {
    var op$ = newOperation(
        'ReaderRestoreStateV2', _scope.uniqueName('ReaderRestoreStateV2'));
    op$.addInput(readerHandle);
    op$.addInput(state);
    op$.finish();
  }

  Output<int> setSize<T>(
      Output<int> setIndices, Output<T> setValues, Output<int> setShape,
      {bool validateIndices: true}) {
    var op$ = newOperation('SetSize', _scope.uniqueName('SetSize'));
    op$.addInput(setIndices);
    op$.addInput(setValues);
    op$.addInput(setShape);
    op$.setAttrBool('validate_indices', validateIndices);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 13: Use Cholesky instead.')
  Output<T> batchCholesky<T>(Output<T> input) {
    var op$ = newOperation('BatchCholesky', _scope.uniqueName('BatchCholesky'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayGatherV3')
  Output<T> tensorArrayGather<T>(
      Output<String> handle, Output<int> indices, Output<double> flowIn,
      {DataType dtype, Shape elementShape}) {
    dtype ??= inferType(handle);
    var op$ = newOperation(
        'TensorArrayGather', _scope.uniqueName('TensorArrayGather'));
    op$.addInput(handle);
    op$.addInput(indices);
    op$.addInput(flowIn);
    op$.setAttrType('dtype', dtype);
    op$.setAttrShape('element_shape', elementShape);
    return op$.finish()[0];
  }

  Output<double> resizeArea<T>(Output<T> images, Output<int> size,
      {bool alignCorners: false}) {
    var op$ = newOperation('ResizeArea', _scope.uniqueName('ResizeArea'));
    op$.addInput(images);
    op$.addInput(size);
    op$.setAttrBool('align_corners', alignCorners);
    return op$.finish()[0];
  }

  void readerRestoreState(Output<String> readerHandle, Output<String> state) {
    var op$ = newOperation(
        'ReaderRestoreState', _scope.uniqueName('ReaderRestoreState'));
    op$.addInput(readerHandle);
    op$.addInput(state);
    op$.finish();
  }

  Output<String> readerSerializeState(Output<String> readerHandle) {
    var op$ = newOperation(
        'ReaderSerializeState', _scope.uniqueName('ReaderSerializeState'));
    op$.addInput(readerHandle);
    return op$.finish()[0];
  }

  Output<T> matrixTriangularSolve<T>(Output<T> matrix, Output<T> rhs,
      {bool lower: true, bool adjoint: false}) {
    var op$ = newOperation(
        'MatrixTriangularSolve', _scope.uniqueName('MatrixTriangularSolve'));
    op$.addInput(matrix);
    op$.addInput(rhs);
    op$.setAttrBool('lower', lower);
    op$.setAttrBool('adjoint', adjoint);
    return op$.finish()[0];
  }

  ReaderReadOutput readerRead(
      Output<String> readerHandle, Output<String> queueHandle) {
    var op$ = newOperation('ReaderRead', _scope.uniqueName('ReaderRead'));
    op$.addInput(readerHandle);
    op$.addInput(queueHandle);
    var result$ = op$.finish();
    return new ReaderReadOutput(result$, result$[0], result$[1]);
  }

  Output<T> select<T>(Output<bool> condition, Output<T> t, Output<T> e) {
    var op$ = newOperation('Select', _scope.uniqueName('Select'));
    op$.addInput(condition);
    op$.addInput(t);
    op$.addInput(e);
    return op$.finish()[0];
  }

  SparseAddGradOutput sparseAddGrad<T>(Output<T> backpropValGrad,
      Output<int> aIndices, Output<int> bIndices, Output<int> sumIndices) {
    var op$ = newOperation('SparseAddGrad', _scope.uniqueName('SparseAddGrad'));
    op$.addInput(backpropValGrad);
    op$.addInput(aIndices);
    op$.addInput(bIndices);
    op$.addInput(sumIndices);
    var result$ = op$.finish();
    return new SparseAddGradOutput<T>(result$, result$[0], result$[1]);
  }

  Output<T> log<T>(Output<T> x) {
    var op$ = newOperation('Log', _scope.uniqueName('Log'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<double> iRFFT2D(Output input, Output<int> fftLength) {
    var op$ = newOperation('IRFFT2D', _scope.uniqueName('IRFFT2D'));
    op$.addInput(input);
    op$.addInput(fftLength);
    return op$.finish()[0];
  }

  Output mutableDenseHashTableV2<T>(Output<T> emptyKey,
      {String container,
      String sharedName,
      bool useNodeNameSharing: false,
      DataType keyDtype,
      DataType valueDtype,
      Shape valueShape,
      int initialNumBuckets: 131072,
      double maxLoadFactor: 0.800000011920929}) {
    var op$ = newOperation('MutableDenseHashTableV2',
        _scope.uniqueName('MutableDenseHashTableV2'));
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

  @Deprecated(
      'DEPRECATED at GraphDef version 26: Use FixedLengthRecordReaderV2')
  Output<String> fixedLengthRecordReader(
      {int headerBytes: 0,
      int recordBytes,
      int footerBytes: 0,
      int hopBytes: 0,
      String container,
      String sharedName}) {
    var op$ = newOperation('FixedLengthRecordReader',
        _scope.uniqueName('FixedLengthRecordReader'));
    op$.setAttrInt('header_bytes', headerBytes);
    op$.setAttrInt('record_bytes', recordBytes);
    op$.setAttrInt('footer_bytes', footerBytes);
    op$.setAttrInt('hop_bytes', hopBytes);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  Output<String> recordInput(
      {String filePattern,
      int fileRandomSeed: 301,
      double fileShuffleShiftRatio: 0.0,
      int fileBufferSize: 10000,
      int fileParallelism: 16,
      int batchSize: 32,
      String compressionType}) {
    var op$ = newOperation('RecordInput', _scope.uniqueName('RecordInput'));
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
  Output<String> textLineReader(
      {int skipHeaderLines: 0, String container, String sharedName}) {
    var op$ =
        newOperation('TextLineReader', _scope.uniqueName('TextLineReader'));
    op$.setAttrInt('skip_header_lines', skipHeaderLines);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  Output<T> restoreSlice<T>(Output<String> filePattern,
      Output<String> tensorName, Output<String> shapeAndSlice,
      {DataType dt, int preferredShard: -1}) {
    var op$ = newOperation('RestoreSlice', _scope.uniqueName('RestoreSlice'));
    op$.addInput(filePattern);
    op$.addInput(tensorName);
    op$.addInput(shapeAndSlice);
    op$.setAttrType('dt', dt);
    op$.setAttrInt('preferred_shard', preferredShard);
    return op$.finish()[0];
  }

  void save<T>(
      Output<String> filename, Output<String> tensorNames, List<Output<T>> data,
      {List<DataType> t}) {
    var op$ = newOperation('Save', _scope.uniqueName('Save'));
    op$.addInput(filename);
    op$.addInput(tensorNames);
    op$.addInputList(data);
    op$.setAttrTypeList('T', t);
    op$.finish();
  }

  Output<T> refExit<T>(Output<T> data) {
    var op$ = newOperation('RefExit', _scope.uniqueName('RefExit'));
    op$.addInput(data);
    return op$.finish()[0];
  }

  Output<bool> notEqual<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation('NotEqual', _scope.uniqueName('NotEqual'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  Output<int> nonMaxSuppression(
      Output<double> boxes, Output<double> scores, Output<int> maxOutputSize,
      {double iouThreshold: 0.5}) {
    var op$ = newOperation(
        'NonMaxSuppression', _scope.uniqueName('NonMaxSuppression'));
    op$.addInput(boxes);
    op$.addInput(scores);
    op$.addInput(maxOutputSize);
    op$.setAttrFloat('iou_threshold', iouThreshold);
    return op$.finish()[0];
  }

  Output fIFOQueueV2(
      {List<DataType> componentTypes,
      List<Shape> shapes,
      int capacity: -1,
      String container,
      String sharedName}) {
    var op$ = newOperation('FIFOQueueV2', _scope.uniqueName('FIFOQueueV2'));
    op$.setAttrTypeList('component_types', componentTypes);
    op$.setAttrShapeList('shapes', shapes);
    op$.setAttrInt('capacity', capacity);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  Output<T> batchToSpaceND<T>(
      Output<T> input, Output<T> blockShape, Output<T> crops,
      {DataType tblockShape: DataType.DT_INT32,
      DataType tcrops: DataType.DT_INT32}) {
    var op$ =
        newOperation('BatchToSpaceND', _scope.uniqueName('BatchToSpaceND'));
    op$.addInput(input);
    op$.addInput(blockShape);
    op$.addInput(crops);
    op$.setAttrType('Tblock_shape', tblockShape);
    op$.setAttrType('Tcrops', tcrops);
    return op$.finish()[0];
  }

  Output<double> cropAndResizeGradBoxes<T>(Output<double> grads,
      Output<T> image, Output<double> boxes, Output<int> boxInd,
      {String method: 'bilinear'}) {
    var op$ = newOperation(
        'CropAndResizeGradBoxes', _scope.uniqueName('CropAndResizeGradBoxes'));
    op$.addInput(grads);
    op$.addInput(image);
    op$.addInput(boxes);
    op$.addInput(boxInd);
    op$.setAttrString('method', method);
    return op$.finish()[0];
  }

  Output<double> extractGlimpse(
      Output<double> input, Output<int> size, Output<double> offsets,
      {bool centered: true, bool normalized: true, bool uniformNoise: true}) {
    var op$ =
        newOperation('ExtractGlimpse', _scope.uniqueName('ExtractGlimpse'));
    op$.addInput(input);
    op$.addInput(size);
    op$.addInput(offsets);
    op$.setAttrBool('centered', centered);
    op$.setAttrBool('normalized', normalized);
    op$.setAttrBool('uniform_noise', uniformNoise);
    return op$.finish()[0];
  }

  Output<T> rightShift<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation('RightShift', _scope.uniqueName('RightShift'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  Output decodeBmp(Output<String> contents, {int channels: 0}) {
    var op$ = newOperation('DecodeBmp', _scope.uniqueName('DecodeBmp'));
    op$.addInput(contents);
    op$.setAttrInt('channels', channels);
    return op$.finish()[0];
  }

  SampleDistortedBoundingBoxOutput sampleDistortedBoundingBox<T>(
      Output<T> imageSize, Output<double> boundingBoxes,
      {int seed: 0,
      int seed2: 0,
      double minObjectCovered: 0.10000000149011612,
      List<double> aspectRatioRange,
      List<double> areaRange,
      int maxAttempts: 100,
      bool useImageIfNoBoundingBoxes: false}) {
    var op$ = newOperation('SampleDistortedBoundingBox',
        _scope.uniqueName('SampleDistortedBoundingBox'));
    op$.addInput(imageSize);
    op$.addInput(boundingBoxes);
    op$.setAttrInt('seed', seed);
    op$.setAttrInt('seed2', seed2);
    op$.setAttrFloat('min_object_covered', minObjectCovered);
    op$.setAttrFloatList('aspect_ratio_range', aspectRatioRange);
    op$.setAttrFloatList('area_range', areaRange);
    op$.setAttrInt('max_attempts', maxAttempts);
    op$.setAttrBool(
        'use_image_if_no_bounding_boxes', useImageIfNoBoundingBoxes);
    var result$ = op$.finish();
    return new SampleDistortedBoundingBoxOutput<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 13: Use MatrixDeterminant instead.')
  Output<T> batchMatrixDeterminant<T>(Output<T> input) {
    var op$ = newOperation(
        'BatchMatrixDeterminant', _scope.uniqueName('BatchMatrixDeterminant'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  Output<T> queueDequeueUpToV2<T>(Output handle, Output<int> n,
      {List<DataType> componentTypes, int timeoutMs: -1}) {
    var op$ = newOperation(
        'QueueDequeueUpToV2', _scope.uniqueName('QueueDequeueUpToV2'));
    op$.addInput(handle);
    op$.addInput(n);
    op$.setAttrTypeList('component_types', componentTypes);
    op$.setAttrInt('timeout_ms', timeoutMs);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 15: Use IFFT')
  Output batchIFFT(Output input) {
    var op$ = newOperation('BatchIFFT', _scope.uniqueName('BatchIFFT'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  ListDiffOutput listDiff<T>(Output<T> x, Output<T> y,
      {DataType outIdx: DataType.DT_INT32}) {
    var op$ = newOperation('ListDiff', _scope.uniqueName('ListDiff'));
    op$.addInput(x);
    op$.addInput(y);
    op$.setAttrType('out_idx', outIdx);
    var result$ = op$.finish();
    return new ListDiffOutput<T>(result$, result$[0], result$[1]);
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayScatterV3')
  Output<double> tensorArrayScatterV2<T>(Output<String> handle,
      Output<int> indices, Output<T> value, Output<double> flowIn) {
    var op$ = newOperation(
        'TensorArrayScatterV2', _scope.uniqueName('TensorArrayScatterV2'));
    op$.addInput(handle);
    op$.addInput(indices);
    op$.addInput(value);
    op$.addInput(flowIn);
    return op$.finish()[0];
  }

  Output<T> rGBToHSV<T>(Output<T> images) {
    var op$ = newOperation('RGBToHSV', _scope.uniqueName('RGBToHSV'));
    op$.addInput(images);
    return op$.finish()[0];
  }

  Output decodeGif(Output<String> contents) {
    var op$ = newOperation('DecodeGif', _scope.uniqueName('DecodeGif'));
    op$.addInput(contents);
    return op$.finish()[0];
  }

  void assignSubVariableOp<T>(Output resource, Output<T> value,
      {DataType dtype}) {
    dtype ??= inferType(resource);
    var op$ = newOperation(
        'AssignSubVariableOp', _scope.uniqueName('AssignSubVariableOp'));
    op$.addInput(resource);
    op$.addInput(value);
    op$.setAttrType('dtype', dtype);
    op$.finish();
  }

  FusedBatchNormGradOutput fusedBatchNormGrad<T>(
      Output<T> yBackprop,
      Output<T> x,
      Output<T> scale,
      Output<T> reserveSpace1,
      Output<T> reserveSpace2,
      {double epsilon: 0.00009999999747378752,
      String dataFormat: 'NHWC',
      bool isTraining: true}) {
    var op$ = newOperation(
        'FusedBatchNormGrad', _scope.uniqueName('FusedBatchNormGrad'));
    op$.addInput(yBackprop);
    op$.addInput(x);
    op$.addInput(scale);
    op$.addInput(reserveSpace1);
    op$.addInput(reserveSpace2);
    op$.setAttrFloat('epsilon', epsilon);
    op$.setAttrString('data_format', dataFormat);
    op$.setAttrBool('is_training', isTraining);
    var result$ = op$.finish();
    return new FusedBatchNormGradOutput<T>(
        result$, result$[0], result$[1], result$[2], result$[3], result$[4]);
  }

  Output<T> unravelIndex<T>(Output<T> indices, Output<T> dims,
      {DataType tidx: DataType.DT_INT32}) {
    var op$ = newOperation('UnravelIndex', _scope.uniqueName('UnravelIndex'));
    op$.addInput(indices);
    op$.addInput(dims);
    op$.setAttrType('Tidx', tidx);
    return op$.finish()[0];
  }

  Output<T> decodeCSV<T>(Output<String> records, List<Output<T>> recordDefaults,
      {List<DataType> oUTTYPE,
      String fieldDelim: ',',
      bool useQuoteDelim: true,
      String naValue}) {
    var op$ = newOperation('DecodeCSV', _scope.uniqueName('DecodeCSV'));
    op$.addInput(records);
    op$.addInputList(recordDefaults);
    op$.setAttrTypeList('OUT_TYPE', oUTTYPE);
    op$.setAttrString('field_delim', fieldDelim);
    op$.setAttrBool('use_quote_delim', useQuoteDelim);
    op$.setAttrString('na_value', naValue);
    return op$.finish()[0];
  }

  Output<T> enter<T>(Output<T> data,
      {String frameName, bool isConstant: false, int parallelIterations: 10}) {
    var op$ = newOperation('Enter', _scope.uniqueName('Enter'));
    op$.addInput(data);
    op$.setAttrString('frame_name', frameName);
    op$.setAttrBool('is_constant', isConstant);
    op$.setAttrInt('parallel_iterations', parallelIterations);
    return op$.finish()[0];
  }

  Output<String> encodePng<T>(Output<T> image, {int compression: -1}) {
    var op$ = newOperation('EncodePng', _scope.uniqueName('EncodePng'));
    op$.addInput(image);
    op$.setAttrInt('compression', compression);
    return op$.finish()[0];
  }

  Output<T> serializeManySparse<T>(Output<int> sparseIndices,
      Output<T> sparseValues, Output<int> sparseShape,
      {DataType outType: DataType.DT_STRING}) {
    var op$ = newOperation(
        'SerializeManySparse', _scope.uniqueName('SerializeManySparse'));
    op$.addInput(sparseIndices);
    op$.addInput(sparseValues);
    op$.addInput(sparseShape);
    op$.setAttrType('out_type', outType);
    return op$.finish()[0];
  }

  Output tensorListFromTensor<T>(Output<T> tensor, Output<T> elementShape,
      {DataType elementDtype, DataType shapeType}) {
    var op$ = newOperation(
        'TensorListFromTensor', _scope.uniqueName('TensorListFromTensor'));
    op$.addInput(tensor);
    op$.addInput(elementShape);
    op$.setAttrType('element_dtype', elementDtype);
    op$.setAttrType('shape_type', shapeType);
    return op$.finish()[0];
  }

  Output<double> adjustSaturation(Output<double> images, Output<double> scale) {
    var op$ =
        newOperation('AdjustSaturation', _scope.uniqueName('AdjustSaturation'));
    op$.addInput(images);
    op$.addInput(scale);
    return op$.finish()[0];
  }

  Output<double> adjustContrastv2(
      Output<double> images, Output<double> contrastFactor) {
    var op$ =
        newOperation('AdjustContrastv2', _scope.uniqueName('AdjustContrastv2'));
    op$.addInput(images);
    op$.addInput(contrastFactor);
    return op$.finish()[0];
  }

  Output<T> extractJpegShape<T>(Output<String> contents,
      {DataType outputType: DataType.DT_INT32}) {
    var op$ =
        newOperation('ExtractJpegShape', _scope.uniqueName('ExtractJpegShape'));
    op$.addInput(contents);
    op$.setAttrType('output_type', outputType);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayGradV3')
  TensorArrayConcatOutput tensorArrayConcat<T>(
      Output<String> handle, Output<double> flowIn,
      {DataType dtype, Shape elementShapeExcept0}) {
    dtype ??= inferType(handle);
    var op$ = newOperation(
        'TensorArrayConcat', _scope.uniqueName('TensorArrayConcat'));
    op$.addInput(handle);
    op$.addInput(flowIn);
    op$.setAttrType('dtype', dtype);
    op$.setAttrShape('element_shape_except0', elementShapeExcept0);
    var result$ = op$.finish();
    return new TensorArrayConcatOutput<T>(result$, result$[0], result$[1]);
  }

  Output decodeAndCropJpeg(Output<String> contents, Output<int> cropWindow,
      {int channels: 0,
      int ratio: 1,
      bool fancyUpscaling: true,
      bool tryRecoverTruncated: false,
      double acceptableFraction: 1.0,
      String dctMethod}) {
    var op$ = newOperation(
        'DecodeAndCropJpeg', _scope.uniqueName('DecodeAndCropJpeg'));
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

  Output decodeJpeg(Output<String> contents,
      {int channels: 0,
      int ratio: 1,
      bool fancyUpscaling: true,
      bool tryRecoverTruncated: false,
      double acceptableFraction: 1.0,
      String dctMethod}) {
    var op$ = newOperation('DecodeJpeg', _scope.uniqueName('DecodeJpeg'));
    op$.addInput(contents);
    op$.setAttrInt('channels', channels);
    op$.setAttrInt('ratio', ratio);
    op$.setAttrBool('fancy_upscaling', fancyUpscaling);
    op$.setAttrBool('try_recover_truncated', tryRecoverTruncated);
    op$.setAttrFloat('acceptable_fraction', acceptableFraction);
    op$.setAttrString('dct_method', dctMethod);
    return op$.finish()[0];
  }

  Output<int> orderedMapIncompleteSize(
      {int capacity: 0,
      int memoryLimit: 0,
      List<DataType> dtypes,
      String container,
      String sharedName}) {
    var op$ = newOperation('OrderedMapIncompleteSize',
        _scope.uniqueName('OrderedMapIncompleteSize'));
    op$.setAttrInt('capacity', capacity);
    op$.setAttrInt('memory_limit', memoryLimit);
    op$.setAttrTypeList('dtypes', dtypes);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  Output<int> lookupTableSizeV2(Output tableHandle) {
    var op$ = newOperation(
        'LookupTableSizeV2', _scope.uniqueName('LookupTableSizeV2'));
    op$.addInput(tableHandle);
    return op$.finish()[0];
  }

  void enqueueInQueueDataset<T>(Output queue, List<Output<T>> components,
      {List<DataType> tcomponents}) {
    var op$ = newOperation(
        'EnqueueInQueueDataset', _scope.uniqueName('EnqueueInQueueDataset'));
    op$.addInput(queue);
    op$.addInputList(components);
    op$.setAttrTypeList('Tcomponents', tcomponents);
    op$.finish();
  }

  void lookupTableImportV2<T>(
      Output tableHandle, Output<T> keys, Output<T> values,
      {DataType tin, DataType tout}) {
    var op$ = newOperation(
        'LookupTableImportV2', _scope.uniqueName('LookupTableImportV2'));
    op$.addInput(tableHandle);
    op$.addInput(keys);
    op$.addInput(values);
    op$.setAttrType('Tin', tin);
    op$.setAttrType('Tout', tout);
    op$.finish();
  }

  void tensorArrayCloseV3(Output handle) {
    var op$ = newOperation(
        'TensorArrayCloseV3', _scope.uniqueName('TensorArrayCloseV3'));
    op$.addInput(handle);
    op$.finish();
  }

  void saveV2<T>(Output<String> prefix, Output<String> tensorNames,
      Output<String> shapeAndSlices, List<Output<T>> tensors,
      {List<DataType> dtypes}) {
    var op$ = newOperation('SaveV2', _scope.uniqueName('SaveV2'));
    op$.addInput(prefix);
    op$.addInput(tensorNames);
    op$.addInput(shapeAndSlices);
    op$.addInputList(tensors);
    op$.setAttrTypeList('dtypes', dtypes);
    op$.finish();
  }

  void orderedMapStage<T>(
      Output<int> key, Output<int> indices, List<Output<T>> values,
      {int capacity: 0,
      int memoryLimit: 0,
      List<DataType> dtypes,
      List<DataType> fakeDtypes,
      String container,
      String sharedName}) {
    var op$ =
        newOperation('OrderedMapStage', _scope.uniqueName('OrderedMapStage'));
    op$.addInput(key);
    op$.addInput(indices);
    op$.addInputList(values);
    op$.setAttrInt('capacity', capacity);
    op$.setAttrInt('memory_limit', memoryLimit);
    op$.setAttrTypeList('dtypes', dtypes);
    op$.setAttrTypeList('fake_dtypes', fakeDtypes);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    op$.finish();
  }

  Output prependFromQueueAndPaddedBatchDataset<T>(
      Output inputDataset,
      Output<int> batchSize,
      List<Output<int>> paddedShapes,
      List<Output<T>> paddingValues,
      {List<DataType> toutputTypes,
      List<Shape> outputShapes,
      int n}) {
    var op$ = newOperation('PrependFromQueueAndPaddedBatchDataset',
        _scope.uniqueName('PrependFromQueueAndPaddedBatchDataset'));
    op$.addInput(inputDataset);
    op$.addInput(batchSize);
    op$.addInputList(paddedShapes);
    op$.addInputList(paddingValues);
    op$.setAttrTypeList('Toutput_types', toutputTypes);
    op$.setAttrShapeList('output_shapes', outputShapes);
    op$.setAttrInt('N', n);
    return op$.finish()[0];
  }

  Output<T> fractionalMaxPoolGrad<T>(
      Output<T> origInput,
      Output<T> origOutput,
      Output<T> outBackprop,
      Output<int> rowPoolingSequence,
      Output<int> colPoolingSequence,
      {bool overlapping: false}) {
    var op$ = newOperation(
        'FractionalMaxPoolGrad', _scope.uniqueName('FractionalMaxPoolGrad'));
    op$.addInput(origInput);
    op$.addInput(origOutput);
    op$.addInput(outBackprop);
    op$.addInput(rowPoolingSequence);
    op$.addInput(colPoolingSequence);
    op$.setAttrBool('overlapping', overlapping);
    return op$.finish()[0];
  }

  void iteratorSetStatsAggregator(
      Output iteratorHandle, Output statsAggregatorHandle) {
    var op$ = newOperation('IteratorSetStatsAggregator',
        _scope.uniqueName('IteratorSetStatsAggregator'));
    op$.addInput(iteratorHandle);
    op$.addInput(statsAggregatorHandle);
    op$.finish();
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
    var op$ = newOperation('EncodeJpeg', _scope.uniqueName('EncodeJpeg'));
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

  Output<int> rank<T>(Output<T> input) {
    var op$ = newOperation('Rank', _scope.uniqueName('Rank'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  StringSplitOutput stringSplit(Output<String> input, Output<String> delimiter,
      {bool skipEmpty: true}) {
    var op$ = newOperation('StringSplit', _scope.uniqueName('StringSplit'));
    op$.addInput(input);
    op$.addInput(delimiter);
    op$.setAttrBool('skip_empty', skipEmpty);
    var result$ = op$.finish();
    return new StringSplitOutput(result$, result$[0], result$[1], result$[2]);
  }

  void resourceScatterUpdate<T>(
      Output resource, Output<T> indices, Output<T> updates,
      {DataType dtype, DataType tindices}) {
    dtype ??= inferType(resource);
    var op$ = newOperation(
        'ResourceScatterUpdate', _scope.uniqueName('ResourceScatterUpdate'));
    op$.addInput(resource);
    op$.addInput(indices);
    op$.addInput(updates);
    op$.setAttrType('dtype', dtype);
    op$.setAttrType('Tindices', tindices);
    op$.finish();
  }

  ThreadUnsafeUnigramCandidateSamplerOutput threadUnsafeUnigramCandidateSampler(
      Output<int> trueClasses,
      {int numTrue,
      int numSampled,
      bool unique,
      int rangeMax,
      int seed: 0,
      int seed2: 0}) {
    var op$ = newOperation('ThreadUnsafeUnigramCandidateSampler',
        _scope.uniqueName('ThreadUnsafeUnigramCandidateSampler'));
    op$.addInput(trueClasses);
    op$.setAttrInt('num_true', numTrue);
    op$.setAttrInt('num_sampled', numSampled);
    op$.setAttrBool('unique', unique);
    op$.setAttrInt('range_max', rangeMax);
    op$.setAttrInt('seed', seed);
    op$.setAttrInt('seed2', seed2);
    var result$ = op$.finish();
    return new ThreadUnsafeUnigramCandidateSamplerOutput(
        result$, result$[0], result$[1], result$[2]);
  }

  void stackCloseV2(Output handle) {
    var op$ = newOperation('StackCloseV2', _scope.uniqueName('StackCloseV2'));
    op$.addInput(handle);
    op$.finish();
  }

  Output<T> abs<T>(Output<T> x) {
    var op$ = newOperation('Abs', _scope.uniqueName('Abs'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<T> gather<T>(Output<T> params, Output<T> indices,
      {bool validateIndices: true, DataType tparams, DataType tindices}) {
    var op$ = newOperation('Gather', _scope.uniqueName('Gather'));
    op$.addInput(params);
    op$.addInput(indices);
    op$.setAttrBool('validate_indices', validateIndices);
    op$.setAttrType('Tparams', tparams);
    op$.setAttrType('Tindices', tindices);
    return op$.finish()[0];
  }

  Output<T> tensorArrayReadV3<T>(
      Output handle, Output<int> index, Output<double> flowIn,
      {DataType dtype}) {
    dtype ??= inferType(handle);
    var op$ = newOperation(
        'TensorArrayReadV3', _scope.uniqueName('TensorArrayReadV3'));
    op$.addInput(handle);
    op$.addInput(index);
    op$.addInput(flowIn);
    op$.setAttrType('dtype', dtype);
    return op$.finish()[0];
  }

  void resourceSparseApplyFtrlV2<T>(
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
      {DataType tindices,
      bool useLocking: false}) {
    var op$ = newOperation('ResourceSparseApplyFtrlV2',
        _scope.uniqueName('ResourceSparseApplyFtrlV2'));
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
    op$.finish();
  }

  Output<String> encodeWav(Output<double> audio, Output<int> sampleRate) {
    var op$ = newOperation('EncodeWav', _scope.uniqueName('EncodeWav'));
    op$.addInput(audio);
    op$.addInput(sampleRate);
    return op$.finish()[0];
  }

  Output statsAggregatorHandle({String container, String sharedName}) {
    var op$ = newOperation(
        'StatsAggregatorHandle', _scope.uniqueName('StatsAggregatorHandle'));
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 8: Random crop is now pure Python')
  Output<T> randomCrop<T>(Output<T> image, Output<int> size,
      {int seed: 0, int seed2: 0}) {
    var op$ = newOperation('RandomCrop', _scope.uniqueName('RandomCrop'));
    op$.addInput(image);
    op$.addInput(size);
    op$.setAttrInt('seed', seed);
    op$.setAttrInt('seed2', seed2);
    return op$.finish()[0];
  }

  Output<T> diag<T>(Output<T> diagonal) {
    var op$ = newOperation('Diag', _scope.uniqueName('Diag'));
    op$.addInput(diagonal);
    return op$.finish()[0];
  }

  Output<T> tensorListGetItem<T>(Output inputHandle, Output<int> index,
      {DataType elementDtype}) {
    var op$ = newOperation(
        'TensorListGetItem', _scope.uniqueName('TensorListGetItem'));
    op$.addInput(inputHandle);
    op$.addInput(index);
    op$.setAttrType('element_dtype', elementDtype);
    return op$.finish()[0];
  }

  Output<T> sparseSegmentSqrtNGrad<T>(Output<T> grad, Output<T> indices,
      Output<int> segmentIds, Output<int> outputDim0,
      {DataType tidx: DataType.DT_INT32}) {
    var op$ = newOperation(
        'SparseSegmentSqrtNGrad', _scope.uniqueName('SparseSegmentSqrtNGrad'));
    op$.addInput(grad);
    op$.addInput(indices);
    op$.addInput(segmentIds);
    op$.addInput(outputDim0);
    op$.setAttrType('Tidx', tidx);
    return op$.finish()[0];
  }

  Output<bool> varIsInitializedOp(Output resource) {
    var op$ = newOperation(
        'VarIsInitializedOp', _scope.uniqueName('VarIsInitializedOp'));
    op$.addInput(resource);
    return op$.finish()[0];
  }

  Output<double> fakeQuantWithMinMaxVarsPerChannel(
      Output<double> inputs, Output<double> min, Output<double> max,
      {int numBits: 8, bool narrowRange: false}) {
    var op$ = newOperation('FakeQuantWithMinMaxVarsPerChannel',
        _scope.uniqueName('FakeQuantWithMinMaxVarsPerChannel'));
    op$.addInput(inputs);
    op$.addInput(min);
    op$.addInput(max);
    op$.setAttrInt('num_bits', numBits);
    op$.setAttrBool('narrow_range', narrowRange);
    return op$.finish()[0];
  }

  Output<T> iteratorGetNext<T>(Output iterator,
      {List<DataType> outputTypes, List<Shape> outputShapes}) {
    var op$ =
        newOperation('IteratorGetNext', _scope.uniqueName('IteratorGetNext'));
    op$.addInput(iterator);
    op$.setAttrTypeList('output_types', outputTypes);
    op$.setAttrShapeList('output_shapes', outputShapes);
    return op$.finish()[0];
  }

  void resourceSparseApplyAdagradDA<T>(
      Output var$,
      Output gradientAccumulator,
      Output gradientSquaredAccumulator,
      Output<T> grad,
      Output<T> indices,
      Output<T> lr,
      Output<T> l1,
      Output<T> l2,
      Output<int> globalStep,
      {DataType tindices,
      bool useLocking: false}) {
    var op$ = newOperation('ResourceSparseApplyAdagradDA',
        _scope.uniqueName('ResourceSparseApplyAdagradDA'));
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
    op$.finish();
  }

  Output tFRecordDataset(Output<String> filenames,
      Output<String> compressionType, Output<int> bufferSize) {
    var op$ =
        newOperation('TFRecordDataset', _scope.uniqueName('TFRecordDataset'));
    op$.addInput(filenames);
    op$.addInput(compressionType);
    op$.addInput(bufferSize);
    return op$.finish()[0];
  }

  SwitchOutput switch$<T>(Output<T> data, Output<bool> pred) {
    var op$ = newOperation('Switch', _scope.uniqueName('Switch'));
    op$.addInput(data);
    op$.addInput(pred);
    var result$ = op$.finish();
    return new SwitchOutput<T>(result$, result$[0], result$[1]);
  }

  Output<T> linSpace<T>(Output<T> start, Output<T> stop, Output<T> num,
      {DataType tidx: DataType.DT_INT32}) {
    var op$ = newOperation('LinSpace', _scope.uniqueName('LinSpace'));
    op$.addInput(start);
    op$.addInput(stop);
    op$.addInput(num);
    op$.setAttrType('Tidx', tidx);
    return op$.finish()[0];
  }

  CTCLossOutput cTCLoss(Output<double> inputs, Output<int> labelsIndices,
      Output<int> labelsValues, Output<int> sequenceLength,
      {bool preprocessCollapseRepeated: false,
      bool ctcMergeRepeated: true,
      bool ignoreLongerOutputsThanInputs: false}) {
    var op$ = newOperation('CTCLoss', _scope.uniqueName('CTCLoss'));
    op$.addInput(inputs);
    op$.addInput(labelsIndices);
    op$.addInput(labelsValues);
    op$.addInput(sequenceLength);
    op$.setAttrBool('preprocess_collapse_repeated', preprocessCollapseRepeated);
    op$.setAttrBool('ctc_merge_repeated', ctcMergeRepeated);
    op$.setAttrBool(
        'ignore_longer_outputs_than_inputs', ignoreLongerOutputsThanInputs);
    var result$ = op$.finish();
    return new CTCLossOutput(result$, result$[0], result$[1]);
  }

  Output fixedLengthRecordDataset(
      Output<String> filenames,
      Output<int> headerBytes,
      Output<int> recordBytes,
      Output<int> footerBytes,
      Output<int> bufferSize) {
    var op$ = newOperation('FixedLengthRecordDataset',
        _scope.uniqueName('FixedLengthRecordDataset'));
    op$.addInput(filenames);
    op$.addInput(headerBytes);
    op$.addInput(recordBytes);
    op$.addInput(footerBytes);
    op$.addInput(bufferSize);
    return op$.finish()[0];
  }

  Output<T> sparseApplyProximalAdagrad<T>(
      Output<T> var$,
      Output<T> accum,
      Output<T> lr,
      Output<T> l1,
      Output<T> l2,
      Output<T> grad,
      Output<T> indices,
      {DataType tindices,
      bool useLocking: false}) {
    var op$ = newOperation('SparseApplyProximalAdagrad',
        _scope.uniqueName('SparseApplyProximalAdagrad'));
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

  Output<int> mapSize(
      {int capacity: 0,
      int memoryLimit: 0,
      List<DataType> dtypes,
      String container,
      String sharedName}) {
    var op$ = newOperation('MapSize', _scope.uniqueName('MapSize'));
    op$.setAttrInt('capacity', capacity);
    op$.setAttrInt('memory_limit', memoryLimit);
    op$.setAttrTypeList('dtypes', dtypes);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  Output<T> sinh<T>(Output<T> x) {
    var op$ = newOperation('Sinh', _scope.uniqueName('Sinh'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 14: Use MatrixDiag')
  Output<T> batchMatrixDiag<T>(Output<T> diagonal) {
    var op$ =
        newOperation('BatchMatrixDiag', _scope.uniqueName('BatchMatrixDiag'));
    op$.addInput(diagonal);
    return op$.finish()[0];
  }

  Output sqlDataset(Output<String> driverName, Output<String> dataSourceName,
      Output<String> query,
      {List<DataType> outputTypes, List<Shape> outputShapes}) {
    var op$ = newOperation('SqlDataset', _scope.uniqueName('SqlDataset'));
    op$.addInput(driverName);
    op$.addInput(dataSourceName);
    op$.addInput(query);
    op$.setAttrTypeList('output_types', outputTypes);
    op$.setAttrShapeList('output_shapes', outputShapes);
    return op$.finish()[0];
  }

  Output<T> segmentSum<T>(Output<T> data, Output<T> segmentIds,
      {DataType tindices}) {
    var op$ = newOperation('SegmentSum', _scope.uniqueName('SegmentSum'));
    op$.addInput(data);
    op$.addInput(segmentIds);
    op$.setAttrType('Tindices', tindices);
    return op$.finish()[0];
  }

  Output textLineDataset(Output<String> filenames,
      Output<String> compressionType, Output<int> bufferSize) {
    var op$ =
        newOperation('TextLineDataset', _scope.uniqueName('TextLineDataset'));
    op$.addInput(filenames);
    op$.addInput(compressionType);
    op$.addInput(bufferSize);
    return op$.finish()[0];
  }

  Output<T> dataFormatDimMap<T>(Output<T> x,
      {String srcFormat: 'NHWC', String dstFormat: 'NCHW'}) {
    var op$ =
        newOperation('DataFormatDimMap', _scope.uniqueName('DataFormatDimMap'));
    op$.addInput(x);
    op$.setAttrString('src_format', srcFormat);
    op$.setAttrString('dst_format', dstFormat);
    return op$.finish()[0];
  }

  void stackClose(Output<String> handle) {
    var op$ = newOperation('StackClose', _scope.uniqueName('StackClose'));
    op$.addInput(handle);
    op$.finish();
  }

  Output<T> sparseSegmentMeanWithNumSegments<T>(Output<T> data,
      Output<T> indices, Output<int> segmentIds, Output<T> numSegments,
      {DataType tidx: DataType.DT_INT32,
      DataType tnumsegments: DataType.DT_INT32}) {
    var op$ = newOperation('SparseSegmentMeanWithNumSegments',
        _scope.uniqueName('SparseSegmentMeanWithNumSegments'));
    op$.addInput(data);
    op$.addInput(indices);
    op$.addInput(segmentIds);
    op$.addInput(numSegments);
    op$.setAttrType('Tidx', tidx);
    op$.setAttrType('Tnumsegments', tnumsegments);
    return op$.finish()[0];
  }

  Output<double> resizeBicubic<T>(Output<T> images, Output<int> size,
      {bool alignCorners: false}) {
    var op$ = newOperation('ResizeBicubic', _scope.uniqueName('ResizeBicubic'));
    op$.addInput(images);
    op$.addInput(size);
    op$.setAttrBool('align_corners', alignCorners);
    return op$.finish()[0];
  }

  Output<T> hSVToRGB<T>(Output<T> images) {
    var op$ = newOperation('HSVToRGB', _scope.uniqueName('HSVToRGB'));
    op$.addInput(images);
    return op$.finish()[0];
  }

  SparseReduceMaxSparseOutput sparseReduceMaxSparse<T>(Output<int> inputIndices,
      Output<T> inputValues, Output<int> inputShape, Output<int> reductionAxes,
      {bool keepDims: false}) {
    var op$ = newOperation(
        'SparseReduceMaxSparse', _scope.uniqueName('SparseReduceMaxSparse'));
    op$.addInput(inputIndices);
    op$.addInput(inputValues);
    op$.addInput(inputShape);
    op$.addInput(reductionAxes);
    op$.setAttrBool('keep_dims', keepDims);
    var result$ = op$.finish();
    return new SparseReduceMaxSparseOutput<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  Output cacheDataset(Output inputDataset, Output<String> filename,
      {List<DataType> outputTypes, List<Shape> outputShapes}) {
    var op$ = newOperation('CacheDataset', _scope.uniqueName('CacheDataset'));
    op$.addInput(inputDataset);
    op$.addInput(filename);
    op$.setAttrTypeList('output_types', outputTypes);
    op$.setAttrShapeList('output_shapes', outputShapes);
    return op$.finish()[0];
  }

  Output<T> maxPoolV2<T>(
      Output<T> input, Output<int> ksize, Output<int> strides,
      {String padding, String dataFormat: 'NHWC'}) {
    var op$ = newOperation('MaxPoolV2', _scope.uniqueName('MaxPoolV2'));
    op$.addInput(input);
    op$.addInput(ksize);
    op$.addInput(strides);
    op$.setAttrString('padding', padding);
    op$.setAttrString('data_format', dataFormat);
    return op$.finish()[0];
  }

  QuantizedMulOutput quantizedMul<T>(
      Output<T> x,
      Output<T> y,
      Output<double> minX,
      Output<double> maxX,
      Output<double> minY,
      Output<double> maxY,
      {DataType t1,
      DataType t2,
      DataType toutput: DataType.DT_QINT32}) {
    var op$ = newOperation('QuantizedMul', _scope.uniqueName('QuantizedMul'));
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
        result$, result$[0], result$[1], result$[2]);
  }

  Output shuffleAndRepeatDataset(Output inputDataset, Output<int> bufferSize,
      Output<int> seed, Output<int> seed2, Output<int> count,
      {List<DataType> outputTypes, List<Shape> outputShapes}) {
    var op$ = newOperation('ShuffleAndRepeatDataset',
        _scope.uniqueName('ShuffleAndRepeatDataset'));
    op$.addInput(inputDataset);
    op$.addInput(bufferSize);
    op$.addInput(seed);
    op$.addInput(seed2);
    op$.addInput(count);
    op$.setAttrTypeList('output_types', outputTypes);
    op$.setAttrShapeList('output_shapes', outputShapes);
    return op$.finish()[0];
  }

  Output rangeDataset(Output<int> start, Output<int> stop, Output<int> step,
      {List<DataType> outputTypes, List<Shape> outputShapes}) {
    var op$ = newOperation('RangeDataset', _scope.uniqueName('RangeDataset'));
    op$.addInput(start);
    op$.addInput(stop);
    op$.addInput(step);
    op$.setAttrTypeList('output_types', outputTypes);
    op$.setAttrShapeList('output_shapes', outputShapes);
    return op$.finish()[0];
  }

  Output<T> randomPoissonV2<T>(Output<T> shape, Output<T> rate,
      {int seed: 0,
      int seed2: 0,
      DataType s,
      DataType r: DataType.DT_DOUBLE,
      DataType dtype: DataType.DT_INT64}) {
    dtype ??= inferType(shape);
    var op$ =
        newOperation('RandomPoissonV2', _scope.uniqueName('RandomPoissonV2'));
    op$.addInput(shape);
    op$.addInput(rate);
    op$.setAttrInt('seed', seed);
    op$.setAttrInt('seed2', seed2);
    op$.setAttrType('S', s);
    op$.setAttrType('R', r);
    op$.setAttrType('dtype', dtype);
    return op$.finish()[0];
  }

  Output shuffleDataset(Output inputDataset, Output<int> bufferSize,
      Output<int> seed, Output<int> seed2,
      {bool reshuffleEachIteration: true,
      List<DataType> outputTypes,
      List<Shape> outputShapes}) {
    var op$ =
        newOperation('ShuffleDataset', _scope.uniqueName('ShuffleDataset'));
    op$.addInput(inputDataset);
    op$.addInput(bufferSize);
    op$.addInput(seed);
    op$.addInput(seed2);
    op$.setAttrBool('reshuffle_each_iteration', reshuffleEachIteration);
    op$.setAttrTypeList('output_types', outputTypes);
    op$.setAttrShapeList('output_shapes', outputShapes);
    return op$.finish()[0];
  }

  Output<int> readerNumRecordsProduced(Output<String> readerHandle) {
    var op$ = newOperation('ReaderNumRecordsProduced',
        _scope.uniqueName('ReaderNumRecordsProduced'));
    op$.addInput(readerHandle);
    return op$.finish()[0];
  }

  TensorListPopBackOutput tensorListPopBack<T>(Output inputHandle,
      {DataType elementDtype}) {
    var op$ = newOperation(
        'TensorListPopBack', _scope.uniqueName('TensorListPopBack'));
    op$.addInput(inputHandle);
    op$.setAttrType('element_dtype', elementDtype);
    var result$ = op$.finish();
    return new TensorListPopBackOutput<T>(result$, result$[0], result$[1]);
  }

  Output takeDataset(Output inputDataset, Output<int> count,
      {List<DataType> outputTypes, List<Shape> outputShapes}) {
    var op$ = newOperation('TakeDataset', _scope.uniqueName('TakeDataset'));
    op$.addInput(inputDataset);
    op$.addInput(count);
    op$.setAttrTypeList('output_types', outputTypes);
    op$.setAttrShapeList('output_shapes', outputShapes);
    return op$.finish()[0];
  }

  ReaderReadUpToV2Output readerReadUpToV2(
      Output readerHandle, Output queueHandle, Output<int> numRecords) {
    var op$ =
        newOperation('ReaderReadUpToV2', _scope.uniqueName('ReaderReadUpToV2'));
    op$.addInput(readerHandle);
    op$.addInput(queueHandle);
    op$.addInput(numRecords);
    var result$ = op$.finish();
    return new ReaderReadUpToV2Output(result$, result$[0], result$[1]);
  }

  Output<T> queueDequeueV2<T>(Output handle,
      {List<DataType> componentTypes, int timeoutMs: -1}) {
    var op$ =
        newOperation('QueueDequeueV2', _scope.uniqueName('QueueDequeueV2'));
    op$.addInput(handle);
    op$.setAttrTypeList('component_types', componentTypes);
    op$.setAttrInt('timeout_ms', timeoutMs);
    return op$.finish()[0];
  }

  ReaderReadUpToOutput readerReadUpTo(Output<String> readerHandle,
      Output<String> queueHandle, Output<int> numRecords) {
    var op$ =
        newOperation('ReaderReadUpTo', _scope.uniqueName('ReaderReadUpTo'));
    op$.addInput(readerHandle);
    op$.addInput(queueHandle);
    op$.addInput(numRecords);
    var result$ = op$.finish();
    return new ReaderReadUpToOutput(result$, result$[0], result$[1]);
  }

  Output<T> unpack<T>(Output<T> value, {int num, int axis: 0}) {
    var op$ = newOperation('Unpack', _scope.uniqueName('Unpack'));
    op$.addInput(value);
    op$.setAttrInt('num', num);
    op$.setAttrInt('axis', axis);
    return op$.finish()[0];
  }

  Output concatenateDataset(Output inputDataset, Output anotherDataset,
      {List<DataType> outputTypes, List<Shape> outputShapes}) {
    var op$ = newOperation(
        'ConcatenateDataset', _scope.uniqueName('ConcatenateDataset'));
    op$.addInput(inputDataset);
    op$.addInput(anotherDataset);
    op$.setAttrTypeList('output_types', outputTypes);
    op$.setAttrShapeList('output_shapes', outputShapes);
    return op$.finish()[0];
  }

  Output<T> conv2DBackpropFilter<T>(
      Output<T> input, Output<int> filterSizes, Output<T> outBackprop,
      {List<int> strides,
      bool useCudnnOnGpu: true,
      String padding,
      String dataFormat: 'NHWC',
      List<int> dilations}) {
    var op$ = newOperation(
        'Conv2DBackpropFilter', _scope.uniqueName('Conv2DBackpropFilter'));
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

  Output<T> iteratorGetNextSync<T>(Output iterator,
      {List<DataType> outputTypes, List<Shape> outputShapes}) {
    var op$ = newOperation(
        'IteratorGetNextSync', _scope.uniqueName('IteratorGetNextSync'));
    op$.addInput(iterator);
    op$.setAttrTypeList('output_types', outputTypes);
    op$.setAttrShapeList('output_shapes', outputShapes);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 13: Use MatrixInverse instead.')
  Output<T> batchMatrixInverse<T>(Output<T> input, {bool adjoint: false}) {
    var op$ = newOperation(
        'BatchMatrixInverse', _scope.uniqueName('BatchMatrixInverse'));
    op$.addInput(input);
    op$.setAttrBool('adjoint', adjoint);
    return op$.finish()[0];
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
      {DataType tindices,
      bool useLocking: false}) {
    var op$ = newOperation('SparseApplyCenteredRMSProp',
        _scope.uniqueName('SparseApplyCenteredRMSProp'));
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

  void resourceSparseApplyCenteredRMSProp<T>(
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
      {DataType tindices,
      bool useLocking: false}) {
    var op$ = newOperation('ResourceSparseApplyCenteredRMSProp',
        _scope.uniqueName('ResourceSparseApplyCenteredRMSProp'));
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
    op$.finish();
  }

  Output<int> queueSizeV2(Output handle) {
    var op$ = newOperation('QueueSizeV2', _scope.uniqueName('QueueSizeV2'));
    op$.addInput(handle);
    return op$.finish()[0];
  }

  FractionalAvgPoolOutput fractionalAvgPool<T>(Output<T> value,
      {List<double> poolingRatio,
      bool pseudoRandom: false,
      bool overlapping: false,
      bool deterministic: false,
      int seed: 0,
      int seed2: 0}) {
    var op$ = newOperation(
        'FractionalAvgPool', _scope.uniqueName('FractionalAvgPool'));
    op$.addInput(value);
    op$.setAttrFloatList('pooling_ratio', poolingRatio);
    op$.setAttrBool('pseudo_random', pseudoRandom);
    op$.setAttrBool('overlapping', overlapping);
    op$.setAttrBool('deterministic', deterministic);
    op$.setAttrInt('seed', seed);
    op$.setAttrInt('seed2', seed2);
    var result$ = op$.finish();
    return new FractionalAvgPoolOutput<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  Output randomDataset(Output<int> seed, Output<int> seed2,
      {List<DataType> outputTypes, List<Shape> outputShapes}) {
    var op$ = newOperation('RandomDataset', _scope.uniqueName('RandomDataset'));
    op$.addInput(seed);
    op$.addInput(seed2);
    op$.setAttrTypeList('output_types', outputTypes);
    op$.setAttrShapeList('output_shapes', outputShapes);
    return op$.finish()[0];
  }

  void mergeV2Checkpoints(
      Output<String> checkpointPrefixes, Output<String> destinationPrefix,
      {bool deleteOldDirs: true}) {
    var op$ = newOperation(
        'MergeV2Checkpoints', _scope.uniqueName('MergeV2Checkpoints'));
    op$.addInput(checkpointPrefixes);
    op$.addInput(destinationPrefix);
    op$.setAttrBool('delete_old_dirs', deleteOldDirs);
    op$.finish();
  }

  void queueClose(Output<String> handle, {bool cancelPendingEnqueues: false}) {
    var op$ = newOperation('QueueClose', _scope.uniqueName('QueueClose'));
    op$.addInput(handle);
    op$.setAttrBool('cancel_pending_enqueues', cancelPendingEnqueues);
    op$.finish();
  }

  Output<String> randomShuffleQueue(
      {List<DataType> componentTypes,
      List<Shape> shapes,
      int capacity: -1,
      int minAfterDequeue: 0,
      int seed: 0,
      int seed2: 0,
      String container,
      String sharedName}) {
    var op$ = newOperation(
        'RandomShuffleQueue', _scope.uniqueName('RandomShuffleQueue'));
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

  Output<T> restoreV2<T>(Output<String> prefix, Output<String> tensorNames,
      Output<String> shapeAndSlices,
      {List<DataType> dtypes}) {
    var op$ = newOperation('RestoreV2', _scope.uniqueName('RestoreV2'));
    op$.addInput(prefix);
    op$.addInput(tensorNames);
    op$.addInput(shapeAndSlices);
    op$.setAttrTypeList('dtypes', dtypes);
    return op$.finish()[0];
  }

  Output denseToSparseBatchDataset(
      Output inputDataset, Output<int> batchSize, Output<int> rowShape,
      {List<DataType> outputTypes, List<Shape> outputShapes}) {
    var op$ = newOperation('DenseToSparseBatchDataset',
        _scope.uniqueName('DenseToSparseBatchDataset'));
    op$.addInput(inputDataset);
    op$.addInput(batchSize);
    op$.addInput(rowShape);
    op$.setAttrTypeList('output_types', outputTypes);
    op$.setAttrShapeList('output_shapes', outputShapes);
    return op$.finish()[0];
  }

  Output<T> addN<T>(List<Output<T>> inputs, {int n}) {
    var op$ = newOperation('AddN', _scope.uniqueName('AddN'));
    op$.addInputList(inputs);
    op$.setAttrInt('N', n);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayV3')
  Output<String> tensorArrayV2(Output<int> size,
      {DataType dtype,
      Shape elementShape,
      bool dynamicSize: false,
      bool clearAfterRead: true,
      String tensorArrayName}) {
    dtype ??= inferType(size);
    var op$ = newOperation('TensorArrayV2', _scope.uniqueName('TensorArrayV2'));
    op$.addInput(size);
    op$.setAttrType('dtype', dtype);
    op$.setAttrShape('element_shape', elementShape);
    op$.setAttrBool('dynamic_size', dynamicSize);
    op$.setAttrBool('clear_after_read', clearAfterRead);
    op$.setAttrString('tensor_array_name', tensorArrayName);
    return op$.finish()[0];
  }

  Output prefetchDataset(Output inputDataset, Output<int> bufferSize,
      {List<DataType> outputTypes, List<Shape> outputShapes}) {
    var op$ =
        newOperation('PrefetchDataset', _scope.uniqueName('PrefetchDataset'));
    op$.addInput(inputDataset);
    op$.addInput(bufferSize);
    op$.setAttrTypeList('output_types', outputTypes);
    op$.setAttrShapeList('output_shapes', outputShapes);
    return op$.finish()[0];
  }

  Output<T> range<T>(Output<T> start, Output<T> limit, Output<T> delta,
      {DataType tidx: DataType.DT_INT32}) {
    var op$ = newOperation('Range', _scope.uniqueName('Range'));
    op$.addInput(start);
    op$.addInput(limit);
    op$.addInput(delta);
    op$.setAttrType('Tidx', tidx);
    return op$.finish()[0];
  }

  Output sparseTensorSliceDataset<T>(
      Output<int> indices, Output<T> values, Output<int> denseShape,
      {DataType tvalues}) {
    var op$ = newOperation('SparseTensorSliceDataset',
        _scope.uniqueName('SparseTensorSliceDataset'));
    op$.addInput(indices);
    op$.addInput(values);
    op$.addInput(denseShape);
    op$.setAttrType('Tvalues', tvalues);
    return op$.finish()[0];
  }

  Output randomShuffleQueueV2(
      {List<DataType> componentTypes,
      List<Shape> shapes,
      int capacity: -1,
      int minAfterDequeue: 0,
      int seed: 0,
      int seed2: 0,
      String container,
      String sharedName}) {
    var op$ = newOperation(
        'RandomShuffleQueueV2', _scope.uniqueName('RandomShuffleQueueV2'));
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

  Output<double> tensorArrayWriteV3<T>(Output handle, Output<int> index,
      Output<T> value, Output<double> flowIn) {
    var op$ = newOperation(
        'TensorArrayWriteV3', _scope.uniqueName('TensorArrayWriteV3'));
    op$.addInput(handle);
    op$.addInput(index);
    op$.addInput(value);
    op$.addInput(flowIn);
    return op$.finish()[0];
  }

  RefMergeOutput refMerge<T>(List<Output<T>> inputs, {int n}) {
    var op$ = newOperation('RefMerge', _scope.uniqueName('RefMerge'));
    op$.addInputList(inputs);
    op$.setAttrInt('N', n);
    var result$ = op$.finish();
    return new RefMergeOutput<T>(result$, result$[0], result$[1]);
  }

  Output bytesProducedStatsDataset(Output inputDataset, Output<String> tag,
      {List<DataType> outputTypes, List<Shape> outputShapes}) {
    var op$ = newOperation('BytesProducedStatsDataset',
        _scope.uniqueName('BytesProducedStatsDataset'));
    op$.addInput(inputDataset);
    op$.addInput(tag);
    op$.setAttrTypeList('output_types', outputTypes);
    op$.setAttrShapeList('output_shapes', outputShapes);
    return op$.finish()[0];
  }

  Output<String> histogramSummary<T>(Output<String> tag, Output<T> values) {
    var op$ =
        newOperation('HistogramSummary', _scope.uniqueName('HistogramSummary'));
    op$.addInput(tag);
    op$.addInput(values);
    return op$.finish()[0];
  }

  Output<T> stackPopV2<T>(Output handle, {DataType elemType}) {
    var op$ = newOperation('StackPopV2', _scope.uniqueName('StackPopV2'));
    op$.addInput(handle);
    op$.setAttrType('elem_type', elemType);
    return op$.finish()[0];
  }

  Output<T> lRN<T>(Output<T> input,
      {int depthRadius: 5,
      double bias: 1.0,
      double alpha: 1.0,
      double beta: 0.5}) {
    var op$ = newOperation('LRN', _scope.uniqueName('LRN'));
    op$.addInput(input);
    op$.setAttrInt('depth_radius', depthRadius);
    op$.setAttrFloat('bias', bias);
    op$.setAttrFloat('alpha', alpha);
    op$.setAttrFloat('beta', beta);
    return op$.finish()[0];
  }

  Output<T> conv3DBackpropInputV2<T>(
      Output<int> inputSizes, Output<T> filter, Output<T> outBackprop,
      {List<int> strides,
      String padding,
      String dataFormat: 'NDHWC',
      List<int> dilations}) {
    var op$ = newOperation(
        'Conv3DBackpropInputV2', _scope.uniqueName('Conv3DBackpropInputV2'));
    op$.addInput(inputSizes);
    op$.addInput(filter);
    op$.addInput(outBackprop);
    op$.setAttrIntList('strides', strides);
    op$.setAttrString('padding', padding);
    op$.setAttrString('data_format', dataFormat);
    op$.setAttrIntList('dilations', dilations);
    return op$.finish()[0];
  }

  Output skipDataset(Output inputDataset, Output<int> count,
      {List<DataType> outputTypes, List<Shape> outputShapes}) {
    var op$ = newOperation('SkipDataset', _scope.uniqueName('SkipDataset'));
    op$.addInput(inputDataset);
    op$.addInput(count);
    op$.setAttrTypeList('output_types', outputTypes);
    op$.setAttrShapeList('output_shapes', outputShapes);
    return op$.finish()[0];
  }

  void sparseAccumulatorApplyGradient<T>(
      Output<String> handle,
      Output<int> localStep,
      Output<int> gradientIndices,
      Output<T> gradientValues,
      Output<int> gradientShape,
      {DataType dtype,
      bool hasKnownShape}) {
    dtype ??= inferType(handle);
    var op$ = newOperation('SparseAccumulatorApplyGradient',
        _scope.uniqueName('SparseAccumulatorApplyGradient'));
    op$.addInput(handle);
    op$.addInput(localStep);
    op$.addInput(gradientIndices);
    op$.addInput(gradientValues);
    op$.addInput(gradientShape);
    op$.setAttrType('dtype', dtype);
    op$.setAttrBool('has_known_shape', hasKnownShape);
    op$.finish();
  }

  Output<String> statsAggregatorSummary(Output iterator) {
    var op$ = newOperation(
        'StatsAggregatorSummary', _scope.uniqueName('StatsAggregatorSummary'));
    op$.addInput(iterator);
    return op$.finish()[0];
  }

  Output<bool> equal<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation('Equal', _scope.uniqueName('Equal'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  SparseToSparseSetOperationOutput sparseToSparseSetOperation<T>(
      Output<int> set1Indices,
      Output<T> set1Values,
      Output<int> set1Shape,
      Output<int> set2Indices,
      Output<T> set2Values,
      Output<int> set2Shape,
      {String setOperation,
      bool validateIndices: true}) {
    var op$ = newOperation('SparseToSparseSetOperation',
        _scope.uniqueName('SparseToSparseSetOperation'));
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
        result$, result$[0], result$[1], result$[2]);
  }

  void lookupTableInsertV2<T>(
      Output tableHandle, Output<T> keys, Output<T> values,
      {DataType tin, DataType tout}) {
    var op$ = newOperation(
        'LookupTableInsertV2', _scope.uniqueName('LookupTableInsertV2'));
    op$.addInput(tableHandle);
    op$.addInput(keys);
    op$.addInput(values);
    op$.setAttrType('Tin', tin);
    op$.setAttrType('Tout', tout);
    op$.finish();
  }

  void barrierInsertMany<T>(
      Output<String> handle, Output<String> keys, Output<T> values,
      {int componentIndex}) {
    var op$ = newOperation(
        'BarrierInsertMany', _scope.uniqueName('BarrierInsertMany'));
    op$.addInput(handle);
    op$.addInput(keys);
    op$.addInput(values);
    op$.setAttrInt('component_index', componentIndex);
    op$.finish();
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArraySplitV3')
  Output<double> tensorArraySplitV2<T>(Output<String> handle, Output<T> value,
      Output<int> lengths, Output<double> flowIn) {
    var op$ = newOperation(
        'TensorArraySplitV2', _scope.uniqueName('TensorArraySplitV2'));
    op$.addInput(handle);
    op$.addInput(value);
    op$.addInput(lengths);
    op$.addInput(flowIn);
    return op$.finish()[0];
  }

  Output<T> orderedMapUnstage<T>(Output<int> key, Output<int> indices,
      {int capacity: 0,
      int memoryLimit: 0,
      List<DataType> dtypes,
      String container,
      String sharedName}) {
    var op$ = newOperation(
        'OrderedMapUnstage', _scope.uniqueName('OrderedMapUnstage'));
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
  Output batchFFT2D(Output input) {
    var op$ = newOperation('BatchFFT2D', _scope.uniqueName('BatchFFT2D'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  Output<int> mapIncompleteSize(
      {int capacity: 0,
      int memoryLimit: 0,
      List<DataType> dtypes,
      String container,
      String sharedName}) {
    var op$ = newOperation(
        'MapIncompleteSize', _scope.uniqueName('MapIncompleteSize'));
    op$.setAttrInt('capacity', capacity);
    op$.setAttrInt('memory_limit', memoryLimit);
    op$.setAttrTypeList('dtypes', dtypes);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 11: Use SelfAdjointEigV2 instead.')
  Output<T> selfAdjointEig<T>(Output<T> input) {
    var op$ =
        newOperation('SelfAdjointEig', _scope.uniqueName('SelfAdjointEig'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  void readerResetV2(Output readerHandle) {
    var op$ = newOperation('ReaderResetV2', _scope.uniqueName('ReaderResetV2'));
    op$.addInput(readerHandle);
    op$.finish();
  }

  Output<int> orderedMapSize(
      {int capacity: 0,
      int memoryLimit: 0,
      List<DataType> dtypes,
      String container,
      String sharedName}) {
    var op$ =
        newOperation('OrderedMapSize', _scope.uniqueName('OrderedMapSize'));
    op$.setAttrInt('capacity', capacity);
    op$.setAttrInt('memory_limit', memoryLimit);
    op$.setAttrTypeList('dtypes', dtypes);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  Output<T> refNextIteration<T>(Output<T> data) {
    var op$ =
        newOperation('RefNextIteration', _scope.uniqueName('RefNextIteration'));
    op$.addInput(data);
    return op$.finish()[0];
  }

  Output<T> orderedMapPeek<T>(Output<int> key, Output<int> indices,
      {int capacity: 0,
      int memoryLimit: 0,
      List<DataType> dtypes,
      String container,
      String sharedName}) {
    var op$ =
        newOperation('OrderedMapPeek', _scope.uniqueName('OrderedMapPeek'));
    op$.addInput(key);
    op$.addInput(indices);
    op$.setAttrInt('capacity', capacity);
    op$.setAttrInt('memory_limit', memoryLimit);
    op$.setAttrTypeList('dtypes', dtypes);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  DeserializeSparseOutput deserializeSparse<T>(Output<T> serializedSparse,
      {DataType dtype, DataType tserialized: DataType.DT_STRING}) {
    dtype ??= inferType(serializedSparse);
    var op$ = newOperation(
        'DeserializeSparse', _scope.uniqueName('DeserializeSparse'));
    op$.addInput(serializedSparse);
    op$.setAttrType('dtype', dtype);
    op$.setAttrType('Tserialized', tserialized);
    var result$ = op$.finish();
    return new DeserializeSparseOutput<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  void mapClear(
      {int capacity: 0,
      int memoryLimit: 0,
      List<DataType> dtypes,
      String container,
      String sharedName}) {
    var op$ = newOperation('MapClear', _scope.uniqueName('MapClear'));
    op$.setAttrInt('capacity', capacity);
    op$.setAttrInt('memory_limit', memoryLimit);
    op$.setAttrTypeList('dtypes', dtypes);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    op$.finish();
  }

  Output<T> queueDequeue<T>(Output<String> handle,
      {List<DataType> componentTypes, int timeoutMs: -1}) {
    var op$ = newOperation('QueueDequeue', _scope.uniqueName('QueueDequeue'));
    op$.addInput(handle);
    op$.setAttrTypeList('component_types', componentTypes);
    op$.setAttrInt('timeout_ms', timeoutMs);
    return op$.finish()[0];
  }

  Output rFFT2D(Output<double> input, Output<int> fftLength) {
    var op$ = newOperation('RFFT2D', _scope.uniqueName('RFFT2D'));
    op$.addInput(input);
    op$.addInput(fftLength);
    return op$.finish()[0];
  }

  Output<T> maxPoolGradGradWithArgmax<T>(
      Output<T> input, Output<T> grad, Output<T> argmax,
      {List<int> ksize, List<int> strides, String padding, DataType targmax}) {
    var op$ = newOperation('MaxPoolGradGradWithArgmax',
        _scope.uniqueName('MaxPoolGradGradWithArgmax'));
    op$.addInput(input);
    op$.addInput(grad);
    op$.addInput(argmax);
    op$.setAttrIntList('ksize', ksize);
    op$.setAttrIntList('strides', strides);
    op$.setAttrString('padding', padding);
    op$.setAttrType('Targmax', targmax);
    return op$.finish()[0];
  }

  Output<bool> less<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation('Less', _scope.uniqueName('Less'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  DenseToDenseSetOperationOutput denseToDenseSetOperation<T>(
      Output<T> set1, Output<T> set2,
      {String setOperation, bool validateIndices: true}) {
    var op$ = newOperation('DenseToDenseSetOperation',
        _scope.uniqueName('DenseToDenseSetOperation'));
    op$.addInput(set1);
    op$.addInput(set2);
    op$.setAttrString('set_operation', setOperation);
    op$.setAttrBool('validate_indices', validateIndices);
    var result$ = op$.finish();
    return new DenseToDenseSetOperationOutput<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  SoftmaxCrossEntropyWithLogitsOutput softmaxCrossEntropyWithLogits<T>(
      Output<T> features, Output<T> labels) {
    var op$ = newOperation('SoftmaxCrossEntropyWithLogits',
        _scope.uniqueName('SoftmaxCrossEntropyWithLogits'));
    op$.addInput(features);
    op$.addInput(labels);
    var result$ = op$.finish();
    return new SoftmaxCrossEntropyWithLogitsOutput<T>(
        result$, result$[0], result$[1]);
  }

  Output<T> datasetToSingleElement<T>(Output dataset,
      {List<DataType> outputTypes, List<Shape> outputShapes}) {
    var op$ = newOperation(
        'DatasetToSingleElement', _scope.uniqueName('DatasetToSingleElement'));
    op$.addInput(dataset);
    op$.setAttrTypeList('output_types', outputTypes);
    op$.setAttrShapeList('output_shapes', outputShapes);
    return op$.finish()[0];
  }

  /// Creates a summary file writer accessible by the given resource handle.
  void createSummaryFileWriter(
      Output writer,
      Output<String> logdir,
      Output<int> maxQueue,
      Output<int> flushMillis,
      Output<String> filenameSuffix) {
    var op$ = newOperation('CreateSummaryFileWriter',
        _scope.uniqueName('CreateSummaryFileWriter'));
    op$.addInput(writer);
    op$.addInput(logdir);
    op$.addInput(maxQueue);
    op$.addInput(flushMillis);
    op$.addInput(filenameSuffix);
    op$.finish();
  }

  Output<bool> queueIsClosedV2(Output handle) {
    var op$ =
        newOperation('QueueIsClosedV2', _scope.uniqueName('QueueIsClosedV2'));
    op$.addInput(handle);
    return op$.finish()[0];
  }

  Output<T> sparseReduceSum<T>(Output<int> inputIndices, Output<T> inputValues,
      Output<int> inputShape, Output<int> reductionAxes,
      {bool keepDims: false}) {
    var op$ =
        newOperation('SparseReduceSum', _scope.uniqueName('SparseReduceSum'));
    op$.addInput(inputIndices);
    op$.addInput(inputValues);
    op$.addInput(inputShape);
    op$.addInput(reductionAxes);
    op$.setAttrBool('keep_dims', keepDims);
    return op$.finish()[0];
  }

  Output<T> zeta<T>(Output<T> x, Output<T> q) {
    var op$ = newOperation('Zeta', _scope.uniqueName('Zeta'));
    op$.addInput(x);
    op$.addInput(q);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayGradV3')
  Output<String> tensorArrayGradV2(Output<String> handle, Output<double> flowIn,
      {String source}) {
    var op$ = newOperation(
        'TensorArrayGradV2', _scope.uniqueName('TensorArrayGradV2'));
    op$.addInput(handle);
    op$.addInput(flowIn);
    op$.setAttrString('source', source);
    return op$.finish()[0];
  }

  Output<T> shapeN<T>(List<Output<T>> input,
      {int n, DataType outType: DataType.DT_INT32}) {
    var op$ = newOperation('ShapeN', _scope.uniqueName('ShapeN'));
    op$.addInputList(input);
    op$.setAttrInt('N', n);
    op$.setAttrType('out_type', outType);
    return op$.finish()[0];
  }

  Output<String> imageSummary<T>(Output<String> tag, Output<T> tensor,
      {int maxImages: 3, Tensor badColor}) {
    var op$ = newOperation('ImageSummary', _scope.uniqueName('ImageSummary'));
    op$.addInput(tag);
    op$.addInput(tensor);
    op$.setAttrInt('max_images', maxImages);
    op$.setAttrTensor('bad_color', badColor);
    return op$.finish()[0];
  }

  Output wholeFileReaderV2({String container, String sharedName}) {
    var op$ = newOperation(
        'WholeFileReaderV2', _scope.uniqueName('WholeFileReaderV2'));
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  MapUnstageNoKeyOutput mapUnstageNoKey<T>(Output<int> indices,
      {int capacity: 0,
      int memoryLimit: 0,
      List<DataType> dtypes,
      String container,
      String sharedName}) {
    var op$ =
        newOperation('MapUnstageNoKey', _scope.uniqueName('MapUnstageNoKey'));
    op$.addInput(indices);
    op$.setAttrInt('capacity', capacity);
    op$.setAttrInt('memory_limit', memoryLimit);
    op$.setAttrTypeList('dtypes', dtypes);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    var result$ = op$.finish();
    return new MapUnstageNoKeyOutput<T>(result$, result$[0], result$[1]);
  }

  Output<double> mfcc(Output<double> spectrogram, Output<int> sampleRate,
      {double upperFrequencyLimit: 4000.0,
      double lowerFrequencyLimit: 20.0,
      int filterbankChannelCount: 40,
      int dctCoefficientCount: 13}) {
    var op$ = newOperation('Mfcc', _scope.uniqueName('Mfcc'));
    op$.addInput(spectrogram);
    op$.addInput(sampleRate);
    op$.setAttrFloat('upper_frequency_limit', upperFrequencyLimit);
    op$.setAttrFloat('lower_frequency_limit', lowerFrequencyLimit);
    op$.setAttrInt('filterbank_channel_count', filterbankChannelCount);
    op$.setAttrInt('dct_coefficient_count', dctCoefficientCount);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 14: Use MatrixDiagPart')
  Output<T> batchMatrixDiagPart<T>(Output<T> input) {
    var op$ = newOperation(
        'BatchMatrixDiagPart', _scope.uniqueName('BatchMatrixDiagPart'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 2: Use AdjustContrastv2 instead')
  Output<double> adjustContrast<T>(
      Output<T> images,
      Output<double> contrastFactor,
      Output<double> minValue,
      Output<double> maxValue) {
    var op$ =
        newOperation('AdjustContrast', _scope.uniqueName('AdjustContrast'));
    op$.addInput(images);
    op$.addInput(contrastFactor);
    op$.addInput(minValue);
    op$.addInput(maxValue);
    return op$.finish()[0];
  }

  Output<T> resizeNearestNeighbor<T>(Output<T> images, Output<int> size,
      {bool alignCorners: false}) {
    var op$ = newOperation(
        'ResizeNearestNeighbor', _scope.uniqueName('ResizeNearestNeighbor'));
    op$.addInput(images);
    op$.addInput(size);
    op$.setAttrBool('align_corners', alignCorners);
    return op$.finish()[0];
  }

  ParseExampleOutput parseExample<T>(
      Output<String> serialized,
      Output<String> names,
      List<Output<String>> sparseKeys,
      List<Output<String>> denseKeys,
      List<Output<T>> denseDefaults,
      {int nsparse,
      int ndense,
      List<DataType> sparseTypes,
      List<DataType> tdense,
      List<Shape> denseShapes}) {
    var op$ = newOperation('ParseExample', _scope.uniqueName('ParseExample'));
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
        result$, result$[0], result$[1], result$[2], result$[3]);
  }

  Output<T> atanh<T>(Output<T> x) {
    var op$ = newOperation('Atanh', _scope.uniqueName('Atanh'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  void makeIterator(Output dataset, Output iterator) {
    var op$ = newOperation('MakeIterator', _scope.uniqueName('MakeIterator'));
    op$.addInput(dataset);
    op$.addInput(iterator);
    op$.finish();
  }

  Output<T> parameterizedTruncatedNormal<T>(Output<T> shape, Output<T> means,
      Output<T> stdevs, Output<T> minvals, Output<T> maxvals,
      {int seed: 0, int seed2: 0, DataType dtype}) {
    dtype ??= inferType(shape);
    var op$ = newOperation('ParameterizedTruncatedNormal',
        _scope.uniqueName('ParameterizedTruncatedNormal'));
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

  CTCGreedyDecoderOutput cTCGreedyDecoder(
      Output<double> inputs, Output<int> sequenceLength,
      {bool mergeRepeated: false}) {
    var op$ =
        newOperation('CTCGreedyDecoder', _scope.uniqueName('CTCGreedyDecoder'));
    op$.addInput(inputs);
    op$.addInput(sequenceLength);
    op$.setAttrBool('merge_repeated', mergeRepeated);
    var result$ = op$.finish();
    return new CTCGreedyDecoderOutput(
        result$, result$[0], result$[1], result$[2], result$[3]);
  }

  Output<int> stageSize(
      {int capacity: 0,
      int memoryLimit: 0,
      List<DataType> dtypes,
      String container,
      String sharedName}) {
    var op$ = newOperation('StageSize', _scope.uniqueName('StageSize'));
    op$.setAttrInt('capacity', capacity);
    op$.setAttrInt('memory_limit', memoryLimit);
    op$.setAttrTypeList('dtypes', dtypes);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  void assignAddVariableOp<T>(Output resource, Output<T> value,
      {DataType dtype}) {
    dtype ??= inferType(resource);
    var op$ = newOperation(
        'AssignAddVariableOp', _scope.uniqueName('AssignAddVariableOp'));
    op$.addInput(resource);
    op$.addInput(value);
    op$.setAttrType('dtype', dtype);
    op$.finish();
  }

  Output<T> depthwiseConv2dNativeBackpropInput<T>(
      Output<int> inputSizes, Output<T> filter, Output<T> outBackprop,
      {List<int> strides,
      String padding,
      String dataFormat: 'NHWC',
      List<int> dilations}) {
    var op$ = newOperation('DepthwiseConv2dNativeBackpropInput',
        _scope.uniqueName('DepthwiseConv2dNativeBackpropInput'));
    op$.addInput(inputSizes);
    op$.addInput(filter);
    op$.addInput(outBackprop);
    op$.setAttrIntList('strides', strides);
    op$.setAttrString('padding', padding);
    op$.setAttrString('data_format', dataFormat);
    op$.setAttrIntList('dilations', dilations);
    return op$.finish()[0];
  }

  Output<bool> isNan<T>(Output<T> x) {
    var op$ = newOperation('IsNan', _scope.uniqueName('IsNan'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output tensorListPushBack<T>(Output inputHandle, Output<T> tensor,
      {DataType elementDtype}) {
    var op$ = newOperation(
        'TensorListPushBack', _scope.uniqueName('TensorListPushBack'));
    op$.addInput(inputHandle);
    op$.addInput(tensor);
    op$.setAttrType('element_dtype', elementDtype);
    return op$.finish()[0];
  }

  Output<T> reciprocalGrad<T>(Output<T> y, Output<T> dy) {
    var op$ =
        newOperation('ReciprocalGrad', _scope.uniqueName('ReciprocalGrad'));
    op$.addInput(y);
    op$.addInput(dy);
    return op$.finish()[0];
  }

  QuantizedReshapeOutput quantizedReshape<T>(Output<T> tensor, Output<T> shape,
      Output<double> inputMin, Output<double> inputMax,
      {DataType tshape: DataType.DT_INT32}) {
    var op$ =
        newOperation('QuantizedReshape', _scope.uniqueName('QuantizedReshape'));
    op$.addInput(tensor);
    op$.addInput(shape);
    op$.addInput(inputMin);
    op$.addInput(inputMax);
    op$.setAttrType('Tshape', tshape);
    var result$ = op$.finish();
    return new QuantizedReshapeOutput<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  Output<T> unstage<T>(
      {int capacity: 0,
      int memoryLimit: 0,
      List<DataType> dtypes,
      String container,
      String sharedName}) {
    var op$ = newOperation('Unstage', _scope.uniqueName('Unstage'));
    op$.setAttrInt('capacity', capacity);
    op$.setAttrInt('memory_limit', memoryLimit);
    op$.setAttrTypeList('dtypes', dtypes);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  void stage<T>(List<Output<T>> values,
      {int capacity: 0,
      int memoryLimit: 0,
      List<DataType> dtypes,
      String container,
      String sharedName}) {
    var op$ = newOperation('Stage', _scope.uniqueName('Stage'));
    op$.addInputList(values);
    op$.setAttrInt('capacity', capacity);
    op$.setAttrInt('memory_limit', memoryLimit);
    op$.setAttrTypeList('dtypes', dtypes);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    op$.finish();
  }

  Output tensorSliceDataset<T>(List<Output<T>> components,
      {List<DataType> toutputTypes, List<Shape> outputShapes}) {
    var op$ = newOperation(
        'TensorSliceDataset', _scope.uniqueName('TensorSliceDataset'));
    op$.addInputList(components);
    op$.setAttrTypeList('Toutput_types', toutputTypes);
    op$.setAttrShapeList('output_shapes', outputShapes);
    return op$.finish()[0];
  }

  void deleteSessionTensor(Output<String> handle) {
    var op$ = newOperation(
        'DeleteSessionTensor', _scope.uniqueName('DeleteSessionTensor'));
    op$.addInput(handle);
    op$.finish();
  }

  Output getSessionHandleV2<T>(Output<T> value) {
    var op$ = newOperation(
        'GetSessionHandleV2', _scope.uniqueName('GetSessionHandleV2'));
    op$.addInput(value);
    return op$.finish()[0];
  }

  Output tensorDataset<T>(List<Output<T>> components,
      {List<DataType> toutputTypes, List<Shape> outputShapes}) {
    var op$ = newOperation('TensorDataset', _scope.uniqueName('TensorDataset'));
    op$.addInputList(components);
    op$.setAttrTypeList('Toutput_types', toutputTypes);
    op$.setAttrShapeList('output_shapes', outputShapes);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 14: Use MatrixBandPart')
  Output<T> batchMatrixBandPart<T>(
      Output<T> input, Output<int> numLower, Output<int> numUpper) {
    var op$ = newOperation(
        'BatchMatrixBandPart', _scope.uniqueName('BatchMatrixBandPart'));
    op$.addInput(input);
    op$.addInput(numLower);
    op$.addInput(numUpper);
    return op$.finish()[0];
  }

  Output<T> div<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation('Div', _scope.uniqueName('Div'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  /// Flushes and closes the summary writer.
  /// Also removes it from the resource manager. To reopen, use another
  /// CreateSummaryFileWriter op.
  void closeSummaryWriter(Output writer) {
    var op$ = newOperation(
        'CloseSummaryWriter', _scope.uniqueName('CloseSummaryWriter'));
    op$.addInput(writer);
    op$.finish();
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArraySizeV3')
  Output<int> tensorArraySizeV2(Output<String> handle, Output<double> flowIn) {
    var op$ = newOperation(
        'TensorArraySizeV2', _scope.uniqueName('TensorArraySizeV2'));
    op$.addInput(handle);
    op$.addInput(flowIn);
    return op$.finish()[0];
  }

  Output<T> floorMod<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation('FloorMod', _scope.uniqueName('FloorMod'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  Output<String> matchingFiles(Output<String> pattern) {
    var op$ = newOperation('MatchingFiles', _scope.uniqueName('MatchingFiles'));
    op$.addInput(pattern);
    return op$.finish()[0];
  }

  Output<T> restore<T>(Output<String> filePattern, Output<String> tensorName,
      {DataType dt, int preferredShard: -1}) {
    var op$ = newOperation('Restore', _scope.uniqueName('Restore'));
    op$.addInput(filePattern);
    op$.addInput(tensorName);
    op$.setAttrType('dt', dt);
    op$.setAttrInt('preferred_shard', preferredShard);
    return op$.finish()[0];
  }

  Output<T> tanh<T>(Output<T> x) {
    var op$ = newOperation('Tanh', _scope.uniqueName('Tanh'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<T> cropAndResizeGradImage<T>(Output<double> grads,
      Output<double> boxes, Output<int> boxInd, Output<int> imageSize,
      {String method: 'bilinear'}) {
    var op$ = newOperation(
        'CropAndResizeGradImage', _scope.uniqueName('CropAndResizeGradImage'));
    op$.addInput(grads);
    op$.addInput(boxes);
    op$.addInput(boxInd);
    op$.addInput(imageSize);
    op$.setAttrString('method', method);
    return op$.finish()[0];
  }

  Output<T> accumulatorTakeGradient<T>(
      Output<String> handle, Output<int> numRequired,
      {DataType dtype}) {
    dtype ??= inferType(handle);
    var op$ = newOperation('AccumulatorTakeGradient',
        _scope.uniqueName('AccumulatorTakeGradient'));
    op$.addInput(handle);
    op$.addInput(numRequired);
    op$.setAttrType('dtype', dtype);
    return op$.finish()[0];
  }

  Output<T> stridedSliceAssign<T>(Output<T> ref, Output<T> begin, Output<T> end,
      Output<T> strides, Output<T> value,
      {DataType index,
      int beginMask: 0,
      int endMask: 0,
      int ellipsisMask: 0,
      int newAxisMask: 0,
      int shrinkAxisMask: 0}) {
    var op$ = newOperation(
        'StridedSliceAssign', _scope.uniqueName('StridedSliceAssign'));
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

  ComputeAccidentalHitsOutput computeAccidentalHits(
      Output<int> trueClasses, Output<int> sampledCandidates,
      {int numTrue, int seed: 0, int seed2: 0}) {
    var op$ = newOperation(
        'ComputeAccidentalHits', _scope.uniqueName('ComputeAccidentalHits'));
    op$.addInput(trueClasses);
    op$.addInput(sampledCandidates);
    op$.setAttrInt('num_true', numTrue);
    op$.setAttrInt('seed', seed);
    op$.setAttrInt('seed2', seed2);
    var result$ = op$.finish();
    return new ComputeAccidentalHitsOutput(
        result$, result$[0], result$[1], result$[2]);
  }

  Output varHandleOp(
      {String container,
      String sharedName,
      @required DataType dtype,
      Shape shape}) {
    var op$ = newOperation('VarHandleOp', _scope.uniqueName('VarHandleOp'));
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    op$.setAttrType('dtype', dtype);
    op$.setAttrShape('shape', shape);
    return op$.finish()[0];
  }

  Output rFFT3D(Output<double> input, Output<int> fftLength) {
    var op$ = newOperation('RFFT3D', _scope.uniqueName('RFFT3D'));
    op$.addInput(input);
    op$.addInput(fftLength);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TensorArrayGatherV3')
  Output<T> tensorArrayGatherV2<T>(
      Output<String> handle, Output<int> indices, Output<double> flowIn,
      {DataType dtype, Shape elementShape}) {
    dtype ??= inferType(handle);
    var op$ = newOperation(
        'TensorArrayGatherV2', _scope.uniqueName('TensorArrayGatherV2'));
    op$.addInput(handle);
    op$.addInput(indices);
    op$.addInput(flowIn);
    op$.setAttrType('dtype', dtype);
    op$.setAttrShape('element_shape', elementShape);
    return op$.finish()[0];
  }

  Output<T> dynamicPartition<T>(Output<T> data, Output<int> partitions,
      {int numPartitions}) {
    var op$ =
        newOperation('DynamicPartition', _scope.uniqueName('DynamicPartition'));
    op$.addInput(data);
    op$.addInput(partitions);
    op$.setAttrInt('num_partitions', numPartitions);
    return op$.finish()[0];
  }

  Output<String> fakeQueue(Output resource) {
    var op$ = newOperation('FakeQueue', _scope.uniqueName('FakeQueue'));
    op$.addInput(resource);
    return op$.finish()[0];
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 16: Use TensorArrayGatherV3 with RangeOp')
  Output<T> tensorArrayPack<T>(Output<String> handle, Output<double> flowIn,
      {DataType dtype, Shape elementShape}) {
    dtype ??= inferType(handle);
    var op$ =
        newOperation('TensorArrayPack', _scope.uniqueName('TensorArrayPack'));
    op$.addInput(handle);
    op$.addInput(flowIn);
    op$.setAttrType('dtype', dtype);
    op$.setAttrShape('element_shape', elementShape);
    return op$.finish()[0];
  }

  Output<T> dilation2DBackpropFilter<T>(
      Output<T> input, Output<T> filter, Output<T> outBackprop,
      {List<int> strides, List<int> rates, String padding}) {
    var op$ = newOperation('Dilation2DBackpropFilter',
        _scope.uniqueName('Dilation2DBackpropFilter'));
    op$.addInput(input);
    op$.addInput(filter);
    op$.addInput(outBackprop);
    op$.setAttrIntList('strides', strides);
    op$.setAttrIntList('rates', rates);
    op$.setAttrString('padding', padding);
    return op$.finish()[0];
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 13: Use SelfAdjointEigV2 instead.')
  BatchSelfAdjointEigV2Output batchSelfAdjointEigV2<T>(Output<T> input,
      {bool computeV: true}) {
    var op$ = newOperation(
        'BatchSelfAdjointEigV2', _scope.uniqueName('BatchSelfAdjointEigV2'));
    op$.addInput(input);
    op$.setAttrBool('compute_v', computeV);
    var result$ = op$.finish();
    return new BatchSelfAdjointEigV2Output<T>(result$, result$[0], result$[1]);
  }

  Output<T> tanhGrad<T>(Output<T> y, Output<T> dy) {
    var op$ = newOperation('TanhGrad', _scope.uniqueName('TanhGrad'));
    op$.addInput(y);
    op$.addInput(dy);
    return op$.finish()[0];
  }

  Output<bool> loopCond(Output<bool> input) {
    var op$ = newOperation('LoopCond', _scope.uniqueName('LoopCond'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  Output<T> sparseReduceMax<T>(Output<int> inputIndices, Output<T> inputValues,
      Output<int> inputShape, Output<int> reductionAxes,
      {bool keepDims: false}) {
    var op$ =
        newOperation('SparseReduceMax', _scope.uniqueName('SparseReduceMax'));
    op$.addInput(inputIndices);
    op$.addInput(inputValues);
    op$.addInput(inputShape);
    op$.addInput(reductionAxes);
    op$.setAttrBool('keep_dims', keepDims);
    return op$.finish()[0];
  }

  Output<T> unsortedSegmentMax<T>(
      Output<T> data, Output<T> segmentIds, Output<T> numSegments,
      {DataType tindices, DataType tnumsegments: DataType.DT_INT32}) {
    var op$ = newOperation(
        'UnsortedSegmentMax', _scope.uniqueName('UnsortedSegmentMax'));
    op$.addInput(data);
    op$.addInput(segmentIds);
    op$.addInput(numSegments);
    op$.setAttrType('Tindices', tindices);
    op$.setAttrType('Tnumsegments', tnumsegments);
    return op$.finish()[0];
  }

  Output<double> audioSpectrogram(Output<double> input,
      {int windowSize, int stride, bool magnitudeSquared: false}) {
    var op$ =
        newOperation('AudioSpectrogram', _scope.uniqueName('AudioSpectrogram'));
    op$.addInput(input);
    op$.setAttrInt('window_size', windowSize);
    op$.setAttrInt('stride', stride);
    op$.setAttrBool('magnitude_squared', magnitudeSquared);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 16: Use TensorArrayReadV3')
  Output<T> tensorArrayRead<T>(
      Output<String> handle, Output<int> index, Output<double> flowIn,
      {DataType dtype}) {
    dtype ??= inferType(handle);
    var op$ =
        newOperation('TensorArrayRead', _scope.uniqueName('TensorArrayRead'));
    op$.addInput(handle);
    op$.addInput(index);
    op$.addInput(flowIn);
    op$.setAttrType('dtype', dtype);
    return op$.finish()[0];
  }

  void stageClear(
      {int capacity: 0,
      int memoryLimit: 0,
      List<DataType> dtypes,
      String container,
      String sharedName}) {
    var op$ = newOperation('StageClear', _scope.uniqueName('StageClear'));
    op$.setAttrInt('capacity', capacity);
    op$.setAttrInt('memory_limit', memoryLimit);
    op$.setAttrTypeList('dtypes', dtypes);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    op$.finish();
  }

  Output<String> mutableHashTable(
      {String container,
      String sharedName,
      bool useNodeNameSharing: false,
      DataType keyDtype,
      DataType valueDtype}) {
    var op$ =
        newOperation('MutableHashTable', _scope.uniqueName('MutableHashTable'));
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    op$.setAttrBool('use_node_name_sharing', useNodeNameSharing);
    op$.setAttrType('key_dtype', keyDtype);
    op$.setAttrType('value_dtype', valueDtype);
    return op$.finish()[0];
  }

  Output<int> tensorArraySizeV3(Output handle, Output<double> flowIn) {
    var op$ = newOperation(
        'TensorArraySizeV3', _scope.uniqueName('TensorArraySizeV3'));
    op$.addInput(handle);
    op$.addInput(flowIn);
    return op$.finish()[0];
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
      {bool useLocking: false,
      bool useNesterov: false}) {
    var op$ = newOperation('ApplyAdam', _scope.uniqueName('ApplyAdam'));
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

  Output<String> mergeSummary(List<Output<String>> inputs, {int n}) {
    var op$ = newOperation('MergeSummary', _scope.uniqueName('MergeSummary'));
    op$.addInputList(inputs);
    op$.setAttrInt('N', n);
    return op$.finish()[0];
  }

  void queueEnqueueManyV2<T>(Output handle, List<Output<T>> components,
      {List<DataType> tcomponents, int timeoutMs: -1}) {
    var op$ = newOperation(
        'QueueEnqueueManyV2', _scope.uniqueName('QueueEnqueueManyV2'));
    op$.addInput(handle);
    op$.addInputList(components);
    op$.setAttrTypeList('Tcomponents', tcomponents);
    op$.setAttrInt('timeout_ms', timeoutMs);
    op$.finish();
  }

  Output fFT(Output input) {
    var op$ = newOperation('FFT', _scope.uniqueName('FFT'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  TensorArrayConcatV3Output tensorArrayConcatV3<T>(
      Output handle, Output<double> flowIn,
      {DataType dtype, Shape elementShapeExcept0}) {
    dtype ??= inferType(handle);
    var op$ = newOperation(
        'TensorArrayConcatV3', _scope.uniqueName('TensorArrayConcatV3'));
    op$.addInput(handle);
    op$.addInput(flowIn);
    op$.setAttrType('dtype', dtype);
    op$.setAttrShape('element_shape_except0', elementShapeExcept0);
    var result$ = op$.finish();
    return new TensorArrayConcatV3Output<T>(result$, result$[0], result$[1]);
  }

  void resourceApplyAdadelta<T>(Output var$, Output accum, Output accumUpdate,
      Output<T> lr, Output<T> rho, Output<T> epsilon, Output<T> grad,
      {bool useLocking: false}) {
    var op$ = newOperation(
        'ResourceApplyAdadelta', _scope.uniqueName('ResourceApplyAdadelta'));
    op$.addInput(var$);
    op$.addInput(accum);
    op$.addInput(accumUpdate);
    op$.addInput(lr);
    op$.addInput(rho);
    op$.addInput(epsilon);
    op$.addInput(grad);
    op$.setAttrBool('use_locking', useLocking);
    op$.finish();
  }

  Output<T> debugGradientRefIdentity<T>(Output<T> input) {
    var op$ = newOperation('DebugGradientRefIdentity',
        _scope.uniqueName('DebugGradientRefIdentity'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  TensorArrayGradV3Output tensorArrayGradV3(
      Output handle, Output<double> flowIn,
      {String source}) {
    var op$ = newOperation(
        'TensorArrayGradV3', _scope.uniqueName('TensorArrayGradV3'));
    op$.addInput(handle);
    op$.addInput(flowIn);
    op$.setAttrString('source', source);
    var result$ = op$.finish();
    return new TensorArrayGradV3Output(result$, result$[0], result$[1]);
  }

  RefSwitchOutput refSwitch<T>(Output<T> data, Output<bool> pred) {
    var op$ = newOperation('RefSwitch', _scope.uniqueName('RefSwitch'));
    op$.addInput(data);
    op$.addInput(pred);
    var result$ = op$.finish();
    return new RefSwitchOutput<T>(result$, result$[0], result$[1]);
  }

  Output<T> floorDiv<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation('FloorDiv', _scope.uniqueName('FloorDiv'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
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
      {bool useLocking: false}) {
    var op$ =
        newOperation('ApplyAdagradDA', _scope.uniqueName('ApplyAdagradDA'));
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

  Output<T> square<T>(Output<T> x) {
    var op$ = newOperation('Square', _scope.uniqueName('Square'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use IdentityReaderV2')
  Output<String> identityReader({String container, String sharedName}) {
    var op$ =
        newOperation('IdentityReader', _scope.uniqueName('IdentityReader'));
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  Output<double> tensorArrayScatterV3<T>(Output handle, Output<int> indices,
      Output<T> value, Output<double> flowIn) {
    var op$ = newOperation(
        'TensorArrayScatterV3', _scope.uniqueName('TensorArrayScatterV3'));
    op$.addInput(handle);
    op$.addInput(indices);
    op$.addInput(value);
    op$.addInput(flowIn);
    return op$.finish()[0];
  }

  Output<T> biasAddV1<T>(Output<T> value, Output<T> bias) {
    var op$ = newOperation('BiasAddV1', _scope.uniqueName('BiasAddV1'));
    op$.addInput(value);
    op$.addInput(bias);
    return op$.finish()[0];
  }

  Output<bool> logicalOr(Output<bool> x, Output<bool> y) {
    var op$ = newOperation('LogicalOr', _scope.uniqueName('LogicalOr'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  Output<T> stackPush<T>(Output<String> handle, Output<T> elem,
      {bool swapMemory: false}) {
    var op$ = newOperation('StackPush', _scope.uniqueName('StackPush'));
    op$.addInput(handle);
    op$.addInput(elem);
    op$.setAttrBool('swap_memory', swapMemory);
    return op$.finish()[0];
  }

  Output tFRecordReaderV2(
      {String container, String sharedName, String compressionType}) {
    var op$ =
        newOperation('TFRecordReaderV2', _scope.uniqueName('TFRecordReaderV2'));
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    op$.setAttrString('compression_type', compressionType);
    return op$.finish()[0];
  }

  LogUniformCandidateSamplerOutput logUniformCandidateSampler(
      Output<int> trueClasses,
      {int numTrue,
      int numSampled,
      bool unique,
      int rangeMax,
      int seed: 0,
      int seed2: 0}) {
    var op$ = newOperation('LogUniformCandidateSampler',
        _scope.uniqueName('LogUniformCandidateSampler'));
    op$.addInput(trueClasses);
    op$.setAttrInt('num_true', numTrue);
    op$.setAttrInt('num_sampled', numSampled);
    op$.setAttrBool('unique', unique);
    op$.setAttrInt('range_max', rangeMax);
    op$.setAttrInt('seed', seed);
    op$.setAttrInt('seed2', seed2);
    var result$ = op$.finish();
    return new LogUniformCandidateSamplerOutput(
        result$, result$[0], result$[1], result$[2]);
  }

  Output paddingFIFOQueueV2(
      {List<DataType> componentTypes,
      List<Shape> shapes,
      int capacity: -1,
      String container,
      String sharedName}) {
    var op$ = newOperation(
        'PaddingFIFOQueueV2', _scope.uniqueName('PaddingFIFOQueueV2'));
    op$.setAttrTypeList('component_types', componentTypes);
    op$.setAttrShapeList('shapes', shapes);
    op$.setAttrInt('capacity', capacity);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  Output<T> lookupTableFind<T>(
      Output<String> tableHandle, Output<T> keys, Output<T> defaultValue,
      {DataType tin, DataType tout}) {
    var op$ =
        newOperation('LookupTableFind', _scope.uniqueName('LookupTableFind'));
    op$.addInput(tableHandle);
    op$.addInput(keys);
    op$.addInput(defaultValue);
    op$.setAttrType('Tin', tin);
    op$.setAttrType('Tout', tout);
    return op$.finish()[0];
  }

  Output<T> dynamicStitch<T>(List<Output<int>> indices, List<Output<T>> data,
      {int n}) {
    var op$ = newOperation('DynamicStitch', _scope.uniqueName('DynamicStitch'));
    op$.addInputList(indices);
    op$.addInputList(data);
    op$.setAttrInt('N', n);
    return op$.finish()[0];
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
      {DataType tindices,
      bool useLocking: false}) {
    var op$ = newOperation(
        'SparseApplyAdadelta', _scope.uniqueName('SparseApplyAdadelta'));
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

  SparseReshapeOutput sparseReshape(
      Output<int> inputIndices, Output<int> inputShape, Output<int> newShape) {
    var op$ = newOperation('SparseReshape', _scope.uniqueName('SparseReshape'));
    op$.addInput(inputIndices);
    op$.addInput(inputShape);
    op$.addInput(newShape);
    var result$ = op$.finish();
    return new SparseReshapeOutput(result$, result$[0], result$[1]);
  }

  Output<T> complexAbs<T>(Output<T> x, {DataType tout: DataType.DT_FLOAT}) {
    var op$ = newOperation('ComplexAbs', _scope.uniqueName('ComplexAbs'));
    op$.addInput(x);
    op$.setAttrType('Tout', tout);
    return op$.finish()[0];
  }

  Output<T> serializeSparse<T>(Output<int> sparseIndices,
      Output<T> sparseValues, Output<int> sparseShape,
      {DataType outType: DataType.DT_STRING}) {
    var op$ =
        newOperation('SerializeSparse', _scope.uniqueName('SerializeSparse'));
    op$.addInput(sparseIndices);
    op$.addInput(sparseValues);
    op$.addInput(sparseShape);
    op$.setAttrType('out_type', outType);
    return op$.finish()[0];
  }

  Output<T> bitwiseXor<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation('BitwiseXor', _scope.uniqueName('BitwiseXor'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  SparseAddOutput sparseAdd<T>(
      Output<int> aIndices,
      Output<T> aValues,
      Output<int> aShape,
      Output<int> bIndices,
      Output<T> bValues,
      Output<int> bShape,
      Output<T> thresh,
      {DataType treal}) {
    var op$ = newOperation('SparseAdd', _scope.uniqueName('SparseAdd'));
    op$.addInput(aIndices);
    op$.addInput(aValues);
    op$.addInput(aShape);
    op$.addInput(bIndices);
    op$.addInput(bValues);
    op$.addInput(bShape);
    op$.addInput(thresh);
    op$.setAttrType('Treal', treal);
    var result$ = op$.finish();
    return new SparseAddOutput<T>(result$, result$[0], result$[1], result$[2]);
  }

  Output tensorListSetItem<T>(
      Output inputHandle, Output<int> index, Output<T> item,
      {DataType elementDtype}) {
    var op$ = newOperation(
        'TensorListSetItem', _scope.uniqueName('TensorListSetItem'));
    op$.addInput(inputHandle);
    op$.addInput(index);
    op$.addInput(item);
    op$.setAttrType('element_dtype', elementDtype);
    return op$.finish()[0];
  }

  Output<String> stack({DataType elemType, String stackName}) {
    var op$ = newOperation('Stack', _scope.uniqueName('Stack'));
    op$.setAttrType('elem_type', elemType);
    op$.setAttrString('stack_name', stackName);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 26: Use TFRecordReaderV2')
  Output<String> tFRecordReader(
      {String container, String sharedName, String compressionType}) {
    var op$ =
        newOperation('TFRecordReader', _scope.uniqueName('TFRecordReader'));
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    op$.setAttrString('compression_type', compressionType);
    return op$.finish()[0];
  }

  Output<T> queueDequeueMany<T>(Output<String> handle, Output<int> n,
      {List<DataType> componentTypes, int timeoutMs: -1}) {
    var op$ =
        newOperation('QueueDequeueMany', _scope.uniqueName('QueueDequeueMany'));
    op$.addInput(handle);
    op$.addInput(n);
    op$.setAttrTypeList('component_types', componentTypes);
    op$.setAttrInt('timeout_ms', timeoutMs);
    return op$.finish()[0];
  }

  DeserializeManySparseOutput deserializeManySparse<T>(
      Output<String> serializedSparse,
      {DataType dtype}) {
    dtype ??= inferType(serializedSparse);
    var op$ = newOperation(
        'DeserializeManySparse', _scope.uniqueName('DeserializeManySparse'));
    op$.addInput(serializedSparse);
    op$.setAttrType('dtype', dtype);
    var result$ = op$.finish();
    return new DeserializeManySparseOutput<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  Output<String> sparseConditionalAccumulator(
      {@required DataType dtype,
      Shape shape,
      String container,
      String sharedName}) {
    var op$ = newOperation('SparseConditionalAccumulator',
        _scope.uniqueName('SparseConditionalAccumulator'));
    op$.setAttrType('dtype', dtype);
    op$.setAttrShape('shape', shape);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  Output<String> conditionalAccumulator(
      {@required DataType dtype,
      Shape shape,
      String container,
      String sharedName}) {
    var op$ = newOperation(
        'ConditionalAccumulator', _scope.uniqueName('ConditionalAccumulator'));
    op$.setAttrType('dtype', dtype);
    op$.setAttrShape('shape', shape);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 15: Use FFT')
  Output batchFFT(Output input) {
    var op$ = newOperation('BatchFFT', _scope.uniqueName('BatchFFT'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  Output<int> accumulatorNumAccumulated(Output<String> handle) {
    var op$ = newOperation('AccumulatorNumAccumulated',
        _scope.uniqueName('AccumulatorNumAccumulated'));
    op$.addInput(handle);
    return op$.finish()[0];
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 11: Use SelfAdjointEigV2 instead.')
  Output<T> batchSelfAdjointEig<T>(Output<T> input) {
    var op$ = newOperation(
        'BatchSelfAdjointEig', _scope.uniqueName('BatchSelfAdjointEig'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  Output<T> minimum<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation('Minimum', _scope.uniqueName('Minimum'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  Output<bool> queueIsClosed(Output<String> handle) {
    var op$ = newOperation('QueueIsClosed', _scope.uniqueName('QueueIsClosed'));
    op$.addInput(handle);
    return op$.finish()[0];
  }

  Output<double> tensorArraySplitV3<T>(Output handle, Output<T> value,
      Output<int> lengths, Output<double> flowIn) {
    var op$ = newOperation(
        'TensorArraySplitV3', _scope.uniqueName('TensorArraySplitV3'));
    op$.addInput(handle);
    op$.addInput(value);
    op$.addInput(lengths);
    op$.addInput(flowIn);
    return op$.finish()[0];
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
      {DataType tindices,
      bool useLocking: false}) {
    var op$ =
        newOperation('SparseApplyFtrl', _scope.uniqueName('SparseApplyFtrl'));
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

  void resourceSparseApplyProximalGradientDescent<T>(
      Output var$,
      Output<T> alpha,
      Output<T> l1,
      Output<T> l2,
      Output<T> grad,
      Output<T> indices,
      {DataType tindices,
      bool useLocking: false}) {
    var op$ = newOperation('ResourceSparseApplyProximalGradientDescent',
        _scope.uniqueName('ResourceSparseApplyProximalGradientDescent'));
    op$.addInput(var$);
    op$.addInput(alpha);
    op$.addInput(l1);
    op$.addInput(l2);
    op$.addInput(grad);
    op$.addInput(indices);
    op$.setAttrType('Tindices', tindices);
    op$.setAttrBool('use_locking', useLocking);
    op$.finish();
  }

  Output<T> sparseSegmentSum<T>(
      Output<T> data, Output<T> indices, Output<int> segmentIds,
      {DataType tidx: DataType.DT_INT32}) {
    var op$ =
        newOperation('SparseSegmentSum', _scope.uniqueName('SparseSegmentSum'));
    op$.addInput(data);
    op$.addInput(indices);
    op$.addInput(segmentIds);
    op$.setAttrType('Tidx', tidx);
    return op$.finish()[0];
  }

  Output<String> fIFOQueue(
      {List<DataType> componentTypes,
      List<Shape> shapes,
      int capacity: -1,
      String container,
      String sharedName}) {
    var op$ = newOperation('FIFOQueue', _scope.uniqueName('FIFOQueue'));
    op$.setAttrTypeList('component_types', componentTypes);
    op$.setAttrShapeList('shapes', shapes);
    op$.setAttrInt('capacity', capacity);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  OrderedMapUnstageNoKeyOutput orderedMapUnstageNoKey<T>(Output<int> indices,
      {int capacity: 0,
      int memoryLimit: 0,
      List<DataType> dtypes,
      String container,
      String sharedName}) {
    var op$ = newOperation(
        'OrderedMapUnstageNoKey', _scope.uniqueName('OrderedMapUnstageNoKey'));
    op$.addInput(indices);
    op$.setAttrInt('capacity', capacity);
    op$.setAttrInt('memory_limit', memoryLimit);
    op$.setAttrTypeList('dtypes', dtypes);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    var result$ = op$.finish();
    return new OrderedMapUnstageNoKeyOutput<T>(result$, result$[0], result$[1]);
  }

  Output<T> rint<T>(Output<T> x) {
    var op$ = newOperation('Rint', _scope.uniqueName('Rint'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  void abort({String errorMsg, bool exitWithoutError: false}) {
    var op$ = newOperation('Abort', _scope.uniqueName('Abort'));
    op$.setAttrString('error_msg', errorMsg);
    op$.setAttrBool('exit_without_error', exitWithoutError);
    op$.finish();
  }

  MergeOutput merge<T>(List<Output<T>> inputs, {int n}) {
    var op$ = newOperation('Merge', _scope.uniqueName('Merge'));
    op$.addInputList(inputs);
    op$.setAttrInt('N', n);
    var result$ = op$.finish();
    return new MergeOutput<T>(result$, result$[0], result$[1]);
  }

  Output<T> extractImagePatches<T>(Output<T> images,
      {List<int> ksizes, List<int> strides, List<int> rates, String padding}) {
    var op$ = newOperation(
        'ExtractImagePatches', _scope.uniqueName('ExtractImagePatches'));
    op$.addInput(images);
    op$.setAttrIntList('ksizes', ksizes);
    op$.setAttrIntList('strides', strides);
    op$.setAttrIntList('rates', rates);
    op$.setAttrString('padding', padding);
    return op$.finish()[0];
  }

  FixedUnigramCandidateSamplerOutput fixedUnigramCandidateSampler(
      Output<int> trueClasses,
      {int numTrue,
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
    var op$ = newOperation('FixedUnigramCandidateSampler',
        _scope.uniqueName('FixedUnigramCandidateSampler'));
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
        result$, result$[0], result$[1], result$[2]);
  }

  Output<String> shardedFilename(
      Output<String> basename, Output<int> shard, Output<int> numShards) {
    var op$ =
        newOperation('ShardedFilename', _scope.uniqueName('ShardedFilename'));
    op$.addInput(basename);
    op$.addInput(shard);
    op$.addInput(numShards);
    return op$.finish()[0];
  }

  Output<T> matrixInverse<T>(Output<T> input, {bool adjoint: false}) {
    var op$ = newOperation('MatrixInverse', _scope.uniqueName('MatrixInverse'));
    op$.addInput(input);
    op$.setAttrBool('adjoint', adjoint);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 25: Replaced by RandomPoissonV2')
  Output<T> randomPoisson<T>(Output<T> shape, Output<T> rate,
      {int seed: 0, int seed2: 0, DataType s, DataType dtype}) {
    dtype ??= inferType(shape);
    var op$ = newOperation('RandomPoisson', _scope.uniqueName('RandomPoisson'));
    op$.addInput(shape);
    op$.addInput(rate);
    op$.setAttrInt('seed', seed);
    op$.setAttrInt('seed2', seed2);
    op$.setAttrType('S', s);
    op$.setAttrType('dtype', dtype);
    return op$.finish()[0];
  }

  Output<String> paddingFIFOQueue(
      {List<DataType> componentTypes,
      List<Shape> shapes,
      int capacity: -1,
      String container,
      String sharedName}) {
    var op$ =
        newOperation('PaddingFIFOQueue', _scope.uniqueName('PaddingFIFOQueue'));
    op$.setAttrTypeList('component_types', componentTypes);
    op$.setAttrShapeList('shapes', shapes);
    op$.setAttrInt('capacity', capacity);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 10: Use Conv3DBackpropInputV2')
  Output<T> conv3DBackpropInput<T>(
      Output<T> input, Output<T> filter, Output<T> outBackprop,
      {List<int> strides, String padding}) {
    var op$ = newOperation(
        'Conv3DBackpropInput', _scope.uniqueName('Conv3DBackpropInput'));
    op$.addInput(input);
    op$.addInput(filter);
    op$.addInput(outBackprop);
    op$.setAttrIntList('strides', strides);
    op$.setAttrString('padding', padding);
    return op$.finish()[0];
  }

  Output<T> depthwiseConv2dNative<T>(Output<T> input, Output<T> filter,
      {List<int> strides,
      String padding,
      String dataFormat: 'NHWC',
      List<int> dilations}) {
    var op$ = newOperation(
        'DepthwiseConv2dNative', _scope.uniqueName('DepthwiseConv2dNative'));
    op$.addInput(input);
    op$.addInput(filter);
    op$.setAttrIntList('strides', strides);
    op$.setAttrString('padding', padding);
    op$.setAttrString('data_format', dataFormat);
    op$.setAttrIntList('dilations', dilations);
    return op$.finish()[0];
  }

  LearnedUnigramCandidateSamplerOutput learnedUnigramCandidateSampler(
      Output<int> trueClasses,
      {int numTrue,
      int numSampled,
      bool unique,
      int rangeMax,
      int seed: 0,
      int seed2: 0}) {
    var op$ = newOperation('LearnedUnigramCandidateSampler',
        _scope.uniqueName('LearnedUnigramCandidateSampler'));
    op$.addInput(trueClasses);
    op$.setAttrInt('num_true', numTrue);
    op$.setAttrInt('num_sampled', numSampled);
    op$.setAttrBool('unique', unique);
    op$.setAttrInt('range_max', rangeMax);
    op$.setAttrInt('seed', seed);
    op$.setAttrInt('seed2', seed2);
    var result$ = op$.finish();
    return new LearnedUnigramCandidateSamplerOutput(
        result$, result$[0], result$[1], result$[2]);
  }

  void queueEnqueueMany<T>(Output<String> handle, List<Output<T>> components,
      {List<DataType> tcomponents, int timeoutMs: -1}) {
    var op$ =
        newOperation('QueueEnqueueMany', _scope.uniqueName('QueueEnqueueMany'));
    op$.addInput(handle);
    op$.addInputList(components);
    op$.setAttrTypeList('Tcomponents', tcomponents);
    op$.setAttrInt('timeout_ms', timeoutMs);
    op$.finish();
  }

  void noOp() {
    var op$ = newOperation('NoOp', _scope.uniqueName('NoOp'));
    op$.finish();
  }

  Output<double> loadAndRemapMatrix(
      Output<String> ckptPath,
      Output<String> oldTensorName,
      Output<int> rowRemapping,
      Output<int> colRemapping,
      Output<double> initializingValues,
      {int numRows,
      int numCols,
      int maxRowsInMemory: -1}) {
    var op$ = newOperation(
        'LoadAndRemapMatrix', _scope.uniqueName('LoadAndRemapMatrix'));
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

  Output<T> spaceToBatchND<T>(
      Output<T> input, Output<T> blockShape, Output<T> paddings,
      {DataType tblockShape: DataType.DT_INT32,
      DataType tpaddings: DataType.DT_INT32}) {
    var op$ =
        newOperation('SpaceToBatchND', _scope.uniqueName('SpaceToBatchND'));
    op$.addInput(input);
    op$.addInput(blockShape);
    op$.addInput(paddings);
    op$.setAttrType('Tblock_shape', tblockShape);
    op$.setAttrType('Tpaddings', tpaddings);
    return op$.finish()[0];
  }

  Output<T> resizeNearestNeighborGrad<T>(Output<T> grads, Output<int> size,
      {bool alignCorners: false}) {
    var op$ = newOperation('ResizeNearestNeighborGrad',
        _scope.uniqueName('ResizeNearestNeighborGrad'));
    op$.addInput(grads);
    op$.addInput(size);
    op$.setAttrBool('align_corners', alignCorners);
    return op$.finish()[0];
  }

  AllCandidateSamplerOutput allCandidateSampler(Output<int> trueClasses,
      {int numTrue, int numSampled, bool unique, int seed: 0, int seed2: 0}) {
    var op$ = newOperation(
        'AllCandidateSampler', _scope.uniqueName('AllCandidateSampler'));
    op$.addInput(trueClasses);
    op$.setAttrInt('num_true', numTrue);
    op$.setAttrInt('num_sampled', numSampled);
    op$.setAttrBool('unique', unique);
    op$.setAttrInt('seed', seed);
    op$.setAttrInt('seed2', seed2);
    var result$ = op$.finish();
    return new AllCandidateSamplerOutput(
        result$, result$[0], result$[1], result$[2]);
  }

  void queueEnqueueV2<T>(Output handle, List<Output<T>> components,
      {List<DataType> tcomponents, int timeoutMs: -1}) {
    var op$ =
        newOperation('QueueEnqueueV2', _scope.uniqueName('QueueEnqueueV2'));
    op$.addInput(handle);
    op$.addInputList(components);
    op$.setAttrTypeList('Tcomponents', tcomponents);
    op$.setAttrInt('timeout_ms', timeoutMs);
    op$.finish();
  }

  Output batchDataset(Output inputDataset, Output<int> batchSize,
      {List<DataType> outputTypes, List<Shape> outputShapes}) {
    var op$ = newOperation('BatchDataset', _scope.uniqueName('BatchDataset'));
    op$.addInput(inputDataset);
    op$.addInput(batchSize);
    op$.setAttrTypeList('output_types', outputTypes);
    op$.setAttrShapeList('output_shapes', outputShapes);
    return op$.finish()[0];
  }

  Output repeatDataset(Output inputDataset, Output<int> count,
      {List<DataType> outputTypes, List<Shape> outputShapes}) {
    var op$ = newOperation('RepeatDataset', _scope.uniqueName('RepeatDataset'));
    op$.addInput(inputDataset);
    op$.addInput(count);
    op$.setAttrTypeList('output_types', outputTypes);
    op$.setAttrShapeList('output_shapes', outputShapes);
    return op$.finish()[0];
  }

  Output<T> queueDequeueManyV2<T>(Output handle, Output<int> n,
      {List<DataType> componentTypes, int timeoutMs: -1}) {
    var op$ = newOperation(
        'QueueDequeueManyV2', _scope.uniqueName('QueueDequeueManyV2'));
    op$.addInput(handle);
    op$.addInput(n);
    op$.setAttrTypeList('component_types', componentTypes);
    op$.setAttrInt('timeout_ms', timeoutMs);
    return op$.finish()[0];
  }

  LogMatrixDeterminantOutput logMatrixDeterminant<T>(Output<T> input) {
    var op$ = newOperation(
        'LogMatrixDeterminant', _scope.uniqueName('LogMatrixDeterminant'));
    op$.addInput(input);
    var result$ = op$.finish();
    return new LogMatrixDeterminantOutput<T>(result$, result$[0], result$[1]);
  }

  Output<T> temporaryVariable<T>(
      {Shape shape, @required DataType dtype, String varName}) {
    var op$ = newOperation(
        'TemporaryVariable', _scope.uniqueName('TemporaryVariable'));
    op$.setAttrShape('shape', shape);
    op$.setAttrType('dtype', dtype);
    op$.setAttrString('var_name', varName);
    return op$.finish()[0];
  }

  Output<double> resizeBilinear<T>(Output<T> images, Output<int> size,
      {bool alignCorners: false}) {
    var op$ =
        newOperation('ResizeBilinear', _scope.uniqueName('ResizeBilinear'));
    op$.addInput(images);
    op$.addInput(size);
    op$.setAttrBool('align_corners', alignCorners);
    return op$.finish()[0];
  }

  Output<double> fakeQuantWithMinMaxVars(
      Output<double> inputs, Output<double> min, Output<double> max,
      {int numBits: 8, bool narrowRange: false}) {
    var op$ = newOperation('FakeQuantWithMinMaxVars',
        _scope.uniqueName('FakeQuantWithMinMaxVars'));
    op$.addInput(inputs);
    op$.addInput(min);
    op$.addInput(max);
    op$.setAttrInt('num_bits', numBits);
    op$.setAttrBool('narrow_range', narrowRange);
    return op$.finish()[0];
  }

  Output<int> barrierIncompleteSize(Output<String> handle) {
    var op$ = newOperation(
        'BarrierIncompleteSize', _scope.uniqueName('BarrierIncompleteSize'));
    op$.addInput(handle);
    return op$.finish()[0];
  }

  Output<bool> logicalNot(Output<bool> x) {
    var op$ = newOperation('LogicalNot', _scope.uniqueName('LogicalNot'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<T> sparseApplyAdagrad<T>(Output<T> var$, Output<T> accum, Output<T> lr,
      Output<T> grad, Output<T> indices,
      {DataType tindices, bool useLocking: false}) {
    var op$ = newOperation(
        'SparseApplyAdagrad', _scope.uniqueName('SparseApplyAdagrad'));
    op$.addInput(var$);
    op$.addInput(accum);
    op$.addInput(lr);
    op$.addInput(grad);
    op$.addInput(indices);
    op$.setAttrType('Tindices', tindices);
    op$.setAttrBool('use_locking', useLocking);
    return op$.finish()[0];
  }

  Output<int> queueSize(Output<String> handle) {
    var op$ = newOperation('QueueSize', _scope.uniqueName('QueueSize'));
    op$.addInput(handle);
    return op$.finish()[0];
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
      {String lossType,
      bool adaptative: false,
      int numSparseFeatures,
      int numSparseFeaturesWithValues,
      int numDenseFeatures,
      double l1,
      double l2,
      int numLossPartitions,
      int numInnerIterations}) {
    var op$ = newOperation('SdcaOptimizer', _scope.uniqueName('SdcaOptimizer'));
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
    return new SdcaOptimizerOutput(result$, result$[0], result$[1], result$[2]);
  }

  Output iFFT(Output input) {
    var op$ = newOperation('IFFT', _scope.uniqueName('IFFT'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  Output<T> atan<T>(Output<T> x) {
    var op$ = newOperation('Atan', _scope.uniqueName('Atan'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<double> fakeQuantWithMinMaxArgsGradient(
      Output<double> gradients, Output<double> inputs,
      {double min: -6.0,
      double max: 6.0,
      int numBits: 8,
      bool narrowRange: false}) {
    var op$ = newOperation('FakeQuantWithMinMaxArgsGradient',
        _scope.uniqueName('FakeQuantWithMinMaxArgsGradient'));
    op$.addInput(gradients);
    op$.addInput(inputs);
    op$.setAttrFloat('min', min);
    op$.setAttrFloat('max', max);
    op$.setAttrInt('num_bits', numBits);
    op$.setAttrBool('narrow_range', narrowRange);
    return op$.finish()[0];
  }

  Output<int> tensorListLength(Output inputHandle) {
    var op$ =
        newOperation('TensorListLength', _scope.uniqueName('TensorListLength'));
    op$.addInput(inputHandle);
    return op$.finish()[0];
  }

  Output latencyStatsDataset(Output inputDataset, Output<String> tag,
      {List<DataType> outputTypes, List<Shape> outputShapes}) {
    var op$ = newOperation(
        'LatencyStatsDataset', _scope.uniqueName('LatencyStatsDataset'));
    op$.addInput(inputDataset);
    op$.addInput(tag);
    op$.setAttrTypeList('output_types', outputTypes);
    op$.setAttrShapeList('output_shapes', outputShapes);
    return op$.finish()[0];
  }

  Output<T> pow<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation('Pow', _scope.uniqueName('Pow'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
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
      {bool useLocking: false}) {
    var op$ = newOperation('ApplyRMSProp', _scope.uniqueName('ApplyRMSProp'));
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

  Output<T> stackPushV2<T>(Output handle, Output<T> elem,
      {bool swapMemory: false}) {
    var op$ = newOperation('StackPushV2', _scope.uniqueName('StackPushV2'));
    op$.addInput(handle);
    op$.addInput(elem);
    op$.setAttrBool('swap_memory', swapMemory);
    return op$.finish()[0];
  }

  Output mutexLock(Output mutex) {
    var op$ = newOperation('MutexLock', _scope.uniqueName('MutexLock'));
    op$.addInput(mutex);
    return op$.finish()[0];
  }

  Output<T> maxPoolGradWithArgmax<T>(
      Output<T> input, Output<T> grad, Output<T> argmax,
      {List<int> ksize, List<int> strides, String padding, DataType targmax}) {
    var op$ = newOperation(
        'MaxPoolGradWithArgmax', _scope.uniqueName('MaxPoolGradWithArgmax'));
    op$.addInput(input);
    op$.addInput(grad);
    op$.addInput(argmax);
    op$.setAttrIntList('ksize', ksize);
    op$.setAttrIntList('strides', strides);
    op$.setAttrString('padding', padding);
    op$.setAttrType('Targmax', targmax);
    return op$.finish()[0];
  }

  Output fFT2D(Output input) {
    var op$ = newOperation('FFT2D', _scope.uniqueName('FFT2D'));
    op$.addInput(input);
    return op$.finish()[0];
  }

  Output mutexV2({String container, String sharedName}) {
    var op$ = newOperation('MutexV2', _scope.uniqueName('MutexV2'));
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  Output<int> nonMaxSuppressionV2(Output<double> boxes, Output<double> scores,
      Output<int> maxOutputSize, Output<double> iouThreshold) {
    var op$ = newOperation(
        'NonMaxSuppressionV2', _scope.uniqueName('NonMaxSuppressionV2'));
    op$.addInput(boxes);
    op$.addInput(scores);
    op$.addInput(maxOutputSize);
    op$.addInput(iouThreshold);
    return op$.finish()[0];
  }

  Output<int> bucketize<T>(Output<T> input, {List<double> boundaries}) {
    var op$ = newOperation('Bucketize', _scope.uniqueName('Bucketize'));
    op$.addInput(input);
    op$.setAttrFloatList('boundaries', boundaries);
    return op$.finish()[0];
  }

  Output<T> drawBoundingBoxes<T>(Output<T> images, Output<double> boxes) {
    var op$ = newOperation(
        'DrawBoundingBoxes', _scope.uniqueName('DrawBoundingBoxes'));
    op$.addInput(images);
    op$.addInput(boxes);
    return op$.finish()[0];
  }

  MaxPoolWithArgmaxOutput maxPoolWithArgmax<T>(Output<T> input,
      {List<int> ksize,
      List<int> strides,
      DataType targmax: DataType.DT_INT64,
      String padding}) {
    var op$ = newOperation(
        'MaxPoolWithArgmax', _scope.uniqueName('MaxPoolWithArgmax'));
    op$.addInput(input);
    op$.setAttrIntList('ksize', ksize);
    op$.setAttrIntList('strides', strides);
    op$.setAttrType('Targmax', targmax);
    op$.setAttrString('padding', padding);
    var result$ = op$.finish();
    return new MaxPoolWithArgmaxOutput<T>(result$, result$[0], result$[1]);
  }

  Output priorityQueueV2(
      {List<DataType> componentTypes,
      List<Shape> shapes,
      int capacity: -1,
      String container,
      String sharedName}) {
    var op$ =
        newOperation('PriorityQueueV2', _scope.uniqueName('PriorityQueueV2'));
    op$.setAttrTypeList('component_types', componentTypes);
    op$.setAttrShapeList('shapes', shapes);
    op$.setAttrInt('capacity', capacity);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  Output<T> refEnter<T>(Output<T> data,
      {String frameName, bool isConstant: false, int parallelIterations: 10}) {
    var op$ = newOperation('RefEnter', _scope.uniqueName('RefEnter'));
    op$.addInput(data);
    op$.setAttrString('frame_name', frameName);
    op$.setAttrBool('is_constant', isConstant);
    op$.setAttrInt('parallel_iterations', parallelIterations);
    return op$.finish()[0];
  }

  @Deprecated('DEPRECATED at GraphDef version 16: Use TensorArraySplitV3')
  Output<double> tensorArraySplit<T>(Output<String> handle, Output<T> value,
      Output<int> lengths, Output<double> flowIn) {
    var op$ =
        newOperation('TensorArraySplit', _scope.uniqueName('TensorArraySplit'));
    op$.addInput(handle);
    op$.addInput(value);
    op$.addInput(lengths);
    op$.addInput(flowIn);
    return op$.finish()[0];
  }

  QuantizedAvgPoolOutput quantizedAvgPool<T>(
      Output<T> input, Output<double> minInput, Output<double> maxInput,
      {List<int> ksize, List<int> strides, String padding}) {
    var op$ =
        newOperation('QuantizedAvgPool', _scope.uniqueName('QuantizedAvgPool'));
    op$.addInput(input);
    op$.addInput(minInput);
    op$.addInput(maxInput);
    op$.setAttrIntList('ksize', ksize);
    op$.setAttrIntList('strides', strides);
    op$.setAttrString('padding', padding);
    var result$ = op$.finish();
    return new QuantizedAvgPoolOutput<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  Output<T> applyPowerSign<T>(Output<T> var$, Output<T> m, Output<T> lr,
      Output<T> logbase, Output<T> signDecay, Output<T> beta, Output<T> grad,
      {bool useLocking: false}) {
    var op$ =
        newOperation('ApplyPowerSign', _scope.uniqueName('ApplyPowerSign'));
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

  void initializeTableFromTextFileV2(
      Output tableHandle, Output<String> filename,
      {int keyIndex,
      int valueIndex,
      int vocabSize: -1,
      String delimiter: '	'}) {
    var op$ = newOperation('InitializeTableFromTextFileV2',
        _scope.uniqueName('InitializeTableFromTextFileV2'));
    op$.addInput(tableHandle);
    op$.addInput(filename);
    op$.setAttrInt('key_index', keyIndex);
    op$.setAttrInt('value_index', valueIndex);
    op$.setAttrInt('vocab_size', vocabSize);
    op$.setAttrString('delimiter', delimiter);
    op$.finish();
  }

  Output<T> exit<T>(Output<T> data) {
    var op$ = newOperation('Exit', _scope.uniqueName('Exit'));
    op$.addInput(data);
    return op$.finish()[0];
  }

  void accumulatorSetGlobalStep(
      Output<String> handle, Output<int> newGlobalStep) {
    var op$ = newOperation('AccumulatorSetGlobalStep',
        _scope.uniqueName('AccumulatorSetGlobalStep'));
    op$.addInput(handle);
    op$.addInput(newGlobalStep);
    op$.finish();
  }

  Output<T> cumprod<T>(Output<T> x, Output<T> axis,
      {bool exclusive: false,
      bool reverse: false,
      DataType tidx: DataType.DT_INT32}) {
    var op$ = newOperation('Cumprod', _scope.uniqueName('Cumprod'));
    op$.addInput(x);
    op$.addInput(axis);
    op$.setAttrBool('exclusive', exclusive);
    op$.setAttrBool('reverse', reverse);
    op$.setAttrType('Tidx', tidx);
    return op$.finish()[0];
  }

  ReaderReadV2Output readerReadV2(Output readerHandle, Output queueHandle) {
    var op$ = newOperation('ReaderReadV2', _scope.uniqueName('ReaderReadV2'));
    op$.addInput(readerHandle);
    op$.addInput(queueHandle);
    var result$ = op$.finish();
    return new ReaderReadV2Output(result$, result$[0], result$[1]);
  }

  Output<T> refSelect<T>(Output<int> index, List<Output<T>> inputs, {int n}) {
    var op$ = newOperation('RefSelect', _scope.uniqueName('RefSelect'));
    op$.addInput(index);
    op$.addInputList(inputs);
    op$.setAttrInt('N', n);
    return op$.finish()[0];
  }

  Output<T> reverseSequence<T>(Output<T> input, Output<T> seqLengths,
      {int seqDim, int batchDim: 0, DataType tlen: DataType.DT_INT64}) {
    var op$ =
        newOperation('ReverseSequence', _scope.uniqueName('ReverseSequence'));
    op$.addInput(input);
    op$.addInput(seqLengths);
    op$.setAttrInt('seq_dim', seqDim);
    op$.setAttrInt('batch_dim', batchDim);
    op$.setAttrType('Tlen', tlen);
    return op$.finish()[0];
  }

  Output<T> tensorArrayGatherV3<T>(
      Output handle, Output<int> indices, Output<double> flowIn,
      {DataType dtype, Shape elementShape}) {
    dtype ??= inferType(handle);
    var op$ = newOperation(
        'TensorArrayGatherV3', _scope.uniqueName('TensorArrayGatherV3'));
    op$.addInput(handle);
    op$.addInput(indices);
    op$.addInput(flowIn);
    op$.setAttrType('dtype', dtype);
    op$.setAttrShape('element_shape', elementShape);
    return op$.finish()[0];
  }

  Output<String> priorityQueue(
      {List<DataType> componentTypes,
      List<Shape> shapes,
      int capacity: -1,
      String container,
      String sharedName}) {
    var op$ = newOperation('PriorityQueue', _scope.uniqueName('PriorityQueue'));
    op$.setAttrTypeList('component_types', componentTypes);
    op$.setAttrShapeList('shapes', shapes);
    op$.setAttrInt('capacity', capacity);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  Output<bool> greater<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation('Greater', _scope.uniqueName('Greater'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  Output<int> readerNumWorkUnitsCompleted(Output<String> readerHandle) {
    var op$ = newOperation('ReaderNumWorkUnitsCompleted',
        _scope.uniqueName('ReaderNumWorkUnitsCompleted'));
    op$.addInput(readerHandle);
    return op$.finish()[0];
  }

  DecodeWavOutput decodeWav(Output<String> contents,
      {int desiredChannels: -1, int desiredSamples: -1}) {
    var op$ = newOperation('DecodeWav', _scope.uniqueName('DecodeWav'));
    op$.addInput(contents);
    op$.setAttrInt('desired_channels', desiredChannels);
    op$.setAttrInt('desired_samples', desiredSamples);
    var result$ = op$.finish();
    return new DecodeWavOutput(result$, result$[0], result$[1]);
  }

  Output<int> stringToHashBucketFast(Output<String> input, {int numBuckets}) {
    var op$ = newOperation(
        'StringToHashBucketFast', _scope.uniqueName('StringToHashBucketFast'));
    op$.addInput(input);
    op$.setAttrInt('num_buckets', numBuckets);
    return op$.finish()[0];
  }

  Output<T> unbatchGrad<T>(Output<T> originalInput, Output<int> batchIndex,
      Output<T> grad, Output<int> id,
      {String container, String sharedName}) {
    var op$ = newOperation('UnbatchGrad', _scope.uniqueName('UnbatchGrad'));
    op$.addInput(originalInput);
    op$.addInput(batchIndex);
    op$.addInput(grad);
    op$.addInput(id);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  Output<T> argMin<T>(Output<T> input, Output<T> dimension,
      {DataType tidx: DataType.DT_INT32,
      DataType outputType: DataType.DT_INT64}) {
    var op$ = newOperation('ArgMin', _scope.uniqueName('ArgMin'));
    op$.addInput(input);
    op$.addInput(dimension);
    op$.setAttrType('Tidx', tidx);
    op$.setAttrType('output_type', outputType);
    return op$.finish()[0];
  }

  FractionalMaxPoolOutput fractionalMaxPool<T>(Output<T> value,
      {List<double> poolingRatio,
      bool pseudoRandom: false,
      bool overlapping: false,
      bool deterministic: false,
      int seed: 0,
      int seed2: 0}) {
    var op$ = newOperation(
        'FractionalMaxPool', _scope.uniqueName('FractionalMaxPool'));
    op$.addInput(value);
    op$.setAttrFloatList('pooling_ratio', poolingRatio);
    op$.setAttrBool('pseudo_random', pseudoRandom);
    op$.setAttrBool('overlapping', overlapping);
    op$.setAttrBool('deterministic', deterministic);
    op$.setAttrInt('seed', seed);
    op$.setAttrInt('seed2', seed2);
    var result$ = op$.finish();
    return new FractionalMaxPoolOutput<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  Output<T> reciprocal<T>(Output<T> x) {
    var op$ = newOperation('Reciprocal', _scope.uniqueName('Reciprocal'));
    op$.addInput(x);
    return op$.finish()[0];
  }

  Output<int> readerNumWorkUnitsCompletedV2(Output readerHandle) {
    var op$ = newOperation('ReaderNumWorkUnitsCompletedV2',
        _scope.uniqueName('ReaderNumWorkUnitsCompletedV2'));
    op$.addInput(readerHandle);
    return op$.finish()[0];
  }

  GenerateVocabRemappingOutput generateVocabRemapping(
      Output<String> newVocabFile, Output<String> oldVocabFile,
      {int newVocabOffset, int numNewVocab, int oldVocabSize: -1}) {
    var op$ = newOperation(
        'GenerateVocabRemapping', _scope.uniqueName('GenerateVocabRemapping'));
    op$.addInput(newVocabFile);
    op$.addInput(oldVocabFile);
    op$.setAttrInt('new_vocab_offset', newVocabOffset);
    op$.setAttrInt('num_new_vocab', numNewVocab);
    op$.setAttrInt('old_vocab_size', oldVocabSize);
    var result$ = op$.finish();
    return new GenerateVocabRemappingOutput(result$, result$[0], result$[1]);
  }

  Output<T> unsortedSegmentProd<T>(
      Output<T> data, Output<T> segmentIds, Output<T> numSegments,
      {DataType tindices, DataType tnumsegments: DataType.DT_INT32}) {
    var op$ = newOperation(
        'UnsortedSegmentProd', _scope.uniqueName('UnsortedSegmentProd'));
    op$.addInput(data);
    op$.addInput(segmentIds);
    op$.addInput(numSegments);
    op$.setAttrType('Tindices', tindices);
    op$.setAttrType('Tnumsegments', tnumsegments);
    return op$.finish()[0];
  }

  Output<T> fusedResizeAndPadConv2D<T>(
      Output<T> input, Output<int> size, Output<int> paddings, Output<T> filter,
      {bool resizeAlignCorners: false,
      String mode,
      List<int> strides,
      String padding}) {
    var op$ = newOperation('FusedResizeAndPadConv2D',
        _scope.uniqueName('FusedResizeAndPadConv2D'));
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

  Output<bool> inTopK<T>(Output<double> predictions, Output<T> targets,
      {int k}) {
    var op$ = newOperation('InTopK', _scope.uniqueName('InTopK'));
    op$.addInput(predictions);
    op$.addInput(targets);
    op$.setAttrInt('k', k);
    return op$.finish()[0];
  }

  Output<T> sub<T>(Output<T> x, Output<T> y) {
    var op$ = newOperation('Sub', _scope.uniqueName('Sub'));
    op$.addInput(x);
    op$.addInput(y);
    return op$.finish()[0];
  }

  Output<T> angle<T>(Output<T> input, {DataType tout: DataType.DT_FLOAT}) {
    var op$ = newOperation('Angle', _scope.uniqueName('Angle'));
    op$.addInput(input);
    op$.setAttrType('Tout', tout);
    return op$.finish()[0];
  }

  @Deprecated(
      'DEPRECATED at GraphDef version 20: Use TensorArrayScatterV3 with RangeOp')
  Output<double> tensorArrayUnpack<T>(
      Output<String> handle, Output<T> value, Output<double> flowIn) {
    var op$ = newOperation(
        'TensorArrayUnpack', _scope.uniqueName('TensorArrayUnpack'));
    op$.addInput(handle);
    op$.addInput(value);
    op$.addInput(flowIn);
    return op$.finish()[0];
  }

  Output<String> iteratorToStringHandle(Output resourceHandle) {
    var op$ = newOperation(
        'IteratorToStringHandle', _scope.uniqueName('IteratorToStringHandle'));
    op$.addInput(resourceHandle);
    return op$.finish()[0];
  }

  SparseAccumulatorTakeGradientOutput sparseAccumulatorTakeGradient<T>(
      Output<String> handle, Output<int> numRequired,
      {DataType dtype}) {
    dtype ??= inferType(handle);
    var op$ = newOperation('SparseAccumulatorTakeGradient',
        _scope.uniqueName('SparseAccumulatorTakeGradient'));
    op$.addInput(handle);
    op$.addInput(numRequired);
    op$.setAttrType('dtype', dtype);
    var result$ = op$.finish();
    return new SparseAccumulatorTakeGradientOutput<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  Output<T> conjugateTranspose<T>(Output<T> x, Output<T> perm,
      {DataType tperm: DataType.DT_INT32}) {
    var op$ = newOperation(
        'ConjugateTranspose', _scope.uniqueName('ConjugateTranspose'));
    op$.addInput(x);
    op$.addInput(perm);
    op$.setAttrType('Tperm', tperm);
    return op$.finish()[0];
  }

  Output<T> mapPeek<T>(Output<int> key, Output<int> indices,
      {int capacity: 0,
      int memoryLimit: 0,
      List<DataType> dtypes,
      String container,
      String sharedName}) {
    var op$ = newOperation('MapPeek', _scope.uniqueName('MapPeek'));
    op$.addInput(key);
    op$.addInput(indices);
    op$.setAttrInt('capacity', capacity);
    op$.setAttrInt('memory_limit', memoryLimit);
    op$.setAttrTypeList('dtypes', dtypes);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }

  Output<T> destroyTemporaryVariable<T>(Output<T> ref, {String varName}) {
    var op$ = newOperation('DestroyTemporaryVariable',
        _scope.uniqueName('DestroyTemporaryVariable'));
    op$.addInput(ref);
    op$.setAttrString('var_name', varName);
    return op$.finish()[0];
  }

  TakeManySparseFromTensorsMapOutput takeManySparseFromTensorsMap<T>(
      Output<int> sparseHandles,
      {DataType dtype,
      String container,
      String sharedName}) {
    dtype ??= inferType(sparseHandles);
    var op$ = newOperation('TakeManySparseFromTensorsMap',
        _scope.uniqueName('TakeManySparseFromTensorsMap'));
    op$.addInput(sparseHandles);
    op$.setAttrType('dtype', dtype);
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    var result$ = op$.finish();
    return new TakeManySparseFromTensorsMapOutput<T>(
        result$, result$[0], result$[1], result$[2]);
  }

  Output<String> wholeFileReader({String container, String sharedName}) {
    var op$ =
        newOperation('WholeFileReader', _scope.uniqueName('WholeFileReader'));
    op$.setAttrString('container', container);
    op$.setAttrString('shared_name', sharedName);
    return op$.finish()[0];
  }
}
