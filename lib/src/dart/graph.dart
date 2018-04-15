part of tensorflow;

/// Represents a computation graph.  Graphs may be shared between sessions.
class Graph {
  int _pointer;

  Graph() {
    _pointer = _newGraph();
  }

  /// Destroy an options object.  Graph will be deleted once no more
  /// TFSession's are referencing it.
  void delete() native "Graph_Delete";
}

int _newGraph() native "NewGraph";
