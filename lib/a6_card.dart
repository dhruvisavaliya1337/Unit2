import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: CardScreen()));
}

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Widget')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 4,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                  'https://picsum.photos/400/200',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const ListTile(
                  title: Text('Beautiful Landscape'),
                  subtitle: Text('This is a short description of the beautiful landscape image shown above.'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
