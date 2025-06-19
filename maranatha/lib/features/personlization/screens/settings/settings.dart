import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:maranatha/common/widgets/appbar/appbar.dart';
import 'package:maranatha/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:maranatha/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:maranatha/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:maranatha/common/widgets/texts/section_heading.dart';
import 'package:maranatha/features/personlization/screens/profile/profile.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //<<-----------------Header------------------->>
            MaranathaPrimaryHeaderContainer(
              child: Column(
                children: [
                  MaranathaAppBar(
                    title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: MaranathaColors.white),),
                  ),
                  //<<------------------User Profile Card------------------->>
                   MaranathaUserProfileTile(onPressed: () => Get.to(() => const ProfileScreen())),
                  const SizedBox(height: MaranathaSizes.spaceBtwSections,),

                ],
              )
              ),

              //<<-------------------body----------------------->>
              Padding
              (padding: const EdgeInsets.all(MaranathaSizes.defaultSpace),
              child: Column(
                children: [
                  //<<------------------Account settings---------------->>

                  const MaranathaSectionHeading(title: 'Account Settings', showActionButton: false,),
                  const SizedBox(height: MaranathaSizes.spaceBtwItems,),

                  const MaranathaSettingsMenuTile(icon: Iconsax.safe_home, title: 'My Addresses', subTitle: 'Set shopping delivery address', ),
                  const MaranathaSettingsMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Add, remove products and move to checkbox', ),
                  const MaranathaSettingsMenuTile(icon: Iconsax.bag_tick, title: 'My Orders', subTitle: 'In-progress and Completed Orders', ),
                  const MaranathaSettingsMenuTile(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Withdraw balance to registered bank account', ),
                  const MaranathaSettingsMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'List of all the discounted accounts', ),
                  const MaranathaSettingsMenuTile(icon: Iconsax.notification, title: 'Notifications', subTitle: 'Set any kind of notification message', ),
                  const MaranathaSettingsMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Manage data usage and connected accounts', ),

                  // <<-------------App Settings---------------->>
                  const SizedBox(height: MaranathaSizes.spaceBtwSections,),
                  const MaranathaSectionHeading(title: 'App Settings', showActionButton: false,),
                  const MaranathaSettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload  to your cloud firebase'),
                  MaranathaSettingsMenuTile(
                    icon: Iconsax.location, 
                    title: 'Geolocation', 
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value){}),
                    ),
                    MaranathaSettingsMenuTile(
                      icon: Iconsax.security_user, 
                      title: 'Safe Mode', 
                      subTitle: 'Search result in safe for all ages',
                      trailing: Switch(value: false, onChanged: (value){}),
                      ),
                    MaranathaSettingsMenuTile(
                      icon: Iconsax.image, 
                      title: 'HD Image Quality', 
                      subTitle: 'Set image quality to be seen',
                      trailing: Switch(value: false, onChanged:(value){} ),
                      ),
                      //<<--------------Logout Button----------------->>
                      const SizedBox(height: MaranathaSizes.spaceBtwSections,),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(onPressed: (){}, child: const Text('Logout')),
                      ),
                      const SizedBox(height: MaranathaSizes.spaceBtwSections * 2.5,)
                ],
              ),
              )
          ],
        ),
      ),
    );
  }
}
