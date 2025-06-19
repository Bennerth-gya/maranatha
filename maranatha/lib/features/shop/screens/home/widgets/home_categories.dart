import 'package:flutter/material.dart';
import 'package:maranatha/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:maranatha/utils/constants/image_strings.dart';


class MaranathaHomeCategories extends StatelessWidget {
  const MaranathaHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index){
          return MaranathaVerticalImageText(
            title: 'Shoes',
            onTap: (){}, image: MaranathaImages.darkAppLogo, textColor: Colors.white24,
          );
        },
        ),
    );
  }
}