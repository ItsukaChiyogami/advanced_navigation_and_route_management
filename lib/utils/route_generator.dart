import 'package:advanced_navigation_and_route_management/screens/dynamic_route_screen.dart';
import 'package:advanced_navigation_and_route_management/screens/home_screen.dart';
import 'package:advanced_navigation_and_route_management/screens/section1_screen.dart';
import 'package:advanced_navigation_and_route_management/screens/section2_screen.dart';
import 'package:flutter/material.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/section1':
        return MaterialPageRoute(builder: (_) => Section1Screen());
      case '/section2':
        return MaterialPageRoute(builder: (_) => Section2Screen());
      case '/dynamic':
        return MaterialPageRoute(
          builder: (_) => DynamicRouteScreen(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('Error: Route Not Found'),
            ),
          ),
        );
    }
  }
}
