import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:simple_ecommerce/core/theme/app_colors.dart';
import 'package:simple_ecommerce/core/theme/app_theme.dart';

class CustomTextField extends StatelessWidget {
  /// Create a [FormTextField].

  const CustomTextField({
    super.key,
    this.textController,
    required this.hintText,
    this.isPasswordField = false,
    this.keyboardType = .text,
  });

  final TextEditingController? textController;
  final String hintText;
  final bool isPasswordField;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      autocorrect: (isPasswordField ? false : true),
      enableSuggestions: (isPasswordField ? false : true),
      obscureText: isPasswordField,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hint: Text(hintText, style: const TextStyle(color: AppColors.moonVeil)),
        filled: true,
        fillColor: AppColors.errigalWhite,
        enabledBorder: const OutlineInputBorder(
          borderSide: .none,
          borderRadius: .all(.circular(16.0)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary, width: 1.5),
          borderRadius: .all(.circular(16.0)),
        ),
      ),
    );
  }
}

PreviewThemeData lightTheme() =>
    PreviewThemeData(materialLight: AppTheme.lightTheme);
@Preview(name: "Custom Text Field Widget Preview")
Widget customTextFieldWidgetPreview() =>
    const CustomTextField(hintText: "name@example.com", isPasswordField: false);
