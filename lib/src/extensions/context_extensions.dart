import 'package:flutter/material.dart';

import '../theme_manager/theme_manager.dart';

extension ContextExtensions on BuildContext {
  bool allowDarkMode() {
    var brightness = MediaQuery.of(this).platformBrightness;
    final themeMode = ThemeManager.shared.themeMode;
    if (themeMode != ThemeMode.system) return themeMode == ThemeMode.dark;

    return themeMode == ThemeMode.dark || brightness == Brightness.dark;
  }
}
