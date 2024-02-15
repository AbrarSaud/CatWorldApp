import 'package:cat_world_app/components/app_bar_component.dart';
import 'package:cat_world_app/components/cat_info_component.dart';
import 'package:cat_world_app/constants/colors.dart';
import 'package:cat_world_app/main.dart';
import 'package:cat_world_app/models/cats.dart';
import 'package:flutter/material.dart';

class CatDetailsScreen extends StatelessWidget {
  const CatDetailsScreen({super.key, required this.cat});
  final CatsModel cat;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBarComponent(
        data: cat.name,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Image.network(
                height: 200,
                cat.imageLink ??
                    'https://png.pngtree.com/png-vector/20190917/ourmid/pngtree-not-found-outline-icon-vectors-png-image_1737857.jpg'),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Text(
                cat.name ?? 'no name',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
            ),
            CatInfoComponent(subHeader: 'Origin:', data: cat.origin ?? ''),
            CatInfoComponent(
                subHeader: 'MaxWeight:', data: cat.maxWeight.toString()),
            CatInfoComponent(
                subHeader: ' MinWeight:', data: cat.minWeight.toString()),
            CatInfoComponent(subHeader: 'Length:', data: cat.length ?? ''),
            CatInfoComponent(
                subHeader: 'Intelligence:', data: cat.intelligence.toString())
          ],
        ),
      ),
    );
  }
}
