import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:maranatha/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:maranatha/utils/constants/sizes.dart';
import 'package:maranatha/utils/constants/text_strings.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = MaranathaHelperFunctions.isDarkMode(context);
    
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(MaranathaSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headings
            Text(
              MaranathaTexts.forgotPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: MaranathaSizes.spaceBtwItems),
            Text(
              MaranathaTexts.forgotPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: MaranathaSizes.spaceBtwSections * 2),

            // Textfield
            TextFormField(
              decoration: const InputDecoration(
                labelText: MaranathaTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: MaranathaSizes.spaceBtwSections),

            // Submit Button with theme-aware colors
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const ResetPassword()),
                style: ElevatedButton.styleFrom(
                  backgroundColor: isDark ? Colors.white : Colors.blue,
                  foregroundColor: isDark ? Colors.black : Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
