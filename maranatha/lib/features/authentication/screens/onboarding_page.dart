import 'package:flutter/material.dart';
import 'package:maranatha/utils/constants/image_strings.dart';
import 'package:maranatha/utils/constants/text_strings.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key, required String image, required String title, required String subTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
            children: [
              Image(
                width: MaranathaHelperFunctions.screenHeight() * 0.8,
                height: MaranathaHelperFunctions.screenHeight() * 0.6,
                image: const AssetImage(MaranathaImages.OnBoardingImage1)
                ),
                Text(
                  MaranathaTexts.onBoardingTitle1,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                  ),
                  Text(
                    MaranathaTexts.onBoardingSubTitle1,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  )
            ],
          )
        ],
      )
      );
  }
}