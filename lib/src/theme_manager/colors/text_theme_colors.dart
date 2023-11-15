import 'dart:ui';

import '../../extensions/color_extensions.dart';

class TextThemeColors {
  final Color primary;
  final Color secondary;
  final Color disabled;

  static const String _primary = 'primary';
  static const String _secondary = 'secondary';
  static const String _disabled = 'disabled';

  TextThemeColors({
    required this.primary,
    required this.secondary,
    required this.disabled,
  });

  TextThemeColors.fromJSON(Map<String, dynamic> json)
      : primary = ColorExtension.fromHex(json[_primary]),
        secondary = ColorExtension.fromHex(json[_secondary]),
        disabled = ColorExtension.fromHex(json[_disabled]);

  toJSON() => {
        _primary: primary.toHex(showAlpha: false),
        _secondary: secondary.toHex(showAlpha: false),
        _disabled: disabled.toHex(showAlpha: false),
      };
}
