// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokeStore on _PokeStoreBase, Store {
  final _$pokeApiAtom = Atom(name: '_PokeStoreBase.pokeApi');

  @override
  PokeApi get pokeApi {
    _$pokeApiAtom.reportRead();
    return super.pokeApi;
  }

  @override
  set pokeApi(PokeApi value) {
    _$pokeApiAtom.reportWrite(value, super.pokeApi, () {
      super.pokeApi = value;
    });
  }

  final _$pokeHttpResonseAtom = Atom(name: '_PokeStoreBase.pokeHttpResonse');

  @override
  Future<PokeApi> get pokeHttpResonse {
    _$pokeHttpResonseAtom.reportRead();
    return super.pokeHttpResonse;
  }

  @override
  set pokeHttpResonse(Future<PokeApi> value) {
    _$pokeHttpResonseAtom.reportWrite(value, super.pokeHttpResonse, () {
      super.pokeHttpResonse = value;
    });
  }

  final _$generationsAtom = Atom(name: '_PokeStoreBase.generations');

  @override
  List<int> get generations {
    _$generationsAtom.reportRead();
    return super.generations;
  }

  @override
  set generations(List<int> value) {
    _$generationsAtom.reportWrite(value, super.generations, () {
      super.generations = value;
    });
  }

  final _$genSelectedAtom = Atom(name: '_PokeStoreBase.genSelected');

  @override
  int get genSelected {
    _$genSelectedAtom.reportRead();
    return super.genSelected;
  }

  @override
  set genSelected(int value) {
    _$genSelectedAtom.reportWrite(value, super.genSelected, () {
      super.genSelected = value;
    });
  }

  final _$fetchPokemonListAsyncAction =
      AsyncAction('_PokeStoreBase.fetchPokemonList');

  @override
  Future fetchPokemonList() {
    return _$fetchPokemonListAsyncAction.run(() => super.fetchPokemonList());
  }

  final _$loadPokeListAsyncAction = AsyncAction('_PokeStoreBase.loadPokeList');

  @override
  Future<PokeApi> loadPokeList() {
    return _$loadPokeListAsyncAction.run(() => super.loadPokeList());
  }

  final _$_PokeStoreBaseActionController =
      ActionController(name: '_PokeStoreBase');

  @override
  dynamic selectGen(int numGen) {
    final _$actionInfo = _$_PokeStoreBaseActionController.startAction(
        name: '_PokeStoreBase.selectGen');
    try {
      return super.selectGen(numGen);
    } finally {
      _$_PokeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pokeApi: ${pokeApi},
pokeHttpResonse: ${pokeHttpResonse},
generations: ${generations},
genSelected: ${genSelected}
    ''';
  }
}
