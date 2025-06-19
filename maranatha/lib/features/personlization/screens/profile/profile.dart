import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:maranatha/common/styles/images/Maranatha_Circular_image.dart';
import 'package:maranatha/common/widgets/appbar/appbar.dart';
import 'package:maranatha/common/widgets/texts/section_heading.dart';
import 'package:maranatha/features/personlization/screens/profile/profile_menu.dart';
import 'package:maranatha/utils/constants/image_strings.dart';
import 'package:maranatha/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //<<--------------appbar-------------->>
      appBar: const MaranathaAppBar(showBackArrow: true, title: Text('Profile')),

      //<<---------------body---------------->>

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MaranathaSizes.defaultSpace),
          child: Column(
            children: [
              // <<---------------Profile Picture----------------->>
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                     const MaranathaCircularImage(image: MaranathaImages.user, width: 80, height: 80,),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture'))
                  ],
                  ),
              ),

              // <<-------------------Details------------------>>
              const SizedBox(height: MaranathaSizes.spaceBtwItems / 2,),
              const Divider(),
              const SizedBox(height: MaranathaSizes.spaceBtwItems,),
              const MaranathaSectionHeading(title: 'Profile Information', showActionButton: false,),
              const SizedBox(height: MaranathaSizes.spaceBtwItems,),

              MaranathaProfileMenu(onPressed: () {}, title: 'Name', value: 'Maranatha',),
              MaranathaProfileMenu(onPressed: (){}, title: 'Username', value: 'Maranatha'),

              const SizedBox(height: MaranathaSizes.spaceBtwItems,),
              const Divider(),
              const SizedBox(height: MaranathaSizes.spaceBtwItems,),

              //<<-----------------Heading Personal Info---------------->>
              const MaranathaSectionHeading(title: 'Personal Information', showActionButton: false,),
              const SizedBox(height: MaranathaSizes.spaceBtwItems,),

              MaranathaProfileMenu(onPressed: (){}, title: 'User ID', icon: Iconsax.copy, value: '45689'),
              MaranathaProfileMenu(onPressed: (){}, title: 'Email', value: '+92-317-8059528'),
              MaranathaProfileMenu(onPressed: (){}, title: 'Gender', value: 'Male'),
              MaranathaProfileMenu(onPressed: (){}, title: 'Date of Birth', value: '3 June, 2025'),

              const Divider(),
              const SizedBox(height: MaranathaSizes.spaceBtwItems,),
              
              Center(
                child: TextButton(onPressed: (){}, child: Text('Close Account', style: TextStyle(color: Colors.red),)),
              )
            ],
          ),
          ),
      ),
    );

  }
}
