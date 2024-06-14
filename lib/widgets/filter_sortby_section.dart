import 'package:flutter/material.dart';
import 'package:prioritysoft/config/custom_color.dart';

class FilterSortBySection extends StatelessWidget {
  const FilterSortBySection({
    super.key,
    required this.selectedIndex,
    required this.index,
  });

  final int selectedIndex;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
          color: selectedIndex == index
              ? CustomColors.primary500
              : CustomColors.primary0,
          border: Border.all(
            color: selectedIndex == index
                ? CustomColors.primary500
                : CustomColors.primary300,
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Text(
          'Most recent',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: selectedIndex == index
                  ? CustomColors.primary0
                  : CustomColors.primary500,
              fontWeight: FontWeight.w500,
              fontSize: 16,
              letterSpacing: 1),
        ),
      ),
    );
  }
}
