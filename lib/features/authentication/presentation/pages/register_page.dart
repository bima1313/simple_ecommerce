import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:simple_ecommerce/core/theme/app_colors.dart';
import 'package:simple_ecommerce/core/theme/app_theme.dart';
import 'package:simple_ecommerce/features/authentication/presentation/widgets/footer.dart';
import 'package:simple_ecommerce/features/authentication/presentation/widgets/register_header.dart';
import 'package:simple_ecommerce/widgets/custom_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: .all(32.0),
        child: Column(
          spacing: 8.0,
          crossAxisAlignment: .start,
          children: [
            const RegisterHeader(),
            Form(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Padding(
                    padding: const .only(top: 32.0),
                    child: Text(
                      "full name".toUpperCase(),
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: AppColors.neutral,
                        fontWeight: .bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const .only(top: 8.0, bottom: 24.0),
                    child: CustomTextField(
                      textController: _nameController,
                      hintText: "Enter your full name",
                    ),
                  ),
                  Text(
                    "email address".toUpperCase(),
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: AppColors.neutral,
                      fontWeight: .bold,
                    ),
                  ),
                  Padding(
                    padding: const .only(top: 8.0, bottom: 24.0),
                    child: CustomTextField(
                      textController: _emailController,
                      hintText: "name@example.com",
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
                      hintText: "Min. 8 characters",
                      isPasswordField: true,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width, 46),
                      iconColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: .center,
                      children: [
                        Text(
                          "Create Account",
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(
                                color: Colors.white,
                                letterSpacing: 1.0,
                              ),
                        ),
                        Padding(
                          padding: const .only(left: 8.0),
                          child: Icon(Icons.arrow_forward_rounded),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: .only(top: 16.0),
              child: Footer(
                message: "Already have an account?",
                actionLabel: "Sign In",
                onPressed: () {},
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
@Preview(size: Size(360, 800), name: "Register Page Preview", theme: lightTheme)
Widget loginPagePreview() => const RegisterPage();
