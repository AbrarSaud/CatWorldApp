import 'package:cat_world_app/components/app_bar_component.dart';
import 'package:cat_world_app/components/cat_info_component.dart';
import 'package:cat_world_app/constants/colors.dart';
import 'package:cat_world_app/models/cats.dart';
import 'package:cat_world_app/provider/provider_cat.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CatDetailsScreen extends StatefulWidget {
  final CatsModel cat;
  final VoidCallback onPressed;

  const CatDetailsScreen({Key? key, required this.cat, required this.onPressed})
      : super(key: key);

  @override
  State<CatDetailsScreen> createState() => _CatDetailsScreenState();
}

class _CatDetailsScreenState extends State<CatDetailsScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    var favoriteCatsProvider = Provider.of<ProviderCat>(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBarComponent(
        data: widget.cat.name,
        isBackButton: false,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: greyShade700,
        onPressed: () {
          isFavorite = !isFavorite;
          if (isFavorite) {
            favoriteCatsProvider.addToFavorites(widget.cat);
          } else {
            favoriteCatsProvider.removeFromFavorites(widget.cat);
          }
        },
        child: isFavorite
            ? Icon(Icons.favorite)
            : const Icon(Icons.favorite_outline),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Image.network(
              widget.cat.imageLink ??
                  'https://png.pngtree.com/png-vector/20190917/ourmid/pngtree-not-found-outline-icon-vectors-png-image_1737857.jpg',
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(
                widget.cat.name ?? 'no name',
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    fontFamily: 'Merienda'),
              ),
            ),
            CatInfoComponent(
                subHeader: 'Origin:', data: widget.cat.origin ?? ''),
            CatInfoComponent(
                subHeader: 'MaxWeight:', data: widget.cat.maxWeight.toString()),
            CatInfoComponent(
                subHeader: 'MinWeight:', data: widget.cat.minWeight.toString()),
            CatInfoComponent(
                subHeader: 'Length:', data: widget.cat.length ?? ''),
            CatInfoComponent(
                subHeader: 'Intelligence:',
                data: widget.cat.intelligence.toString()),
          ],
        ),
      ),
    );
  }
}
