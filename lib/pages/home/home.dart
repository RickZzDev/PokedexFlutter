import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:pokedex/pages/home/home_view.dart';
import 'package:pokedex/stores/poke_store.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  BuildContext context;
  // final pokeStore = Provider.of<PokeStore>(context);

  @override
  MyHomePageView createState() => MyHomePageView();
}
