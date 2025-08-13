import 'dart:async';
import 'dart:ui';

class Debouncer {
  final int? milliseconds;
  VoidCallback? action;
  Timer? _timer;

  Debouncer({this.milliseconds});

  run(VoidCallback action) {
    if (_timer?.isActive ?? false) _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds ?? 500), action);
  }

  void cancel() {
    _timer?.cancel();
  }

  void dispose() {
    cancel();
  }
}
