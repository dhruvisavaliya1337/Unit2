import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: TagSelectorScreen()));
}

class TagSelectorScreen extends StatefulWidget {
  const TagSelectorScreen({super.key});

  @override
  State<TagSelectorScreen> createState() => _TagSelectorScreenState();
}

class _TagSelectorScreenState extends State<TagSelectorScreen> {
  final List<String> _tags = ['Flutter', 'Dart', 'React Native', 'Kotlin', 'Swift', 'Java', 'Python', 'C++', 'Go'];
  final Set<String> _selectedTags = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Skill Selector')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Select your skills:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: _tags.map((tag) {
                final isSelected = _selectedTags.contains(tag);
                return FilterChip(
                  label: Text(tag),
                  selected: isSelected,
                  onSelected: (selected) {
                    setState(() {
                      if (selected) {
                        _selectedTags.add(tag);
                      } else {
                        _selectedTags.remove(tag);
                      }
                    });
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            Text('Selected: ${_selectedTags.join(', ')}'),
          ],
        ),
      ),
    );
  }
}
