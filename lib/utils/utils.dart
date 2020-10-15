import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyUtilClass {
  Color defineColor(String type) {
    if (type == "Grass") {
      return Colors.green;
    } else if (type == "Fire") {
      return Colors.orange;
    } else if (type == "ice") {
      return Colors.blueAccent;
    } else if (type == "Water") {
      return Colors.blue;
    } else if (type == "Ground") {
      return Colors.brown;
    } else if (type == "Fairy") {
      return Colors.pink;
    } else if (type == "Electric") {
      return Colors.yellow;
    } else if (type == "Normal") {
      return Colors.grey[400];
    } else if (type == "Flying") {
      return Colors.cyanAccent;
    } else if (type == "Bug") {
      return Colors.green[400];
    } else {
      return Colors.purple;
    }
  }
}
