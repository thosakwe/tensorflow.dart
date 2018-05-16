part of tensorflow;

class Operation {
  static OpList list() => new OpList.fromBuffer(getAllOpsInternal());

  final int _pointer;

  Operation() : _pointer = _Operation_new();

  Operation._fromPointer(this._pointer);

  String get name native "Operation_name";
}

int _Operation_new() native "Operation_new";

class Op {
  final String type, name;
  final List<Output> inputs;

  Op(this.type, this.name, this.inputs);
}