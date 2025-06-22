import 'package:flutter/material.dart';
import 'package:maranatha/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';

class MarathaChoiceChip extends StatelessWidget {
  const MarathaChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected, required MaterialColor color, 
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = MaranathaHelperFunctions.getColor(text) != null;
    return ChoiceChip(
      label: isColor ? const SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? MaranathaColors.white : null),
      avatar: isColor
          ? MaranathaCircularContainer(
              width: 50,
              height: 50,
              backgroundColor: MaranathaHelperFunctions.getColor(text)!,
            )
          : null,
      shape: isColor ? const CircleBorder() : null,
      labelPadding: isColor ? const EdgeInsets.all(0) : null,
      padding: isColor ? const EdgeInsets.all(0) : null,
      backgroundColor: isColor
          ? MaranathaHelperFunctions.getColor(text)!
          : null,
    );
  }
}
