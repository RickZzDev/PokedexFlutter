import 'package:flutter/material.dart';
import 'package:pokedex/pages/home/home.dart';
import 'package:pokedex/stores/details_store.dart';
import 'package:pokedex/stores/poke_store.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PokeStore>(
          create: (_) => PokeStore(),
        ),
        Provider<DetailsStore>(
          create: (_) => DetailsStore(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
          cursorColor: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(),
      ),
    );
  }
}
