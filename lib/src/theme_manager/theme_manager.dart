library my_components;

import 'package:flutter/material.dart';

import '../../my_components.dart';
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

  setThemeByJson(Map<String, dynamic> json, [BuildContext? context]) {
    _theme = MyTheme.fromJSON(json);
    context?.rebuildAllChildren();
  }

  setTheme(MyTheme newTheme, [BuildContext? context]) {
    _theme = newTheme;
    context?.rebuildAllChildren();
  }

  setThemeMode(ThemeMode newThemeMode, [BuildContext? context]) {
    _themeMode = newThemeMode;
    context?.rebuildAllChildren();
  }

  resetTheme([BuildContext? context]) {
    _theme = MyTheme.fromJSON(_mainThemeJson);
    context?.rebuildAllChildren();
  }
}
