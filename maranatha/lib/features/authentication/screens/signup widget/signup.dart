import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:maranatha/common/widgets_login_signup/social_button.dart';
import 'package:maranatha/features/authentication/screens/login/form_divider.dart';
import 'package:maranatha/features/authentication/screens/signup%20widget/signup_form.dart';
import 'package:maranatha/utils/constants/sizes.dart';
import 'package:maranatha/utils/constants/text_strings.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';

// ignore: camel_case_types
class signupScreen extends StatelessWidget {
  const signupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MaranathaHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MaranathaSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // T I T L E
              Text(
                MaranathaTexts.signupTitle, 
                style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: MaranathaSizes.spaceBtwSections,),

                // F O R M
                MaranathaSignUpForm(dark: dark),
                const SizedBox(height: MaranathaSizes.spaceBtwInputFields,),
                  // Divider
                  MaranathaFormDivider(
                    dividerText: MaranathaTexts.orSignInWith.capitalize!,
                  ),
                const SizedBox(height: MaranathaSizes.spaceBtwInputFields,),
                  // social button
                  const MaranathaSocialButtons()
            ],
          ),
          ),
      ),
    );
  }
}

