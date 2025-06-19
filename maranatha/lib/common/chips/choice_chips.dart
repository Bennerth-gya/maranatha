import 'package:flutter/material.dart';
import 'package:maranatha/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';
class MarathaChoiceChip extends StatelessWidget {
  const MarathaChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label:  MaranathaHelperFunctions.getColor(text) != null ? SizedBox() : Text(''), 
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? MaranathaColors.white : null),
      avatar: MaranathaCircularContainer(width: 50, height: 50, backgroundColor: Colors.green,),
      shape: CircleBorder(),
      labelPadding: EdgeInsets.all(0),
      padding: EdgeInsets.all(0),
      selectedColor: Colors.green,
      backgroundColor: Colors.green,
      );
  }
}