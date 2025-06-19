import 'package:flutter/material.dart';
import 'package:maranatha/common/styles/images/Maranatha_Circular_image.dart';
import 'package:maranatha/common/widgets/products_cart/Maranatha_Rounded_container.dart';
import 'package:maranatha/common/widgets/texts/Maranatha_brand_title_text_with_verified_icon.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/constants/enums.dart';
import 'package:maranatha/utils/constants/image_strings.dart';
import 'package:maranatha/utils/constants/sizes.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';

class MaranathaBrandCart extends StatelessWidget {
  const MaranathaBrandCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: MaranathaRoundedContainer(
        padding: const EdgeInsets.all(MaranathaSizes.sm),
        showBorder: true,
        backgroundColor: Colors.transparent,
        child: Row( // bring text closer to top
          children: [
            // <---------------Icon---------------->
            Flexible(
              child: MaranathaCircularImage(
                isNetworkImage: false,
                image: MaranathaImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor: MaranathaHelperFunctions.isDarkMode(context)
                    ? MaranathaColors.white
                    : MaranathaColors.black,
              ),
            ),
            const SizedBox(width: MaranathaSizes.spaceBtwItems / 2),

            // <--------------Text-------------->
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 2), // lift text up slightly
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaranathaBrandTitleTextWithVerifiedIcon(
                      title: 'Nike',
                      brandTextSize: TextSizes.large,
                    ),
                    SizedBox(height: 2), // reduce spacing
                    Text(
                      '256 products',
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
