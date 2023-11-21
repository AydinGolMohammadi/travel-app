import 'package:flutter/material.dart';

import 'package:travel_app/core/constants/constants.dart';
import 'package:travel_app/gen/fonts.gen.dart';

class ThemeController  {
  static ThemeController themeController=ThemeController();

   bool isDarkMode = false;

  ThemeData get themeData => isDarkMode ? darkTheme : lightTheme;

  final ThemeData lightTheme = ThemeData(
    useMaterial3: false,
    primaryColor: kColorPrimary,
    disabledColor: kColorGray3,
    focusColor: kColorWhite,
    highlightColor: Palette.kColorPrimary[8],
    scaffoldBackgroundColor: Palette.kColorNature[20],
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(secondary: kColorSecondary, tertiary: kColorNature, background: kColorBackground),
    fontFamily: FontFamily.poppins,
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        color: kColorBody,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontFamily: faPrimaryFontFamily,
      ),
      bodyMedium: TextStyle(
        color: kColorBody,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: faPrimaryFontFamily,
      ),
      bodyLarge: TextStyle(
        color: kColorBody,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: faPrimaryFontFamily,
      ),
      labelSmall: TextStyle(
        color: kColorBody,
        fontSize: 11,
        fontWeight: FontWeight.w400,
        fontFamily: faPrimaryFontFamily,
      ),
      labelMedium: TextStyle(
        color: kColorBody,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontFamily: faPrimaryFontFamily,
      ),
      labelLarge: TextStyle(
        color: kColorBody,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: faPrimaryFontFamily,
      ),
      titleSmall: TextStyle(
        color: kColorBody,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: faPrimaryFontFamily,
      ),
      titleMedium: TextStyle(
        color: kColorBody,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: faPrimaryFontFamily,
      ),
      titleLarge: TextStyle(
        color: kColorBody,
        fontSize: 22,
        fontWeight: FontWeight.w400,
        fontFamily: faPrimaryFontFamily,
      ),
      headlineSmall: TextStyle(
        color: kColorBody,
        fontSize: 24,
        fontWeight: FontWeight.w400,
        fontFamily: faPrimaryFontFamily,
      ),
      headlineMedium: TextStyle(
        color: kColorBody,
        fontSize: 28,
        fontWeight: FontWeight.w400,
        fontFamily: faPrimaryFontFamily,
      ),
      headlineLarge: TextStyle(
        color: kColorBody,
        fontSize: 32,
        fontWeight: FontWeight.w400,
        fontFamily: faPrimaryFontFamily,
      ),
      displaySmall: TextStyle(
        color: kColorBody,
        fontSize: 36,
        fontWeight: FontWeight.w400,
        fontFamily: faPrimaryFontFamily,
      ),
      displayMedium: TextStyle(
        color: kColorBody,
        fontSize: 46,
        fontWeight: FontWeight.w400,
        fontFamily: faPrimaryFontFamily,
      ),
      displayLarge: TextStyle(
        color: kColorBody,
        fontSize: 58,
        fontWeight: FontWeight.w400,
        fontFamily: faPrimaryFontFamily,
      ),
    ),
  );

  final ThemeData darkTheme = ThemeData(primaryColor: kColorGrayDark);

  void toggleTheme() {
    isDarkMode = !isDarkMode;
  }
}
