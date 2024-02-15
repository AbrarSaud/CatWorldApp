import 'package:cat_world_app/components/app_bar_component.dart';
import 'package:cat_world_app/constants/colors.dart';
import 'package:cat_world_app/provider/provider_cat.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({
    super.key,
  });

  Widget build(BuildContext context) {
    var favoriteCatsProvider = Provider.of<ProviderCat>(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const AppBarComponent(
        data: "My Favorite Cat",
        isBackButton: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
          itemCount: favoriteCatsProvider.favoriteCats.length,
          itemBuilder: (context, index) {
            var cat = favoriteCatsProvider.favoriteCats[index];
            return Container(
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  color: white, borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(cat.imageLink ??
                        'https://png.pngtree.com/png-vector/20190917/ourmid/pngtree-not-found-outline-icon-vectors-png-image_1737857.jpg'),
                  ),
                  title: Text(cat.name ?? ""),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
