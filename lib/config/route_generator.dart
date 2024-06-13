import 'package:flutter/material.dart';
import 'package:prioritysoft/config/app_routes.dart';
import 'package:prioritysoft/config/custom_color.dart';
import 'package:prioritysoft/screen/home_screen.dart';
import 'package:prioritysoft/screen/product_details.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return buildRoute(const HomeScreen(), settings: settings);
      case AppRoutes.productDetails:
        return buildRoute(const ProductDetails(), settings: settings);
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
      return const Scaffold(
        body: Center(
          child: Text(
            "Seemms the route you\'ve navigated to doesn\'t exist !!!",
            style: TextStyle(
              color: CustomColors.error500,
              fontSize: 42,
            ),
          ),
        ),
      );
    });
  }
}
