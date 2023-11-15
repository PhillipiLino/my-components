import 'package:flutter/widgets.dart';

import '../../extensions/color_extensions.dart';

class MyThemeColorIntensity {
  final Color light;
  final Color dark;

  static const String _light = 'light';
  static const String _dark = 'dark';

  MyThemeColorIntensity({
    required this.dark,
    required this.light,
  });

  MyThemeColorIntensity.fromJSON(Map<String, dynamic> json)
      : light = ColorExtension.fromHex(json[_light]),
        dark = ColorExtension.fromHex(json[_dark]);

  toJSON() => {
        _light: light.toHex(showAlpha: false),
        _dark: dark.toHex(showAlpha: false),
      };
}
