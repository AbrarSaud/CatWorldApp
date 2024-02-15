import 'package:flutter/material.dart';
import 'package:cat_world_app/models/cats.dart';

class ProviderCat extends ChangeNotifier {
  List<CatsModel> _favoriteCats = [];

  List<CatsModel> get favoriteCats => _favoriteCats;

  void addToFavorites(CatsModel cat) {
    _favoriteCats.add(cat);
    notifyListeners();
  }

  void removeFromFavorites(CatsModel cat) {
    _favoriteCats.remove(cat);
    notifyListeners();
  }
}
