import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: BadgeIconScreen()));
}

class BadgeIconScreen extends StatelessWidget {
  const BadgeIconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Badge Notification Icon')),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const Icon(Icons.notifications, size: 50),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                constraints: const BoxConstraints(minWidth: 18, minHeight: 18),
                child: const Text(
                  '5',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
