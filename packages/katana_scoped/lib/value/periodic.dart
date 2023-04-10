part of katana_scoped.value;

/// Provides extension methods for [PageOrWidgetScopedValueRef] to perform periodic processing.
///
/// 定期処理を行うための[PageOrWidgetScopedValueRef]用の拡張メソッドを提供します。
extension RefPeriodicExtensions on PageOrWidgetScopedValueRef {
  /// Periodic processing.
  ///
  /// [callback] is executed at [duration] intervals.
  ///
  /// The start time and current time [DateTime] are passed each time so that processing can be performed based on them.
  ///
  /// If [name] is specified, it can be registered as a separate task.
  ///
  /// 定期処理を行います。
  ///
  /// [duration]間隔で[callback]が実行されます。
  ///
  /// 毎回開始時刻と現在時刻の[DateTime]が渡されるのでそれを元に処理を行うことができます。
  ///
  /// [name]を指定すると別のタスクとして登録することができます。
  Timer periodic(
    FutureOr<void> Function(DateTime currentTime, DateTime startTime)
        callback, {
    required Duration duration,
    String? name,
  }) {
    return getScopedValue<Timer, _PeriodicValue>(
      (ref) => _PeriodicValue(
        callback: callback,
        duration: duration,
      ),
      name: name,
    );
  }
}

@immutable
class _PeriodicValue extends ScopedValue<Timer> {
  const _PeriodicValue({
    required this.callback,
    required this.duration,
  });

  final Duration duration;
  final FutureOr<void> Function(DateTime currentTime, DateTime startTime)
      callback;

  @override
  ScopedValueState<Timer, _PeriodicValue> createState() =>
      _PeriodicValueState();
}

class _PeriodicValueState extends ScopedValueState<Timer, _PeriodicValue> {
  _PeriodicValueState();
  late Timer _timer;

  @override
  bool get autoDisposeWhenUnreferenced => true;

  @override
  void initValue() {
    super.initValue();
    final startTime = DateTime.now();
    _timer = Timer.periodic(value.duration, (timer) {
      value.callback(DateTime.now(), startTime);
    });
  }

  @override
  void dispose() {
    super.dispose();
    if (_timer.isActive) {
      _timer.cancel();
    }
  }

  @override
  Timer build() => _timer;
}