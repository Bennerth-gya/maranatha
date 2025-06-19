import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:maranatha/features/personlization/screens/settings/settings.dart';
import 'package:maranatha/features/shop/screens/home/home.dart';
import 'package:maranatha/features/shop/screens/store/store.dart';
import 'package:maranatha/features/shop/screens/wishlist/wishlist.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';


class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = MaranathaHelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? MaranathaColors.black : Colors.white,
          indicatorColor: darkMode ? MaranathaColors.white.withOpacity(0.1) : MaranathaColors.black.withOpacity(0.1),
          destinations: const[
             NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
             NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
             NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
             NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ]
          ),
      ),
        body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const FavouriteScreen(),
    const SettingsScreen(),
  ];
}