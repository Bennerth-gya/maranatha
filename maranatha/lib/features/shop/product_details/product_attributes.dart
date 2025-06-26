import 'package:flutter/material.dart';
import 'package:maranatha/common/chips/choice_chips.dart';
import 'package:maranatha/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:maranatha/common/widgets/products_cart/Maranatha_Rounded_container.dart';
import 'package:maranatha/common/widgets/texts/product_price_text.dart';
import 'package:maranatha/common/widgets/texts/product_title_text.dart';
import 'package:maranatha/common/widgets/texts/section_heading.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/constants/sizes.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';

class MaranathaProductAttributes extends StatelessWidget {
  const MaranathaProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MaranathaHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        MaranathaRoundedContainer(
          padding: const EdgeInsets.all(MaranathaSizes.md),
          backgroundColor: dark ? MaranathaColors.darkerGrey : MaranathaColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const MaranathaSectionHeading(title: 'Variation', showActionButton: false),
                  const SizedBox(width: MaranathaSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const MaranathaProductTitleText(title: 'Price: ', smallSize: true),
                          const SizedBox(width: MaranathaSizes.spaceBtwItems),
                          Text(
                            '\$25',
                            style: Theme.of(context).textTheme.titleLarge!.apply(
                                  decoration: TextDecoration.lineThrough,
                                ),
                          ),
                          const SizedBox(width: MaranathaSizes.spaceBtwItems),
                          const MaranathaProductPriceText(price: '20'),
                        ],
                      ),
                      Row(
                        children: [
                          const MaranathaProductTitleText(title: 'Stock: ', smallSize: true),
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const MaranathaProductTitleText(
                title: 'This is the Description of the product and it can go upto max 4 times',
                smallSize: true,
                maxLines: 4,
              ),
              const SizedBox(height: MaranathaSizes.spaceBtwItems),
              
              /// Colors Section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MaranathaSectionHeading(title: 'Colors', showActionButton: false),
                  const SizedBox(height: MaranathaSizes.spaceBtwItems / 2),
                  Wrap(
                    spacing: 8,
                    children: [
                      MarathaChoiceChip(text: 'Green', selected: true, onSelected: (value) {}, color: Colors.green),
                      MarathaChoiceChip(text: 'Blue', selected: false, onSelected: (value) {}, color: Colors.blue),
                      MarathaChoiceChip(text: 'Yellow', selected: false, onSelected: (value) {}, color: Colors.yellow),
                     // MarathaChoiceChip(text: 'Green', selected: true, onSelected: (value) {}, color: Colors.green),
                     // MarathaChoiceChip(text: 'Blue', selected: false, onSelected: (value) {}, color: Colors.blue),
                     // MarathaChoiceChip(text: 'Yellow', selected: false, onSelected: (value) {}, color: Colors.amber),
                     // MarathaChoiceChip(text: 'Green', selected: true, onSelected: (value) {}, color: Colors.green),
                     // MarathaChoiceChip(text: 'Blue', selected: false, onSelected: (value) {}, color: Colors.blue),
                    ///  MarathaChoiceChip(text: 'Red', selected: false, onSelected: (value) {}, color: Colors.amber),
                    ],
                  ),
                ],
              ),
              
              const SizedBox(height: MaranathaSizes.spaceBtwItems),

              /// Size Section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MaranathaSectionHeading(title: 'Size', showActionButton: false),
                  const SizedBox(height: MaranathaSizes.spaceBtwItems / 2),
                  Wrap(
                    spacing: 8,
                    children: [
                      MarathaChoiceChip(text: 'EU 34', selected: true, onSelected: (value){}, color: Colors.grey),
                      MarathaChoiceChip(text: 'EU 36', selected: false, onSelected: (value){}, color: Colors.grey),
                      MarathaChoiceChip(text: 'EU 38', selected: false, onSelected: (value){}, color: Colors.grey),
                     // MarathaChoiceChip(text: 'EU 34', selected: true, onSelected: (value){}, color: Colors.grey),
                      //MarathaChoiceChip(text: 'EU 36', selected: false, onSelected: (value){}, color: Colors.grey),
                     // MarathaChoiceChip(text: 'EU 38', selected: false, onSelected: (value){}, color: Colors.grey),
                     // MarathaChoiceChip(text: 'EU 34', selected: true, onSelected: (value){}, color: Colors.grey),
                     // MarathaChoiceChip(text: 'EU 36', selected: false, onSelected: (value){}, color: Colors.grey),
                     // MarathaChoiceChip(text: 'EU 38', selected: false, onSelected: (value){}, color: Colors.grey),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
