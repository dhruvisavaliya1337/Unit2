import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ResponsiveLayoutScreen()));
}

class ResponsiveLayoutScreen extends StatelessWidget {
  const ResponsiveLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Responsive LayoutBuilder')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return Column(
              children: [
                Container(height: 100, color: Colors.red, child: const Center(child: Text('Mobile: Box 1'))),
                Container(height: 100, color: Colors.blue, child: const Center(child: Text('Mobile: Box 2'))),
              ],
            );
          } else {
            return Row(
              children: [
                Expanded(child: Container(height: 200, color: Colors.red, child: const Center(child: Text('Tablet: Box 1')))),
                Expanded(child: Container(height: 200, color: Colors.blue, child: const Center(child: Text('Tablet: Box 2')))),
              ],
            );
          }
        },
      ),
    );
  }
}
