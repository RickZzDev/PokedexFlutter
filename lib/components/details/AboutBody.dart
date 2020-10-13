import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/components/details/AboutTiles.dart';

class AboutBody extends StatefulWidget {
  @override
  _AboutBodyState createState() => _AboutBodyState();
}

class _AboutBodyState extends State<AboutBody> {
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
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "AOifAOifhoafo ihaeof hioaeihf poaiehfj poaiehf poaihfpoaiehf oihpoaiehfpo aiehf poaiehf poaiehf poaeih fpoaie hfpoáiehf poáseih fóaiehfóaieh o´pfaihejfo´aihefoáiehf óaeh"),
              Text(
                "Pokédex data",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              AboutTiles("Species", "Seed Pokemon"),
              AboutTiles("Species", "Seed Pokemon"),
              AboutTiles("Species", "Seed Pokemon"),
              AboutTiles("Species", "Seed Pokemon"),
              AboutTiles("Species", "Seed Pokemon"),
              AboutTiles("Species", "Seed Pokemon"),
              AboutTiles("Species", "Seed Pokemon"),
              Text(
                "Pokédex data",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              AboutTiles("Species", "Seed Pokemon"),
              AboutTiles("Species", "Seed Pokemon"),
              AboutTiles("Species", "Seed Pokemon"),
              AboutTiles("Species", "Seed Pokemon"),
              AboutTiles("Species", "Seed Pokemon"),
              AboutTiles("Species", "Seed Pokemon"),
              AboutTiles("Species", "Seed Pokemon"),
            ],
          ),
        ),
      ),
    );
  }
}
