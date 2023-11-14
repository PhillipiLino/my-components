import 'package:flutter/material.dart';
import 'package:my_components/my_components.dart';

import '../../theme_controller.dart';
import 'colors_page.dart';
import 'components_page.dart';
import 'icons_page.dart';
import 'typography_page.dart';

class ComponentsMenuPage extends StatefulWidget {
  const ComponentsMenuPage({super.key});

  @override
  State<ComponentsMenuPage> createState() => _ComponentsMenuPageState();
}

class _ComponentsMenuPageState extends State<ComponentsMenuPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = ThemeManager.shared.theme;

    return ValueListenableBuilder<ThemeMode>(
      valueListenable: ThemeController.shared.notifier,
      builder: (context, mode, widget) {
        ThemeManager.shared.initializeTheme(mode);
        List<Widget> widgetOptions = <Widget>[
          const ComponentsPage(),
          const ColorsPage(),
          const TypographyPage(),
          const IconsPage(),
        ];

        return Scaffold(
          appBar: AppBar(
            title: const Text('Componentes'),
            elevation: 0,
            actions: [
              IconButton(
                icon: Icon(
                  ThemeController.shared.mode == ThemeMode.light
                      ? Icons.sunny
                      : Icons.nightlight,
                ),
                onPressed: () {
                  final isLight =
                      ThemeController.shared.mode == ThemeMode.light;
                  ThemeController.shared
                      .setTheme(isLight ? ThemeMode.dark : ThemeMode.light);
                  setState(() {});
                },
              ),
            ],
          ),
          body: Center(
            child: widgetOptions.elementAt(_selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            unselectedItemColor: theme.colors.secondary.getDarkOrColor(
              context.allowDarkMode(),
              theme.colors.white,
            ),
            selectedItemColor: theme.colors.primary.getDarkOrColor(
              context.allowDarkMode(),
              theme.colors.primary,
            ),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.extension),
                label: 'Componentes',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.color_lens),
                label: 'Cores',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.abc),
                label: 'Tipografia',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.grid_on_outlined),
                label: 'Icones',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        );
      },
    );
  }
}
