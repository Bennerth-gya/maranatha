import 'package:flutter/material.dart';
import 'package:maranatha/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:maranatha/utils/constants/sizes.dart';
import 'package:maranatha/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
    });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MaranathaDeviceUtils.getAppBarHeight(),
      right: MaranathaSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(), 
        child: const Text('Skip')
        ),
    );
  }
}