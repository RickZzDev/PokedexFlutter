import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/models/poke_api.dart';

class TypesCards extends StatefulWidget {
  final Pokemon pokemom;
  TypesCards(this.pokemom);
  @override
  _TypesCardsState createState() => _TypesCardsState();
}

class _TypesCardsState extends State<TypesCards> {
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

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.pokemom.type.length,
        itemBuilder: (context, i) {
          return Container(
            decoration: BoxDecoration(
              color: defineCardColorByType(widget.pokemom.type[i], true),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            height: 20,
            margin: EdgeInsets.only(right: 5),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              child: Row(
                children: [
                  Image.asset(
                      "assets/Icons/${widget.pokemom.type[i].toLowerCase()}.png"),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    widget.pokemom.type[i],
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
