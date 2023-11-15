import 'package:flutter/material.dart';
import 'package:my_components/my_components.dart';

import '../widgets/components_card.dart';
import 'buttons_page.dart';
import 'charts_page.dart';

class ComponentsPage extends StatefulWidget {
  const ComponentsPage({super.key});

  @override
  State<ComponentsPage> createState() => _ComponentsPageState();
}

class _ComponentsPageState extends State<ComponentsPage>
    with TickerProviderStateMixin {
  bool switchIsOn = false;
  int dropDownValue = 0;
  int radioButtonValue = 0;

  @override
  Widget build(BuildContext context) {
    final theme = ThemeManager.shared.theme;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: theme.spacings.xxxsmall),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: theme.spacings.xxxsmall),
              const ComponentsCard(title: 'Botões', component: ButtonsPage()),
              SizedBox(height: theme.spacings.medium),
              const ComponentsCard(title: 'Gráficos', component: ChartsPage()),
              SizedBox(height: theme.spacings.medium),
            ],
          ),
        ),
      ),
    );
  }
}
