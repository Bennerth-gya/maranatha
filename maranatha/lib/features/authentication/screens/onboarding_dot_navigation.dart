import 'package:flutter/material.dart';
import 'package:maranatha/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/constants/sizes.dart';
import 'package:maranatha/utils/device/device_utility.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = MaranathaHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: MaranathaDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: MaranathaSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick, 
        count: 3,
        effect: ExpandingDotsEffect(
        activeDotColor: dark ? MaranathaColors.light: MaranathaColors.dark,
        dotHeight: 6
      ),
        ),
    );
  }
}