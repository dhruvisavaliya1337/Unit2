import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ProfileHeaderScreen()));
}

class ProfileHeaderScreen extends StatelessWidget {
  const ProfileHeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double bannerHeight = 200;
    const double avatarRadius = 60;

    return Scaffold(
      appBar: AppBar(title: const Text('Profile Header')),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                height: bannerHeight,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://picsum.photos/800/400'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: -avatarRadius,
                child: CircleAvatar(
                  radius: avatarRadius,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: avatarRadius - 5,
                    backgroundImage: const NetworkImage('https://i.pravatar.cc/300'),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: avatarRadius + 20),
          const Text(
            'John Doe',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Software Engineer & UI Enthusiast',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
