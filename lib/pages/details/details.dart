import 'package:flutter/cupertino.dart';
import 'package:pokedex/models/poke_api.dart';
import 'package:pokedex/pages/details/details_view.dart';

class Details extends StatefulWidget {
  final Pokemon pokemom;
  Details(this.pokemom);
  @override
  DetailsView createState() => DetailsView();
}
