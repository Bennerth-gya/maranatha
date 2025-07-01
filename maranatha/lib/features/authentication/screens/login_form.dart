import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:maranatha/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:maranatha/features/authentication/screens/signup%20widget/signup.dart';
import 'package:maranatha/navigation_menu.dart';
import 'package:maranatha/utils/constants/sizes.dart';
import 'package:maranatha/utils/constants/text_strings.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';

class MaranathaLoginForm extends StatelessWidget {
  const MaranathaLoginForm({super.key, required bool dark});

  @override
  Widget build(BuildContext context) {
    final isDark = MaranathaHelperFunctions.isDarkMode(context);
    
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: MaranathaSizes.spaceBtwSections),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'E-Mail',
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: MaranathaTexts.email,
              ),
            ),
            const SizedBox(height: MaranathaSizes.spaceBtwInputFields),

            // Password
            TextFormField(
              decoration: const InputDecoration(
                hintText: MaranathaTexts.password,
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Iconsax.password_check),
                labelText: MaranathaTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: MaranathaSizes.spaceBtwInputFields / 2),

            // Remember Me & Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
                const Text(MaranathaTexts.rememberMe),

                // Forget password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(MaranathaTexts.forgotPassword),
                ),
              ],
            ),
            const SizedBox(height: MaranathaSizes.spaceBtwSections),

            // Sign In Button with theme-aware colors
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(const NavigationMenu()),
                style: ElevatedButton.styleFrom(
                  backgroundColor: isDark ? Colors.white : Colors.blue,
                  foregroundColor: isDark ? Colors.black : Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                child: const Text(MaranathaTexts.signIn),
              ),
            ),

            const SizedBox(height: MaranathaSizes.spaceBtwItems),

            // Create Account Button with theme-aware colors
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const signupScreen()),
                style: OutlinedButton.styleFrom(
                  foregroundColor: isDark ? Colors.white : Colors.black,
                  side: BorderSide(
                    color: isDark ? Colors.white : Colors.black,
                  ),
                ),
                child: const Text(MaranathaTexts.createAccount),
              ),
            ),

            const SizedBox(height: MaranathaSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
