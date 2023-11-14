library my_components;

import 'package:flutter/material.dart';

import 'my_theme.dart';

part 'main_theme.dart';

class ThemeManager {
  late ThemeMode _themeMode;
  ThemeMode get themeMode => _themeMode;

  late MyTheme _theme;
  MyTheme get theme => _theme;

  static final ThemeManager shared = ThemeManager._internal();

  factory ThemeManager() => shared;

  ThemeManager._internal() {
    MyTheme.fromJSON(_mainThemeJson);
  }

  initializeTheme([ThemeMode initialThemeMode = ThemeMode.system]) async {
    setThemeMode(initialThemeMode);
    await resetTheme();
  }

  setThemeByJson(Map<String, dynamic> json) {
    _theme = MyTheme.fromJSON(json);
  }

  setTheme(MyTheme newTheme) {
    _theme = newTheme;
  }

  setThemeMode(ThemeMode newThemeMode) => _themeMode = newThemeMode;

  resetTheme() {
    _theme = MyTheme.fromJSON(_mainThemeJson);
  }
}
