import 'package:cat_world_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CatInfoComponent extends StatelessWidget {
  const CatInfoComponent({
    super.key,
    required this.subHeader,
    required this.data,
  });
  final String subHeader;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
          color: white, borderRadius: BorderRadius.all(Radius.circular(8))),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
           subHeader,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
           data,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
