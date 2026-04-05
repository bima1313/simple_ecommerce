import 'package:flutter/material.dart';
import 'package:simple_ecommerce/core/constants/route_constants.dart';
import 'package:simple_ecommerce/core/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atelier',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routes: Routes.routeConfig(),
    );
  }
}
