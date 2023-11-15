import 'package:flutter/material.dart';

import '../../extensions/color_extensions.dart';
import '../../extensions/context_extensions.dart';
import '../../theme_manager/theme_manager.dart';

enum MainButtonSize { normal, small }

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

  EdgeInsets get justIconPadding {
    final spacings = ThemeManager.shared.theme.spacings;
    switch (this) {
      case MainButtonSize.normal:
        return EdgeInsets.symmetric(
          horizontal: spacings.xsmall,
          vertical: spacings.xxxsmall,
        );
      case MainButtonSize.small:
        return EdgeInsets.symmetric(
          horizontal: spacings.xxsmall,
          vertical: spacings.xxxsmall,
        );
    }
  }

  double get pressedEleveation {
    switch (this) {
      case MainButtonSize.normal:
        return 4;
      case MainButtonSize.small:
        return 1;
    }
  }
}

class MainButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onPressed;
  final MainButtonSize size;
  final IconData? icon;
  final bool allCaps;

  final double normalElevation;
  final double pressedElevation;
  final double hoverElevation;
  final double disabledElevation;

  final Color rippleColor;
  final Color hoverRippleColor;

  final Color normalColor;
  final Color disabledColor;
  final Color pressedColor;
  final Color hoverColor;

  final Color? darkRippleColor;
  final Color? darkHoverRippleColor;

  final Color? darkNormalColor;
  final Color? darkDisabledColor;
  final Color? darkPressedColor;
  final Color? darkHoverColor;

  final Color textPressedColor;
  final Color textDisabledColor;
  final Color textNormalColor;
  final Color textHoverColor;

  final Color? darkTextPressedColor;
  final Color? darkTextDisabledColor;
  final Color? darkTextNormalColor;
  final Color? darkTextHoverColor;

  final double borderNormalWidth;
  final double borderPressedWidth;
  final double borderHoveredWidth;

  final Color borderPressedColor;
  final Color borderDisabledColor;
  final Color borderNormalColor;
  final Color borderHoverColor;

  final Color? darkBorderPressedColor;
  final Color? darkBorderDisabledColor;
  final Color? darkBorderNormalColor;
  final Color? darkBorderHoverColor;

  const MainButton({
    this.onPressed,
    this.title,
    this.size = MainButtonSize.normal,
    this.icon,
    this.allCaps = false,
    this.normalElevation = 0,
    this.pressedElevation = 0,
    this.hoverElevation = 0,
    this.disabledElevation = 0,
    this.rippleColor = Colors.transparent,
    this.hoverRippleColor = Colors.transparent,
    this.darkRippleColor,
    this.darkHoverRippleColor,
    required this.normalColor,
    required this.disabledColor,
    required this.pressedColor,
    required this.hoverColor,
    this.darkNormalColor,
    this.darkDisabledColor,
    this.darkPressedColor,
    this.darkHoverColor,
    required this.textPressedColor,
    required this.textDisabledColor,
    required this.textNormalColor,
    required this.textHoverColor,
    this.darkTextPressedColor,
    this.darkTextDisabledColor,
    this.darkTextNormalColor,
    this.darkTextHoverColor,
    this.borderNormalWidth = 0,
    this.borderPressedWidth = 0,
    this.borderHoveredWidth = 0,
    this.borderPressedColor = Colors.transparent,
    this.borderDisabledColor = Colors.transparent,
    this.borderNormalColor = Colors.transparent,
    this.borderHoverColor = Colors.transparent,
    this.darkBorderPressedColor,
    this.darkBorderDisabledColor,
    this.darkBorderNormalColor,
    this.darkBorderHoverColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = context.allowDarkMode();
    final justIcon = title == null && icon != null;

    final btnPadding = MaterialStateProperty.all(
      justIcon ? size.justIconPadding : size.padding,
    );

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

        if (states.contains(MaterialState.hovered)) {
          final color = textHoverColor.getDarkOrColor(
            isDarkMode,
            darkTextHoverColor,
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

    final elevationToSet = MaterialStateProperty.resolveWith<double>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return pressedElevation;
        }

        if (states.contains(MaterialState.hovered)) {
          return hoverElevation;
        }

        if (states.contains(MaterialState.disabled)) {
          return disabledElevation;
        }

        return normalElevation;
      },
    );

    final overlayColorToSet = MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return rippleColor
              .getDarkOrColor(isDarkMode, darkRippleColor)
              .withOpacity(0.4);
        }

        if (states.contains(MaterialState.hovered)) {
          return hoverRippleColor
              .getDarkOrColor(isDarkMode, darkHoverRippleColor)
              .withOpacity(0.4);
        }

        return Colors.transparent;
      },
    );

    final fillColorToSet = MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return pressedColor.getDarkOrColor(isDarkMode, darkPressedColor);
        }

        if (states.contains(MaterialState.hovered)) {
          return hoverColor.getDarkOrColor(isDarkMode, darkHoverColor);
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

        if (states.contains(MaterialState.hovered)) {
          final color = borderHoverColor.getDarkOrColor(
            isDarkMode,
            darkBorderHoverColor,
          );

          return BorderSide(color: color, width: borderHoveredWidth);
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

    String? titleToSet = allCaps ? title?.toUpperCase() : title;

    return SizedBox(
      height: size.height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          overlayColor: overlayColorToSet,
          side: borderColorToSet,
          elevation: elevationToSet,
          shadowColor: fillColorToSet,
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
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
                    margin: titleToSet != null ? size.iconMargin : null,
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
