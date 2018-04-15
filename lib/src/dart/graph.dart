part of tensorflow;

/// Represents a computation graph.  Graphs may be shared between sessions.
class Graph {
  int _pointer;

  Graph() {
    _pointer = _newGraph();
  }
}

int _newGraph() native "NewGraph";