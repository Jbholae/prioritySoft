import 'package:flutter/material.dart';
import 'package:prioritysoft/config/custom_color.dart';

class CartProductListCard extends StatelessWidget {
  const CartProductListCard({
    super.key,
    required this.quantity,
  });

  final int quantity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                height: MediaQuery.sizeOf(context).height * 0.11,
                width: 20,
                decoration: BoxDecoration(
                    color: CustomColors.primary300,
                    borderRadius: BorderRadius.circular(20)),
              )),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product Name',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  'Brand Name, Product Color, Product Size',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: CustomColors.primary300,
                      ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$245',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  color: quantity == 1
                                      ? CustomColors.primary300
                                      : CustomColors.primary500,
                                )),
                            child: Center(
                              child: IconButton(
                                onPressed: quantity == 0 ? null : () {},
                                icon: Icon(
                                  Icons.remove,
                                  size: 15,
                                  color: quantity == 1
                                      ? CustomColors.primary300
                                      : CustomColors.primary500,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            quantity.toString(),
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  color: CustomColors.primary500,
                                )),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                size: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
