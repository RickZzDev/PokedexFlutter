import 'package:pokedex/models/poke_api.dart';

class AllEvolutions {
  List<Evolutions> evolutions = [];

  AllEvolutions.fromOtherTypes(Pokemon pokeEvs) {
    pokeEvs.prevEvolution.forEach((prevEl) {
      evolutions.add(new Evolutions.fromPrev(prevEl));
    });

    evolutions.add(new Evolutions.fromPoke(pokeEvs));

    pokeEvs.nextEvolution.forEach((nextEl) {
      evolutions.add(new Evolutions.fromNext(nextEl));
    });
  }
}

class Evolutions {
  String number;
  String name;

  // Evolutions({this.number, this.name});

  Evolutions.fromPrev(PrevEvolution _prev) {
    number = _prev.number;
    name = _prev.name;
  }

  Evolutions.fromNext(NextEvolution _next) {
    number = _next.number;
    name = _next.name;
  }

  Evolutions.fromPoke(Pokemon _pokemon) {
    number = _pokemon.number;
    name = _pokemon.name;
  }
}
