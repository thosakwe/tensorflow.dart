part of tensorflow;

class Session {
  final SessionOptions options;
  int _pointer;

  Session({this.options});

  void run(Tensor tensor) native "Session_Run";
}

class SessionOptions {

}