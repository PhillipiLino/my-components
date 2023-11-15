import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
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
  // create some values
  Color pickerPrimaryColor = ThemeManager.shared.theme.colors.primary;
  Color currentPrimaryColor = ThemeManager.shared.theme.colors.primary;

  Color pickerSecondaryColor = const Color(0xff443a49);
  Color currentSecondaryColor = const Color(0xff443a49);

  void changeColor(Color color) {
    setState(() => pickerSecondaryColor = color);
  }

  showPicker(bool primaryColor) {
    final colorToChange = primaryColor ? 'primária' : 'secundária';
    showDialog(
      builder: (dialogContext) => AlertDialog(
        title: Text('Escolha a cor $colorToChange'),
        content: SingleChildScrollView(
          child: ColorPicker(
            pickerColor:
                primaryColor ? pickerPrimaryColor : pickerSecondaryColor,
            onColorChanged: (newColor) {
              primaryColor
                  ? setState(() => pickerPrimaryColor = newColor)
                  : setState(() => pickerSecondaryColor = newColor);
            },
          ),
        ),
        actions: <Widget>[
          ElevatedButton(
            child: const Text('OK'),
            onPressed: () {
              currentPrimaryColor = pickerPrimaryColor;
              currentSecondaryColor = pickerSecondaryColor;

              Navigator.of(dialogContext).pop();
              Map<String, dynamic> newTheme = {
                ...ThemeManager.shared.theme.toJSON(),
              };

              if (primaryColor) {
                newTheme['colors']['primary'] = pickerPrimaryColor.toHex(
                  showAlpha: false,
                );
              }

              if (!primaryColor) {
                newTheme['colors']['secondary'] = pickerSecondaryColor.toHex(
                  showAlpha: false,
                );
              }

              ThemeManager.shared.setThemeByJson(newTheme, context);
            },
          ),
        ],
      ),
      context: context,
    );
  }

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
        ThemeManager.shared.setThemeMode(mode, context);
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
                onPressed: () => showPicker(true),
                icon: Text(
                  '1',
                  style: MyTextStyle.black(color: currentPrimaryColor),
                ),
              ),
              IconButton(
                onPressed: () => showPicker(false),
                icon: Text(
                  '2',
                  style: MyTextStyle.black(color: currentSecondaryColor),
                ),
              ),
              IconButton(
                icon: Icon(
                  ThemeController.shared.mode == ThemeMode.light
                      ? Icons.sunny
                      : Icons.nightlight,
                ),
                onPressed: () {
                  final isLight =
                      ThemeController.shared.mode == ThemeMode.light;
                  ThemeController.shared.setTheme(
                    isLight ? ThemeMode.dark : ThemeMode.light,
                  );
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
