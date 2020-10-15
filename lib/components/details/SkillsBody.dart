import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/components/details/AboutTiles.dart';
import 'package:pokedex/models/poke_api.dart';
import 'package:pokedex/utils/utils.dart';

class SkillsBody extends StatefulWidget {
  final Pokemon _pokemon;
  SkillsBody(this._pokemon);
  @override
  _SkillsBodyState createState() => _SkillsBodyState();
}

class _SkillsBodyState extends State<SkillsBody> {
  MyUtilClass _myUtilClass;
  @override
  void initState() {
    _myUtilClass = MyUtilClass();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8),
          height: MediaQuery.of(context).size.height * 0.4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Game stats",
                  style: TextStyle(
                    color: _myUtilClass.defineColor(widget._pokemon.type[0]),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              AboutTiles(
                title: "Candy",
                description: widget._pokemon.candy,
              ),
              AboutTiles(
                  title: "Candy Count",
                  description: "${widget._pokemon.candyCount}"),
              AboutTiles(
                  title: "Spawn chance",
                  description: "${widget._pokemon.spawnChance}"),
              AboutTiles(
                  title: "Spawn Time",
                  description: "${widget._pokemon.spawnTime}"),
            ],
          ),
        ),
      ),
    );
  }
}
