import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:maranatha/utils/constants/sizes.dart';


class MaranathaRatingAndShare extends StatelessWidget {
  const MaranathaRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //<<-----------Rating--------------->>
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Iconsax.star5, color: Colors.amber, size: 24,),
            const SizedBox(width: MaranathaSizes.spaceBtwItems / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: '5.0', style: Theme.of(context).textTheme.bodyLarge),
                  const TextSpan(text: '(199)')
                ]
              )
            )
          ],
        ),
        // <<---------------Share Button-------------------->>
        IconButton(onPressed: (){}, icon: const Icon(Icons.share, size:  MaranathaSizes.Iconmd))
      ],
    );
  }
}
