import 'package:flutter/material.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/constants/image_strings.dart';
import 'package:maranatha/utils/constants/sizes.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';



class MaranathaVerticalImageText extends StatelessWidget {
  const MaranathaVerticalImageText({
    super.key, 
    required this.image, 
    required this.title, 
    this.textColor = Colors.white, 
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    MaranathaHelperFunctions.isDarkMode(context);
    
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: MaranathaSizes.spaceBtwItems),
        child: Column(
          // circular Icon
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(MaranathaSizes.sm),
              decoration: BoxDecoration(
                color: MaranathaColors.white,
                borderRadius: BorderRadius.circular(100)
              ),
              child: const Center(
                child: Image(image: AssetImage(MaranathaImages.sportIcon)),
              ),
            ),
            const SizedBox(height: MaranathaSizes.spaceBtwItems / 2,),
            SizedBox(
              width: 55,
              child: Text(
                'Sports', 
                style: Theme.of(context).textTheme.labelMedium!.apply(color: MaranathaColors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                ),
                ),
          ],
        ),
      ),
    );
  }
}
