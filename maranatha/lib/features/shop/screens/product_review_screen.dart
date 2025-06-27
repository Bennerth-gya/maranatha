import 'package:flutter/material.dart';
import 'package:maranatha/common/widgets/appbar/appbar.dart'; // Keep one
import 'package:maranatha/features/shop/screens/home/widgets/progress_indicator_and_rating.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/constants/sizes.dart';
// import 'package:maranatha/common/widgets/appbar/appbar.dart'; // Removed duplicate import
import 'package:maranatha/utils/device/device_utility.dart';

class MaranathaProductReviewScreen extends StatelessWidget {
  const MaranathaProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //<<-------------------AppBar------------------->>
      appBar: const MaranathaAppBar(title: Text('Reviews & Ratings'), showBackArrow: true,),

      //<<-------------------Body-------------------->>
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MaranathaSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ratings and reviews are verified and are from people who use the same type of device that you use'),
              const SizedBox(height: MaranathaSizes.spaceBtwItems,),

              //<<--------------------Overall Product Ratings------------------------->>
              MaranathaRatingProgressIndicator(text: '5', value: 1.0,),
              MaranathaRatingProgressIndicator(text: '4', value: 0.8,),
              MaranathaRatingProgressIndicator(text: '3', value: 0.6,),
              MaranathaRatingProgressIndicator(text: '2', value: 0.4,),
              MaranathaRatingProgressIndicator(text: '1', value: 0.2,)
            ],
          ),
          ),
      ),
    );
  }
}
