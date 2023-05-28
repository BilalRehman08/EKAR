extension MapFirstFive<T> on List<T> {
  List<R> mapFirstFive<R>(R Function(T) mapper) {
    final result = <R>[];
    final length = this.length < 5 ? this.length : 5;

    for (var i = 0; i < length; i++) {
      result.add(mapper(this[i]));
    }

    return result;
  }
}
