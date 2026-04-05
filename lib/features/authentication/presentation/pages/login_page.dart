import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:simple_ecommerce/core/theme/app_colors.dart';
import 'package:simple_ecommerce/core/theme/app_theme.dart';
import 'package:simple_ecommerce/features/authentication/presentation/widgets/custom_text_field.dart';
import 'package:simple_ecommerce/features/authentication/presentation/widgets/header.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const .symmetric(vertical: 32.0, horizontal: 16.0),
        child: Column(
          crossAxisAlignment: .start,
          spacing: 16.0,
          children: [
            const Header(),
            Padding(
              padding: const .only(top: 32.0),
              child: Text(
                "Welcome back",
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: .bold),
              ),
            ),
            Text(
              "Please enter your details to sign in to your account.",
              style: Theme.of(
                context,
              ).textTheme.labelLarge?.copyWith(color: AppColors.neutral),
            ),
            Form(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Padding(
                    padding: const .only(top: 16.0),
                    child: Text(
                      "email address".toUpperCase(),
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: AppColors.neutral,
                        fontWeight: .bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const .only(top: 8.0, bottom: 24.0),
                    child: CustomTextField(
                      textController: _emailController,
                      hintText: "name@example.com",
                      keyboardType: .emailAddress,
                    ),
                  ),
                  Text(
                    "password".toUpperCase(),
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: AppColors.neutral,
                      fontWeight: .bold,
                    ),
                  ),
                  Padding(
                    padding: const .only(top: 8.0, bottom: 40.0),
                    child: CustomTextField(
                      textController: _passwordController,
                      hintText: "⦁⦁⦁⦁⦁⦁⦁⦁",
                      isPasswordField: true,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width, 46),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Sign In",
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Colors.white,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const .only(top: 16.0),
              child: Row(
                mainAxisAlignment: .center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: Theme.of(
                      context,
                    ).textTheme.labelLarge?.copyWith(color: AppColors.neutral),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(padding: .all(8.0)),
                    onPressed: () {},
                    child: Text(
                      "Create account",
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: AppColors.primary,
                        fontWeight: .bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

PreviewThemeData lightTheme() =>
    PreviewThemeData(materialLight: AppTheme.lightTheme);
@Preview(size: Size(360, 800), name: "Login Page Preview", theme: lightTheme)
Widget loginPagePreview() => const LoginPage();
