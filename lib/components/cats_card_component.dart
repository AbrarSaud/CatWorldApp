import 'package:cat_world_app/constants/nav.dart';
import 'package:cat_world_app/models/cats.dart';
import 'package:cat_world_app/screens/cat_detail_screen.dart';
import 'package:flutter/material.dart';

import 'package:cat_world_app/constants/colors.dart';

class CatsCardComponent extends StatefulWidget {
  const CatsCardComponent({
    Key? key,
    required this.cat,
  }) : super(key: key);

  final CatsModel cat;

  @override
  State<CatsCardComponent> createState() => _CatsCardComponentState();
}

class _CatsCardComponentState extends State<CatsCardComponent> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: GestureDetector(
      onTap: () {
        context.pushNav(
            screen: CatDetailsScreen(
          cat: widget.cat,
          onPressed: () {},
        ));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Image.network(widget.cat.imageLink ??
                  'https://png.pngtree.com/png-vector/20190917/ourmid/pngtree-not-found-outline-icon-vectors-png-image_1737857.jpg')),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    widget.cat.name ?? 'no name',
                    style:
                        TextStyle(color: greyShade700, fontFamily: 'Merienda'),
                  ),
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
      ),
    ));
  }
}
