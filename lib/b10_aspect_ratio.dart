import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: AspectRatioListScreen()));
}

class AspectRatioListScreen extends StatelessWidget {
  const AspectRatioListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AspectRatio Media Card')),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    color: Colors.grey[300],
                    child: Center(
                      child: Icon(Icons.play_circle_fill, size: 64, color: Colors.grey[600]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Video Title $index', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: Text('This is a description for the media item with a 16:9 aspect ratio.'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
