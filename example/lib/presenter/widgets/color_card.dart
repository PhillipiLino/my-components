import 'package:flutter/material.dart';
import 'package:my_components/my_components.dart';

class ColorCard extends StatelessWidget {
  final String name;
  final Color color;
  final bool darkText;

  const ColorCard({
    super.key,
    required this.name,
    required this.color,
    required this.darkText,
  });

  @override
  Widget build(BuildContext context) {
    final theme = ThemeManager.shared.theme;
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(16),
      color: color,
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: theme.fontWeights.bold,
          color: darkText ? theme.colors.secondary : theme.colors.white,
        ),
      ),
    );
  }
}
