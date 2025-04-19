// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:rest_api/core/theme/app_colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.lightPrimary,
    scaffoldBackgroundColor: AppColors.lightBackground,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.lightPrimary,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    cardTheme: CardTheme(
      color: AppColors.lightCard,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    dividerColor: AppColors.lightDivider,
    textTheme: TextTheme(
      headlineMedium: TextStyle(
        color: AppColors.lightText,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        color: AppColors.lightText,
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        color: AppColors.lightText.withOpacity(0.8),
        fontSize: 14,
      ),
    ),
    colorScheme: ColorScheme(
      primary: AppColors.lightPrimary,
      secondary: AppColors.lightAccent,
      background: AppColors.lightBackground,
      surface: AppColors.lightCard,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onBackground: AppColors.lightText,
      onSurface: AppColors.lightText,
      brightness: Brightness.light,
      error: Colors.red.shade700,
      onError: Colors.white,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.darkPrimary,
    scaffoldBackgroundColor: AppColors.darkBackground,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkPrimary,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    cardTheme: CardTheme(
      color: AppColors.darkCard,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    dividerColor: AppColors.darkDivider,
    textTheme: TextTheme(
      headlineMedium: TextStyle(
        color: AppColors.darkText,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        color: AppColors.darkText,
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        color: AppColors.darkText.withOpacity(0.8),
        fontSize: 14,
      ),
    ),
    colorScheme: ColorScheme(
      primary: AppColors.darkPrimary,
      secondary: AppColors.darkAccent,
      background: AppColors.darkBackground,
      surface: AppColors.darkCard,
      onPrimary: Colors.black,
      onSecondary: Colors.black,
      onBackground: AppColors.darkText,
      onSurface: AppColors.darkText,
      brightness: Brightness.dark,
      error: Colors.red.shade300,
      onError: Colors.white,
    ),
  );
}
