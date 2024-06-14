import 'package:flutter/material.dart';
import 'package:prioritysoft/config/app_routes.dart';
import 'package:prioritysoft/config/custom_color.dart';
import 'package:prioritysoft/widgets/price_and_button.dart';
import 'package:prioritysoft/widgets/review_card.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int quantity = 0;
  int selectedSizeItem = 0;
  List sizeItem = [
    '38',
    '39',
    '40',
    '41',
    '42',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.cartScreen);
              },
              icon: const Icon(Icons.shopping_bag_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.3,
                        decoration: const BoxDecoration(
                          color: CustomColors.primary300,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                      /* Note : Carousell need with color option */
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Product Title Name',
                        style:
                            Theme.of(context).textTheme.headlineLarge?.copyWith(
                                  color: CustomColors.primary500,
                                ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(children: [
                        const Icon(
                          Icons.star,
                          size: 20,
                          color: CustomColors.starColor,
                        ),
                        const Icon(
                          Icons.star,
                          size: 20,
                          color: CustomColors.starColor,
                        ),
                        const Icon(
                          Icons.star,
                          size: 20,
                          color: CustomColors.starColor,
                        ),
                        const Icon(
                          Icons.star,
                          size: 20,
                          color: CustomColors.starColor,
                        ),
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
                      ]),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Size',
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.1,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedSizeItem = index;
                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor: selectedSizeItem == index
                                      ? CustomColors.primary500
                                      : CustomColors.primary200,
                                  child: Text(
                                    sizeItem[index],
                                    style: TextStyle(
                                        color: selectedSizeItem != index
                                            ? CustomColors.primary500
                                            : CustomColors.primary0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) => SizedBox(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.05,
                                ),
                            itemCount: sizeItem.length),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Description',
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                          "Engineered to crush any movement-based workout, these On sneakers enhance the label's original Cloud sneaker with cutting edge technologies for a pair. "),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Review',
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const ReviewCard(),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, AppRoutes.reviewScreen);
                            },
                            child: Text(
                              'See all reviews'.toUpperCase(),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              // flex: 1,
              child: PriceAndButton(
                quantity: quantity,
                screen: '',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
