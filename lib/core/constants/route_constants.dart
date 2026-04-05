import 'package:flutter/material.dart';
import 'package:simple_ecommerce/features/authentication/presentation/pages/login_page.dart';

@immutable
abstract class Routes {
  static const loginPage = "/login";

  static Map<String, Widget Function(BuildContext)> routeConfig() {
    return {loginPage: (context) => const LoginPage()};
  }
}
