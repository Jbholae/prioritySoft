import 'package:flutter/material.dart';
import 'package:prioritysoft/config/app_routes.dart';
import 'package:prioritysoft/config/custom_color.dart';
import 'package:prioritysoft/widgets/brand_horizontal_list.dart';
import 'package:prioritysoft/widgets/product_list_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List items = [
    'All',
    'Nike',
    'Adidas',
    'Jordan',
    'Reebok',
    'All',
    'Nike',
    'Adidas',
    'Jordan',
    'Reebok',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Discover',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_bag_outlined),
                    ),
                  ],
                ),
              ),
              BrandNameHorizontalList(items: items),
              Expanded(
                flex: 10,
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 14.0,
                    mainAxisSpacing: 4.0,
                    childAspectRatio: 0.65,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.productDetails);
                      },
                      child: const ProductListItem(),
                    );
                  },
                ),
              ),
              // ProductListItem(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.settings),
        label: Text('Filter',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: CustomColors.primary100, fontWeight: FontWeight.bold)),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
