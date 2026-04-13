import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:simple_ecommerce/core/theme/app_theme.dart';
import 'package:simple_ecommerce/features/home/widgets/wishlist_button.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.isFavorite,
    this.onPressed,
  });
  final Image image;
  final String title;
  final String price;
  final bool isFavorite;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: .start,
          children: [
            ClipRRect(borderRadius: .circular(16.0), child: image),
            Padding(
              padding: const .symmetric(vertical: 8.0, horizontal: 4.0),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.black,
                      fontWeight: .bold,
                    ),
                  ),
                  Text(
                    price,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.black,
                      fontWeight: .bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const .all(8.0),
          child: Align(
            alignment: .topEnd,
            child: WishlistButton(isActive: isFavorite, onPressed: onPressed),
          ),
        ),
      ],
    );
  }
}

PreviewThemeData lightTheme() =>
    PreviewThemeData(materialLight: AppTheme.lightTheme);
@Preview(name: "Custom Card Widget Preview", theme: lightTheme)
Widget customCardWidgetPreview() {
  return SingleChildScrollView(
    child: Container(
      color: Colors.white,
      child: CustomCard(
        image: Image.asset('assets/images/example.jpg'),
        title: 'The art of Quiet',
        price: '28.00',
        isFavorite: false,
        onPressed: () {},
      ),
    ),
  );
}
