import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/components/circular_card/circular_card_view.dart';

class CircularCard extends StatefulWidget {
  final String url;
  final List<int> selecteds;
  final int myNumber;
  final String type;
  CircularCard(this.url, this.selecteds, this.myNumber, this.type);
  @override
  CircularCardView createState() => CircularCardView();
}
