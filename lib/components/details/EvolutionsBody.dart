import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EvolutionsBody extends StatefulWidget {
  @override
  _EvolutionsBodyState createState() => _EvolutionsBodyState();
}

class _EvolutionsBodyState extends State<EvolutionsBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    );
  }
}
