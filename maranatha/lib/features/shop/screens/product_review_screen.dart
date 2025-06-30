import 'package:flutter/material.dart';
import 'package:maranatha/common/widgets/appbar/appbar.dart'; // Keep one
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
              Row(
                children: [
                  const Text('4.8', style: TextStyle(fontSize: 40, decorationThickness: 20),),
                  const SizedBox(width: MaranathaSizes.spaceBtwItems), // Added space between rating and progress bars
                  Expanded( // This Expanded now correctly takes available space for the Column of progress bars
                    child: Column(
                      children: [
                        // Example progress bar for 5 stars
                        MaranathaRatingProgressIndicator(text: '5', value: 1.0), // Using a helper widget for clarity
                        MaranathaRatingProgressIndicator(text: '4', value: 0.8),
                        MaranathaRatingProgressIndicator(text: '3', value: 0.6),
                        MaranathaRatingProgressIndicator(text: '2', value: 0.4),
                        MaranathaRatingProgressIndicator(text: '1', value: 0.2),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          ),
      ),
    );
  }
}

// Helper Widget for Rating Progress Indicators
class MaranathaRatingProgressIndicator extends StatelessWidget {
  const MaranathaRatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: Text(text, style: Theme.of(context).textTheme.bodyMedium)),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: MaranathaDeviceUtils.getScreenWidth(context) * 0.8, // Adjust width as needed
            child: LinearProgressIndicator(
              value: value,
              minHeight: 11,
              backgroundColor: MaranathaColors.grey,
              valueColor: const AlwaysStoppedAnimation(MaranathaColors.primaryColor),
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        )
      ],
    );
  }
}