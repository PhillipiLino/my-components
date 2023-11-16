import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_components/my_components.dart';

import 'presenter/pages/components_menu_page.dart';
import 'theme_controller.dart';

void main() {
  ThemeManager.shared.initializeTheme();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: ThemeController.shared.notifier,
      builder: (context, mode, widget) {
        ThemeManager.shared.setThemeMode(mode);
        return MaterialApp(
          title: 'MyComponents Demo',
          darkTheme: ThemeData.dark(),
          themeMode: mode,
          home: const ComponentsMenuPage(),
          scrollBehavior: const MaterialScrollBehavior().copyWith(
            dragDevices: {
              PointerDeviceKind.mouse,
              PointerDeviceKind.touch,
              PointerDeviceKind.trackpad,
            },
          ),
          theme: ThemeData(
            useMaterial3: true,
            fontFamily: ThemeManager.shared.theme.fontFamilies.base,
            package: ThemeManager.shared.theme.package,
            colorScheme: ColorScheme.fromSeed(
              seedColor: ThemeManager.shared.theme.colors.primary,
            ),
          ),
        );
      },
    );
  }
}
