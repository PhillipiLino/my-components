import 'package:flutter/material.dart';

import '../../extensions/color_extensions.dart';
import '../../extensions/context_extensions.dart';
import '../../theme_manager/theme_manager.dart';

enum MainButtonSize {
  normal(48),
  small(32);

  const MainButtonSize(this.height);
  final double height;
}

extension MainButtonSizeExtension on MainButtonSize {
  double get height {
    switch (this) {
      case MainButtonSize.normal:
        return 48;
      case MainButtonSize.small:
        return 32;
    }
  }

  double get fontSize {
    final fontSize = ThemeManager.shared.theme.fontSizes;
    switch (this) {
      case MainButtonSize.normal:
        return fontSize.medium;
      case MainButtonSize.small:
        return fontSize.small;
    }
  }

  double get iconSize {
    final fontSize = ThemeManager.shared.theme.fontSizes;
    switch (this) {
      case MainButtonSize.normal:
        return fontSize.xlarge;
      case MainButtonSize.small:
        return fontSize.medium;
    }
  }

  EdgeInsets get iconMargin {
    final spacings = ThemeManager.shared.theme.spacings;
    return EdgeInsets.only(right: spacings.xxsmall);
  }

  double get borderRadius {
    final borderRadius = ThemeManager.shared.theme.borderRadius;
    return borderRadius.circle;
  }

  EdgeInsets get padding {
    final spacings = ThemeManager.shared.theme.spacings;
    switch (this) {
      case MainButtonSize.normal:
        return EdgeInsets.symmetric(
          horizontal: spacings.large,
          vertical: spacings.xxxsmall,
        );
      case MainButtonSize.small:
        return EdgeInsets.symmetric(
          horizontal: spacings.small,
          vertical: spacings.xxxsmall,
        );
    }
  }
}

class MainButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onPressed;
  final MainButtonSize size;
  final IconData? icon;
  final bool allCaps;
  final double elevation;

  final Color rippleColor;
  final Color normalColor;
  final Color disabledColor;
  final Color pressedColor;

  final Color? darkRippleColor;
  final Color? darkNormalColor;
  final Color? darkDisabledColor;
  final Color? darkPressedColor;

  final Color textPressedColor;
  final Color textDisabledColor;
  final Color textNormalColor;

  final Color? darkTextPressedColor;
  final Color? darkTextDisabledColor;
  final Color? darkTextNormalColor;

  final double borderNormalWidth;
  final double borderPressedWidth;

  final Color borderPressedColor;
  final Color borderDisabledColor;
  final Color borderNormalColor;

  final Color? darkBorderPressedColor;
  final Color? darkBorderDisabledColor;
  final Color? darkBorderNormalColor;

  const MainButton({
    this.onPressed,
    this.title,
    this.size = MainButtonSize.normal,
    this.icon,
    this.allCaps = false,
    this.elevation = 0,
    this.rippleColor = Colors.transparent,
    this.darkRippleColor,
    required this.normalColor,
    required this.disabledColor,
    required this.pressedColor,
    this.darkNormalColor,
    this.darkDisabledColor,
    this.darkPressedColor,
    required this.textPressedColor,
    required this.textDisabledColor,
    required this.textNormalColor,
    this.darkTextPressedColor,
    this.darkTextDisabledColor,
    this.darkTextNormalColor,
    this.borderNormalWidth = 0,
    this.borderPressedWidth = 0,
    this.borderPressedColor = Colors.transparent,
    this.borderDisabledColor = Colors.transparent,
    this.borderNormalColor = Colors.transparent,
    this.darkBorderPressedColor,
    this.darkBorderDisabledColor,
    this.darkBorderNormalColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = context.allowDarkMode();

    final btnPadding = MaterialStateProperty.all(size.padding);

    Color? iconColor;
    final textColorToSet = MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          final color = textPressedColor.getDarkOrColor(
            isDarkMode,
            darkTextPressedColor,
          );

          iconColor = color;
          return color;
        }

        if (states.contains(MaterialState.disabled)) {
          final color = textDisabledColor.getDarkOrColor(
            isDarkMode,
            darkTextDisabledColor,
          );

          iconColor = color;
          return color;
        }

        final color = textNormalColor.getDarkOrColor(
          isDarkMode,
          darkTextNormalColor,
        );

        iconColor = color;
        return color;
      },
    );

    final fillColorToSet = MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return pressedColor.getDarkOrColor(isDarkMode, darkPressedColor);
        }

        if (states.contains(MaterialState.disabled)) {
          return disabledColor.getDarkOrColor(isDarkMode, darkDisabledColor);
        }

        return normalColor.getDarkOrColor(isDarkMode, darkNormalColor);
      },
    );

    final borderColorToSet = MaterialStateProperty.resolveWith<BorderSide>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          final color = borderPressedColor.getDarkOrColor(
            isDarkMode,
            darkBorderPressedColor,
          );
          return BorderSide(color: color, width: borderPressedWidth);
        }
        if (states.contains(MaterialState.disabled)) {
          final color = borderDisabledColor.getDarkOrColor(
            isDarkMode,
            darkBorderDisabledColor,
          );
          return BorderSide(color: color, width: borderNormalWidth);
        }

        final color =
            borderNormalColor.getDarkOrColor(isDarkMode, darkBorderNormalColor);
        return BorderSide(color: color, width: borderNormalWidth);
      },
    );

    final rippleColorToSet =
        rippleColor.getDarkOrColor(isDarkMode, darkRippleColor);

    String? titleToSet = allCaps ? title?.toUpperCase() : title;

    return SizedBox(
      height: size.height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(
            rippleColorToSet.withOpacity(0.4),
          ),
          side: borderColorToSet,
          elevation: MaterialStateProperty.all(elevation),
          shape: MaterialStateProperty.all(
            ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(size.borderRadius),
            ),
          ),
          padding: btnPadding,
          minimumSize: MaterialStateProperty.all(Size.zero),
          foregroundColor: textColorToSet,
          backgroundColor: fillColorToSet,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null)
                  Container(
                    margin: size.iconMargin,
                    child: Icon(
                      icon,
                      size: size.iconSize,
                      color: iconColor,
                    ),
                  ),
                if (titleToSet != null)
                  Text(
                    titleToSet,
                    style: TextStyle(fontSize: size.fontSize),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
