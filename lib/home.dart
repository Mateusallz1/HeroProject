//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'hero_model.dart';
import 'heroes_controller.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

  _buildList(){
    HeroesController heroesController = Provider.of<HeroesController>(context);

    return ListView.builder(
      itemCount: heroesController.heroes.length,
      itemBuilder: (context, index) {
        return _buildItems(heroesController.heroes[index]);
      },
    );
  }

  _buildItems(HeroModel model) {
    HeroesController heroesController = Provider.of<HeroesController>(context);
    
    return ListTile(
      onTap: (){
        print('clicado');
        heroesController.checkFAvorite(model);
      },

      title: Text(model.name),
      trailing: 
      model.isFavorite ?
      Icon(Icons.star, color: Colors.yellow,) :
      Icon(Icons.star_border),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
        centerTitle: true,
        leading: Consumer<HeroesController>(
          builder: (context, heroesController, widget) {
            return Center(child: Text('${heroesController.heroes.where((i) => i.isFavorite).length}'));
          }
        ),
      ),
      body: Consumer<HeroesController>(builder: (context, heroesController, widget){
        return _buildList();
      },),
    );
  }
}