import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ScaffoldScreen()));
}

class ScaffoldScreen extends StatelessWidget {
  const ScaffoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold Demo'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text('This is the body text.', style: TextStyle(fontSize: 24)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
