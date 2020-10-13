import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:pokedex/components/home/sliding_sheet/sliding_bodys/SlidingBodyFilter.dart';
import 'package:pokedex/components/home/sliding_sheet/sliding_bodys/SlidingBodyGen.dart';
import 'package:pokedex/components/home/sliding_sheet/sliding_bodys/SlidingBodySort.dart';

import 'package:pokedex/pages/home/home.dart';
import 'package:pokedex/stores/filter_body_store.dart';
import 'package:pokedex/stores/poke_store.dart';
import 'package:provider/provider.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

abstract class MyHomePageViewMoel extends State<MyHomePage> {
  PokeStore pokeStore;

  FilterBodyStore filterBodyStore = FilterBodyStore();
  SheetController controller;
  SheetController controller2;
  Widget currentFilterBody;

  double newSize = 200;
  List<int> selecteds = [];
  @override
  void initState() {
    controller = SheetController();
    currentFilterBody = Text("Teste");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    pokeStore = Provider.of<PokeStore>(context);
    pokeStore.fetchPokemonList();

    super.didChangeDependencies();
  }

  void showSlidingFilter(String typeFilter) {
    if (typeFilter == "Filter") {
      filterBodyStore.setFilterBody(SlidingBody());
    } else if (typeFilter == "Gen") {
      filterBodyStore.setFilterBody(SlidingBodyGen());
    } else {
      filterBodyStore.setFilterBody(SlidingBodySort());
    }

    _openSlidingSheet();
  }

  void _openSlidingSheet() {
    controller.state == null
        ? controller.expand()
        : controller.state.isExpanded
            ? controller.hide()
            : controller.expand();
  }

  Color defineCardColorByType(String type, bool subtype) {
    if (type == "Grass") {
      return subtype ? Colors.green[700] : Colors.green;
    } else if (type == "Fire") {
      return subtype ? Colors.orange[700] : Colors.orange;
    } else if (type == "Water") {
      return subtype ? Colors.blue[700] : Colors.blue;
    } else if (type == "Ground") {
      return Colors.brown;
    } else if (type == "Fairy") {
      return subtype ? Colors.pink[700] : Colors.pink;
    } else if (type == "Electric") {
      return subtype ? Colors.yellow[700] : Colors.yellow;
    } else if (type == "Normal") {
      return subtype ? Colors.grey[700] : Colors.grey[400];
    } else if (type == "Flying") {
      return subtype ? Colors.cyanAccent[700] : Colors.cyanAccent;
    } else if (type == "Bug") {
      return subtype ? Colors.lightGreenAccent[700] : Colors.green[400];
    } else {
      return subtype ? Colors.purple[700] : Colors.purple;
    }
  }
}
