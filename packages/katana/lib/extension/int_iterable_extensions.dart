part of '/katana.dart';

/// Provides extended methods for [int] arrays.
///
/// [int]の配列用の拡張メソッドを提供します。
extension IntIterableExtensions on Iterable<int> {
  /// Get the closest [int] to [point] in the [int] array.
  ///
  /// [Null] is returned if the array is empty or if [point] is [double.nan].
  ///
  /// [int]の配列の中で[point]に一番近い[int]を取得します。
  ///
  /// 配列が空の場合や[point]が[double.nan]の場合は[Null]が返されます。
  ///
  /// ```dart
  /// final intArray = [
  ///   1, 2, 5, 100
  /// ];
  /// final nearest = intArray.nearestOrNull(8); // 5
  /// ```
  int? nearestOrNull(num point) {
    if (isEmpty || point.isNaN) {
      return null;
    }
    int? res;
    int? tmpPoint;
    for (final tmp in this) {
      if (tmp == point) {
        return tmp;
      }
      final p = (point - tmp).abs().toInt();
      if (tmpPoint == null || p < tmpPoint) {
        res = tmp;
        tmpPoint = p;
      }
    }
    return res;
  }

  /// Calculate the average using all values in the [int] list.
  ///
  /// [int]のリストのすべての値を用いて平均を算出します。
  double average() {
    return reduce((a, b) => a + b) / length;
  }

  /// Calculate the standard deviation using all values in the [int] list.
  ///
  /// [int]のリストのすべての値を用いて標準偏差を算出します。
  double standardDeviation() {
    return sqrt(variance());
  }

  /// Calculate the variance using all the values in the list of [int].
  ///
  /// [int]のリストのすべての値を用いて分散を算出します。
  double variance() {
    final mean = reduce((a, b) => a + b) / length;
    final variance =
        map((value) => pow(value - mean, 2)).reduce((a, b) => a + b) / length;
    return variance;
  }

  /// Calculate the maximum value in the [int] list.
  ///
  /// [int]のリストの中で最大値を算出します。
  int max() {
    return reduce((a, b) => a > b ? a : b);
  }

  /// Calculate the minimum value in the [int] list.
  ///
  /// [int]のリストの中で最小値を算出します。
  int min() {
    return reduce((a, b) => a < b ? a : b);
  }
}
