import 'border/my_theme_border_radius.dart';
import 'border/my_theme_border_width.dart';
import 'colors/my_theme_colors.dart';
import 'spacings/my_theme_spacings.dart';
import 'text/my_theme_font_families.dart';
import 'text/my_theme_font_sizes.dart';
import 'text/my_theme_font_weights.dart';

class MyTheme {
  final String package = 'my_components';
  final MyThemeColors colors;
  final MyThemeFontWeights fontWeights;
  final MyThemeFontSizes fontSizes;
  final MyThemeFontFamilies fontFamilies;
  final MyThemeBorderWidth borderWidths;
  final MyThemeBorderRadius borderRadius;
  final MyThemeSpacings spacings;

  static const String _colors = 'colors';
  static const String _fontWeights = 'fontWeights';
  static const String _fontSizes = 'fontSizes';
  static const String _fontFamilies = 'fontFamilies';
  static const String _borderWidths = 'borderWidth';
  static const String _borderRadius = 'borderRadius';
  static const String _spacings = 'spacings';

  MyTheme({
    required this.colors,
    required this.fontWeights,
    required this.fontSizes,
    required this.fontFamilies,
    required this.borderWidths,
    required this.borderRadius,
    required this.spacings,
  });

  MyTheme.fromJSON(Map<String, dynamic> json)
      : colors = MyThemeColors.fromJSON(json[_colors]),
        fontSizes = MyThemeFontSizes.fromJSON(json[_fontSizes]),
        fontFamilies = MyThemeFontFamilies.fromJSON(json[_fontFamilies]),
        fontWeights = MyThemeFontWeights.fromJSON(json[_fontWeights]),
        borderWidths = MyThemeBorderWidth.fromJSON(json[_borderWidths]),
        borderRadius = MyThemeBorderRadius.fromJSON(json[_borderRadius]),
        spacings = MyThemeSpacings.fromJSON(json[_spacings]);

  toJSON() => {
        _colors: colors.toJSON(),
        _fontSizes: fontSizes.toJSON(),
        _fontFamilies: fontFamilies.toJSON(),
        _fontWeights: fontWeights.toJSON(),
        _borderWidths: borderWidths.toJSON(),
        _borderRadius: borderRadius.toJSON(),
        _spacings: spacings.toJSON(),
      };
}
