import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ResponsiveFormScreen()));
}

class ResponsiveFormScreen extends StatelessWidget {
  const ResponsiveFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool isWide = width > 600;

    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Form')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            if (isWide)
              const Row(
                children: [
                  Expanded(child: TextField(decoration: InputDecoration(labelText: 'First Name'))),
                  SizedBox(width: 16),
                  Expanded(child: TextField(decoration: InputDecoration(labelText: 'Last Name'))),
                ],
              )
            else ...[
              const TextField(decoration: InputDecoration(labelText: 'First Name')),
              const TextField(decoration: InputDecoration(labelText: 'Last Name')),
            ],
            const TextField(decoration: InputDecoration(labelText: 'Email')),
            const TextField(decoration: InputDecoration(labelText: 'Phone')),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: const Text('Submit')),
          ],
        ),
      ),
    );
  }
}
