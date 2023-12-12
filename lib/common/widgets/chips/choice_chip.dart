import 'package:ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class choiceChip extends StatelessWidget {
  const choiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: MyAppColors.transperant),
      child: ChoiceChip(
        label: MyAppHelperFunctions.getColor(text) != null
            ? const SizedBox()
            : Text(text),
        selected: selected,
        onSelected: onSelected,
        selectedColor: MyAppHelperFunctions.getColor(text) != null
            ? MyAppColors.darkerGrey
            : null,
        labelStyle: TextStyle(color: selected ? MyAppColors.textWhite : null),
        avatar: MyAppHelperFunctions.getColor(text) != null
            ? circularContainer(
                width: 50,
                height: 50,
                backgroundColor: MyAppHelperFunctions.getColor(text),
              )
            : null,
        shape: MyAppHelperFunctions.getColor(text) != null
            ? const CircleBorder()
            : null,
        backgroundColor: MyAppHelperFunctions.getColor(text),
        labelPadding: MyAppHelperFunctions.getColor(text) != null
            ? const EdgeInsets.all(0)
            : null,
        padding: MyAppHelperFunctions.getColor(text) != null
            ? const EdgeInsets.all(0)
            : null,
      ),
    );
  }
}
