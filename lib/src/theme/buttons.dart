import 'package:basf_flutter_components/basf_flutter_components.dart';
import 'package:flutter/material.dart';

const double _buttonHeight = 48;
const EdgeInsetsGeometry _padding = EdgeInsets.all(15);
const Size _minimumSize = Size(0, _buttonHeight);

/// BASF button styles
abstract class ButtonStyles {
  /// Contained text button style
  static ButtonStyle get containedTextButtonStyle =>
      _TextButtonStyles().containedTextButtonStyle();

  /// Transparent text button style
  static ButtonStyle get transparentTextButtonStyle =>
      _TextButtonStyles().transparentTextButtonStyle();

  /// Hint text button style
  static ButtonStyle get hintTextButtonStyle =>
      _TextButtonStyles().hintTextButtonStyle();

  /// Primary outlined  text button style
  static ButtonStyle get primaryOutlinedButtonStyle =>
      _OutlinedButtonStyles().primaryOutlinedButtonStyle();
}

class _TextButtonStyles extends ButtonStyles {
  ButtonStyle containedTextButtonStyle() => TextButton.styleFrom(
        primary: Colors.white,
        padding: _padding,
        minimumSize: _minimumSize,
        side: BorderSide.none,
        shape: RoundedRectangleBorder(
          borderRadius: BasfThemes.defaultBorderRadius,
        ),
      ).copyWith(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return BasfColors.grey;
          } else {
            return BasfThemes.primaryColor;
          }
        }),
        foregroundColor: MaterialStateProperty.all(BasfColors.white),
      );

  ButtonStyle transparentTextButtonStyle() {
    return TextButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      backgroundColor: BasfColors.transparent,
      primary: BasfThemes.primaryColor,
      minimumSize: Size.zero,
      side: BorderSide.none,
      shape: RoundedRectangleBorder(
        borderRadius: BasfThemes.defaultBorderRadius,
      ),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      textStyle: BasfThemes.mainTextTheme.caption,
    ).copyWith(
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        return states.contains(MaterialState.disabled)
            ? BasfColors.grey
            : BasfThemes.primaryColor;
      }),
    );
  }

  ButtonStyle hintTextButtonStyle() {
    return transparentTextButtonStyle().copyWith(
      textStyle: MaterialStateProperty.all(BasfThemes.mainTextTheme.subtitle2),
      padding: MaterialStateProperty.all(const EdgeInsets.all(5)),
      foregroundColor: MaterialStateProperty.all(BasfColors.grey),
      overlayColor: MaterialStateProperty.all(BasfColors.grey.shade100),
    );
  }
}

class _OutlinedButtonStyles extends ButtonStyles {
  ButtonStyle primaryOutlinedButtonStyle() => OutlinedButton.styleFrom(
        padding: _padding,
        minimumSize: _minimumSize,
        shape: RoundedRectangleBorder(
          borderRadius: BasfThemes.defaultBorderRadius,
        ),
      ).copyWith(
        side: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          } else {
            return BorderSide(color: BasfThemes.primaryColor);
          }
        }),
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return BasfColors.grey;
          } else {
            return BasfColors.transparent;
          }
        }),
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return BasfColors.white;
          } else {
            return BasfThemes.primaryColor;
          }
        }),
      );
}
