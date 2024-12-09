import 'package:advanced_navigation_and_route_management/screens/dynamic_screen_generator.dart';
import 'package:advanced_navigation_and_route_management/screens/home.dart';
import 'package:advanced_navigation_and_route_management/screens/screen1.dart';
import 'package:advanced_navigation_and_route_management/screens/screen2.dart';
import 'package:advanced_navigation_and_route_management/screens/screen3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advanced Navigation',
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/screen1': (context) => Screen1(),
        '/screen2': (context) => Screen2(),
        '/screen3': (context) => Screen3(),
        '/dynamic': (context) => DynamicScreenGenerator(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(title: Text('Error')),
          body: Center(
            child: Text('Route not found!'),
          ),
        ),
      ),
    );
  }
}
