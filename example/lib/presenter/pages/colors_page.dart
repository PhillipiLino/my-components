import 'package:flutter/material.dart';
import 'package:my_components/my_components.dart';

import '../widgets/color_card.dart';

class ColorsPage extends StatefulWidget {
  const ColorsPage({super.key});

  @override
  State<ColorsPage> createState() => _ColorsPageState();
}

class _ColorsPageState extends State<ColorsPage> {
  @override
  Widget build(BuildContext context) {
    final theme = ThemeManager.shared.theme;

    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(theme.spacings.xxxsmall),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Main Colors',
              textAlign: TextAlign.center,
              style: MyTextStyle.h4(),
            ),
            const SizedBox(height: 16),
            IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ColorCard(
                                darkText: false,
                                name: 'vibin',
                                color: theme.colors.vibin,
                              ),
                              ColorCard(
                                darkText: false,
                                name: 'hope',
                                color: theme.colors.hope,
                              ),
                              ColorCard(
                                darkText: true,
                                name: 'energy',
                                color: theme.colors.energy,
                              ),
                              ColorCard(
                                darkText: false,
                                name: 'relax',
                                color: theme.colors.relax,
                              ),
                              ColorCard(
                                darkText: false,
                                name: 'peace',
                                color: theme.colors.peace,
                              ),
                              ColorCard(
                                darkText: false,
                                name: 'brandingVerve',
                                color: theme.colors.brandingVerve,
                              ),
                              ColorCard(
                                darkText: false,
                                name: 'verve',
                                color: theme.colors.verve,
                              ),
                              ColorCard(
                                darkText: false,
                                name: 'uplift',
                                color: theme.colors.uplift,
                              ),
                              ColorCard(
                                darkText: false,
                                name: 'deepPurple',
                                color: theme.colors.deepPurple,
                              ),
                              ColorCard(
                                darkText: true,
                                name: 'yoga',
                                color: theme.colors.yoga,
                              ),
                              ColorCard(
                                darkText: true,
                                name: 'success',
                                color: theme.colors.success,
                              ),
                              ColorCard(
                                darkText: true,
                                name: 'neutral',
                                color: theme.colors.neutral,
                              ),
                              ColorCard(
                                darkText: true,
                                name: 'attention',
                                color: theme.colors.attention,
                              ),
                              ColorCard(
                                darkText: false,
                                name: 'stamina',
                                color: theme.colors.stamina,
                              ),
                              ColorCard(
                                darkText: false,
                                name: 'deep',
                                color: theme.colors.deep,
                              ),
                              ColorCard(
                                darkText: false,
                                name: 'medium',
                                color: theme.colors.medium,
                              ),
                              ColorCard(
                                darkText: true,
                                name: 'light',
                                color: theme.colors.light,
                              ),
                              ColorCard(
                                darkText: true,
                                name: 'clear',
                                color: theme.colors.clear,
                              ),
                              ColorCard(
                                darkText: true,
                                name: 'white',
                                color: theme.colors.white,
                              ),
                              ColorCard(
                                darkText: false,
                                name: 'primary',
                                color: theme.colors.primary,
                              ),
                              ColorCard(
                                darkText: false,
                                name: 'secondary',
                                color: theme.colors.secondary,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Feedback Colors',
              textAlign: TextAlign.center,
              style: MyTextStyle.h4(),
            ),
            const SizedBox(height: 16),
            IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Success',
                          textAlign: TextAlign.center,
                          style: MyTextStyle.bold(),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ColorCard(
                                darkText: true,
                                name: 'light',
                                color:
                                    theme.colors.feedbackColors.success.light,
                              ),
                              ColorCard(
                                darkText: false,
                                name: 'dark',
                                color: theme.colors.feedbackColors.success.dark,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Informative',
                          textAlign: TextAlign.center,
                          style: MyTextStyle.bold(),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ColorCard(
                                darkText: true,
                                name: 'light',
                                color: theme
                                    .colors.feedbackColors.informative.light,
                              ),
                              ColorCard(
                                darkText: false,
                                name: 'dark',
                                color: theme
                                    .colors.feedbackColors.informative.dark,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Attention',
                          textAlign: TextAlign.center,
                          style: MyTextStyle.bold(),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ColorCard(
                                darkText: true,
                                name: 'light',
                                color:
                                    theme.colors.feedbackColors.attention.light,
                              ),
                              ColorCard(
                                darkText: false,
                                name: 'dark',
                                color:
                                    theme.colors.feedbackColors.attention.dark,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Neutral',
                          textAlign: TextAlign.center,
                          style: MyTextStyle.bold(),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ColorCard(
                                darkText: true,
                                name: 'light',
                                color:
                                    theme.colors.feedbackColors.neutral.light,
                              ),
                              ColorCard(
                                darkText: false,
                                name: 'dark',
                                color: theme.colors.feedbackColors.neutral.dark,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Text Colors',
              textAlign: TextAlign.center,
              style: MyTextStyle.h4(),
            ),
            const SizedBox(height: 16),
            IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ColorCard(
                                darkText: false,
                                name: 'primary',
                                color: theme.colors.textColors.primary,
                              ),
                              ColorCard(
                                darkText: false,
                                name: 'secondary',
                                color: theme.colors.textColors.secondary,
                              ),
                              ColorCard(
                                darkText: true,
                                name: 'disabled',
                                color: theme.colors.textColors.disabled,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Elements Colors',
              textAlign: TextAlign.center,
              style: MyTextStyle.h4(),
            ),
            const SizedBox(height: 16),
            IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ColorCard(
                                darkText: false,
                                name: 'selectionAndIcons',
                                color: theme
                                    .colors.elementsColors.selectionAndIcons,
                              ),
                              ColorCard(
                                darkText: true,
                                name: 'lineAndBorders',
                                color:
                                    theme.colors.elementsColors.lineAndBorders,
                              ),
                              ColorCard(
                                darkText: true,
                                name: 'backgroundAndDisabled',
                                color: theme.colors.elementsColors
                                    .backgroundAndDisabled,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
