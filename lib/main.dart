import 'dart:convert';

import 'package:cat_world_app/data/cats.dart';
import 'package:cat_world_app/models/cats.dart';
import 'package:cat_world_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

List<CatsModel> listCats = [];

void main() {
  // final cats =
  //     allCats.map<CatsModel>((json) => CatsModel.fromJson(json)).toList();
  for (var element in allcats["cats"]) {
    listCats.add(CatsModel.fromJson(element));
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
// CatDetailsScreen(
//         cat: listCats[0],
//       ),
