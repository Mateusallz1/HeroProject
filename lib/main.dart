import 'package:flutter/material.dart';
import 'heroes_controller.dart';
import 'home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HeroesController>.value(value: HeroesController(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Demonstração Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeWidget(),
      ),
    );
  }
}

