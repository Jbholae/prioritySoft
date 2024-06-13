import 'package:flutter/material.dart';
import 'package:prioritysoft/config/custom_color.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined))
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
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            child: Text('39'),
                          ),
                          CircleAvatar(
                            child: Text('40'),
                          ),
                          CircleAvatar(
                            child: Text('41'),
                          ),
                          CircleAvatar(
                            child: Text('42'),
                          ),
                          CircleAvatar(
                            child: Text('43'),
                          ),
                        ],
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CircleAvatar(),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.04,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('User name'),
                              const Icon(
                                Icons.star,
                                size: 20,
                                color: CustomColors.starColor,
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width / 1.42,
                                child: const Text(
                                  'Perfect for keeping your feet dry and warm in damp conditions. ',
                                  overflow: TextOverflow.visible,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        child: ElevatedButton(
                            onPressed: () {},
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
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Price',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: CustomColors.primary300),
                          ),
                          Text(
                            '\$123.00',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: CustomColors.primary500),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(CustomColors.primary500),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Add to Cart',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                                  color: CustomColors.primary100,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
