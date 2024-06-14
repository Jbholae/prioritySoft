import 'package:flutter/material.dart';
import 'package:prioritysoft/widgets/cart_product_list_card.dart';
import 'package:prioritysoft/widgets/price_and_button.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int quantity = 1;
  String screen = 'Cart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                flex: 10,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return CartProductListCard(quantity: quantity);
                    },
                    separatorBuilder: (context, index) => SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.03,
                        ),
                    itemCount: 10),
              ),
              Expanded(
                flex: 1,
                child: PriceAndButton(
                  quantity: quantity,
                  screen: screen,
                ),
              ),
            ],
          )),
    );
  }
}
