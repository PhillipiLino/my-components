import 'dart:ui';

import '../../extensions/color_extensions.dart';

class ElementsThemeColors {
  final Color selectionAndIcons;
  final Color lineAndBorders;
  final Color backgroundAndDisabled;

  static const String _selectionAndIcons = 'selectionAndIcons';
  static const String _lineAndBorders = 'lineAndBorders';
  static const String _backgroundAndDisabled = 'backgroundAndDisabled';

  ElementsThemeColors({
    required this.selectionAndIcons,
    required this.lineAndBorders,
    required this.backgroundAndDisabled,
  });

  ElementsThemeColors.fromJSON(Map<String, dynamic> json)
      : selectionAndIcons = ColorExtension.fromHex(json[_selectionAndIcons]),
        lineAndBorders = ColorExtension.fromHex(json[_lineAndBorders]),
        backgroundAndDisabled =
            ColorExtension.fromHex(json[_backgroundAndDisabled]);

  toJSON() => {
        _selectionAndIcons: selectionAndIcons.toHex(showAlpha: false),
        _lineAndBorders: lineAndBorders.toHex(showAlpha: false),
        _backgroundAndDisabled: backgroundAndDisabled.toHex(showAlpha: false),
      };
}
