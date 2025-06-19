import 'package:flutter/material.dart';
import 'package:maranatha/common/widgets/products_cart/Maranatha_Rounded_container.dart';
import 'package:maranatha/features/shop/screens/store/maranatha_grid_layout.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/constants/sizes.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';


class MaranathaBrandShowcase extends StatelessWidget {
  const MaranathaBrandShowcase({
    super.key,
    required this.images
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return MaranathaRoundedContainer(
      showBorder: true,
      borderColor: MaranathaColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(MaranathaSizes.md),
      margin: const EdgeInsets.only(bottom: MaranathaSizes.spaceBtwItems),
      child: Column(
        children: [
          //<<------------------Brand With Product Count-------------------------->>
          const MaranathaBrandCard(),
          const SizedBox(height: MaranathaSizes.spaceBtwItems,),
    
          //<<-------------------------Brand Tap 3 Product Images------------------------>>
          Row(
            children: images.map((image) => brandTopProductImagesWidget(image, context)).toList()
          )
        ],
      ),
    );
  }
}

Widget brandTopProductImagesWidget(String image, context){
  return Expanded(
    child: MaranathaRoundedContainer(
      height: 180,
      padding: const EdgeInsets.all(MaranathaSizes.md),
      margin: const EdgeInsets.only(right: MaranathaSizes.sm),
      backgroundColor: MaranathaHelperFunctions.isDarkMode(context) ? MaranathaColors.darkerGrey : MaranathaColors.light,
      child: Image(fit: BoxFit.contain, image: AssetImage(image)),
    )
    );
}