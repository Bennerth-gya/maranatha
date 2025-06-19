import 'package:flutter/material.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/constants/image_strings.dart';
import 'package:maranatha/utils/constants/sizes.dart';


class MaranathaSocialButtons extends StatelessWidget {
  const MaranathaSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: MaranathaColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: (){}, 
            icon: const Image(
              width: MaranathaSizes.Iconmd,
              height: MaranathaSizes.Iconmd,
              image: AssetImage(MaranathaImages.google)
              )
            ),
        ),
        const SizedBox(width: MaranathaSizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: MaranathaColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: (){}, 
            icon: const Image(
              width: MaranathaSizes.Iconmd,
              height: MaranathaSizes.Iconmd,
              image: AssetImage(MaranathaImages.darkAppLogo)
              )
            ),
        ),
      ],
    );
  }
}