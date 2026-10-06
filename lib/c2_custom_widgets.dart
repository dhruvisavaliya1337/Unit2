import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: CustomWidgetDemo()));
}

// Reusable Custom Button
class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color color;

  const CustomButton({super.key, required this.label, required this.onPressed, this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: color, foregroundColor: Colors.white),
      onPressed: onPressed,
      child: Text(label),
    );
  }
}

// Reusable Custom Card
class CustomCard extends StatelessWidget {
  final Widget child;
  const CustomCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(padding: const EdgeInsets.all(16.0), child: child),
    );
  }
}

// Reusable Custom AppBar
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      centerTitle: true,
      backgroundColor: Colors.deepPurple,
      foregroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class CustomWidgetDemo extends StatelessWidget {
  const CustomWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Custom Widgets Library'),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomCard(
              child: Column(
                children: [
                  const Text('This is a custom card widget', style: TextStyle(fontSize: 18)),
                  const SizedBox(height: 10),
                  CustomButton(label: 'Click Me', onPressed: () {}),
                ],
              ),
            ),
            const SizedBox(height: 20),
            CustomButton(label: 'Another Button', onPressed: () {}, color: Colors.green),
          ],
        ),
      ),
    );
  }
}
