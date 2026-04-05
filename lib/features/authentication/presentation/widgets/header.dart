import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:simple_ecommerce/core/theme/app_colors.dart';
import 'package:simple_ecommerce/core/theme/app_theme.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            "assets/images/logo.png",
            width: 120,
            height: 120,
            isAntiAlias: true,
          ),
          Text(
            "Atelier",
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
              color: AppColors.primary,
              fontWeight: .bold,
            ),
          ),
          Padding(
            padding: const .only(top: 8.0),
            child: Text(
              "Curated excellence".toUpperCase(),
              style: Theme.of(
                context,
              ).textTheme.bodySmall?.copyWith(color: AppColors.neutral),
            ),
          ),
        ],
      ),
    );
  }
}

PreviewThemeData lightTheme() =>
    PreviewThemeData(materialLight: AppTheme.lightTheme);
@Preview(name: "Header Widget Preview", theme: lightTheme)
Widget headerWidgetPreview() {
  return Container(color: Colors.white, child: const Header());
}
