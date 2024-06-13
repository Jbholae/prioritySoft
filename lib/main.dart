import 'package:flutter/material.dart';
import 'package:prioritysoft/config/app_routes.dart';
import 'package:prioritysoft/config/theme.dart';
import 'package:prioritysoft/screen/home_screen.dart';

import 'config/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: AppRoutes.home,
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: theme(),
      home: const HomeScreen(),
    );
  }
}
