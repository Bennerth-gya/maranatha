import 'package:flutter/material.dart';
import 'package:maranatha/common/widgets/appbar/appbar.dart';
import 'package:maranatha/common/widgets/appbar/tabbar.dart';
import 'package:maranatha/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:maranatha/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:maranatha/common/widgets/products_cart/layouts/grid_layout.dart';
import 'package:maranatha/common/widgets/texts/section_heading.dart';
import 'package:maranatha/features/shop/screens/store/maranatha_grid_layout.dart';
import 'package:maranatha/features/shop/screens/store/widgets/category_tab.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/constants/sizes.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: MaranathaAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium,),
          actions: [
            MaranathaCartCounterIcon(onPressed: (){}, iconColor: MaranathaColors.textPrimary)
          ],
        ),
        body: NestedScrollView(headerSliverBuilder: (_, innerBoxIsScrolled){
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: MaranathaHelperFunctions.isDarkMode(context) ? MaranathaColors.black : MaranathaColors.white,
              expandedHeight: 440,
      
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(MaranathaSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children:  [
                      // <<-------------------Search Bar---------------------->>
                      const SizedBox(height: MaranathaSizes.spaceBtwItems,),
                      const MaranathaSearchContainer(text: 'Search in store', showBorder: true, showBackground: false, padding: EdgeInsets.zero,),
                      const SizedBox(height: MaranathaSizes.spaceBtwSections,),
      
                      //<<---------------------Feature Brands-------------------->>
      
                      MaranathaSectionHeading(title: 'Feature Brands', showActionButton: true, onPressed: (){},),
                      const SizedBox(height: MaranathaSizes.spaceBtwItems / 1.5,),
      
                      //<<--------------------Brand GRID--------------------->>
      
                    MaranathaGridLayout(
                      itemCount: 4, 
                      mainAxisExtent: 80, 
                      itemBuilder: (_, index){
                      return  const MaranathaBrandCard();
                    })
                  ],
                ),
              ),
      
              //<<-----------------------Tabs------------------------->>
      
              bottom: const MaranathaTabBar(
                tabs: [
                  Tab(child: Text('Sports'),),
                  Tab(child: Text('Furniture'),),
                  Tab(child: Text('Electronics'),),
                  Tab(child: Text('Clothes'),),
                  Tab(child: Text('Cosmetics'),)
                ]
                )
            )
          ];
        }, 
        body: const TabBarView(
          children: [
          MaranathaCategoryTab(),
          MaranathaCategoryTab(),
          MaranathaCategoryTab(),
          MaranathaCategoryTab(),
          MaranathaCategoryTab(),
        ]
        )
        ),
      ),
    );
  }
}
