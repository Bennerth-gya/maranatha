import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:maranatha/common/styles/images/Maranatha_Rounded_images.dart';
import 'package:maranatha/common/styles/shadows.dart';
import 'package:maranatha/common/widgets/Icons/Maranatha_circular_icon.dart';
import 'package:maranatha/common/widgets/products_cart/Maranatha_Rounded_container.dart';
import 'package:maranatha/features/shop/product_details/product_details.dart';
import 'package:maranatha/utils/constants/colors.dart';
// import 'package:maranatha/utils/constants/image_strings.dart'; // No longer directly used here, passed via constructor
import 'package:maranatha/utils/constants/sizes.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';

class MaranathaProductCartVertical extends StatelessWidget {
  // Add a required imageUrl parameter to the constructor
  const MaranathaProductCartVertical({super.key, required this.imageUrl});

  // Declare the imageUrl property
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final dark = MaranathaHelperFunctions.isDarkMode(context);
    final screenWidth = MediaQuery.of(context).size.width;
    double cardWidth = 180;
    double imageHeight = 180;
    if (screenWidth >= 1200) {
      cardWidth = 260;
      imageHeight = 260;
    } else if (screenWidth >= 900) {
      cardWidth = 220;
      imageHeight = 220;
    }
    //<<--------Container with size padding, color, edges, radius and shadow--------->>
    return GestureDetector(
      onTap: () => Get.to(() =>const ProductDetailsScreen() ),
      child: Container(
        width: cardWidth,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [MaranathaShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(MaranathaSizes.productImageRadius),
          color: dark ? MaranathaColors.darkerGrey : MaranathaColors.white,
        ),
        child: Column(
          children: [
            //<<---------Thumbnail, Wishlist Button, Discount Tag----------->>
            MaranathaRoundedContainer(
              height: imageHeight,
              padding: const EdgeInsets.all(MaranathaSizes.sm),
              backgroundColor: dark ? MaranathaColors.dark : MaranathaColors.light,
              child: Stack(
                children: [
                  //<<-----------Thumbnail Image----------------->>
                  // Use the imageUrl passed to this widget
                  MaranathaRoundImage(imageUrl: imageUrl, applyImagesRadius: true,),


                  //<<------------Sale Tag------------>>
                  Positioned(
                    child: MaranathaRoundedContainer(
                      radius: MaranathaSizes.sm,
                      backgroundColor: MaranathaColors.secondaryColor.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: MaranathaSizes.sm, vertical: MaranathaSizes.xs),
                      child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: MaranathaColors.black),),
                    )
                    ),

                    //<<----------Favourite Icon Button------->>
                    const Positioned(
                      top: 0,
                      right: 0,
                      child: MaranathaCircularIcon(icon: Iconsax.heart5, color: Colors.red,)
                    )
                ],
              ),
            ),

            //<<-------------------Details------------------->>
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: MaranathaSizes.sm),

              //<<-----------------Only reason to use [Sizedbox] here is to make Column full width-------------->>
              child: SizedBox(
                width: double.infinity,
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ),
              )
          ],
        ),
      ),
    );
  }
}
