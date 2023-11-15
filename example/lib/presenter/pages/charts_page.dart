import 'package:flutter/material.dart';
import 'package:my_components/my_components.dart';

import '../widgets/default_card.dart';

class ChartsPage extends StatefulWidget {
  const ChartsPage({super.key});

  @override
  State<ChartsPage> createState() => _ChartsPageState();
}

class _ChartsPageState extends State<ChartsPage> {
  final items = [
    MyChartData('01/11', 0.3),
    MyChartData('02/11', 0.5),
    MyChartData('03/11', 1),
    MyChartData('04/11', 0.2),
    MyChartData('05/11', 0.64),
    MyChartData('06/11', 0.98),
    MyChartData('07/11', 0.5),
    MyChartData('07/11', 0.5),
    MyChartData('07/11', 0.5),
    MyChartData('07/11', 0.5),
    MyChartData('07/11', 0.5),
    MyChartData('07/11', 0.5),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = ThemeManager.shared.theme;

    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'MyBarChart',
              style: TextStyle(
                fontSize: theme.fontSizes.xlarge,
                fontWeight: theme.fontWeights.bold,
              ),
            ),
            SizedBox(height: theme.spacings.small),
            DefaultCard(
              child: SizedBox(
                height: 200,
                child: MyBarChart(goal: 0.5, items: items),
              ),
            ),
            SizedBox(height: theme.spacings.small),
            DefaultCard(
              child: SizedBox(
                height: 200,
                child: MyBarChart(items: items, inverted: true),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
