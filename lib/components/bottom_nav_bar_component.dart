import 'package:cat_world_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class BottomNavBarComponent extends StatelessWidget {
  BottomNavBarComponent({super.key, required this.onTabChange});
  void Function(int)? onTabChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: grey400,
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 20,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(icon: Icons.pets, text: ' Home'),
          GButton(icon: Icons.favorite, text: ' My cats'),
        ],
      ),
    );
  }
}
