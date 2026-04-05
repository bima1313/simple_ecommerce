import 'package:flutter/material.dart';
import 'package:simple_ecommerce/core/theme/app_colors.dart';
import 'package:simple_ecommerce/core/theme/app_typography.dart';

@immutable
abstract class AppTheme {
  const AppTheme();

  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.primary,
      textTheme: AppTypography.textTheme,
      appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          alignment: Alignment.center,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(alignment: Alignment.center),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColors.darkPrimary,
      textTheme: AppTypography.textTheme,
      appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.darkPrimary,
          alignment: Alignment.center,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(alignment: Alignment.center),
      ),
    );
  }
}
