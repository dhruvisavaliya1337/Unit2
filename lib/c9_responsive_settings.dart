import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ResponsiveSettingsScreen()));
}

class ResponsiveSettingsScreen extends StatelessWidget {
  const ResponsiveSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Settings')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 700) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: _buildGeneralSection()),
                Expanded(child: _buildAccountSection()),
              ],
            );
          } else {
            return SingleChildScrollView(
              child: Column(
                children: [
                  _buildGeneralSection(),
                  _buildAccountSection(),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  Widget _buildGeneralSection() {
    return _buildSection('General Settings', [
      ['Language', 'English'],
      ['Theme', 'Dark Mode'],
      ['Notifications', 'Enabled'],
    ]);
  }

  Widget _buildAccountSection() {
    return _buildSection('Account Settings', [
      ['Username', 'flutter_dev'],
      ['Email', 'dev@example.com'],
      ['Subscription', 'Pro Plan'],
    ]);
  }

  Widget _buildSection(String title, List<List<String>> rows) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue)),
          const SizedBox(height: 10),
          Table(
            border: TableBorder.symmetric(inside: const BorderSide(color: Colors.grey, width: 0.5)),
            children: rows.map((row) => TableRow(
              children: [
                Padding(padding: const EdgeInsets.all(8.0), child: Text(row[0], style: const TextStyle(fontWeight: FontWeight.w500))),
                Padding(padding: const EdgeInsets.all(8.0), child: Text(row[1])),
              ],
            )).toList(),
          ),
        ],
      ),
    );
  }
}
