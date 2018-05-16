part of tensorflow;

class Output<T> {
  int _operation;
  int _index;

  Output._();

  int get index => _index;

  Operation get op => new Operation._fromPointer(_operation);
}