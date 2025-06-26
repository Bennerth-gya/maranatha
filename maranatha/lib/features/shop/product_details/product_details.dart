import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:maranatha/common/widgets/texts/section_heading.dart';
import 'package:maranatha/features/shop/product_details/product_attributes.dart';
import 'package:maranatha/features/shop/product_details/product_details_image_slider.dart';
import 'package:maranatha/features/shop/product_details/product_meta_data.dart';
import 'package:maranatha/features/shop/product_details/rating_share_widget.dart';
import 'package:maranatha/features/shop/screens/store/widgets/brand_add_to_cart_widgets.dart';
import 'package:maranatha/utils/constants/sizes.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MaranathaHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: MaranathaButtonAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // <<------------product Image---------->>
            const MaranathaImageSlider(),

            // <<-------product Details----------->>
            Padding(
              padding: const EdgeInsets.only(
                right: MaranathaSizes.defaultSpace,
                left: MaranathaSizes.defaultSpace,
                bottom: MaranathaSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  // <<--------------Rating & share------------------>>
                  const MaranathaRatingAndShare(),

                  // <<------------------------Price--------------------------->
                  const MaranathaProductMetaData(),

                  // <<---------------------Attributes------------------>>
                  const MaranathaProductAttributes(),

                  // <<---------------Checkout Button---------------------->>
                  const SizedBox(height: MaranathaSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Blue background
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Checkout',
                        style: TextStyle(
                          color: Colors.white, // White text
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  //<<----------------------Description------------------>>
                  const MaranathaSectionHeading(title: 'Description'),
                  const SizedBox(height: MaranathaSizes.spaceBtwItems,),
                  ReadMoreText(
                    "This is a description for Blue Nike Steve less vest. There are more things that can be added but 1",
                    trimLines: 1,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  //<<---------------------Reviews--------------------->>
                  const Divider(),
                  const SizedBox(height: MaranathaSizes.spaceBtwItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaranathaSectionHeading(title: 'Reviews(199)', showActionButton: false,),
                      IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_3, size: 18,))
                    ],
                  ),
                  const SizedBox(height: MaranathaSizes.spaceBtwSections,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
