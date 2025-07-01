import 'package:flutter/material.dart';
import 'package:maranatha/common/styles/spacing_style.dart';
import 'package:maranatha/utils/constants/image_strings.dart';
import 'package:maranatha/utils/constants/sizes.dart';
import 'package:maranatha/utils/constants/text_strings.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';
import 'package:maranatha/utils/constants/colors.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});
  final String image, title, subTitle;
  final VoidCallback? onPressed;


  @override
  Widget build(BuildContext context) {
    final isDark = MaranathaHelperFunctions.isDarkMode(context);
    
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

              //Button with theme-aware colors
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isDark ? Colors.white : Colors.blue,
                    foregroundColor: isDark ? Colors.black : Colors.white,
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