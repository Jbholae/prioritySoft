import 'package:flutter/material.dart';
import 'package:prioritysoft/config/app_routes.dart';
import 'package:prioritysoft/config/custom_color.dart';
import 'package:prioritysoft/screen/cart_screen.dart';
import 'package:prioritysoft/screen/filter_screen.dart';
import 'package:prioritysoft/screen/home_screen.dart';
import 'package:prioritysoft/screen/order_summary_screen.dart';
import 'package:prioritysoft/screen/product_details.dart';
import 'package:prioritysoft/screen/review_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return buildRoute(const HomeScreen(), settings: settings);
      case AppRoutes.productDetails:
        return buildRoute(const ProductDetails(), settings: settings);
      case AppRoutes.filterScreen:
        return buildRoute(const FilterScreen(), settings: settings);
      case AppRoutes.reviewScreen:
        return buildRoute(const ReviewScreen(), settings: settings);
      case AppRoutes.cartScreen:
        return buildRoute(const CartScreen(), settings: settings);
      case AppRoutes.orderSummaryScreen:
        return buildRoute(const OrderSummaryScreen(), settings: settings);
      /* case AppRoutes.profile:
        final arguments = settings.arguments as ProfileArguments;
        return buildRoute(const Profile(arguments: arguments),
            settings: settings); */
      default:
        return _errorRoute();
    }
  }

  static MaterialPageRoute buildRoute(Widget child,
      {required RouteSettings settings}) {
    return MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) => child,
    );
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Error Route'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              "Seems like the route you've navigated to doesn't exist !!!",
              style: TextStyle(
                color: CustomColors.error500,
                fontSize: 42,
              ),
            ),
          ),
        ),
      );
    });
  }
}
