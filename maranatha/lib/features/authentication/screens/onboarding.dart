import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maranatha/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:maranatha/features/authentication/screens/onboarding_dot_navigation.dart';
import 'package:maranatha/features/authentication/screens/onboarding_next_button.dart';
import 'package:maranatha/features/authentication/screens/onboarding_skip.dart';
import 'package:maranatha/utils/constants/image_strings.dart';
import 'package:maranatha/utils/constants/sizes.dart';
import 'package:maranatha/utils/constants/text_strings.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // horizontal scrollable
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: MaranathaImages.OnBoardingImage1,
                title: MaranathaTexts.onBoardingTitle1,
                subTitle: MaranathaTexts.onBoardingSubTitle1,
                ),
                OnBoardingPage(
                image: MaranathaImages.OnBoardingImage2,
                title: MaranathaTexts.onBoardingTitle2,
                subTitle: MaranathaTexts.onBoardingSubTitle2,
                ),
                OnBoardingPage(
                image: MaranathaImages.OnBoardingImage3,
                title: MaranathaTexts.onBoardingTitle3,
                subTitle: MaranathaTexts.onBoardingSubTitle3,
                )
            ],
          ),
          // skip button
          const OnBoardingSkip(),

          //Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          // Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}







class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.image, required this.title, required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MaranathaSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: MaranathaHelperFunctions.screenWidth() * 0.8,
            height: MaranathaHelperFunctions.screenWidth() * 0.6,
            image: AssetImage(image)
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
      
              ),
              const SizedBox(height: MaranathaSizes.spaceBtwItems,),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              )
        ],
      ),
    );
  }
}