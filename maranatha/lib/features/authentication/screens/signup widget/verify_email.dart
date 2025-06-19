import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maranatha/common/widgets/success_screen/success_screen.dart';
import 'package:maranatha/features/authentication/screens/login/login.dart';
import 'package:maranatha/utils/constants/image_strings.dart';
import 'package:maranatha/utils/constants/sizes.dart';
import 'package:maranatha/utils/constants/text_strings.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';

class verifyEmailScreen extends StatelessWidget {
  const verifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        // padding to give Email Space on all sizes in all screen
        child: Padding(
          padding: const EdgeInsets.all(MaranathaSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                image:
                    const AssetImage(MaranathaImages.deliveredEmailIllustration),
                width: MaranathaHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: MaranathaSizes.spaceBtwSections,
              ),

              // Title & SubTitle
              Text(
                MaranathaTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MaranathaSizes.spaceBtwItems,
              ),
              Text(
                'support@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MaranathaSizes.spaceBtwItems,
              ),
              Text(
                MaranathaTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MaranathaSizes.spaceBtwItems,
              ),
              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccessScreen(
                        image: MaranathaImages.staticSuccessIllustration,
                        title: MaranathaTexts.yourAccountCreatedTitle,
                        subTitle: MaranathaTexts.yourAccountCreatedSubTitle,
                        onPressed: () => Get.to(() => const LoginScreen()),
                      )),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('continue'),
                ),
              ),
              const SizedBox(
                height: MaranathaSizes.spaceBtwItems,
              ),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {}, child: const Text(MaranathaTexts.resendEmail)))
            ],
          ),
        ),
      ),
    );
  }
}
