import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/constants/text_strings.dart';

class MaranathaFormDivider extends StatelessWidget {
  const MaranathaFormDivider({super.key, required String dividerText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Flexible(
          child: Divider(
            color: MaranathaColors.black,
            thickness: 0.5, 
            indent: 60, 
            endIndent: 5,
          ),
        ),
        Text(
          MaranathaTexts.orSignInWith.capitalize!,
          style: Theme.of(context).textTheme.labelMedium,
          ),
          const Flexible(
          child: Divider(
            color: MaranathaColors.black,
            thickness: 0.5, 
            indent: 5, 
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}