import 'package:flutter/material.dart';
import 'package:maranatha/common/widgets/brands/brand_show_case.dart';
import 'package:maranatha/common/widgets/products_cart/layouts/grid_layout.dart';
import 'package:maranatha/common/widgets/products_cart/product_cart_vertical.dart';
import 'package:maranatha/common/widgets/texts/section_heading.dart';
import 'package:maranatha/utils/constants/image_strings.dart';
import 'package:maranatha/utils/constants/sizes.dart';

class MaranathaCategoryTab extends StatelessWidget {
  const MaranathaCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children:[
         Padding(
              padding: const EdgeInsets.all(MaranathaSizes.defaultSpace),
              child: Column(
                children: [
                  //<<------------------Brands------------------->>
      
                  const MaranathaBrandShowcase(images: [MaranathaImages.promoBanner1, MaranathaImages.product1, MaranathaImages.promoBanner2],),
                  const MaranathaBrandShowcase(images: [MaranathaImages.promoBanner1, MaranathaImages.product1, MaranathaImages.promoBanner2],),

                  const SizedBox(height: MaranathaSizes.spaceBtwItems,),
      
                  // <<--------------------Products-------------------->>
                  MaranathaSectionHeading(title: 'You might like', onPressed: (){},),
                  const SizedBox(height: MaranathaSizes.spaceBtwItems,),
      
                  MaranathaGridLayout(itemCount: 4, itemBuilder: (_, index) =>  MaranathaProductCartVertical(imageUrl:  MaranathaImages.menshirt,)),
                  const SizedBox(height: MaranathaSizes.spaceBtwSections,)
                ],
              ),
              ),
      ]
    );
  }
}
