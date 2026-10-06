import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ScreenOne()));
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blue),
      ),
    );
  }
}

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen One')),
      body: Column(
        children: [
          const SectionTitle(title: 'Overview'),
          const Text('Content for overview section...'),
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenTwo())),
            child: const Text('Go to Screen Two'),
          )
        ],
      ),
    );
  }
}

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen Two')),
      body: const Column(
        children: [
          SectionTitle(title: 'Details'),
          Text('Content for details section...'),
        ],
      ),
    );
  }
}
