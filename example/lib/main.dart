import 'package:example/presenter/pages/components_menu_page.dart';
import 'package:example/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:my_components/my_components.dart';

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
        ThemeManager.shared.initializeTheme(mode);
        return MaterialApp(
          title: 'MyComponents Demo',
          darkTheme: ThemeData.dark(),
          themeMode: mode,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: ThemeManager.shared.theme.colors.primary,
            ),
            useMaterial3: true,
          ),
          home: const ComponentsMenuPage(),
        );
      },
    );
  }
}
