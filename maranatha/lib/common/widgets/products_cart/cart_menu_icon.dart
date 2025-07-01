import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';

class MaranathaCartCounterIcon extends StatelessWidget {
  const MaranathaCartCounterIcon({
    super.key,
    this.onPressed,
    this.iconColor,
    this.counterBgColor,
    this.counterTextColor,
  });

  final VoidCallback? onPressed;
  final Color? iconColor;
  final Color? counterBgColor;
  final Color? counterTextColor;

  @override
  Widget build(BuildContext context) {
    final isDark = MaranathaHelperFunctions.isDarkMode(context);
    
    // Theme-aware colors
    final defaultIconColor = isDark ? Colors.white : Colors.black;
    final defaultCounterBgColor = isDark ? Colors.white : Colors.black;
    final defaultCounterTextColor = isDark ? Colors.black : Colors.white;

    return Stack(
      children: [
        IconButton(
          onPressed: onPressed ?? () {}, 
          icon: Icon(
            Iconsax.shopping_bag, 
            color: iconColor ?? defaultIconColor,
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: counterBgColor ?? defaultCounterBgColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2', 
                style: Theme.of(context).textTheme.labelLarge!.apply(
                  color: counterTextColor ?? defaultCounterTextColor, 
                  fontSizeFactor: 0.8,
                ),
              ),
            ),
          )
        )
      ],
    );
  }
}