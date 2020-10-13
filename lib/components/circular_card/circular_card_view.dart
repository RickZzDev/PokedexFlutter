import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/components/circular_card/circular_card.dart';
import 'package:pokedex/components/circular_card/circular_card_view_model.dart';

class CircularCardView extends CircularCardViewModel {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      decoration: BoxDecoration(
        color: widget.selecteds.contains(widget.myNumber)
            ? primaryColor
            : Colors.transparent,
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.transparent,
          )
        ],
      ),
      height: 50,
      width: 50,
      margin: EdgeInsets.only(right: 8),
      child: Image.asset(
        "assets/Icons/Bug/Vector.png",
        color: widget.selecteds.contains(widget.myNumber)
            ? Colors.white
            : primaryColor,
      ),
    );
    // return Container(
    //   height: 50,
    //   width: 55,

    // );
  }
}
