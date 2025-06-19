import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:maranatha/common/styles/images/Maranatha_Circular_image.dart';
import 'package:maranatha/features/personlization/screens/profile/profile.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/constants/image_strings.dart';



class MaranathaUserProfileTile extends StatelessWidget {
  const MaranathaUserProfileTile({
    super.key, required this.onPressed,
    
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const MaranathaCircularImage(
        image: MaranathaImages.user,
        height: 50,
        width: 50,
        padding: 0,
        ),
        title: Text('Maranatha', style: Theme.of(context).textTheme.headlineSmall!.apply(color: MaranathaColors.white),),
        subtitle: Text('support@maranatha.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: MaranathaColors.white),),
        trailing: IconButton(onPressed: ()=>Get.to(() => const ProfileScreen()), icon: const Icon(Iconsax.edit, color: MaranathaColors.white,)),
    );
  }
}