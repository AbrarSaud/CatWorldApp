import 'package:cat_world_app/components/bottom_nav_bar_component.dart';
import 'package:cat_world_app/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void BottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _screens = [
    const Center(child: Text('1')),
    const Center(child: Text('2')),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        bottomNavigationBar: BottomNavBarComponent(
          onTabChange: (index) => BottomNavBar(index),
        ),
        body: _screens[_selectedIndex]);
  }
}

// GridView(
//         gridDelegate:
//             const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//         children: [
//           Card(
//             child: Text("Cat"),
//           )
//         ],
//       ),