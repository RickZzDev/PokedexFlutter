import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/components/circular_card/circular_card.dart';

abstract class CircularCardViewModel extends State<CircularCard> {
  Color primaryColor;
  @override
  void initState() {
    defineColor(widget.type);
    super.initState();
  }

  void defineColor(String type) {
    if (type == "Grass") {
      setState(() {
        primaryColor = Colors.green;
      });
    } else if (type == "Fire") {
      setState(() {
        primaryColor = Colors.orange;
      });
    } else if (type == "Water") {
      setState(() {
        primaryColor = Colors.blue;
      });
    } else if (type == "Ground") {
      setState(() {
        primaryColor = Colors.brown;
      });
    } else if (type == "Fairy") {
      setState(() {
        primaryColor = Colors.pink;
      });
    } else if (type == "Electric") {
      setState(() {
        primaryColor = Colors.yellow;
      });
    } else if (type == "Normal") {
      setState(() {
        primaryColor = Colors.grey[400];
      });
    } else if (type == "Flying") {
      setState(() {
        primaryColor = Colors.cyanAccent;
      });
    } else if (type == "Bug") {
      setState(() {
        primaryColor = Colors.green[400];
      });
    } else {
      setState(() {
        primaryColor = Colors.purple;
      });
    }
  }
}
