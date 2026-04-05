import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:simple_ecommerce/core/theme/app_colors.dart';
import 'package:simple_ecommerce/core/theme/app_theme.dart';

class Footer extends StatelessWidget {
  /// Create a [Footer].
  const Footer({
    super.key,
    required this.message,
    required this.actionLabel,
    required this.onPressed,
  });

  /// The message in the Footer
  final String message;

  /// The label on the button
  final String actionLabel;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .center,
      children: [
        Text(
          message,
          style: Theme.of(
            context,
          ).textTheme.labelLarge?.copyWith(color: AppColors.neutral),
        ),
        TextButton(
          style: TextButton.styleFrom(padding: .all(8.0)),
          onPressed: onPressed,
          child: Text(
            actionLabel,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: AppColors.primary,
              fontWeight: .bold,
            ),
          ),
        ),
      ],
    );
  }
}

PreviewThemeData lightTheme() =>
    PreviewThemeData(materialLight: AppTheme.lightTheme);
@Preview(name: "Footer Widget Preview", theme: lightTheme)
Widget footerWidgetPreview() {
  return Container(
    color: Colors.white,
    child: Footer(
      message: "Don't have an account?",
      actionLabel: "Create account",
      onPressed: () {},
    ),
  );
}
