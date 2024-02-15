import 'package:cat_world_app/constants/colors.dart';
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
      children: [
        Expanded(child: Image.network(imageLink)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                catName,
                style: TextStyle(color: greyShade700),
              ),
            ),
            Container(
              width: 45,
              height: 40,
              decoration: BoxDecoration(
                  color: greyShade700,
                  borderRadius:
                      const BorderRadius.only(topLeft: Radius.circular(12))),
              child: const Icon(
                Icons.arrow_forward_ios,
                color: white,
                size: 15,
              ),
            ),
          ],
        )
      ],
    ));
  }
}
