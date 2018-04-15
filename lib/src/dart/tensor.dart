part of tensorflow;

class Tensor {
  static int _index = 0;
  int _pointer;

  Tensor._();
}

Tensor constant(value) {
  if (value is String)
    return _newStringTensor(value, Tensor);

  throw new UnsupportedError(
      'Cannot create constant Tensor from ${value.runtimeType}.');
}

Tensor _newStringTensor(String text, Type tensorType)
    native "NewStringTensor";
