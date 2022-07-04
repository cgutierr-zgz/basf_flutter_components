// ignore_for_file: avoid_setters_without_getters

import 'package:basf_flutter_components/basf_flutter_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// All BASF Theme types, each one holding the primary color
/// that will be used in the theme
enum BasfThemeType {
  /// BASF yellow color
  yellow(BasfColors.orange),

  /// BASF red color
  red(BasfColors.red),

  /// BASF lightGreen color
  lightGreen(BasfColors.lightGreen),

  /// BASF darkGreen color
  darkGreen(BasfColors.darkGreen),

  /// BASF lightBlue color
  lightBlue(BasfColors.lightBlue),

  /// BASF darkBlue color
  darkBlue(BasfColors.darkBlue);

  /// BASF theme type
  const BasfThemeType(this.primaryColor);

  /// BASF theme primary color
  final Color primaryColor;
}

/// Core of BASF themes
class BasfThemes {
  /// Default BASF border Radius
  static BorderRadius defaultBorderRadius = BorderRadius.zero;

  /// Default BASF primary color
  static Color primaryColor = BasfColors.darkBlue;

  /// Default BASF light main theme
  static ThemeData get lightMainTheme {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Roboto',
      textTheme: mainTextTheme,
      appBarTheme: _mainAppBarTheme,
      scaffoldBackgroundColor: BasfColors.white,
      snackBarTheme: _snackBarThemeData,
      colorSchemeSeed: primaryColor,
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyles.containedTextButtonStyle,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyles.primaryOutlinedButtonStyle,
      ),
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(borderRadius: defaultBorderRadius),
      ),
      inputDecorationTheme: BasfInputThemes.mainInputDecorationTheme,
      hintColor: BasfInputThemes.focusedBorderColor.shade400,
      bottomNavigationBarTheme: _bottomNavigationBarTheme,
    );
  }

  /// BASF Main text theme
  static TextTheme get mainTextTheme => const TextTheme(
        headline1: CustomTextStyle(fontWeight: FontWeight.bold, fontSize: 42),
        headline2: CustomTextStyle(fontWeight: FontWeight.normal, fontSize: 42),
        headline3: CustomTextStyle(fontWeight: FontWeight.normal, fontSize: 32),
        headline4: CustomTextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        headline5: CustomTextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        headline6: CustomTextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        bodyText1: CustomTextStyle(fontWeight: FontWeight.normal, fontSize: 16),
        bodyText2: CustomTextStyle(fontWeight: FontWeight.normal, fontSize: 14),
        subtitle1: CustomTextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        subtitle2: CustomTextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        caption: CustomTextStyle(fontWeight: FontWeight.w700, fontSize: 14),
        button: CustomTextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        overline: CustomTextStyle(fontWeight: FontWeight.normal, fontSize: 12),
      );

  static final AppBarTheme _mainAppBarTheme = AppBarTheme(
    backgroundColor: primaryColor,
    titleTextStyle: mainTextTheme.subtitle1!.copyWith(color: BasfColors.white),
    iconTheme: const IconThemeData(color: BasfColors.white),
    systemOverlayStyle: SystemUiOverlayStyle.light,
    scrolledUnderElevation: 0,
    elevation: 0,
  );

  static SnackBarThemeData get _snackBarThemeData {
    return SnackBarThemeData(
      backgroundColor: primaryColor,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: defaultBorderRadius,
      ),
      contentTextStyle:
          mainTextTheme.subtitle1!.copyWith(color: BasfColors.white),
    );
  }

  static final BottomNavigationBarThemeData _bottomNavigationBarTheme =
      BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    backgroundColor: BasfColors.white,
    selectedItemColor: primaryColor,
    unselectedItemColor: primaryColor,
    selectedIconTheme: IconThemeData(color: primaryColor, size: 20),
    unselectedIconTheme: IconThemeData(color: primaryColor, size: 20),
    unselectedLabelStyle: mainTextTheme.overline,
    selectedLabelStyle: mainTextTheme.overline!.copyWith(
      fontWeight: FontWeight.w500,
      color: primaryColor,
    ),
  );

  /// BASF date picker button theme
  static ThemeData get datePickerButtonTheme {
    return lightMainTheme.copyWith(
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: BasfThemes.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BasfThemes.defaultBorderRadius,
          ),
        ),
      ),
    );
  }

  /// Change input color scheme
  static set setAppPrimaryInputColor(MaterialColor color) =>
      BasfInputThemes.focusedBorderColor = color;

  /// Change app color scheme without inputs
  static set setAppPrimaryColor(BasfThemeType theme) =>
      BasfThemes.primaryColor = theme.primaryColor;
}