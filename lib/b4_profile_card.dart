import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ProfileListScreen()));
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String role;
  final String imageUrl;
  final VoidCallback onTap;

  const ProfileCard({
    super.key,
    required this.name,
    required this.role,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        leading: CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
        title: Text(name),
        subtitle: Text(role),
        onTap: onTap,
      ),
    );
  }
}

class ProfileListScreen extends StatelessWidget {
  const ProfileListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Profile Cards')),
      body: ListView(
        children: [
          ProfileCard(
            name: 'Alice Johnson',
            role: 'Product Designer',
            imageUrl: 'https://i.pravatar.cc/150?u=alice',
            onTap: () => print('Tapped Alice'),
          ),
          ProfileCard(
            name: 'Bob Smith',
            role: 'Software Engineer',
            imageUrl: 'https://i.pravatar.cc/150?u=bob',
            onTap: () => print('Tapped Bob'),
          ),
          ProfileCard(
            name: 'Charlie Brown',
            role: 'Marketing Lead',
            imageUrl: 'https://i.pravatar.cc/150?u=charlie',
            onTap: () => print('Tapped Charlie'),
          ),
        ],
      ),
    );
  }
}
