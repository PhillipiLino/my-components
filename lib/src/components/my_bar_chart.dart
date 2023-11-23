import 'package:flutter/material.dart';

import '../my_text_styles.dart';
import '../theme_manager/theme_manager.dart';

class MyChartData {
  final String xValue;
  final double yValue;

  MyChartData(this.xValue, this.yValue);
}

class MyBarChart extends StatefulWidget {
  final List<MyChartData> items;
  final String? selectedXValue;
  final double? goal;
  final bool inverted;
  final Widget Function(int index)? yLabelBuilder;
  final Widget Function(int index)? xLabelBuilder;
  final Function(int index, MyChartData data)? onTapBar;
  final ScrollController? scrollController;

  const MyBarChart({
    required this.items,
    this.selectedXValue,
    this.goal,
    this.yLabelBuilder,
    this.xLabelBuilder,
    this.onTapBar,
    this.scrollController,
    this.inverted = false,
    super.key,
  });

  @override
  State<MyBarChart> createState() => _MyBarChartState();
}

class _MyBarChartState extends State<MyBarChart> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    final list = widget.items;
    if (widget.selectedXValue != null) {
      selectedIndex = list.indexWhere(
        (element) => element.xValue == widget.selectedXValue,
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final height = constraints.maxHeight;
        const textHeight = 25.0;
        late final size = height - (textHeight * 2);
        final goalLine = size - (size * (widget.goal ?? 0)) + textHeight;

        final colors = ThemeManager.shared.theme.colors;
        final borderWidths = ThemeManager.shared.theme.borderWidths;
        final borderRadius = ThemeManager.shared.theme.borderRadius;
        final spacings = ThemeManager.shared.theme.spacings;

        final mainColor = widget.inverted ? colors.secondary : colors.primary;
        final secondaryColor =
            widget.inverted ? colors.primary : colors.secondary;

        return SizedBox(
          height: size,
          child: Stack(
            children: [
              if (widget.goal != null)
                Positioned(
                  top: goalLine,
                  right: 0,
                  left: 0,
                  child: Container(
                    height: borderWidths.small,
                    decoration: BoxDecoration(
                      color: colors.primary.withOpacity(
                        0.5,
                      ),
                    ),
                  ),
                ),
              ListView.separated(
                itemCount: list.length,
                scrollDirection: Axis.horizontal,
                controller: widget.scrollController,
                separatorBuilder: (_, __) => SizedBox(width: spacings.xsmall),
                itemBuilder: (context, index) {
                  final marginTop = (size * list[index].yValue);

                  final isSelected =
                      selectedIndex != -1 ? selectedIndex == index : true;
                  final textOpacity = isSelected ? 1.0 : 0.4;
                  final textStyle = MyTextStyle.regular();

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () => widget.onTapBar?.call(index, list[index]),
                        child: Opacity(
                          opacity: textOpacity,
                          child: widget.yLabelBuilder?.call(index) ??
                              Text(
                                '${list[index].yValue}%',
                                style: textStyle,
                              ),
                        ),
                      ),
                      InkWell(
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: () => widget.onTapBar?.call(index, list[index]),
                        onTapCancel: () => setState(() => selectedIndex = -1),
                        onTapUp: (_) => setState(() => selectedIndex = -1),
                        onTapDown: (_) => setState(() => selectedIndex = index),
                        onHover: (hover) {
                          setState(() => selectedIndex = hover ? index : -1);
                        },
                        child: Column(
                          children: [
                            AnimatedContainer(
                              width: 30,
                              duration: const Duration(milliseconds: 100),
                              padding: EdgeInsets.only(top: marginTop),
                              decoration: BoxDecoration(
                                color: isSelected ? mainColor : secondaryColor,
                                boxShadow: [
                                  if (selectedIndex == index)
                                    BoxShadow(
                                      color: mainColor.withOpacity(0.5),
                                      spreadRadius: 0.1,
                                      blurRadius: 8,
                                      offset: const Offset(0, 3),
                                    ),
                                ],
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(borderRadius.small),
                                  bottom: Radius.circular(borderRadius.small),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: textOpacity,
                              child: widget.xLabelBuilder?.call(index) ??
                                  Text(list[index].xValue, style: textStyle),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
