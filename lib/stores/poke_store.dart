import 'dart:async';
import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:pokedex/models/evolutions.dart';
import 'package:pokedex/models/poke_api.dart';
import 'package:http/http.dart' as http;
part 'poke_store.g.dart';

class PokeStore = _PokeStoreBase with _$PokeStore;

abstract class _PokeStoreBase with Store {
  @observable
  PokeApi pokeApi;

  @observable
  AllEvolutions allEvolutions;

  @observable
  Future<PokeApi> pokeHttpResonse;

  @observable
  List<int> generations = [1, 2, 3, 4, 5, 6, 7, 8];

  @observable
  int genSelected = 0;

  @observable
  String filter = "";

  @computed
  List<Pokemon> get filteredPoke {
    if (filter.isEmpty) {
      return pokeApi.pokemon;
    } else {
      return pokeApi.pokemon
          .where((element) => element.name.contains(filter))
          .toList();
    }
  }

  @action
  setFilter(String value) => filter = value;

  @action
  selectGen(int numGen) {
    genSelected == numGen ? genSelected = 0 : genSelected = numGen;
  }

  @action
  fetchPokemonList() async {
    pokeHttpResonse = loadPokeList();
    pokeApi = await pokeHttpResonse;
  }

  @action
  getAllEvs(Pokemon _pokemonEvs) {
    allEvolutions = mixPrevAndNextEvs(_pokemonEvs);
  }

  @action
  mixPrevAndNextEvs(Pokemon _pokemonObj) {
    return AllEvolutions.fromOtherTypes(_pokemonObj);
  }

  // @action
  // Future getDesc(PokeApi t) async {
  //   t.pokemon.forEach((element) async {
  //     if (element.id == 29) {
  //       element.name = "nidoran-f";
  //     } else if (element.id == 32) {
  //       element.name = "nidoran-m";
  //     } else if (element.name == "Mr. Mime") {
  //       element.name = "mr-mime";
  //     }
  //     // print(
  //     // "https://pokeapi.co/api/v2/pokemon/${element.name.toLowerCase().replaceAll("'", "")}");
  //     final response = await http.get(
  //         "https://pokeapi.co/api/v2/pokemon-species/${element.name.toLowerCase().replaceAll("'", "")}");
  //     var decodedJson = jsonDecode(response.body);
  //     pokemonsUrls.add(DescriptionPokemon.fromJson(decodedJson));
  //   });
  // }

  @action
  Future<PokeApi> loadPokeList() async {
    try {
      // final response = await http.get(
      //     'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json');
      final response = await http
          .get("https://private-92925a1-poketeste.apiary-mock.com/poke");
      var decodedJson = jsonDecode(response.body);
      return PokeApi.fromJson(decodedJson);
    } catch (e) {
      print(e);
    }
  }
}
