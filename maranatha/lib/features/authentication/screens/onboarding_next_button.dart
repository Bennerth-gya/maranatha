import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:maranatha/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/constants/sizes.dart';
import 'package:maranatha/utils/device/device_utility.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MaranathaHelperFunctions.isDarkMode(context);
    return Positioned(
      right: MaranathaSizes.defaultSpace,
      bottom: MaranathaDeviceUtils.getAppBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? MaranathaColors.dark : Colors.black
        ),
        child: const Icon(Iconsax.arrow_right_3)
        )
      );
  }
}