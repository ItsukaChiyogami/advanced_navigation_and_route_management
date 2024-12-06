import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/section1');
              },
              child: Text('Go to Section 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/section2');
              },
              child: Text('Go to Section 2'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/dynamic');
              },
              child: Text('Go to Dynamic Route'),
            ),
          ],
        ),
      ),
    );
  }
}
