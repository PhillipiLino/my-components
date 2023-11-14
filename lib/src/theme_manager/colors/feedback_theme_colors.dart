import 'my_theme_color_intensity.dart';

class FeedbackThemeColors {
  final MyThemeColorIntensity success;
  final MyThemeColorIntensity informative;
  final MyThemeColorIntensity attention;
  final MyThemeColorIntensity neutral;

  FeedbackThemeColors({
    required this.success,
    required this.informative,
    required this.attention,
    required this.neutral,
  });

  FeedbackThemeColors.fromJSON(Map<String, dynamic> json)
      : success = MyThemeColorIntensity.fromJSON(json['success']),
        informative = MyThemeColorIntensity.fromJSON(json['informative']),
        attention = MyThemeColorIntensity.fromJSON(json['attention']),
        neutral = MyThemeColorIntensity.fromJSON(json['neutral']);
}
