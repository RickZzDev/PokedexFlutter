import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokedex/components/home/sliding_sheet/SlidingComponent.dart';
import 'package:pokedex/components/home/type_card.dart';
import 'package:pokedex/models/poke_api.dart';
import 'package:pokedex/pages/details/details.dart';
import 'package:pokedex/pages/home/home_view_model.dart';

class MyHomePageView extends MyHomePageViewMoel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.35,
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            icon: Icon(Icons.dialpad_outlined),
                            onPressed: () => showSlidingFilter("Filter")),
                        SizedBox(
                          width: 15,
                        ),
                        IconButton(
                            icon: Icon(Icons.format_list_bulleted_sharp),
                            onPressed: () => showSlidingFilter("Sort")),
                        SizedBox(
                          width: 15,
                        ),
                        IconButton(
                            icon: Icon(Icons.format_line_spacing_outlined),
                            onPressed: () => showSlidingFilter("Gen")),
                      ],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Pokédex",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 32),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Search for Pokemon by name or using National pokédex number",
                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Digite aqui",
                          filled: true,
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          focusColor: Colors.red,
                          hoverColor: Colors.red),
                    )
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.65,
                width: MediaQuery.of(context).size.width - 64,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.35),
                child: Observer(
                  builder: (context) {
                    return FutureBuilder(
                      future: pokeStore.pokeHttpResonse,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          PokeApi pokemons = pokeStore.pokeApi;
                          return ListView.builder(
                            itemCount: pokemons.pokemon.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      GestureDetector(
                                        onTap: () => Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) => Details(
                                                pokemons.pokemon[index]),
                                          ),
                                        ),
                                        child: Card(
                                          color: defineCardColorByType(
                                              "${pokemons.pokemon[index].type[0]}",
                                              false),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 12,
                                                left: 12,
                                                top: 5,
                                                bottom: 12),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Container(
                                                    height: 20,
                                                    margin: EdgeInsets.only(
                                                        right: 40),
                                                    child: Image.asset(
                                                        "assets/dot.png",
                                                        fit: BoxFit.cover),
                                                  ),
                                                ),
                                                Container(
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "${pokemons.pokemon[index].name}",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                TypesCards(
                                                    pokemons.pokemon[index])
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(bottom: 20),
                                        height: 80,
                                        width: 140,
                                        child: Image.asset(
                                          "assets/pokeball.png",
                                          fit: BoxFit.fill,
                                          // alignment: Alignment.bottomRight,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(bottom: 20),
                                        height: 120,
                                        width: 120,
                                        child: Image.network(
                                          pokemons.pokemon[index].img,
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          );
                        } else {
                          return Center(
                            child: Container(
                              height: 50,
                              width: 50,
                              child: CircularProgressIndicator(),
                            ),
                          );
                        }
                      },
                    );
                  },
                ),
              ),
            ),
            Observer(
              builder: (context) {
                return SlidincgComponent(
                    controller, filterBodyStore.currentFilterbody);
              },
            )
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
