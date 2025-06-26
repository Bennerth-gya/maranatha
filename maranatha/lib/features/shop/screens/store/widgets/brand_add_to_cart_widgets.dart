import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:maranatha/common/widgets/Icons/Maranatha_circular_icon.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/constants/sizes.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';

class MaranathaButtonAddToCart extends StatelessWidget {
  const MaranathaButtonAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MaranathaHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: MaranathaSizes.defaultSpace, vertical: MaranathaSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? MaranathaColors.darkerGrey : MaranathaColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(MaranathaSizes.cardRadiusLg),
          topRight: Radius.circular(MaranathaSizes.cardRadiusLg)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              MaranathaCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: MaranathaColors.darkerGrey,
                width: 40,
                height: 40,
                color: MaranathaColors.white,
                ),
                const SizedBox(width: MaranathaSizes.spaceBtwItems,),
            Text('2', style: Theme.of(context).textTheme.titleSmall,),
            const SizedBox(width: MaranathaSizes.spaceBtwItems),
            const MaranathaCircularIcon(
            icon: Iconsax.add,
            backgroundColor: MaranathaColors.black,
            width: 40,
            height: 40,
            color: MaranathaColors.white,
            ),
            ],
          ),
          ElevatedButton(
          onPressed: (){}, 
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(MaranathaSizes.md),
            backgroundColor: MaranathaColors.black,
            side: const BorderSide(color: MaranathaColors.black),
          ),
          child: Text('Add to cart'),
          )
            
        ],
      ),
    );
  }
}