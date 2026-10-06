import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: FruitListScreen()));
}

class FruitListScreen extends StatelessWidget {
  const FruitListScreen({super.key});

  final List<String> fruits = const [
    'Apple', 'Banana', 'Cherry', 'Date', 'Elderberry',
    'Fig', 'Grape', 'Honeydew', 'Kiwi', 'Lemon'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fruit List')),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.fastfood),
            title: Text(fruits[index]),
          );
        },
      ),
    );
  }
}
