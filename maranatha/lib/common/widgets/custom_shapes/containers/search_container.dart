import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/constants/sizes.dart';
import 'package:maranatha/utils/device/device_utility.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';

class MaranathaSearchContainer extends StatelessWidget {
  const MaranathaSearchContainer({
    super.key, 
    required this.text, 
    this.icon = Iconsax.search_normal, 
    this.showBackground = true, 
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: MaranathaSizes.defaultSpace)
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = MaranathaHelperFunctions.isDarkMode(context);
    MaranathaHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: MaranathaSizes.defaultSpace),
        child: Container(
          width: MaranathaDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(MaranathaSizes.md),
          decoration: BoxDecoration(
            color: showBackground ? 
            dark ? MaranathaColors.dark 
            : MaranathaColors.light 
            : Colors.transparent,
            borderRadius: BorderRadius.circular(MaranathaSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: MaranathaColors.grey) : null
          ),
          child: Row(
            children: [
              Icon(
                Iconsax.search_normal,
                color: Theme.of(context).iconTheme.color,
              ),
              const SizedBox(width: MaranathaSizes.spaceBtwItems,),
              Text(
                'Search in store',
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
