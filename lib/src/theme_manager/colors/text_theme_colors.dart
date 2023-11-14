import 'dart:ui';

import '../../extensions/color_extensions.dart';

class TextThemeColors {
  final Color primary;
  final Color secondary;
  final Color disabled;

  TextThemeColors({
    required this.primary,
    required this.secondary,
    required this.disabled,
  });

  TextThemeColors.fromJSON(Map<String, dynamic> json)
      : primary = ColorExtension.fromHex(json['primary']),
        secondary = ColorExtension.fromHex(json['secondary']),
        disabled = ColorExtension.fromHex(json['disabled']);
}
