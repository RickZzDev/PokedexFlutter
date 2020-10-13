import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokedex/stores/details_store.dart';
import 'package:provider/provider.dart';

class TabSliding extends StatefulWidget {
  final String _menutitle;

  TabSliding(this._menutitle);

  @override
  _TabSlidingState createState() => _TabSlidingState();
}

class _TabSlidingState extends State<TabSliding> {
  DetailsStore teste = DetailsStore();
  @override
  void didChangeDependencies() {
    teste = Provider.of<DetailsStore>(context);
    super.didChangeDependencies();
  }

  void changeSelectedTab(String newTab) {
    teste.changeSelected(newTab);
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return GestureDetector(
          onTap: () => changeSelectedTab(widget._menutitle),
          child: Container(
            padding: EdgeInsets.all(4),
            width: 90,
            child: Center(
              child: Column(
                children: [
                  Text(
                    widget._menutitle,
                    style: teste.getSelected == widget._menutitle
                        ? TextStyle(color: Colors.white)
                        : TextStyle(color: Colors.grey[400]),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 100),
                    width: teste.getSelected == widget._menutitle ? 40 : 0,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
