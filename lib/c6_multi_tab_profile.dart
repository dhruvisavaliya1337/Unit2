import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MultiTabProfile()));
}

class MultiTabProfile extends StatelessWidget {
  const MultiTabProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.grid_on), text: 'Photos'),
              Tab(icon: Icon(Icons.list), text: 'Activity'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Photo Grid Tab
            GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
              ),
              itemCount: 20,
              itemBuilder: (context, index) => Container(
                color: Colors.grey[300],
                child: Image.network('https://picsum.photos/200?random=$index', fit: BoxFit.cover),
              ),
            ),
            // Activity Feed Tab
            ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) => ListTile(
                leading: const CircleAvatar(child: Icon(Icons.person)),
                title: Text('Activity Item $index'),
                subtitle: Text('User did something interesting at ${DateTime.now().hour}:${DateTime.now().minute}'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
