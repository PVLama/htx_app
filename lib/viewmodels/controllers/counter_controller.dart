import 'package:flutter/foundation.dart';

class CounterController {
  int _counter = 0;
  VoidCallback? _updateStateCallback;

  CounterController(int initialValue);

  void incrementCounter() {
    _counter++;
    _notifyListeners();
  }

  void decrementCounter() {
    if (_counter > 0) {
      _counter--;
      _notifyListeners();
    }
  }

  void setUpdateStateCallback(VoidCallback callback) {
    _updateStateCallback = callback;
  }

  void _notifyListeners() {
    _updateStateCallback?.call();
  }

  int get counter => _counter;
}
