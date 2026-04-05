import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:simple_ecommerce/core/theme/app_colors.dart';
import 'package:simple_ecommerce/core/theme/app_theme.dart';

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          "Atelier",
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
            color: AppColors.primary,
            fontWeight: .bold,
          ),
        ),
        Text(
          "Create Account",
          style: Theme.of(
            context,
          ).textTheme.headlineMedium?.copyWith(fontWeight: .bold),
        ),
        Padding(
          padding: const .only(top: 8.0),
          child: Text(
            "Sign up to shopping and save your favorites.",
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: AppColors.neutral),
          ),
        ),
      ],
    );
  }
}

PreviewThemeData lightTheme() =>
    PreviewThemeData(materialLight: AppTheme.lightTheme);
@Preview(name: "Register Header Widget Preview", theme: lightTheme)
Widget registerHeaderWidgetPreview() {
  return Container(color: Colors.white, child: const RegisterHeader());
}
