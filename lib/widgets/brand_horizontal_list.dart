import 'package:flutter/material.dart';

class BrandNameHorizontalList extends StatefulWidget {
  const BrandNameHorizontalList({
    super.key,
    required this.items,
  });

  final List items;

  @override
  State<BrandNameHorizontalList> createState() =>
      _BrandNameHorizontalListState();
}

class _BrandNameHorizontalListState extends State<BrandNameHorizontalList> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.05,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Text(
              widget.items[index],
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: selectedIndex == index
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).dialogBackgroundColor),
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.04,
        ),
      ),
    );
  }
}
