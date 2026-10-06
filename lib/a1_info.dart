import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: InfoScreen()));
}

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section A - 1')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: John Doe', style: TextStyle(fontSize: 20)),
            Text('College: ABC Institute of Technology', style: TextStyle(fontSize: 20)),
            Text('Course: B.Tech in Computer Science', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
