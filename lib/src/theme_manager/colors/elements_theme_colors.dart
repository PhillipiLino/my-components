import 'dart:ui';

import '../../extensions/color_extensions.dart';

class ElementsThemeColors {
  final Color selectionAndIcons;
  final Color lineAndBorders;
  final Color backgroundAndDisabled;

  ElementsThemeColors({
    required this.selectionAndIcons,
    required this.lineAndBorders,
    required this.backgroundAndDisabled,
  });

  ElementsThemeColors.fromJSON(Map<String, dynamic> json)
      : selectionAndIcons = ColorExtension.fromHex(json['selectionAndIcons']),
        lineAndBorders = ColorExtension.fromHex(json['lineAndBorders']),
        backgroundAndDisabled =
            ColorExtension.fromHex(json['backgroundAndDisabled']);
}
