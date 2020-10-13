import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/components/circular_card/circular_card.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class SlidincgComponent extends StatefulWidget {
  final SheetController controller;
  final Widget _currentBody;
  SlidincgComponent(this.controller, this._currentBody);
  @override
  _SlidincgComponentState createState() => _SlidincgComponentState();
}

class _SlidincgComponentState extends State<SlidincgComponent> {
  List<int> selecteds = [];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SlidingSheet(
      elevation: 8,
      cornerRadius: 16,
      controller: widget.controller,
      snapSpec: const SnapSpec(
        snap: true,
        snappings: [0.0, 1.0],
        positioning: SnapPositioning.relativeToAvailableSpace,
      ),
      body: Center(),
      builder: (context, state) {
        return Container(
          constraints: BoxConstraints(minHeight: 550),
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: widget._currentBody,
          ),
        );
      },
    );
  }
}
