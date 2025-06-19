import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:maranatha/common/widgets/Icons/Maranatha_circular_icon.dart';
import 'package:maranatha/common/widgets/appbar/appbar.dart';
import 'package:maranatha/common/widgets/products_cart/layouts/grid_layout.dart';
import 'package:maranatha/common/widgets/products_cart/product_cart_horizontal.dart';
import 'package:maranatha/common/widgets/products_cart/product_cart_vertical.dart';
import 'package:maranatha/features/shop/screens/home/home.dart';
import 'package:maranatha/utils/constants/image_strings.dart';
import 'package:maranatha/utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MaranathaAppBar(
        title: Text('wishlist', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          MaranathaCircularIcon(icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen()),)
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MaranathaSizes.defaultSpace),
          child: Column(
            children: [
              MaranathaGridLayout(itemCount: 6, itemBuilder: (_, index) => const MaranathaProductCartVertical(imageUrl: MaranathaImages.heater,))
            ],
          ),
          ),
      ),
    );
  }
}