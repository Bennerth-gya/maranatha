import 'package:flutter/material.dart';
import 'package:maranatha/common/styles/images/Maranatha_Circular_image.dart';
import 'package:maranatha/common/widgets/products_cart/Maranatha_Rounded_container.dart';
import 'package:maranatha/common/widgets/texts/Maranatha_brand_title_text_with_verified_icon.dart';
import 'package:maranatha/common/widgets/texts/product_price_text.dart';
import 'package:maranatha/common/widgets/texts/product_title_text.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/constants/enums.dart';
import 'package:maranatha/utils/constants/image_strings.dart';
import 'package:maranatha/utils/constants/sizes.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';
// Import HelperFunctions

class MaranathaProductMetaData extends StatelessWidget {
  const MaranathaProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = MaranathaHelperFunctions.isDarkMode(context); // Access darkMode via HelperFunctions

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //<<--------------------Price & Sale Price----------------------->>
        Row(
          children: [
            MaranathaRoundedContainer(
              radius: MaranathaSizes.sm,
              backgroundColor: MaranathaColors.secondaryColor.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: MaranathaSizes.sm, vertical: MaranathaSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context).textTheme.labelLarge!.apply(color: MaranathaColors.black),
              ),
            ),
            const SizedBox(width: MaranathaSizes.spaceBtwItems),
            // <<--------------Price--------------->>
            Text(
              '\$250',
              style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: MaranathaSizes.spaceBtwItems),
            const MaranathaProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(height: MaranathaSizes.spaceBtwItems / 1.5),

        //<<------------------------Title------------------------>>
        const MaranathaProductTitleText(title: 'Green Nike Sports Shirt'),
        const SizedBox(height: MaranathaSizes.spaceBtwItems / 1.5),

        // <<-----------------Stack Status------------------>>
        Row(
          children: [
            const MaranathaProductTitleText(title: 'Status'),
            const SizedBox(width: MaranathaSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),

        const SizedBox(height: MaranathaSizes.spaceBtwItems / 1.5),

        //<<---------------------Brand-------------------->>
        Row(
          children: [
            MaranathaCircularImage(
              image: MaranathaImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: darkMode ? MaranathaColors.white : MaranathaColors.black,
            ),
            const MaranathaBrandTitleTextWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.medium),
          ],
        )
      ],
    );
  }
}