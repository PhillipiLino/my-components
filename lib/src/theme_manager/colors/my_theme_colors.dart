import 'dart:ui';

import '../../extensions/color_extensions.dart';
import 'elements_theme_colors.dart';
import 'feedback_theme_colors.dart';
import 'text_theme_colors.dart';

class MyThemeColors {
  final Color vibin;
  final Color hope;
  final Color energy;
  final Color relax;
  final Color peace;
  final Color brandingVerve;
  final Color verve;
  final Color uplift;
  final Color deepPurple;
  final Color yoga;
  final Color success;
  final Color neutral;
  final Color attention;
  final Color stamina;
  final Color deep;
  final Color medium;
  final Color light;
  final Color clear;
  final Color white;
  final Color primary;
  final Color secondary;

  final FeedbackThemeColors feedbackColors;
  final TextThemeColors textColors;
  final ElementsThemeColors elementsColors;

  static const String _vibin = 'vibin';
  static const String _hope = 'hope';
  static const String _energy = 'energy';
  static const String _relax = 'relax';
  static const String _peace = 'peace';
  static const String _brandingVerve = 'brandingVerve';
  static const String _verve = 'verve';
  static const String _uplift = 'uplift';
  static const String _deepPurple = 'deepPurple';
  static const String _yoga = 'yoga';
  static const String _success = 'success';
  static const String _neutral = 'neutral';
  static const String _attention = 'attention';
  static const String _stamina = 'stamina';
  static const String _deep = 'deep';
  static const String _medium = 'medium';
  static const String _light = 'light';
  static const String _clear = 'clear';
  static const String _white = 'white';
  static const String _primary = 'primary';
  static const String _secondary = 'secondary';
  static const String _feedbackColors = 'feedback';
  static const String _textColors = 'text';
  static const String _elementsColors = 'elements';

  MyThemeColors({
    required this.vibin,
    required this.hope,
    required this.energy,
    required this.relax,
    required this.peace,
    required this.brandingVerve,
    required this.verve,
    required this.uplift,
    required this.deepPurple,
    required this.yoga,
    required this.success,
    required this.neutral,
    required this.attention,
    required this.stamina,
    required this.deep,
    required this.medium,
    required this.light,
    required this.clear,
    required this.white,
    required this.primary,
    required this.secondary,
    required this.feedbackColors,
    required this.textColors,
    required this.elementsColors,
  });

  MyThemeColors.fromJSON(Map<String, dynamic> json)
      : vibin = ColorExtension.fromHex(json[_vibin]),
        hope = ColorExtension.fromHex(json[_hope]),
        energy = ColorExtension.fromHex(json[_energy]),
        relax = ColorExtension.fromHex(json[_relax]),
        peace = ColorExtension.fromHex(json[_peace]),
        brandingVerve = ColorExtension.fromHex(json[_brandingVerve]),
        verve = ColorExtension.fromHex(json[_verve]),
        uplift = ColorExtension.fromHex(json[_uplift]),
        deepPurple = ColorExtension.fromHex(json[_deepPurple]),
        yoga = ColorExtension.fromHex(json[_yoga]),
        success = ColorExtension.fromHex(json[_success]),
        neutral = ColorExtension.fromHex(json[_neutral]),
        attention = ColorExtension.fromHex(json[_attention]),
        stamina = ColorExtension.fromHex(json[_stamina]),
        deep = ColorExtension.fromHex(json[_deep]),
        medium = ColorExtension.fromHex(json[_medium]),
        light = ColorExtension.fromHex(json[_light]),
        clear = ColorExtension.fromHex(json[_clear]),
        white = ColorExtension.fromHex(json[_white]),
        primary = ColorExtension.fromHex(json[_primary]),
        secondary = ColorExtension.fromHex(json[_secondary]),
        feedbackColors = FeedbackThemeColors.fromJSON(json[_feedbackColors]),
        textColors = TextThemeColors.fromJSON(json[_textColors]),
        elementsColors = ElementsThemeColors.fromJSON(json[_elementsColors]);

  toJSON() => {
        _vibin: vibin.toHex(showAlpha: false),
        _hope: hope.toHex(showAlpha: false),
        _energy: energy.toHex(showAlpha: false),
        _relax: relax.toHex(showAlpha: false),
        _peace: peace.toHex(showAlpha: false),
        _brandingVerve: brandingVerve.toHex(showAlpha: false),
        _verve: verve.toHex(showAlpha: false),
        _uplift: uplift.toHex(showAlpha: false),
        _deepPurple: deepPurple.toHex(showAlpha: false),
        _yoga: yoga.toHex(showAlpha: false),
        _success: success.toHex(showAlpha: false),
        _neutral: neutral.toHex(showAlpha: false),
        _attention: attention.toHex(showAlpha: false),
        _stamina: stamina.toHex(showAlpha: false),
        _deep: deep.toHex(showAlpha: false),
        _medium: medium.toHex(showAlpha: false),
        _light: light.toHex(showAlpha: false),
        _clear: clear.toHex(showAlpha: false),
        _white: white.toHex(showAlpha: false),
        _primary: primary.toHex(showAlpha: false),
        _secondary: secondary.toHex(showAlpha: false),
        _feedbackColors: feedbackColors.toJSON(),
        _textColors: textColors.toJSON(),
        _elementsColors: elementsColors.toJSON(),
      };
}
