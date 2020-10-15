import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/components/details/AboutTiles.dart';
import 'package:pokedex/models/evolutions.dart';
import 'package:pokedex/models/poke_api.dart';
import 'package:pokedex/stores/poke_store.dart';
import 'package:pokedex/utils/utils.dart';
import 'package:provider/provider.dart';

class EvolutionsBody extends StatefulWidget {
  final Pokemon _pokemon;
  EvolutionsBody(this._pokemon);
  @override
  _EvolutionsBodyState createState() => _EvolutionsBodyState();
}

class _EvolutionsBodyState extends State<EvolutionsBody> {
  MyUtilClass _myUtilClass;
  PokeStore pokeStore;
  @override
  void initState() {
    _myUtilClass = MyUtilClass();

    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    pokeStore = Provider.of<PokeStore>(context);
    if (widget._pokemon.nextEvolution != null &&
        widget._pokemon.prevEvolution != null) {
      pokeStore.getAllEvs(widget._pokemon);
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var listViewWithPrevAndNextEvolution =
        widget._pokemon.nextEvolution != null &&
                widget._pokemon.prevEvolution != null
            ? ListView.builder(
                itemCount: pokeStore.allEvolutions.evolutions.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return index == 0
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "assets/pokeball2.png",
                                        ),
                                        fit: BoxFit.fill),
                                  ),
                                  child: Image.network(
                                      "http://www.serebii.net/pokemongo/pokemon/${pokeStore.allEvolutions.evolutions[index].number}.png"),
                                ),
                                Text(
                                  "${pokeStore.allEvolutions.evolutions[index].name}",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 8),
                              child: Icon(
                                Icons.arrow_right_alt_outlined,
                                size: 44,
                                color: Colors.grey,
                              ),
                            ),
                            Column(
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "assets/pokeball2.png",
                                        ),
                                        fit: BoxFit.fill),
                                  ),
                                  child: Image.network(
                                      "http://www.serebii.net/pokemongo/pokemon/${pokeStore.allEvolutions.evolutions[index + 1].number}.png"),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${pokeStore.allEvolutions.evolutions[index + 1].name}",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        )
                      : index == pokeStore.allEvolutions.evolutions.length - 1
                          ? SizedBox()
                          : Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.5),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              "assets/pokeball2.png",
                                            ),
                                            fit: BoxFit.fill),
                                      ),
                                      child: Image.network(
                                          "http://www.serebii.net/pokemongo/pokemon/${pokeStore.allEvolutions.evolutions[index].number}.png"),
                                    ),
                                    Text(
                                      "${pokeStore.allEvolutions.evolutions[index].name}",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 8),
                                  child: Icon(
                                    Icons.arrow_right_alt_outlined,
                                    size: 44,
                                    color: Colors.grey,
                                  ),
                                ),
                                Column(
                                  children: [
                                    DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.5),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              "assets/pokeball2.png",
                                            ),
                                            fit: BoxFit.fill),
                                      ),
                                      child: Image.network(
                                          "http://www.serebii.net/pokemongo/pokemon/${pokeStore.allEvolutions.evolutions[index + 1].number}.png"),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "${pokeStore.allEvolutions.evolutions[index + 1].name}",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey),
                                    ),
                                  ],
                                )
                              ],
                            );
                },
              )
            : null;

    var listViewWithNextEvolution = widget._pokemon.nextEvolution == null
        ? null
        : ListView.builder(
            itemCount: widget._pokemon.nextEvolution.length + 1,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return index == 0
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.5),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/pokeball2.png",
                                    ),
                                    fit: BoxFit.fill),
                              ),
                              child: Image.network(
                                  "http://www.serebii.net/pokemongo/pokemon/${widget._pokemon.number}.png"),
                            ),
                            Text(
                              "${widget._pokemon.name}",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        widget._pokemon.nextEvolution.length > index + 1
                            ? Container(
                                margin: EdgeInsets.only(right: 8),
                                child: Icon(
                                  Icons.arrow_right_alt_outlined,
                                  size: 44,
                                  color: Colors.grey,
                                ),
                              )
                            : SizedBox(),
                        Column(
                          children: [
                            DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.5),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/pokeball2.png",
                                    ),
                                    fit: BoxFit.fill),
                              ),
                              child: Image.network(
                                  "http://www.serebii.net/pokemongo/pokemon/${widget._pokemon.nextEvolution[index].number}.png"),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${widget._pokemon.nextEvolution[index].name}",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    )
                  : index == widget._pokemon.nextEvolution.length
                      ? SizedBox()
                      : Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "assets/pokeball2.png",
                                        ),
                                        fit: BoxFit.fill),
                                  ),
                                  child: Image.network(
                                      "http://www.serebii.net/pokemongo/pokemon/${widget._pokemon.nextEvolution[index - 1].number}.png"),
                                ),
                                Text(
                                  "${widget._pokemon.nextEvolution[index - 1].name}",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 8),
                              child: Icon(
                                Icons.arrow_right_alt_outlined,
                                size: 44,
                                color: Colors.grey,
                              ),
                            ),
                            // widget._pokemon.nextEvolution.length > index + 1
                            //     ? Container(
                            //         margin: EdgeInsets.only(right: 8),
                            //         child: Icon(
                            //           Icons.arrow_right_alt_outlined,
                            //           size: 44,
                            //           color: Colors.grey,
                            //         ),
                            //       )
                            //     : SizedBox(),
                            Column(
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "assets/pokeball2.png",
                                        ),
                                        fit: BoxFit.fill),
                                  ),
                                  child: Image.network(
                                      "http://www.serebii.net/pokemongo/pokemon/${widget._pokemon.nextEvolution[index].number}.png"),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${widget._pokemon.nextEvolution[index].name}",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        );
            },
          );

    var listViewWithPrevEvolution = widget._pokemon.prevEvolution == null
        ? null
        : ListView.builder(
            itemCount: widget._pokemon.prevEvolution.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return index == widget._pokemon.prevEvolution.length - 1
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.5),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/pokeball2.png",
                                    ),
                                    fit: BoxFit.fill),
                              ),
                              child: Image.network(
                                  "http://www.serebii.net/pokemongo/pokemon/${widget._pokemon.prevEvolution[widget._pokemon.prevEvolution.length - 1].number}.png"),
                            ),
                            Text(
                              "${widget._pokemon.prevEvolution[widget._pokemon.prevEvolution.length - 1].name}",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          child: Icon(
                            Icons.arrow_right_alt_outlined,
                            size: 44,
                            color: Colors.grey,
                          ),
                        ),
                        Column(
                          children: [
                            DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.5),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/pokeball2.png",
                                    ),
                                    fit: BoxFit.fill),
                              ),
                              child: Image.network(
                                  "http://www.serebii.net/pokemongo/pokemon/${widget._pokemon.number}.png"),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${widget._pokemon.name}",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    )
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.5),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/pokeball2.png",
                                    ),
                                    fit: BoxFit.fill),
                              ),
                              child: Image.network(
                                  "http://www.serebii.net/pokemongo/pokemon/${widget._pokemon.prevEvolution[index].number}.png"),
                            ),
                            Text(
                              "${widget._pokemon.prevEvolution[index].name}",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          child: Icon(
                            Icons.arrow_right_alt_outlined,
                            size: 44,
                            color: Colors.grey,
                          ),
                        ),
                        Column(
                          children: [
                            DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.5),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/pokeball2.png",
                                    ),
                                    fit: BoxFit.fill),
                              ),
                              child: Image.network(
                                  "http://www.serebii.net/pokemongo/pokemon/${widget._pokemon.prevEvolution[index + 1].number}.png"),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${widget._pokemon.prevEvolution[index + 1].name}",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    );
            },
          );

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
      child: Container(
        padding: EdgeInsets.all(8),
        height: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Evolutions",
              style: TextStyle(
                color: _myUtilClass.defineColor(widget._pokemon.type[0]),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                // height: 250,
                width: 350,
                child: widget._pokemon.nextEvolution != null &&
                        widget._pokemon.prevEvolution != null
                    ? listViewWithPrevAndNextEvolution
                    : widget._pokemon.nextEvolution == null
                        ? listViewWithPrevEvolution
                        : listViewWithNextEvolution,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
