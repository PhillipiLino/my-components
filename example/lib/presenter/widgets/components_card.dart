import 'package:flutter/material.dart';
import 'package:my_components/my_components.dart';

import 'default_card.dart';

class ComponentsCard extends StatelessWidget {
  final String title;
  final Widget component;

  const ComponentsCard({
    required this.title,
    required this.component,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = ThemeManager.shared.theme;

    return Column(
      children: [
        Text(title, style: MyTextStyle.h3()),
        SizedBox(height: theme.spacings.small),
        DefaultCard(child: component),
      ],
    );
  }
}
