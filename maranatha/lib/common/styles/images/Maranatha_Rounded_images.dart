import 'package:flutter/material.dart';
import 'package:maranatha/utils/constants/sizes.dart';

class MaranathaRoundImage extends StatelessWidget {
  const MaranathaRoundImage({
    super.key, 
    this.border,
    this.padding,
    this.onPressed,
    this.width,
    this.height,
    this.applyImagesRadius = true,
    required this.imageUrl,
    this.fit = BoxFit.contain,
    this.backgroundColor,
    this.isNetworkImage = false,
    this.borderRadius = MaranathaSizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImagesRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImagesRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
