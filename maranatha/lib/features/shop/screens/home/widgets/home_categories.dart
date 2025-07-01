import 'package:flutter/material.dart';
import 'package:maranatha/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:maranatha/utils/constants/image_strings.dart';


class MaranathaHomeCategories extends StatelessWidget {
  const MaranathaHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 900) {
      // Mobile: horizontal list
      return SizedBox(
        height: 80,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return MaranathaVerticalImageText(
              title: 'Shoes',
              onTap: () {},
              image: MaranathaImages.darkAppLogo,
              textColor: Colors.white24,
            );
          },
        ),
      );
    } else {
      // Tablet/Desktop: grid
      int crossAxisCount = screenWidth >= 1200 ? 6 : 4;
      return SizedBox(
        height: 120,
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1.2,
          ),
          itemBuilder: (_, index) {
            return MaranathaVerticalImageText(
              title: 'Shoes',
              onTap: () {},
              image: MaranathaImages.darkAppLogo,
              textColor: Colors.white24,
            );
          },
        ),
      );
    }
  }
}