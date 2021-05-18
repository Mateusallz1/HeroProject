import 'package:flutter/cupertino.dart';
import 'package:project_hero/hero_model.dart';

class HeroesController extends ChangeNotifier{

  List<HeroModel> heroes = [
    HeroModel(name: "All Might"),
    HeroModel(name: "Endeavor", isFavorite: true),
    HeroModel(name: "Hawkins"),
    HeroModel(name: "Best Jeanist"),
    HeroModel(name: "Vlad"),
    HeroModel(name: "Deku"),
  ];
}