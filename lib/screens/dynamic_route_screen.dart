import 'package:flutter/material.dart';

class DynamicRouteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as int?;

    return Scaffold(
      appBar: AppBar(title: Text('Dynamic Route')),
      body: Center(
        child: ListView.builder(
          itemCount: args ?? 0,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Dynamic Screen $index'),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/dynamic/$index',
                  arguments: 'Data for Screen $index',
                );
              },
            );
          },
        ),
      ),
    );
  }
}
