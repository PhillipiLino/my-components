import 'package:flutter/widgets.dart';

import '../../extensions/color_extensions.dart';

class MyThemeColorIntensity {
  final Color light;
  final Color dark;

  MyThemeColorIntensity({
    required this.dark,
    required this.light,
  });

  MyThemeColorIntensity.fromJSON(Map<String, dynamic> json)
      : light = ColorExtension.fromHex(json['light']),
        dark = ColorExtension.fromHex(json['dark']);
}
