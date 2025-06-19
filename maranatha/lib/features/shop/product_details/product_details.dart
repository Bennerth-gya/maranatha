import 'package:flutter/material.dart';
import 'package:maranatha/features/shop/product_details/product_attributes.dart';
import 'package:maranatha/features/shop/product_details/product_details_image_slider.dart';
import 'package:maranatha/features/shop/product_details/product_meta_data.dart';
import 'package:maranatha/features/shop/product_details/rating_share_widget.dart';
import 'package:maranatha/utils/constants/sizes.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MaranathaHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // <<------------product Image---------->>
            MaranathaImageSlider(),

            // <<-------product Details----------->>
            Padding(
              padding: EdgeInsets.only(right: MaranathaSizes.defaultSpace, left: MaranathaSizes.defaultSpace, bottom: MaranathaSizes.defaultSpace),
              child: Column(
                children: [
                  //<<--------------Rating & share------------------>>
                  MaranathaRatingAndShare(),

                  //<<------------------------Price--------------------------->>
                  MaranathaProductMetaData(),

                  //<<---------------------Atrributes------------------>>

                  MaranathaProductAttributes()
                ],
              ),
              )
          ],
        ),
      ),
    );
  }
}
