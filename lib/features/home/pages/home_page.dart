import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:intl/intl.dart';
import 'package:simple_ecommerce/core/theme/app_colors.dart';
import 'package:simple_ecommerce/core/theme/app_theme.dart';
import 'package:simple_ecommerce/features/home/widgets/banner_card.dart';
import 'package:simple_ecommerce/features/home/widgets/custom_card.dart';
import 'package:simple_ecommerce/features/home/widgets/section_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  final NumberFormat currency = NumberFormat.currency(
    decimalDigits: 2,
    locale: "en_US",
    symbol: "\$",
  );
  bool isActive = false;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        title: Text(
          "Atelier",
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: AppColors.primary,
            fontWeight: .bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const .all(16.0),
          child: Column(
            spacing: 32.0,
            children: [
              const BannerCard(
                image: AssetImage("assets/images/example.jpg"),
                title: "The Indigo Run",
                description: "Precision engineering meets artisan aesthetic.",
                actionLabel: "Discover Now",
              ),
              const SectionHeader(
                title: "Atelier Picks",
                subtitle: "Curated daily for high standards",
                actionText: "View All",
              ),
              GridView.builder(
                shrinkWrap: true,
                primary: false,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 24.0,
                  childAspectRatio: 0.5,
                ),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return CustomCard(
                    image: Image.asset('assets/images/example.jpg'),
                    title: 'The art of Quiet',
                    price: currency.format(28),
                    isFavorite: isActive,
                    onPressed: () {
                      setState(() {
                        isActive = !isActive;
                      });
                    },
                  );
                },
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
@Preview(size: Size(360, 800), name: "Home Page Preview", theme: lightTheme)
Widget loginPagePreview() => const HomePage();
