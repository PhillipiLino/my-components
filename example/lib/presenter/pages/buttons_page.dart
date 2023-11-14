import 'package:flutter/material.dart';
import 'package:my_components/my_components.dart';

import '../widgets/default_card.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({super.key});

  @override
  State<ButtonsPage> createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  @override
  Widget build(BuildContext context) {
    final theme = ThemeManager.shared.theme;

    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'MyButton - Primary',
              style: TextStyle(
                fontSize: theme.fontSizes.xlarge,
                fontWeight: theme.fontWeights.bold,
              ),
            ),
            SizedBox(height: theme.spacings.small),
            DefaultCard(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          MyButton(
                            icon: Icons.add,
                            title: 'Label',
                            onPressed: () {},
                            size: MainButtonSize.normal,
                          ),
                          SizedBox(width: theme.spacings.xsmall),
                          MyButton(
                            icon: Icons.add,
                            onPressed: () {},
                            size: MainButtonSize.normal,
                          ),
                          SizedBox(width: theme.spacings.xsmall),
                          MyButton(
                            icon: Icons.add,
                            title: 'Label',
                            size: MainButtonSize.normal,
                            onPressed: null,
                          ),
                          SizedBox(width: theme.spacings.xsmall),
                          MyButton(
                            icon: Icons.add,
                            size: MainButtonSize.normal,
                            onPressed: null,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: theme.spacings.small),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          MyButton(
                            icon: Icons.add,
                            title: 'Label',
                            onPressed: () {},
                            size: MainButtonSize.small,
                          ),
                          SizedBox(width: theme.spacings.xsmall),
                          MyButton(
                            icon: Icons.add,
                            onPressed: () {},
                            size: MainButtonSize.small,
                          ),
                          SizedBox(width: theme.spacings.xsmall),
                          MyButton(
                            icon: Icons.add,
                            title: 'Label',
                            size: MainButtonSize.small,
                            onPressed: null,
                          ),
                          SizedBox(width: theme.spacings.xsmall),
                          MyButton(
                            icon: Icons.add,
                            size: MainButtonSize.small,
                            onPressed: null,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: theme.spacings.small),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          MyButton(
                            icon: Icons.add,
                            title: 'Label',
                            onPressed: () {},
                            size: MainButtonSize.small,
                            inverted: true,
                          ),
                          SizedBox(width: theme.spacings.xsmall),
                          MyButton(
                            icon: Icons.add,
                            onPressed: () {},
                            size: MainButtonSize.small,
                            inverted: true,
                          ),
                          SizedBox(width: theme.spacings.xsmall),
                          MyButton(
                            icon: Icons.add,
                            title: 'Label',
                            size: MainButtonSize.small,
                            inverted: true,
                            onPressed: null,
                          ),
                          SizedBox(width: theme.spacings.xsmall),
                          MyButton(
                            icon: Icons.add,
                            size: MainButtonSize.small,
                            inverted: true,
                            onPressed: null,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: theme.spacings.medium),
            Text(
              'MyButton - Secondary',
              style: TextStyle(
                fontSize: theme.fontSizes.xlarge,
                fontWeight: theme.fontWeights.bold,
              ),
            ),
            SizedBox(height: theme.spacings.small),
            DefaultCard(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          MyButton(
                            icon: Icons.add,
                            title: 'Label',
                            onPressed: () {},
                            size: MainButtonSize.normal,
                            type: MyButtonType.secondary,
                          ),
                          SizedBox(width: theme.spacings.xsmall),
                          MyButton(
                            icon: Icons.add,
                            onPressed: () {},
                            size: MainButtonSize.normal,
                            type: MyButtonType.secondary,
                          ),
                          SizedBox(width: theme.spacings.xsmall),
                          MyButton(
                            icon: Icons.add,
                            title: 'Label',
                            size: MainButtonSize.normal,
                            onPressed: null,
                            type: MyButtonType.secondary,
                          ),
                          SizedBox(width: theme.spacings.xsmall),
                          MyButton(
                            icon: Icons.add,
                            size: MainButtonSize.normal,
                            onPressed: null,
                            type: MyButtonType.secondary,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: theme.spacings.small),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          MyButton(
                            icon: Icons.add,
                            title: 'Label',
                            onPressed: () {},
                            size: MainButtonSize.small,
                            type: MyButtonType.secondary,
                          ),
                          SizedBox(width: theme.spacings.xsmall),
                          MyButton(
                            icon: Icons.add,
                            onPressed: () {},
                            size: MainButtonSize.small,
                            type: MyButtonType.secondary,
                          ),
                          SizedBox(width: theme.spacings.xsmall),
                          MyButton(
                            icon: Icons.add,
                            title: 'Label',
                            size: MainButtonSize.small,
                            type: MyButtonType.secondary,
                            onPressed: null,
                          ),
                          SizedBox(width: theme.spacings.xsmall),
                          MyButton(
                            icon: Icons.add,
                            size: MainButtonSize.small,
                            type: MyButtonType.secondary,
                            onPressed: null,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: theme.spacings.small),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          MyButton(
                            icon: Icons.add,
                            title: 'Label',
                            onPressed: () {},
                            size: MainButtonSize.small,
                            type: MyButtonType.secondary,
                            inverted: true,
                          ),
                          SizedBox(width: theme.spacings.xsmall),
                          MyButton(
                            icon: Icons.add,
                            onPressed: () {},
                            size: MainButtonSize.small,
                            type: MyButtonType.secondary,
                            inverted: true,
                          ),
                          SizedBox(width: theme.spacings.xsmall),
                          MyButton(
                            icon: Icons.add,
                            title: 'Label',
                            size: MainButtonSize.small,
                            type: MyButtonType.secondary,
                            inverted: true,
                            onPressed: null,
                          ),
                          SizedBox(width: theme.spacings.xsmall),
                          MyButton(
                            icon: Icons.add,
                            size: MainButtonSize.small,
                            type: MyButtonType.secondary,
                            inverted: true,
                            onPressed: null,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
