import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SkillsBody extends StatefulWidget {
  @override
  _SkillsBodyState createState() => _SkillsBodyState();
}

class _SkillsBodyState extends State<SkillsBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    );
  }
}
