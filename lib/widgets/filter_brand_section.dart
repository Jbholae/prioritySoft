import 'package:flutter/material.dart';
import 'package:prioritysoft/config/custom_color.dart';

class FilterBrandSection extends StatelessWidget {
  FilterBrandSection({
    super.key,
    required this.index,
    required this.selectedIndex,
    required this.itemList,
  });
  int index = 0;
  int selectedIndex = 0;
  List itemList = [];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Stack(
            children: [
              const CircleAvatar(
                backgroundColor: CustomColors.primary300,
                maxRadius: 24,
              ),
              selectedIndex == index
                  ? const Positioned(
                      top: 29,
                      left: 28,
                      child: CircleAvatar(
                        maxRadius: 10,
                        child: Icon(
                          Icons.check,
                          size: 15,
                        ),
                      ),
                    )
                  : const SizedBox()
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            itemList[index],
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
          )
        ],
      ),
    );
  }
}
