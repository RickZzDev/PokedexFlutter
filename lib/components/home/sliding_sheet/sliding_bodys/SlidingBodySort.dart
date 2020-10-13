import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/components/home/sliding_sheet/SortButton.dart';

class SlidingBodySort extends StatefulWidget {
  final List<int> selecteds = [];
  @override
  _SlidingBodyState createState() => _SlidingBodyState();
}

class _SlidingBodyState extends State<SlidingBodySort> {
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
          "Sort",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        Text(
          "Sort Pokémons alphabetically or by National Pokédex number!",
          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
        ),
        SortButton("Smallets number first"),
        SortButton("Highest number first"),
        SortButton("A-Z"),
        SortButton("Z-A")
      ],
    );
  }
}
