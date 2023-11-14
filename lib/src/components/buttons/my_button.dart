import 'package:flutter/material.dart';

import '../../theme_manager/theme_manager.dart';
import 'main_button.dart';

/// Botão do design systems
///
/// {@tool snippet}
/// ```dart
/// @override
/// Widget build(BuildContext context) {
///   return Column(
///     children: [
///       MyButton(
///         onPressed: () {}, // Ação realizada ao pressionar o botão
///         title: 'Label', // Título do botão se houver
///         size: MainButtonSize.normal, // Tamanho do botão, pode ser [MainButtonSize.normal], [MainButtonSize.small]
///         icon: MonoIconFont.add, // Ícone para ser apresentado no botão se houver
///         allCaps: false, // Indica se o título deve estar todo em maiúsculo
///         elevation: 0, // Elevação do botão se necessário
///         key: Key('button_key'), // Key de identificação do botão
///       ),
///     ],
///   );
/// }
/// ```
/// {@end-tool}
///

enum MyButtonType { primary, secondary }

extension MyButtonTypeExtension on MyButtonType {
  Color get fillColor {
    final colors = ThemeManager.shared.theme.colors;
    switch (this) {
      case MyButtonType.primary:
        return colors.primary;
      case MyButtonType.secondary:
        return colors.secondary;
    }
  }

  Color get textColor {
    final colors = ThemeManager.shared.theme.colors;
    switch (this) {
      case MyButtonType.primary:
        return colors.white;
      case MyButtonType.secondary:
        return colors.white;
    }
  }
}

class MyButton extends MainButton {
  static final _theme = ThemeManager.shared.theme;
  MyButton({
    required VoidCallback? onPressed,
    String? title,
    MainButtonSize size = MainButtonSize.normal,
    MyButtonType type = MyButtonType.primary,
    IconData? icon,
    bool allCaps = false,
    bool inverted = false,
    double elevation = 0,
    Key? key,
  }) : super(
          title: title,
          onPressed: onPressed,
          size: size,
          icon: icon,
          allCaps: allCaps,
          elevation: elevation,
          borderNormalWidth: 0,
          rippleColor: _getFillColor(inverted, type).withOpacity(0.75),
          darkRippleColor: _getFillColor(inverted, type).withOpacity(0.75),
          normalColor: _getFillColor(inverted, type),
          disabledColor: _theme.colors.elementsColors.backgroundAndDisabled,
          pressedColor: _getFillColor(inverted, type).withOpacity(0.75),
          darkNormalColor: _getFillColor(inverted, type),
          darkDisabledColor: _theme.colors.elementsColors.backgroundAndDisabled,
          darkPressedColor: _getFillColor(inverted, type).withOpacity(0.75),
          textPressedColor: _getTextColor(inverted, type).withOpacity(0.75),
          textDisabledColor: _theme.colors.textColors.disabled,
          textNormalColor: _getTextColor(inverted, type),
          darkTextPressedColor: _getTextColor(inverted, type).withOpacity(0.75),
          darkTextDisabledColor: _theme.colors.textColors.disabled,
          darkTextNormalColor: _getTextColor(inverted, type),
          borderPressedColor: Colors.transparent,
          borderDisabledColor: Colors.transparent,
          borderNormalColor: Colors.transparent,
          key: key,
        );

  static Color _getFillColor(bool inverted, MyButtonType type) {
    return inverted ? type.textColor : type.fillColor;
  }

  static Color _getTextColor(bool inverted, MyButtonType type) {
    return inverted ? type.fillColor : type.textColor;
  }
}
