part of tensorflow;

class Session {
  final Graph _graph;
  final ConfigProto config;
  SessionRunner _runner;
  int _pointer;

  factory Session({Graph graph, ConfigProto config}) =>
      new Session._(graph ?? defaultGraph, config: config);

  Session._(this._graph, {this.config});

  Session._fromPointer(this._graph, this._pointer, {this.config});

  SessionRunner get runner => _runner ??= new SessionRunner._(this);

/*
  static Object _run(Graph graph, Output tensor) {
    var result = __run(graph, tensor);
    var code = _codeFrom(result.item1);

    // TODO: Get message
    if (code != Code.ok) throw new TensorFlowException(code, result.item3);

    return result.item2;
  }

  static Tuple3<int, Object, String> __run(Graph graph, Output tensor)
      native "SessionRunGraph";*/
}

/// Run Operations and evaluate Tensors.
///
/// A Runner runs the necessary graph fragments to execute every
/// [Operation] required to evaluate the [Tensor]s to fetch.
/// The [feed] calls allowscallers to override the value of
/// [Tensor]s in the graph by substituting the provided [Tensor]s for the outputs of the
/// operations provided.
class SessionRunner {
  final List<Tensor> _inputTensors = [];
  final List<Output> _inputs = [];
  final List<int> _targets = [];
  final Session _session;
  Output _output;

  RunOptions options;

  SessionRunner._(this._session);

  static Tuple4<int, String, List<Uint8List>, Uint8List> _Session_run(
      int graph,
      Uint8List config,
      Uint8List runOptions,
      List<Tensor> inputTensors,
      Output output,
      int nOutputs,
      List<int> targets,
      List<Output> inputs) native "Session_run";

  /// Execute graph fragments to compute requested fetches and return metadata about the run.
  SessionRun<T> run<T>() {
    _session._runner = null;
    if (_output == null && false)
      throw 'The session has not been configured to run any node. Call `SessionRunner.fetch` first.';

    var result = _Session_run(
      _session._graph._pointer,
      _session.config?.writeToBuffer(),
      options?.writeToBuffer(),
      _inputTensors,
      _output,
      _output?.op?.numOutputs ?? 0,
      // nOutputs,
      _targets,
      _inputs,
    );
    var code = _codeFrom(result.item1);
    if (code != Code.ok) throw new TensorFlowException(code, result.item2);
    return new SessionRun._(result.item3, result.item4);
  }

  /// Make [run]() execute operation, but not return any evaluated [Tensor]s.
  void addTarget(String operation) =>
      _targets.add(_session._graph[operation]._pointer);

  /// Avoid evaluating the [index]-th output of [operation] by substituting [tensor] for the value it produces
  void feed(String operation, Tensor tensor, {int index: 0}) {
    _inputs.add(_session._graph[operation][index]);
    _inputTensors.add(tensor);
  }

  /// Make [run]() return the [index]-th output of [operation].
  void _fetch(Operation op, {int index: 0}) {
    if (op.numOutputs < 0)
      throw new ArgumentError("The operation '${op.name}' has no outputs" +
          ", and therefore cannot be run.");

    var output = new Output._(_session._graph)
      .._operation = op._pointer
      .._index = index;
    _output = output;
  }

  /// Make [run]() return the [index]-th output of [operation].
  void fetch(String operation, {int index: 0}) {
    var op = _session._graph[operation];
    _fetch(op, index: index);
  }

  /// Make [run]() return the [index]-th output of [output's] operation.
  void fetchFromOutput(Output output) =>
      fetch(output.op.name, index: output.index);
}

/// Output tensors and metadata obtained when executing a session.
class SessionRun<T> extends DelegatingList {
  final Uint8List _metadata;
  RunMetadata _runMetadata;

  SessionRun._(List _tensors, this._metadata) : super(_tensors);

  RunMetadata get metadata =>
      _runMetadata ??= new RunMetadata.fromBuffer(_metadata);

  @override
  void operator []=(int index, value) =>
      throw new UnsupportedError('Cannot modify this list.');
}
