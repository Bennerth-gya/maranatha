import 'package:flutter/material.dart';
import 'package:maranatha/common/widgets/appbar/appbar.dart';
import 'package:maranatha/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:maranatha/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:maranatha/common/widgets/products_cart/layouts/grid_layout.dart';
import 'package:maranatha/common/widgets/products_cart/product_cart_vertical.dart';
import 'package:maranatha/common/widgets/texts/section_heading.dart';
import 'package:maranatha/features/shop/screens/home/widgets/home_categories.dart';
import 'package:maranatha/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:maranatha/utils/constants/image_strings.dart';
import 'package:maranatha/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Option 1: Use MaranathaAppBar directly in Scaffold's appBar property
      // This is the standard way to have an AppBar at the top.
      // If MaranathaAppBar is designed to be used here, this is ideal.
      // appBar: const MaranathaAppBar(), // Uncomment this if MaranathaAppBar works as a direct AppBar

      body: SingleChildScrollView(
        child: Column(
          children: [
            // <<---------------Header (PrimaryHeaderContainer)---------------->>
            // This container will now include the App Bar (if not in Scaffold's appBar)
            // and the top content.
            const MaranathaPrimaryHeaderContainer(
              // The height of this container might need adjustment or to be dynamic
              // to ensure all its content (including app bar elements) fits.
              child: Column(
                children: [
                  // Option 2: If MaranathaAppBar *must* remain inside PrimaryHeaderContainer,
                  // you can add padding/SizedBox directly to the top of its content.
                  // This is less common but works if PrimaryHeaderContainer is a custom app bar region.
                  // If you use Scaffold's appBar, remove MaranathaAppBar from here.
                  // const SizedBox(height: MaranathaSizes.appBarHeight), // Add this if you want space above content *within* the header
                  MaranathaAppBar(), // Keep this if you don't use Scaffold's appBar property
                  SizedBox(height: MaranathaSizes.spaceBtwSections),
                  MaranathaSearchContainer(text: 'Search in store'),
                  SizedBox(height: MaranathaSizes.spaceBtwSections),
                  Padding(
                    padding: EdgeInsets.only(left: MaranathaSizes.defaultSpace),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaranathaSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: MaranathaSizes.spaceBtwItems),
                        MaranathaHomeCategories(), // This widget should now be visible
                      ],
                    ),
                  ),
                  SizedBox(height: MaranathaSizes.spaceBtwSections,)
                ],
              ),
            ),

            // <<--------------------Body Content Below Header--------------------->
            // This Padding and its children constitute the main scrollable body.
            Padding(
              padding: const EdgeInsets.all(MaranathaSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // <<------------------Promo Slider----------------->>

                  const MaranathaPromoSlider(
                    banners: [
                      MaranathaImages.promoBanner1,
                      MaranathaImages.woodenbed,
                      MaranathaImages.heater
                    ],
                  ),

                  //<<------------------Heading--------------------->>

                  MaranathaSectionHeading(title: 'Popular Products', onPressed: (){}),
                  const SizedBox(height:10 ),

                  //<<------------------ Product Card Vertical---------------------->>
                  // Ensure MaranathaProductCartVertical is correctly imported and has required properties
                  MaranathaGridLayout(itemCount: 2, itemBuilder: (_, index) => const MaranathaProductCartVertical(imageUrl: MaranathaImages.redjordan,)),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
