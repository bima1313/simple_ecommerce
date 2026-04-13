import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:simple_ecommerce/core/theme/app_colors.dart';
import 'package:simple_ecommerce/core/theme/app_theme.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    required this.subtitle,
    required this.actionText,
  });
  final String title;
  final String subtitle;
  final String actionText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .stretch,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Colors.black,
            fontWeight: .bold,
          ),
        ),
        Wrap(
          crossAxisAlignment: .center,
          alignment: .spaceBetween,
          spacing: 8.0,
          children: [
            Text(
              subtitle,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: Colors.black),
            ),
            TextButton.icon(
              style: TextButton.styleFrom(
                textStyle: Theme.of(
                  context,
                ).textTheme.labelLarge?.copyWith(fontWeight: .bold),
                foregroundColor: AppColors.primary,
                iconAlignment: .end,
                padding: .all(4.0),
              ),
              onPressed: () {},
              label: Text(actionText),
              icon: Icon(Icons.keyboard_arrow_right),
            ),
          ],
        ),
      ],
    );
  }
}

PreviewThemeData lightTheme() =>
    PreviewThemeData(materialLight: AppTheme.lightTheme);
@Preview(name: "Section Header Widget Preview", theme: lightTheme)
Widget sectionHeaderWidgetPreview() => Container(
  color: Colors.white,
  child: const SectionHeader(
    title: "Atelier Picks",
    subtitle: "Curated daily for high standards",
    actionText: "View All",
  ),
);
