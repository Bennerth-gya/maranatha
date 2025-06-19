import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:maranatha/common/styles/images/Maranatha_Rounded_images.dart';
import 'package:maranatha/common/widgets/Icons/Maranatha_circular_icon.dart';
import 'package:maranatha/common/widgets/appbar/appbar.dart';
import 'package:maranatha/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/constants/image_strings.dart';
import 'package:maranatha/utils/constants/sizes.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';


class MaranathaImageSlider extends StatelessWidget {
  const MaranathaImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = MaranathaHelperFunctions.isDarkMode(context);
    return MaranathaCurvedEdgesWidget(
      child: Container(
        color: dark ? MaranathaColors.darkerGrey : MaranathaColors.white,
        child: Stack(
          children: [
            //<<---------------Main Large Image------------------->>
            SizedBox(height: 300, child: Padding(
              padding: const EdgeInsets.all(MaranathaSizes.productImageRadius),
              child: Center(child: Image(image: AssetImage(MaranathaImages.menshirt))),
            )
            ),
    
            // <<-------Image Slider--------->>
            Positioned(
              right: 0,
              bottom: 30,
              left: MaranathaSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, _) => const SizedBox(width: MaranathaSizes.spaceBtwItems,), 
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) => MaranathaRoundImage(
                    width: 80,
                    backgroundColor: dark ? MaranathaColors.dark : MaranathaColors.white,
                    border: Border.all(color: MaranathaColors.primaryColor),
                    padding: const EdgeInsets.all(MaranathaSizes.sm),
                    imageUrl: MaranathaImages.blackjacket,
                    ),
                  
                ),
              ),
            ),
            //<<------------AppBar Icons---------->>
            const MaranathaAppBar(
              showBackArrow: true,
              actions: [
                MaranathaCircularIcon(icon: Iconsax.heart, color: Colors.red,)
              ],
            )
          ],
        ),
      ),
    );
  }
}