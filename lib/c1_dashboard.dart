import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ResponsiveDashboard()));
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Dashboard')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double width = constraints.maxWidth;

          if (width < 600) {
            // Mobile: single-column list
            return ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => Card(
                margin: const EdgeInsets.all(8),
                child: ListTile(title: Text('Item $index')),
              ),
            );
          } else if (width < 1000) {
            // Tablet: two-column grid
            return GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2,
              ),
              itemCount: 10,
              itemBuilder: (context, index) => Card(
                child: Center(child: Text('Item $index')),
              ),
            );
          } else {
            // Desktop: three-panel Row layout
            return Row(
              children: [
                Container(width: 250, color: Colors.grey[200], child: const Center(child: Text('Sidebar'))),
                Expanded(
                  flex: 2,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) => Card(
                      margin: const EdgeInsets.all(8),
                      child: ListTile(title: Text('Content Item $index')),
                    ),
                  ),
                ),
                Container(width: 300, color: Colors.grey[100], child: const Center(child: Text('Details Panel'))),
              ],
            );
          }
        },
      ),
    );
  }
}
