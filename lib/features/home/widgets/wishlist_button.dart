import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:simple_ecommerce/core/theme/app_colors.dart';
import 'package:simple_ecommerce/core/theme/app_theme.dart';

class WishlistButton extends StatelessWidget {
  const WishlistButton({super.key, this.onPressed, required this.isActive});
  final void Function()? onPressed;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double iconSize = constraints.maxWidth * 0.1;
        return IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Colors.white.withAlpha(127),
            foregroundColor: AppColors.primary,
            padding: .symmetric(horizontal: 4.0, vertical: 8.0),
          ),
          constraints: const BoxConstraints(),
          iconSize: iconSize,
          onPressed: onPressed,
          icon: Icon(isActive ? Icons.favorite : Icons.favorite_border),
        );
      },
    );
  }
}

PreviewThemeData lightTheme() =>
    PreviewThemeData(materialLight: AppTheme.lightTheme);
@Preview(name: "Wishlist Button Widget Preview", theme: lightTheme)
Widget wishlistButtonWidgetPreview() =>
    WishlistButton(onPressed: () {}, isActive: true);
