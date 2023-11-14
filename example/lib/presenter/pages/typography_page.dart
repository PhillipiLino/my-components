import 'package:flutter/material.dart';
import 'package:my_components/my_components.dart';

class TypographyPage extends StatefulWidget {
  const TypographyPage({super.key});

  @override
  State<TypographyPage> createState() => _TypographyPageState();
}

class _TypographyPageState extends State<TypographyPage> {
  @override
  Widget build(BuildContext context) {
    final theme = ThemeManager.shared.theme;
    final isDarkMode = context.allowDarkMode();

    final styles = {
      'Style h1': MyTextStyle.h1(
        color: theme.colors.secondary.getDarkOrColor(
          isDarkMode,
          theme.colors.white,
        ),
      ),
      'Style h2': MyTextStyle.h2(
        color: theme.colors.secondary.getDarkOrColor(
          isDarkMode,
          theme.colors.white,
        ),
      ),
      'Style h3': MyTextStyle.h3(
        color: theme.colors.secondary.getDarkOrColor(
          isDarkMode,
          theme.colors.white,
        ),
      ),
      'Style h4': MyTextStyle.h4(
        color: theme.colors.secondary.getDarkOrColor(
          isDarkMode,
          theme.colors.white,
        ),
      ),
      'Style h5': MyTextStyle.h5(
        color: theme.colors.secondary.getDarkOrColor(
          isDarkMode,
          theme.colors.white,
        ),
      ),
      'Style normal': MyTextStyle.normal(
        color: theme.colors.secondary.getDarkOrColor(
          isDarkMode,
          theme.colors.white,
        ),
      ),
      'Style small': MyTextStyle.small(
        color: theme.colors.secondary.getDarkOrColor(
          isDarkMode,
          theme.colors.white,
        ),
      ),
      'Style tiny': MyTextStyle.tiny(
        color: theme.colors.secondary.getDarkOrColor(
          isDarkMode,
          theme.colors.white,
        ),
      ),
      'Style light': MyTextStyle.light(
        color: theme.colors.secondary.getDarkOrColor(
          isDarkMode,
          theme.colors.white,
        ),
      ),
      'Style regular': MyTextStyle.regular(
        color: theme.colors.secondary.getDarkOrColor(
          isDarkMode,
          theme.colors.white,
        ),
      ),
      'Style medium': MyTextStyle.medium(
        color: theme.colors.secondary.getDarkOrColor(
          isDarkMode,
          theme.colors.white,
        ),
      ),
      'Style bold': MyTextStyle.bold(
        color: theme.colors.secondary.getDarkOrColor(
          isDarkMode,
          theme.colors.white,
        ),
      ),
      'Style black': MyTextStyle.black(
        color: theme.colors.secondary.getDarkOrColor(
          isDarkMode,
          theme.colors.white,
        ),
      ),
      'Style sectiontitle': MyTextStyle.sectiontitle(
        color: theme.colors.secondary.getDarkOrColor(
          isDarkMode,
          theme.colors.white,
        ),
      ),
      'Style smallestexception': MyTextStyle.smallestexception(
        color: theme.colors.secondary.getDarkOrColor(
          isDarkMode,
          theme.colors.white,
        ),
      ),
    };

    return Builder(
      builder: (context) {
        return SafeArea(
          child: ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: styles.length,
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemBuilder: (context, index) => Text(
              styles.entries.toList()[index].key,
              style: styles.entries.toList()[index].value,
            ),
          ),
        );
      },
    );
  }
}
