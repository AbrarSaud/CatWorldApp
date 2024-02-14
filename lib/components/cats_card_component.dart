import 'package:flutter/material.dart';

class CatsCardComponent extends StatelessWidget {
  const CatsCardComponent({
    super.key,
    required this.imageLink,
    required this.catName,
  });
  final String imageLink;
  final String catName;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [Expanded(child: Image.network(imageLink)), Text(catName)],
    ));
  }
}
