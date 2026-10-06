import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: TabBarScreen()));
}

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Demo'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.photo), text: 'Photos'),
              Tab(icon: Icon(Icons.videocam), text: 'Videos'),
              Tab(icon: Icon(Icons.file_copy), text: 'Files'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Photos Content')),
            Center(child: Text('Videos Content')),
            Center(child: Text('Files Content')),
          ],
        ),
      ),
    );
  }
}
