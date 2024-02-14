import 'package:cat_world_app/components/app_bar_component.dart';
import 'package:flutter/material.dart';

class CatsHomeScreen extends StatelessWidget {
  const CatsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarComponent(),
    );
  }
}
