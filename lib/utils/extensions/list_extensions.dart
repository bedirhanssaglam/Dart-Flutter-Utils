import 'dart:math';

extension ListExtensions<E> on List<E> {
  List<T> mapToList<T>(T Function(E e) toElement) => map<T>(toElement).toList();
}

extension IterableExtension<E> on Iterable<E> {
  E? firstWhereIndexedOrNull(bool Function(int index, E element) test) {
    var index = 0;
    for (var element in this) {
      if (test(index++, element)) return element;
    }
    return null;
  }

  Iterable<T> mapIndexed<T>(T Function(int i, E e) f) {
    int index = -1;
    return map((e) => f(++index, e));
  }

  E? get lastOrNull => isNotEmpty ? last : null;
}

extension UnaryNumber on List<Object> {
  bool get isEven => length.isEven;
  bool get isOdd => !isEven;
  static bool isListEven(List<Object> list) => list.isEven;
}

extension RandomListItem<T> on List<T> {
  T? getRandom() => isEmpty
      ? null
      : length == 1
          ? first
          : this[Random().nextInt(length)];
}
