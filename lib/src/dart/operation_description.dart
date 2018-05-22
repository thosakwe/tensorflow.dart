part of tensorflow;

/// A builder for [Operation]s in a [Graph].
class OperationDescription<T> {
  final Graph _graph;
  final String type, name;
  final int _pointer;
  int _index = 0;
  String _device;
  Variable _variable;

  static int _OperationDescription_new(int graph, String type, String name)
      native "OperationDescription_new";

  OperationDescription._(this._graph, this.type, this.name)
      : _pointer = _OperationDescription_new(_graph._pointer, type, name);

  /// Ensure that the operation does not execute before the control operation does.
  void addControlInput(Operation control)
      native "OperationDescription_add_control_input";

  void _addInput(Output control, int index)
      native "OperationDescription_add_input";

  /// Returns the builder to create an operation.
  void addInput(Output control) {
    if (control is Variable) {
      if (type == 'Assign') _variable = control;
      addInput(control._value);
    } else if (control != null) {
      _addInput(control, _index++);
    }
  }

  void _addInputList(List<Output> inputs)
      native "OperationDescription_add_input_list";

  void addInputList(List<Output> value) {
    if (value == null) return;
    _addInputList(value);
  }

  int _finish(Type tensorFlowExceptionType)
      native "OperationDescription_finish";

  /// Add the [Operation] being built to the [Graph].
  Operation<T> finish() {
    setDevice(_device ?? Zone.current[_deviceSymbol]);
    var op =
        new Operation<T>._fromPointer(_finish(TensorFlowException), _graph);
    if (_variable != null) _variable._value = op[0];
    return op;
  }

  Tuple2/*<int, String>*/ _setAttrTensor(String name, Tensor value)
      native "OperationDescription_set_attr_tensor";

  void setAttrTensor(String name, Tensor value) {
    if (value == null) return;
    var result = _setAttrTensor(name, value);
    var code = _codeFrom(result.item1);
    if (code != Code.ok) throw new TensorFlowException(code, result.item2);
  }

  void setAttrFunc(String name, Func value) native "";

  void setAttrTensorList(String name, List<Tensor> value) native "";

  void _setAttrString(String name, String value)
      native "OperationDescription_set_attr_string";

  void setAttrString(String name, String value) {
    if (value == null) return;
    _setAttrString(name, value);
  }

  void setAttrStringList(String name, List<String> value) native "";

  void _setAttrBool(String name, bool value)
      native "OperationDescription_set_attr_bool";

  void setAttrBool(String name, bool value) {
    if (value == null) return;
    _setAttrBool(name, value);
  }

  void setAttrBoolList(String name, List<bool> value) native "";

  void _setAttrInt(String name, int value)
      native "OperationDescription_set_attr_int";

  void setAttrInt(String name, int value) {
    if (value == null) return;
    _setAttrInt(name, value);
  }

  void setAttrIntList(String name, List<int> value) native "";

  void _setAttrFloat(String name, double value)
      native "OperationDescription_set_attr_float";

  void setAttrFloat(String name, double value) {
    if (value == null) return;
    _setAttrFloat(name, value);
  }

  void setAttrFloatList(String name, List<double> value) native "";

  void setAttrLong(String name, int value) native "";

  void setAttrLongList(String name, int value) native "";

  void _setAttrShape(String name, Int64List value)
      native "OperationDescription_set_attr_shape";

  void setAttrShape(String name, Shape value) {
    if (value == null) return;
    _setAttrShape(name, value.dimensions);
  }

  void setAttrShapeList(String name, List<Shape> value) native "";

  void _setAttrType(String name, int value)
      native "OperationDescription_set_attr_type";

  void setAttrType(String name, DataType value) {
    if (value == null) throw "Missing required attr '$name' on '${this.name}'.";
    _setAttrType(name, value.value);
  }

  void _setAttrTypeList(String name, Int32List value)
      native "OperationDescription_set_attr_type_list";

  void setAttrTypeList(String name, List<DataType> value) {
    if (value == null) return;
    _setAttrTypeList(
        name, new Int32List.fromList(value.map((t) => t.value).toList()));
  }

  void _setDevice(String device) native "";

  void setDevice(String device) {
    if (device == null) return;
    _setDevice(_device = device);
  }
}
