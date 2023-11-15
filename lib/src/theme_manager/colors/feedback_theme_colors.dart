import 'my_theme_color_intensity.dart';

class FeedbackThemeColors {
  final MyThemeColorIntensity success;
  final MyThemeColorIntensity informative;
  final MyThemeColorIntensity attention;
  final MyThemeColorIntensity neutral;

  static const String _success = 'success';
  static const String _informative = 'informative';
  static const String _attention = 'attention';
  static const String _neutral = 'neutral';

  FeedbackThemeColors({
    required this.success,
    required this.informative,
    required this.attention,
    required this.neutral,
  });

  FeedbackThemeColors.fromJSON(Map<String, dynamic> json)
      : success = MyThemeColorIntensity.fromJSON(json[_success]),
        informative = MyThemeColorIntensity.fromJSON(json[_informative]),
        attention = MyThemeColorIntensity.fromJSON(json[_attention]),
        neutral = MyThemeColorIntensity.fromJSON(json[_neutral]);

  toJSON() => {
        _success: success.toJSON(),
        _informative: informative.toJSON(),
        _attention: attention.toJSON(),
        _neutral: neutral.toJSON(),
      };
}
