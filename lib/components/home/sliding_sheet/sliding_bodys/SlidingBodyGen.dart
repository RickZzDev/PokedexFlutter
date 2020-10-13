import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokedex/stores/poke_store.dart';
import 'package:provider/provider.dart';

class SlidingBodyGen extends StatefulWidget {
  @override
  _SlidingBodyGenState createState() => _SlidingBodyGenState();
}

class _SlidingBodyGenState extends State<SlidingBodyGen> {
  PokeStore pokeStore;

  void setGenSelected(int number) {
    pokeStore.selectGen(number);
  }

  @override
  Widget build(BuildContext context) {
    pokeStore = Provider.of<PokeStore>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Gene",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        Text(
          "Sort Pokémons alphabetically or by National Pokédex number!",
          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          child: Observer(
            builder: (context) {
              return GridView.count(
                crossAxisCount: 2,
                children: List.generate(8, (index) {
                  return GestureDetector(
                    onTap: () => setGenSelected(index + 1),
                    child: Center(
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.4,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: index + 1 == pokeStore.genSelected
                              ? Color(0xffEA5D60)
                              : Colors.grey[300],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("assets/Generation/${index + 1}.png"),
                            Text("Generation ${index + 1}")
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              );
            },
          ),
        )
      ],
    );
  }
}
