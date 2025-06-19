import 'package:flutter/material.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/device/device_utility.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';

class MaranathaTabBar extends StatelessWidget implements PreferredSizeWidget{
  //<<<<<-------------------------Why PreferredSizeWidget------------------------->>>>>
  // If you want to add the background color to tabs you have to wrap them in material widget.
  // To do that we need [PreferredSizeWidget] widget and that's why created custom [PreferredSizeWidget]
  const MaranathaTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = MaranathaHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? MaranathaColors.black : MaranathaColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: MaranathaColors.primaryColor,
        labelColor: dark ? MaranathaColors.white : MaranathaColors.darkGrey,
        unselectedLabelColor: MaranathaColors.darkGrey,
        ),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(MaranathaDeviceUtils.getAppBarHeight());
}