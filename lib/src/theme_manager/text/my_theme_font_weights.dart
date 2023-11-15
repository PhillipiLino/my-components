import 'package:flutter/widgets.dart';

class MyThemeFontWeights {
  final FontWeight light;
  final FontWeight regular;
  final FontWeight medium;
  final FontWeight bold;
  final FontWeight black;

  static const String _light = 'light';
  static const String _regular = 'regular';
  static const String _medium = 'medium';
  static const String _bold = 'bold';
  static const String _black = 'black';

  MyThemeFontWeights({
    required this.light,
    required this.regular,
    required this.medium,
    required this.bold,
    required this.black,
  });

  MyThemeFontWeights.fromJSON(Map<String, dynamic> json)
      : light = _getFontWeight(json[_light]),
        regular = _getFontWeight(json[_regular]),
        medium = _getFontWeight(json[_medium]),
        bold = _getFontWeight(json[_bold]),
        black = _getFontWeight(json[_black]);

  static FontWeight _getFontWeight(int value) {
    return FontWeight.values.firstWhere(
      (element) => element.value == value,
      orElse: () => FontWeight.w500,
    );
  }

  toJSON() => {
        _light: light.value,
        _regular: regular.value,
        _medium: medium.value,
        _bold: bold.value,
        _black: black.value,
      };
}
