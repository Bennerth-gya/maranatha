import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:maranatha/common/widgets/texts/Maranatha_brand_title_text.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/constants/enums.dart';
import 'package:maranatha/utils/constants/sizes.dart';

class MaranathaBrandTitleTextWithVerifiedIcon extends StatelessWidget {
  const MaranathaBrandTitleTextWithVerifiedIcon({
    super.key,
    this.textColor,
    this.maxLines = 1,
    required this.title,
    this.iconColor = MaranathaColors.primaryColor,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: MaranathaBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign:  TextAlign.left,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: MaranathaSizes.xs),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: MaranathaSizes.Iconxs,
        ),
      ],
    );
  }
}
