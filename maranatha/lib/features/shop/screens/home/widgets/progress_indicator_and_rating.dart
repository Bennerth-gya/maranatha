import 'package:flutter/material.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/device/device_utility.dart';

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