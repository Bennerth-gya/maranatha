import 'package:flutter/material.dart';
import 'package:maranatha/common/styles/spacing_style.dart';
import 'package:maranatha/utils/constants/image_strings.dart';
import 'package:maranatha/utils/constants/sizes.dart';
import 'package:maranatha/utils/constants/text_strings.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});
  final String image, title, subTitle;
  final VoidCallback? onPressed;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MaranathaSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              // Image
              Image(image: const AssetImage(
                MaranathaImages.staticSuccessIllustration),
                width: MaranathaHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: MaranathaSizes.spaceBtwItems,),


              // Title & SubTitle
              Text('support@gmail.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              const SizedBox(height: MaranathaSizes.spaceBtwItems,),
              Text(MaranathaTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: MaranathaSizes.spaceBtwItems,),

              //Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Set the background color to blue
                  ),
                  child: const Text('Continue'),
                ),
              )
            ],
          ),
          ),
      ),
    );
  }
}