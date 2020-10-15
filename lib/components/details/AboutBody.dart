import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/components/details/AboutTiles.dart';
import 'package:pokedex/models/poke_api.dart';
import 'package:pokedex/utils/utils.dart';

class AboutBody extends StatefulWidget {
  final Pokemon _pokemon;
  AboutBody(this._pokemon);
  @override
  _AboutBodyState createState() => _AboutBodyState();
}

class _AboutBodyState extends State<AboutBody> {
  MyUtilClass _myUtilClass;
  @override
  void initState() {
    _myUtilClass = MyUtilClass();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var container = Container(
      width: 80,
      padding: EdgeInsets.all(4),
      height: 40,
      child: ListView.builder(
        itemCount: widget._pokemon.type.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            color: _myUtilClass.defineColor(widget._pokemon.weaknesses[index]),
            width: 30,
            margin: EdgeInsets.only(right: 8),
            child: Center(
              child: Image.asset(
                  "assets/Icons/${widget._pokemon.type[index].toLowerCase()}.png"),
            ),
          );
        },
      ),
    );
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
                  "Pokedex data",
                  style: TextStyle(
                    color: _myUtilClass.defineColor(widget._pokemon.type[0]),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              AboutTiles(
                title: "Height",
                description: widget._pokemon.height,
              ),
              AboutTiles(
                  title: "Weight", description: "${widget._pokemon.weight}"),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Weakness",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    container
                  ],
                ),
              ),
              AboutTiles(
                  title: "Pokedex Number",
                  description: "${widget._pokemon.number}"),
            ],
          ),
        ),
      ),
    );
  }
}
