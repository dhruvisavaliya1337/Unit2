import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: SettingsTableScreen()));
}

class SettingsTableScreen extends StatelessWidget {
  const SettingsTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings Table')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Table(
          border: TableBorder.all(color: Colors.grey),
          columnWidths: const {
            0: FlexColumnWidth(1),
            1: FlexColumnWidth(2),
          },
          children: const [
            TableRow(children: [
              Padding(padding: EdgeInsets.all(8.0), child: Text('Username', style: TextStyle(fontWeight: FontWeight.bold))),
              Padding(padding: EdgeInsets.all(8.0), child: Text('john_doe')),
            ]),
            TableRow(children: [
              Padding(padding: EdgeInsets.all(8.0), child: Text('Email', style: TextStyle(fontWeight: FontWeight.bold))),
              Padding(padding: EdgeInsets.all(8.0), child: Text('john@example.com')),
            ]),
            TableRow(children: [
              Padding(padding: EdgeInsets.all(8.0), child: Text('Version', style: TextStyle(fontWeight: FontWeight.bold))),
              Padding(padding: EdgeInsets.all(8.0), child: Text('1.0.0')),
            ]),
          ],
        ),
      ),
    );
  }
}
