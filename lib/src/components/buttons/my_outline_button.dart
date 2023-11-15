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
///       MyOutlineButton(
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

enum MyOutlineButtonType { primary, secondary }

extension MyOutlineButtonTypeExtension on MyOutlineButtonType {
  Color get fillColor {
    switch (this) {
      case MyOutlineButtonType.primary:
        return Colors.transparent;
      case MyOutlineButtonType.secondary:
        return Colors.transparent;
    }
  }

  Color get textColor {
    final colors = ThemeManager.shared.theme.colors;
    switch (this) {
      case MyOutlineButtonType.primary:
        return colors.primary;
      case MyOutlineButtonType.secondary:
        return colors.secondary;
    }
  }
}

class MyOutlineButton extends MainButton {
  static final _theme = ThemeManager.shared.theme;
  MyOutlineButton({
    required VoidCallback? onPressed,
    String? title,
    MainButtonSize size = MainButtonSize.normal,
    MyOutlineButtonType type = MyOutlineButtonType.primary,
    IconData? icon,
    bool allCaps = false,
    bool inverted = false,
    Key? key,
  }) : super(
          title: title,
          onPressed: onPressed,
          size: size,
          icon: icon,
          allCaps: allCaps,
          borderNormalWidth: _theme.borderWidths.small,
          rippleColor: _theme.colors.white,
          darkRippleColor: _theme.colors.white,
          hoverRippleColor: inverted ? _theme.colors.white : Colors.transparent,
          darkHoverRippleColor: Colors.transparent,
          normalColor: type.fillColor,
          disabledColor: type.fillColor,
          pressedColor: type.fillColor,
          hoverColor: inverted ? _theme.colors.white : type.textColor,
          darkNormalColor: type.fillColor,
          darkDisabledColor: type.fillColor,
          darkPressedColor: type.fillColor,
          darkHoverColor: inverted ? _theme.colors.white : type.textColor,
          textPressedColor: _getTextColor(inverted, type).withOpacity(0.75),
          textDisabledColor: _theme.colors.textColors.disabled,
          textNormalColor: _getTextColor(inverted, type),
          textHoverColor: inverted ? type.textColor : _theme.colors.white,
          darkTextPressedColor: _getTextColor(inverted, type).withOpacity(0.75),
          darkTextDisabledColor: _theme.colors.textColors.disabled,
          darkTextNormalColor: _getTextColor(inverted, type),
          darkTextHoverColor: inverted ? type.textColor : _theme.colors.white,
          borderPressedColor: _getTextColor(inverted, type),
          borderDisabledColor: _theme.colors.secondary,
          borderNormalColor: _getTextColor(inverted, type),
          borderHoverColor: inverted ? _theme.colors.white : type.textColor,
          darkBorderDisabledColor:
              _theme.colors.elementsColors.backgroundAndDisabled,
          key: key,
        );

  static Color _getTextColor(bool inverted, MyOutlineButtonType type) {
    return inverted ? _theme.colors.white : type.textColor;
  }
}
