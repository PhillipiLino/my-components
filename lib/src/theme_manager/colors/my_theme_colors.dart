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
      : vibin = ColorExtension.fromHex(json['vibin']),
        hope = ColorExtension.fromHex(json['hope']),
        energy = ColorExtension.fromHex(json['energy']),
        relax = ColorExtension.fromHex(json['relax']),
        peace = ColorExtension.fromHex(json['peace']),
        brandingVerve = ColorExtension.fromHex(json['brandingVerve']),
        verve = ColorExtension.fromHex(json['verve']),
        uplift = ColorExtension.fromHex(json['uplift']),
        deepPurple = ColorExtension.fromHex(json['deepPurple']),
        yoga = ColorExtension.fromHex(json['yoga']),
        success = ColorExtension.fromHex(json['success']),
        neutral = ColorExtension.fromHex(json['neutral']),
        attention = ColorExtension.fromHex(json['attention']),
        stamina = ColorExtension.fromHex(json['stamina']),
        deep = ColorExtension.fromHex(json['deep']),
        medium = ColorExtension.fromHex(json['medium']),
        light = ColorExtension.fromHex(json['light']),
        clear = ColorExtension.fromHex(json['clear']),
        white = ColorExtension.fromHex(json['white']),
        primary = ColorExtension.fromHex(json['primary']),
        secondary = ColorExtension.fromHex(json['secondary']),
        feedbackColors = FeedbackThemeColors.fromJSON(json['feedback']),
        textColors = TextThemeColors.fromJSON(json['text']),
        elementsColors = ElementsThemeColors.fromJSON(json['elements']);
}
