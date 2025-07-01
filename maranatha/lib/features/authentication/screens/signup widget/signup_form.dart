import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:maranatha/features/authentication/screens/signup%20widget/verify_email.dart';
import 'package:maranatha/utils/constants/sizes.dart';
import 'package:maranatha/utils/constants/text_strings.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';

class MaranathaSignUpForm extends StatelessWidget {
  const MaranathaSignUpForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final isDark = MaranathaHelperFunctions.isDarkMode(context);
    
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: MaranathaTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: MaranathaSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: MaranathaTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: MaranathaSizes.spaceBtwInputFields),

          // Username
          TextFormField(
            decoration: const InputDecoration(
              labelText: MaranathaTexts.userName,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: MaranathaSizes.spaceBtwInputFields),

          // Email
          TextFormField(
            decoration: const InputDecoration(
              labelText: MaranathaTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: MaranathaSizes.spaceBtwInputFields),

          // Phone number
          TextFormField(
            decoration: const InputDecoration(
              labelText: MaranathaTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: MaranathaSizes.spaceBtwInputFields),

          // Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: MaranathaTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: MaranathaSizes.spaceBtwInputFields),

          // Terms & Conditions Checkbox
          Row(
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(value: true, onChanged: (value) {}),
              ),
              const SizedBox(width: MaranathaSizes.spaceBtwItems),
              Expanded(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '${MaranathaTexts.iAgreeTo} ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: MaranathaTexts.privacyPolicy,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                      ),
                      TextSpan(
                        text: ' and ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: MaranathaTexts.termOfUse,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: MaranathaSizes.spaceBtwInputFields),

          // Sign Up Button with theme-aware colors
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const verifyEmailScreen()),
              style: ElevatedButton.styleFrom(
                backgroundColor: isDark ? Colors.white : Colors.blue,
                foregroundColor: isDark ? Colors.black : Colors.white,
              ),
              child: const Text(MaranathaTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
