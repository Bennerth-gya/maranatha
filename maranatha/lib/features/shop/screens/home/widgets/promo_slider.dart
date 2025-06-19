import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maranatha/common/styles/images/Maranatha_Rounded_images.dart';
import 'package:maranatha/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:maranatha/features/authentication/controllers/home_controller.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/constants/sizes.dart';

class MaranathaPromoSlider extends StatelessWidget {
  const MaranathaPromoSlider({
    super.key, required this.banners
    });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
           options: CarouselOptions(
            viewportFraction: 0.9,
            autoPlay: true,
            onPageChanged: (index, _) => controller.updatePageIndicator(index)
           ),
           items: banners.map((url) => MaranathaRoundImage(imageUrl: url)).toList()
           ),
           const SizedBox(height: MaranathaSizes.spaceBtwItems,),
           Center(
             child: Obx(
                () => Row(
                  mainAxisSize: MainAxisSize.min,
                  children:  [
                    for (int i = 0; i< banners.length; i++)
                    MaranathaCircularContainer(
                      width: 20, 
                      height: 4, 
                      margin: const EdgeInsets.only(right: 10), 
                      backgroundColor: controller.carouselCurrentIndex.value == i ? MaranathaColors.primaryColor : MaranathaColors.grey
                ),
              ],
            )              
          ),
        ),
      ],
    );
  }
}