import 'package:flutter/material.dart';
import 'package:maranatha/common/styles/images/Maranatha_Circular_image.dart';
import 'package:maranatha/common/widgets/products_cart/Maranatha_Rounded_container.dart';
import 'package:maranatha/common/widgets/texts/Maranatha_brand_title_text_with_verified_icon.dart';
import 'package:maranatha/utils/constants/enums.dart';
import 'package:maranatha/utils/constants/image_strings.dart';
import 'package:maranatha/utils/constants/sizes.dart';

class MaranathaGestureDetector extends StatelessWidget {
  const MaranathaGestureDetector({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                      onTap: (){},
                      child: MaranathaRoundedContainer(
                        padding: const EdgeInsets.all(MaranathaSizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          // <-------- Icon ---------->
                          children: [
                             const MaranathaCircularImage(
                              isNetworkImage: false,
                              image: MaranathaImages.clothIcon,
                              backgroundColor: Colors.transparent,
                              overlayColor: Colors.black //MaranathaHelperFunctions.isDarkMode(context) ? MaranathaColors.white : MaranathaColors.black,
                              ),
                              const SizedBox(width: MaranathaSizes.spaceBtwItems / 2,),
                      
                              // < ------ Text ------->
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const MaranathaBrandTitleTextWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.large, textColor: Colors.black, ),
                                  Text(
                                    '256 products',
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context).textTheme.labelMedium,
                                  )
                                ],
                              )
                        ],
                        )
                      ),
                    );
  }
}