import 'package:flutter/material.dart';

import 'a1_info.dart';
import 'a2_counter.dart';
import 'a3_scaffold.dart';
import 'a4_listview.dart';
import 'a5_gridview.dart';
import 'a6_card.dart';
import 'a7_drawer.dart';
import 'a8_bottom_nav.dart';
import 'a9_stack.dart';
import 'a10_section_title.dart';

import 'b1_lifecycle.dart';
import 'b2_responsive_layout.dart';
import 'b3_product_grid.dart';
import 'b4_profile_card.dart';
import 'b5_wrap_chips.dart';
import 'b6_badge_icon.dart';
import 'b7_tabbar.dart';
import 'b8_settings_table.dart';
import 'b9_responsive_form.dart';
import 'b10_aspect_ratio.dart';

import 'c1_dashboard.dart';
import 'c2_custom_widgets.dart';
import 'c3_product_detail.dart';
import 'c4_todo_list.dart';
import 'c5_responsive_nav.dart';
import 'c6_multi_tab_profile.dart';
import 'c7_news_feed.dart';
import 'c8_profile_header.dart';
import 'c9_responsive_settings.dart';
import 'c10_lifecycle_logger.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PracticalIndex(),
  ));
}

class PracticalIndex extends StatelessWidget {
  const PracticalIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Practicals Index'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          _sectionHeader('Section A — Easy Level'),
          _practicalTile(context, '1. Info Text Widgets', const InfoScreen()),
          _practicalTile(context, '2. Simple Counter', const CounterScreen()),
          _practicalTile(context, '3. Scaffold Demo', const ScaffoldScreen()),
          _practicalTile(context, '4. ListView.builder Fruits', const FruitListScreen()),
          _practicalTile(context, '5. GridView.count Colors', const GridViewScreen()),
          _practicalTile(context, '6. Card Widget', const CardScreen()),
          _practicalTile(context, '7. Drawer Demo', const DrawerScreen()),
          _practicalTile(context, '8. BottomNavigationBar', const BottomNavScreen()),
          _practicalTile(context, '9. Stack Widget', const StackScreen()),
          _practicalTile(context, '10. Custom SectionTitle', const ScreenOne()),
          
          _sectionHeader('Section B — Moderate Level'),
          _practicalTile(context, '1. Lifecycle Demo', const LifecycleDemo()),
          _practicalTile(context, '2. LayoutBuilder Responsive', const ResponsiveLayoutScreen()),
          _practicalTile(context, '3. GridView.builder Products', const ProductGridScreen()),
          _practicalTile(context, '4. Custom ProfileCard', const ProfileListScreen()),
          _practicalTile(context, '5. Wrap & Chips', const TagSelectorScreen()),
          _practicalTile(context, '6. Stack & Positioned Badge', const BadgeIconScreen()),
          _practicalTile(context, '7. TabBar & TabBarView', const TabBarScreen()),
          _practicalTile(context, '8. Table Widget Settings', const SettingsTableScreen()),
          _practicalTile(context, '9. MediaQuery Responsive Form', const ResponsiveFormScreen()),
          _practicalTile(context, '10. AspectRatio Media Card', const AspectRatioListScreen()),
          
          _sectionHeader('Section C — Hard Level'),
          _practicalTile(context, '1. Responsive Dashboard', const ResponsiveDashboard()),
          _practicalTile(context, '2. Custom Widget Library', const CustomWidgetDemo()),
          _practicalTile(context, '3. E-commerce Detail Screen', const ProductDetailScreen()),
          _practicalTile(context, '4. To-Do List (didUpdateWidget)', const TodoParent()),
          _practicalTile(context, '5. Responsive Nav Shell', const ResponsiveNavShell()),
          _practicalTile(context, '6. Multi-tab Profile', const MultiTabProfile()),
          _practicalTile(context, '7. IntrinsicHeight News Feed', const NewsFeedScreen()),
          _practicalTile(context, '8. Profile Header Stack', const ProfileHeaderScreen()),
          _practicalTile(context, '9. Responsive Settings Table', const ResponsiveSettingsScreen()),
          _practicalTile(context, '10. Lifecycle Logger Utility', const LifecycleLoggerDemo()),
        ],
      ),
    );
  }

  Widget _sectionHeader(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      color: Colors.blueGrey[50],
      child: Text(
        title, 
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blueGrey),
      ),
    );
  }

  Widget _practicalTile(BuildContext context, String title, Widget screen) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 14),
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => screen)),
    );
  }
}
