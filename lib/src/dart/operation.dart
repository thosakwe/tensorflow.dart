part of tensorflow;

class Operation {
  static Uint8List list() => _Operation_list();

  final int _pointer;

  Operation() : _pointer = _Operation_new();

  Operation._fromPointer(this._pointer);
}

int _Operation_new() native "Operation_new";

Uint8List _Operation_list() native "Operation_list";
