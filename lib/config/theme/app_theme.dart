import 'package:flutter/material.dart';

enum ThemeType { light, dark }

class CustomColors {
  static const Color c1 = Color(0xFF2A1454);
  static const Color c2 = Color(0xFF6f42c1);

  static const Color primary = Color(0xFF652DB2);
  static const Color primaryDark = Color(0xFF4E157F);
  static const Color primaryDull = Color(0xFFC9A6E8);
  static const Color primaryDull1 = Color(0xFFf0eaf7);
  static const Color white = Color(0xFFFFFFFF);
  static const Color error = Color(0xFFD44B4B);
  static const Color success = Color(0xFF27AE60);
  static const Color black = Color(0xFF000000);
  static const Color pink = Color(0xFFF856D4);
  static const Color lightPink = Color(0xFFF8E5EC);
  static const Color outline = Color(0xFFDDDDDD);
  static const Color darkGrey = Color(0xFF777777);
  static const Color lightGrey = Color(0xFFF5F5F5);

  static const List<Color> randomColor = [Color(0xFF8bdbe3), Color(0xFFca9ec3), Color(0xFFf9f4a8), Color(0xFFffc0aa), Color(0xFFffa6bb), Color(0xFFb4d6d4)];
}

ThemeData themeData = ThemeData(
  appBarTheme: const AppBarTheme(
    actionsIconTheme: IconThemeData(color: Colors.white),
    iconTheme: IconThemeData(color: Colors.white),
    backgroundColor: CustomColors.primary,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 24,
    ),
  ),
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: CustomColors.primary,
    secondary: CustomColors.primary,
    background: CustomColors.white,
    surface: CustomColors.white,
    onBackground: CustomColors.black,
    onSurface: CustomColors.black,
    onError: CustomColors.white,
    onPrimary: CustomColors.white,
    onSecondary: CustomColors.white,
    error: CustomColors.error,
  ),
);
