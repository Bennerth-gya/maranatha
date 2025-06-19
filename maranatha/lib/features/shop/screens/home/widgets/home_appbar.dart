import 'package:flutter/material.dart';
import 'package:maranatha/common/widgets/appbar/appbar.dart';
import 'package:maranatha/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/constants/text_strings.dart';


class MaranathaHomeAppBar extends StatelessWidget {
  const MaranathaHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaranathaAppBar(
      title: Column(
        children: [
          Text(MaranathaTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: MaranathaColors.grey)),
          Text(MaranathaTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: MaranathaColors.white),)
        ],
      ),
      actions: [
        MaranathaCartCounterIcon(onPressed: () {}, iconColor: MaranathaColors.white,)
      ],
    );
  }
}

