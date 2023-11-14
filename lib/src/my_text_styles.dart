import 'package:flutter/material.dart';

import '../my_components.dart';
import 'theme_manager/my_theme.dart';

class MyTextStyle {
  static MyTheme get _theme {
    return ThemeManager.shared.theme;
  }

  static h1({
    Color? color,
    double? fontSize,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.huge,
        fontWeight: _theme.fontWeights.medium,
      ).copyWith(color: color, fontSize: fontSize, decoration: decoration);

  static h2({
    Color? color,
    double? fontSize,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.xxxlarge,
        fontWeight: _theme.fontWeights.medium,
      ).copyWith(color: color, fontSize: fontSize, decoration: decoration);

  static h3({
    Color? color,
    double? fontSize,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.xxlarge,
        fontWeight: _theme.fontWeights.medium,
      ).copyWith(color: color, fontSize: fontSize, decoration: decoration);

  static h4({
    Color? color,
    double? fontSize,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.xlarge,
        fontWeight: _theme.fontWeights.medium,
      ).copyWith(color: color, fontSize: fontSize, decoration: decoration);

  static h5({
    Color? color,
    double? fontSize,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.large,
        fontWeight: _theme.fontWeights.medium,
      ).copyWith(color: color, fontSize: fontSize, decoration: decoration);

  static normal({
    Color? color,
    double? fontSize,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.medium,
        fontWeight: _theme.fontWeights.medium,
      ).copyWith(color: color, fontSize: fontSize, decoration: decoration);

  static small({
    Color? color,
    double? fontSize,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.small,
        fontWeight: _theme.fontWeights.regular,
      ).copyWith(color: color, fontSize: fontSize, decoration: decoration);

  static tiny({
    Color? color,
    double? fontSize,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.xsmall,
        fontWeight: _theme.fontWeights.regular,
      ).copyWith(color: color, fontSize: fontSize, decoration: decoration);

  static light({
    Color? color,
    double? fontSize,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.medium,
        fontWeight: _theme.fontWeights.light,
      ).copyWith(color: color, fontSize: fontSize, decoration: decoration);

  static regular({
    Color? color,
    double? fontSize,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.medium,
        fontWeight: _theme.fontWeights.regular,
      ).copyWith(color: color, fontSize: fontSize, decoration: decoration);

  static medium({
    Color? color,
    double? fontSize,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.medium,
        fontWeight: _theme.fontWeights.medium,
      ).copyWith(color: color, fontSize: fontSize, decoration: decoration);

  static bold({
    Color? color,
    double? fontSize,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.medium,
        fontWeight: _theme.fontWeights.bold,
      ).copyWith(color: color, fontSize: fontSize, decoration: decoration);

  static black({
    Color? color,
    double? fontSize,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.medium,
        fontWeight: _theme.fontWeights.black,
      ).copyWith(color: color, fontSize: fontSize, decoration: decoration);

  static sectiontitle({
    Color? color,
    double? fontSize,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.xsmall,
        fontWeight: _theme.fontWeights.medium,
      ).copyWith(color: color, fontSize: fontSize, decoration: decoration);

  static smallestexception({
    Color? color,
    double? fontSize,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.xxsmall,
        fontWeight: _theme.fontWeights.regular,
      ).copyWith(color: color, fontSize: fontSize, decoration: decoration);
}
