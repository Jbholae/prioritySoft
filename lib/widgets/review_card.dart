import 'package:flutter/material.dart';
import 'package:prioritysoft/config/custom_color.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.04,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('User name'),
              const Icon(
                Icons.star,
                size: 20,
                color: CustomColors.starColor,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: const Text(
                  'Perfect for keeping your feet dry and warm in damp conditions. ',
                  overflow: TextOverflow.visible,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}
