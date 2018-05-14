part of tensorflow;

/// Represents a computation graph.  Graphs may be shared between sessions.
class Graph {
  final int _pointer;

  Graph() : _pointer = Graph_new();

  /// Destroy an options object.  Graph will be deleted once no more
  /// TFSession's are referencing it.
  void delete() native "Graph_delete";
}

int Graph_new() native "Graph_new";
