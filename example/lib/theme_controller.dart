
import 'package:flutter/material.dart';

class ThemeController {
  static final ThemeController shared = ThemeController._internal();

  factory ThemeController() => shared;

  ThemeController._internal();

  ThemeMode get mode => _mode;
  ThemeMode _mode = ThemeMode.light;
  final ValueNotifier<ThemeMode> notifier = ValueNotifier(ThemeMode.light);

  setTheme(ThemeMode mode) {
    _mode = mode;
    notifier.value = _mode;
  }
}
