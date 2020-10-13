import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:pokedex/models/poke_api.dart';
import 'package:http/http.dart' as http;
part 'poke_store.g.dart';

class PokeStore = _PokeStoreBase with _$PokeStore;

abstract class _PokeStoreBase with Store {
  @observable
  PokeApi pokeApi;

  @observable
  Future<PokeApi> pokeHttpResonse;

  @observable
  List<int> generations = [1, 2, 3, 4, 5, 6, 7, 8];

  @observable
  int genSelected = 0;

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
