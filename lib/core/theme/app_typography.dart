import 'package:flutter/material.dart';

@immutable
abstract class AppTypography {
  const AppTypography();

  static final TextTheme _baseTextTheme = Typography.material2021().black;

  static TextTheme get textTheme {
    return _baseTextTheme.copyWith(
      displayLarge: _baseTextTheme.displayLarge?.copyWith(
        fontFamily: "Manrope",
      ),
      displayMedium: _baseTextTheme.displayMedium?.copyWith(
        fontFamily: "Manrope",
      ),
      displaySmall: _baseTextTheme.displaySmall?.copyWith(
        fontFamily: "Manrope",
      ),
      headlineLarge: _baseTextTheme.headlineLarge?.copyWith(
        fontFamily: "Manrope",
      ),
      headlineMedium: _baseTextTheme.headlineMedium?.copyWith(
        fontFamily: "Manrope",
      ),
      headlineSmall: _baseTextTheme.headlineSmall?.copyWith(
        fontFamily: "Manrope",
      ),
      titleLarge: _baseTextTheme.titleLarge?.copyWith(fontFamily: "Manrope"),
      titleMedium: _baseTextTheme.titleMedium?.copyWith(fontFamily: "Manrope"),
      titleSmall: _baseTextTheme.titleSmall?.copyWith(fontFamily: "Manrope"),
      bodyLarge: _baseTextTheme.bodyLarge?.copyWith(fontFamily: "Inter"),
      bodyMedium: _baseTextTheme.bodyMedium?.copyWith(fontFamily: "Inter"),
      bodySmall: _baseTextTheme.bodySmall?.copyWith(fontFamily: "Inter"),
      labelLarge: _baseTextTheme.labelLarge?.copyWith(fontFamily: "Inter"),
      labelMedium: _baseTextTheme.labelMedium?.copyWith(fontFamily: "Inter"),
      labelSmall: _baseTextTheme.labelSmall?.copyWith(fontFamily: "Inter"),
    );
  }
}
