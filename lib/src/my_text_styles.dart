import 'package:flutter/material.dart';

import '../my_components.dart';
import 'theme_manager/my_theme.dart';

class MyTextStyle {
  static MyTheme get _theme {
    return ThemeManager.shared.theme;
  }

  static TextStyle h1({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.huge,
        fontWeight: _theme.fontWeights.medium,
      ).copyWith(
        color: color,
        fontSize: fontSize,
        decoration: decoration,
        fontWeight: fontWeight,
      );

  static TextStyle h2({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.xxxlarge,
        fontWeight: _theme.fontWeights.medium,
      ).copyWith(
        color: color,
        fontSize: fontSize,
        decoration: decoration,
        fontWeight: fontWeight,
      );

  static TextStyle h3({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.xxlarge,
        fontWeight: _theme.fontWeights.medium,
      ).copyWith(
        color: color,
        fontSize: fontSize,
        decoration: decoration,
        fontWeight: fontWeight,
      );

  static TextStyle h4({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.xlarge,
        fontWeight: _theme.fontWeights.medium,
      ).copyWith(
        color: color,
        fontSize: fontSize,
        decoration: decoration,
        fontWeight: fontWeight,
      );

  static TextStyle h5({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.large,
        fontWeight: _theme.fontWeights.medium,
      ).copyWith(
        color: color,
        fontSize: fontSize,
        decoration: decoration,
        fontWeight: fontWeight,
      );

  static TextStyle normal({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.medium,
        fontWeight: _theme.fontWeights.medium,
      ).copyWith(
        color: color,
        fontSize: fontSize,
        decoration: decoration,
        fontWeight: fontWeight,
      );

  static TextStyle small({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.small,
        fontWeight: _theme.fontWeights.regular,
      ).copyWith(
        color: color,
        fontSize: fontSize,
        decoration: decoration,
        fontWeight: fontWeight,
      );

  static TextStyle tiny({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.xsmall,
        fontWeight: _theme.fontWeights.regular,
      ).copyWith(
        color: color,
        fontSize: fontSize,
        decoration: decoration,
        fontWeight: fontWeight,
      );

  static TextStyle light({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.medium,
        fontWeight: _theme.fontWeights.light,
      ).copyWith(
        color: color,
        fontSize: fontSize,
        decoration: decoration,
        fontWeight: fontWeight,
      );

  static TextStyle regular({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.medium,
        fontWeight: _theme.fontWeights.regular,
      ).copyWith(
        color: color,
        fontSize: fontSize,
        decoration: decoration,
        fontWeight: fontWeight,
      );

  static TextStyle medium({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.medium,
        fontWeight: _theme.fontWeights.medium,
      ).copyWith(
        color: color,
        fontSize: fontSize,
        decoration: decoration,
        fontWeight: fontWeight,
      );

  static TextStyle bold({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.medium,
        fontWeight: _theme.fontWeights.bold,
      ).copyWith(
        color: color,
        fontSize: fontSize,
        decoration: decoration,
        fontWeight: fontWeight,
      );

  static TextStyle black({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.medium,
        fontWeight: _theme.fontWeights.black,
      ).copyWith(
        color: color,
        fontSize: fontSize,
        decoration: decoration,
        fontWeight: fontWeight,
      );

  static TextStyle sectiontitle({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.xsmall,
        fontWeight: _theme.fontWeights.medium,
      ).copyWith(
        color: color,
        fontSize: fontSize,
        decoration: decoration,
        fontWeight: fontWeight,
      );

  static TextStyle smallestexception({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: _theme.fontSizes.xxsmall,
        fontWeight: _theme.fontWeights.regular,
      ).copyWith(
        color: color,
        fontSize: fontSize,
        decoration: decoration,
        fontWeight: fontWeight,
      );
}
