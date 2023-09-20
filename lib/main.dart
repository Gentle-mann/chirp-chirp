import 'package:flutter/material.dart';

import 'src/config/theme/light_theme/theme.dart';
import 'src/presentation/pages/onboarding/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: LightTheme.theme(),
      home: const OnboardingScreen(),
    );
  }
}
