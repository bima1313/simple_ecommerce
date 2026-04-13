import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:simple_ecommerce/core/theme/app_colors.dart';
import 'package:simple_ecommerce/core/theme/app_theme.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({
    super.key,
    required this.image,
    required this.title,
    this.description,
    required this.actionLabel,
  });

  final ImageProvider<Object> image;
  final String title;
  final String? description;
  final String actionLabel;
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: .antiAlias,
      shape: RoundedRectangleBorder(borderRadius: .circular(32.0)),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(image: image, fit: .cover),
        ),
        height: 180.0,
        child: Padding(
          padding: const .all(24.0),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: .bold,
                  shadows: .filled(
                    2,
                    Shadow(color: Colors.black, blurRadius: 1.5),
                  ),
                ),
              ),
              Padding(
                padding: const .symmetric(vertical: 8.0),
                child: Text(
                  description ?? "",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white,
                    shadows: .filled(
                      2,
                      Shadow(color: Colors.black, blurRadius: 1.5),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.secondary,
                ),
                onPressed: () {},
                child: Text(
                  actionLabel,
                  style: Theme.of(
                    context,
                  ).textTheme.labelLarge?.copyWith(color: AppColors.primary),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

PreviewThemeData lightTheme() =>
    PreviewThemeData(materialLight: AppTheme.lightTheme);
@Preview(name: "Banner Card Widget Preview", theme: lightTheme)
Widget bannerCardWidgetPreview() => const BannerCard(
  image: AssetImage("assets/images/example.jpg"),
  title: "The Indigo Run",
  description: "Precision engineering meets artisan aesthetic.",
  actionLabel: "Discover Now",
);
