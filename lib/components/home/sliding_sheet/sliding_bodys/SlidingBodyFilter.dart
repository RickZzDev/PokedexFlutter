import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/components/circular_card/circular_card.dart';

class SlidingBody extends StatefulWidget {
  final List<int> selecteds = [];
  @override
  _SlidingBodyState createState() => _SlidingBodyState();
}

class _SlidingBodyState extends State<SlidingBody> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Filters",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        Text(
          "Use advanced search to explore Pokémon by type, weakness, height and more!",
          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
        ),
        Text(
          "Types",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          // color: Colors.red,
          padding: EdgeInsets.only(top: 8, bottom: 8, left: 4),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => {
                  setState(() => {
                        widget.selecteds.contains(index)
                            ? widget.selecteds.remove(index)
                            : widget.selecteds.add(index)
                      })
                },
                child: CircularCard("assets/Icons/Bug/Vector.png",
                    widget.selecteds, index, "Fire"),
              );
            },
          ),
        ),
        Text(
          "Weakness",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: 8, bottom: 8, left: 4),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => {
                  setState(() => {
                        widget.selecteds.contains(index)
                            ? widget.selecteds.remove(index)
                            : widget.selecteds.add(index)
                      })
                },
                child: CircularCard("assets/Icons/Bug/Vector.png",
                    widget.selecteds, index, "Grass"),
              );
            },
          ),
        ),
        Text(
          "Height",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          // color: Colors.red,
          padding: EdgeInsets.only(top: 8, bottom: 8, left: 4),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => {
                  setState(() => {
                        widget.selecteds.contains(index)
                            ? widget.selecteds.remove(index)
                            : widget.selecteds.add(index)
                      })
                },
                child: CircularCard("assets/Icons/Bug/Vector.png",
                    widget.selecteds, index, "Electric"),
              );
            },
          ),
        ),
        Text(
          "Weights",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          // color: Colors.red,
          padding: EdgeInsets.only(top: 8, bottom: 8, left: 4),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => {
                  setState(() => {
                        widget.selecteds.contains(index)
                            ? widget.selecteds.remove(index)
                            : widget.selecteds.add(index)
                      })
                },
                child: CircularCard("assets/Icons/Bug/Vector.png",
                    widget.selecteds, index, "Fairy"),
              );
            },
          ),
        ),
      ],
    );
  }
}
