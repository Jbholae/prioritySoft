import 'package:flutter/material.dart';
import 'package:prioritysoft/config/custom_color.dart';

class ProductListItem extends StatelessWidget {
  const ProductListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: MediaQuery.sizeOf(context).height * 0.9,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              // height: MediaQuery.sizeOf(context).height * 0.02,
              width: MediaQuery.sizeOf(context).width /* / 3 */,
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                color: CustomColors.primary200,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.snapchat,
                    color: CustomColors.primary300,
                  ),
                  Text('Product Image'),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product Name',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.star,
                      size: 15,
                      color: Color(0xffFCD240),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.01,
                    ),
                    Text(
                      '45',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.02,
                    ),
                    Text(
                      '(1011 Reviews)',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: CustomColors.primary300),
                    ),
                  ],
                ),
                Text(
                  'Product Price',
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
