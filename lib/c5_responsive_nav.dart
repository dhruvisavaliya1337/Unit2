import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ResponsiveNavShell()));
}

class ResponsiveNavShell extends StatefulWidget {
  const ResponsiveNavShell({super.key});

  @override
  State<ResponsiveNavShell> createState() => _ResponsiveNavShellState();
}

class _ResponsiveNavShellState extends State<ResponsiveNavShell> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isDesktop = constraints.maxWidth >= 600;
        return Scaffold(
          appBar: AppBar(title: const Text('Responsive Nav Shell')),
          drawer: isDesktop
              ? null
              : Drawer(
                  child: ListView(
                    children: _navItems(onTap: (index) {
                      setState(() => _selectedIndex = index);
                      Navigator.pop(context);
                    }),
                  ),
                ),
          body: Row(
            children: [
              if (isDesktop)
                NavigationRail(
                  selectedIndex: _selectedIndex,
                  onDestinationSelected: (index) => setState(() => _selectedIndex = index),
                  labelType: NavigationRailLabelType.all,
                  destinations: const [
                    NavigationRailDestination(icon: Icon(Icons.home), label: Text('Home')),
                    NavigationRailDestination(icon: Icon(Icons.search), label: Text('Search')),
                    NavigationRailDestination(icon: Icon(Icons.person), label: Text('Profile')),
                  ],
                ),
              Expanded(
                child: Center(
                  child: Text('Selected Index: $_selectedIndex', style: const TextStyle(fontSize: 24)),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  List<Widget> _navItems({required Function(int) onTap}) {
    return [
      const DrawerHeader(child: Text('Navigation')),
      ListTile(leading: const Icon(Icons.home), title: const Text('Home'), onTap: () => onTap(0)),
      ListTile(leading: const Icon(Icons.search), title: const Text('Search'), onTap: () => onTap(1)),
      ListTile(leading: const Icon(Icons.person), title: const Text('Profile'), onTap: () => onTap(2)),
    ];
  }
}
