import 'package:flutter/material.dart';
import 'package:prioritysoft/config/custom_color.dart';
import 'package:prioritysoft/widgets/brand_horizontal_list.dart';
import 'package:prioritysoft/widgets/review_card.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  List items = [
    'All',
    '5 Stars',
    '4 Stars',
    '3 Stars',
    '2 Stars',
    '1 Star',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        actions: [
          Row(
            children: [
              const Icon(
                Icons.star,
                size: 20,
                color: CustomColors.starColor,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.01,
              ),
              Text(
                '4.5',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            BrandNameHorizontalList(items: items),
            Expanded(
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return const ReviewCard();
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.1,
                      ),
                  itemCount: 20),
            )
          ],
        ),
      ),
    );
  }
}
