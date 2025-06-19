import 'package:flutter/material.dart';
import 'package:maranatha/common/styles/spacing_style.dart';
import 'package:maranatha/features/authentication/screens/login/form_divider.dart';
import 'package:maranatha/features/authentication/screens/login/login_header.dart';
import 'package:maranatha/features/authentication/screens/login_form.dart';
import 'package:maranatha/utils/constants/image_strings.dart';
import 'package:maranatha/utils/constants/sizes.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MaranathaHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: Stack(
        children: [
          // Top-left Logo Image (clean, no black background)
          Positioned(
            top: 20.0,
            left: 20.0,
            child: SizedBox(
              width: 60,
              height: 90,
              child: Image.asset(
                MaranathaImages.lightApplogo,
                fit: BoxFit.contain,
              ),
            ),
          ),

          // Main scrollable content
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: MaranathaSpacingStyle.paddingWithAppBarHeight,
                child: Column(
                  children: [
                    const SizedBox(height: 130), // Space below the logo

                    // Login Form
                    MaranathaLoginForm(dark: dark),

                    // Divider
                    const MaranathaFormDivider(dividerText: ''),

                    const SizedBox(height: MaranathaSizes.spaceBtwItems),

                    // Footer/Header
                    const MaranathaLoginHeader(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
