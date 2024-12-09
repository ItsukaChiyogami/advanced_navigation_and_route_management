import 'package:flutter/material.dart';

class DynamicScreenGenerator extends StatefulWidget {
  @override
  _DynamicScreenGeneratorState createState() => _DynamicScreenGeneratorState();
}

class _DynamicScreenGeneratorState extends State<DynamicScreenGenerator> {
  final TextEditingController _controller = TextEditingController();
  List<Widget> _screens = [];
  final int _maxScreens = 20;

  void _generateScreens() {
    final int? numScreens = int.tryParse(_controller.text);

    if (numScreens == null || numScreens <= 0) {
      _showSnackBar('Please enter a valid number greater than 0.');
      return;
    }

    if (numScreens > _maxScreens) {
      _showSnackBar('Maximum of $_maxScreens screens allowed.');
      return;
    }

    setState(() {
      _screens = List.generate(
        numScreens,
        (index) => ListTile(
          title: Text('Screen ${index + 1}'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DynamicScreen(number: index + 1),
              ),
            );
          },
        ),
      );
    });
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Generate Screens")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter number of screens',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: _generateScreens,
            child: Text("Generate Screens"),
          ),
          Expanded(
            child: ListView(
              children: _screens,
            ),
          ),
        ],
      ),
    );
  }
}

class DynamicScreen extends StatelessWidget {
  final int number;

  const DynamicScreen({Key? key, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen $number')),
      body: Center(
        child: Text('This is Screen $number'),
      ),
    );
  }
}
