import 'package:flutter/material.dart';
import 'package:get/get.dart'; // ✅ Use `get` instead of `get_navigation`
import 'package:maranatha/features/authentication/screens/onboarding.dart';
import 'package:maranatha/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false, // Optional: hides debug banner
      themeMode: ThemeMode.system,
      theme: MaranathaAppTheme.lightTheme,
      darkTheme: MaranathaAppTheme.darkTheme, // ✅ Uncomment this if defined
      home: const OnBoardingScreen(), // ✅ Add `const` for performance
    );
  }
}
