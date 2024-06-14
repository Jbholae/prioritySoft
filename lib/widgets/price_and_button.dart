import 'package:flutter/material.dart';
import 'package:prioritysoft/config/app_routes.dart';
import 'package:prioritysoft/config/custom_color.dart';

class PriceAndButton extends StatefulWidget {
  PriceAndButton({super.key, this.quantity, required this.screen});
  int? quantity;
  final String screen;

  @override
  State<PriceAndButton> createState() => _PriceAndButtonState();
}

class _PriceAndButtonState extends State<PriceAndButton> {
  String cartScreen = 'Cart';
  String orderScreen = 'Order';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    widget.screen == cartScreen || widget.screen == orderScreen
                        ? 'Grand Total'
                        : 'Price',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: CustomColors.primary300),
                  ),
                  Text(
                    /* widget.screen == cartScreen ? 'GrandTotal': */ widget
                                .screen ==
                            orderScreen
                        ? '\$255.00'
                        : '\$123.00',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: CustomColors.primary500),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor:
                    WidgetStatePropertyAll(CustomColors.primary500),
              ),
              onPressed: () {
                widget.screen == cartScreen
                    ? Navigator.pushNamed(context, AppRoutes.orderSummaryScreen)
                    : widget.screen == orderScreen
                        ? ''
                        : addToCartModal(context);
              },
              child: Text(
                widget.screen == cartScreen
                    ? 'Checkout'.toUpperCase()
                    : widget.screen == orderScreen
                        ? 'Payment'.toUpperCase()
                        : 'Add to Cart'.toUpperCase(),
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: CustomColors.primary100,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }

  addToCartModal(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(30.0),
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.35,
            width: MediaQuery.sizeOf(context).width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Add to cart',
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                color: CustomColors.primary500,
                              ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.close))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Quantity',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: CustomColors.primary500,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(flex: 6, child: Text(widget.quantity.toString())),
                    Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width / 10,
                            height: MediaQuery.sizeOf(context).height * 0.05,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: widget.quantity == 0
                                    ? CustomColors.primary300
                                    : CustomColors.primary500,
                              ),
                              borderRadius: BorderRadius.circular(
                                30,
                              ),
                            ),
                            child: IconButton(
                              onPressed: widget.quantity == 0 ? null : () {},
                              icon: const Icon(
                                Icons.remove,
                                size: 20,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width / 10,
                            height: MediaQuery.sizeOf(context).height * 0.05,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: CustomColors.primary500,
                              ),
                              borderRadius: BorderRadius.circular(
                                30,
                              ),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(
                  height: 50,
                  color: CustomColors.primary500,
                  thickness: 1,
                ),
                Row(
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
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 2.5,
                      height: MediaQuery.sizeOf(context).height * 0.06,
                      child: ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            CustomColors.primary500,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          addedToCartBottomSheet(context);
                        },
                        child: Text(
                          'Add to Cart',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                                  color: CustomColors.primary100,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  addedToCartBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(30.0),
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.35,
            width: MediaQuery.sizeOf(context).width,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.12,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(600),
                    border: Border.all(
                      color: CustomColors.primary500,
                      width: 3,
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.check,
                      color: CustomColors.primary300,
                      size: 40,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Added to cart',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '1 item Total',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 2.5,
                      height: MediaQuery.sizeOf(context).height * 0.06,
                      child: ElevatedButton(
                        style: const ButtonStyle(
                          side: WidgetStatePropertyAll(
                            BorderSide(color: CustomColors.primary200),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, AppRoutes.home);
                        },
                        child: Text(
                          'Back Explore'.toUpperCase(),
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.5,
                              ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 2.5,
                      height: MediaQuery.sizeOf(context).height * 0.06,
                      child: ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            CustomColors.primary500,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, AppRoutes.cartScreen);
                        },
                        child: Text(
                          'To Cart'.toUpperCase(),
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                  color: CustomColors.primary100,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
