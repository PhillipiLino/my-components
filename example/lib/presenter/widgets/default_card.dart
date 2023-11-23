import 'package:flutter/material.dart';
import 'package:my_components/my_components.dart';

class DefaultCard extends StatelessWidget {
  final Widget child;

  const DefaultCard({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = ThemeManager.shared.theme;
    final colors = theme.colors;

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            theme.borderRadius.regular,
          ),
        ),
        side: BorderSide(
          color: colors.elementsColors.lineAndBorders,
          width: theme.borderWidths.small,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: child,
      ),
    );
  }
}
