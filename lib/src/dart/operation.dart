part of tensorflow;

class Operation {
  static OpList list() => new OpList.fromBuffer(getAllOpsInternal());

  final int _pointer;

  Operation() : _pointer = _Operation_new();

  Operation._fromPointer(this._pointer);

  String get name native "Operation_name";
}

int _Operation_new() native "Operation_new";

class OperationDescription {
  final String type, name;
  final List inputs;
  final Map<String, dynamic> attrs;

  OperationDescription(this.type, this.name, this.inputs, this.attrs);
}