part of tensorflow;

class Session {
  int _pointer;

  void run(Graph graph) native "Session_Run";
}
