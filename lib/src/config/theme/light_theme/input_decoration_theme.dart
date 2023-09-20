import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class TextFieldTheme {
  TextFieldTheme._();
  static InputDecorationTheme inputTheme() {
    return InputDecorationTheme(
      contentPadding: const EdgeInsets.all(16),
      filled: true,
      fillColor: const Color(0xFFF3F4F6),
      hintStyle: const TextStyle(
          color: Color(0xFF7C82A1), fontWeight: FontWeight.bold),
      border: InputBorder.none,
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(16),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.kSecondary),
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
