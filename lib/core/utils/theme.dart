import 'package:flutter/material.dart';

import 'package:travel_app/core/constants/constants.dart';
import 'package:travel_app/gen/fonts.gen.dart';

class ThemeController {
  static ThemeController themeController = ThemeController();

  bool isDarkMode = false;

  ThemeData get themeData => isDarkMode ? darkTheme : lightTheme;

  final ThemeData lightTheme = ThemeData(
    useMaterial3: false,
    primaryColor: kColorPrimary,
    disabledColor: kColorGray3,
    focusColor: kColorWhite,
    highlightColor: Palette.kColorPrimary[8],
    scaffoldBackgroundColor: Palette.kColorNature[20],
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: kColorSecondary,
      tertiary: kColorNature,
      background: kColorBackground,
    ),
    fontFamily: FontFamily.poppins,
    textTheme: TextTheme(
      bodySmall: TextStyle(
        color: Palette.kColorNature[8],
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontFamily: FontFamily.poppins,
      ),
      bodyMedium: TextStyle(
        color: Palette.kColorNature[8],
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: FontFamily.poppins,
      ),
      bodyLarge: TextStyle(
        color: Palette.kColorNature[8],
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: FontFamily.poppins,
      ),
      labelSmall: TextStyle(
        color: Palette.kColorNature[8],
        fontSize: 11,
        fontWeight: FontWeight.w400,
        fontFamily: FontFamily.poppins,
      ),
      labelMedium: TextStyle(
        color: Palette.kColorNature[8],
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontFamily: FontFamily.poppins,
      ),
      labelLarge: TextStyle(
        color: Palette.kColorNature[8],
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: FontFamily.poppins,
      ),
      titleSmall: TextStyle(
        color: Palette.kColorNature[8],
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: FontFamily.poppins,
      ),
      titleMedium: TextStyle(
        color: Palette.kColorNature[8],
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: FontFamily.poppins,
      ),
      titleLarge: TextStyle(
        color: Palette.kColorNature[8],
        fontSize: 22,
        fontWeight: FontWeight.w400,
        fontFamily: FontFamily.poppins,
      ),
      headlineSmall: TextStyle(
        color: Palette.kColorNature[8],
        fontSize: 24,
        fontWeight: FontWeight.w400,
        fontFamily: FontFamily.poppins,
      ),
      headlineMedium: TextStyle(
        color: Palette.kColorNature[8],
        fontSize: 28,
        fontWeight: FontWeight.w400,
        fontFamily: FontFamily.poppins,
      ),
      headlineLarge: TextStyle(
        color: Palette.kColorNature[8],
        fontSize: 32,
        fontWeight: FontWeight.w400,
        fontFamily: FontFamily.poppins,
      ),
      displaySmall: TextStyle(
        color: Palette.kColorNature[8],
        fontSize: 36,
        fontWeight: FontWeight.w400,
        fontFamily: FontFamily.poppins,
      ),
      displayMedium: TextStyle(
        color: Palette.kColorNature[8],
        fontSize: 46,
        fontWeight: FontWeight.w400,
        fontFamily: FontFamily.poppins,
      ),
      displayLarge: TextStyle(
        color: Palette.kColorNature[8],
        fontSize: 58,
        fontWeight: FontWeight.w400,
        fontFamily: FontFamily.poppins,
      ),
    ),
  );

  final ThemeData darkTheme = ThemeData(primaryColor: kColorPrimary);

  void toggleTheme() {
    isDarkMode = !isDarkMode;
  }
}
