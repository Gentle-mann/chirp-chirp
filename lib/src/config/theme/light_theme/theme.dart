import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/colors.dart';
import 'input_decoration_theme.dart';

class LightTheme {
  static ThemeData theme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.kPrimary,
        secondary: AppColors.kInactive,
      ),
      useMaterial3: true,
      textTheme: GoogleFonts.interTextTheme(),
      inputDecorationTheme: TextFieldTheme.inputTheme(),
    );
  }
}
