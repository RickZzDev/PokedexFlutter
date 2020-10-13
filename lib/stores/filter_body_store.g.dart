// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_body_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FilterBodyStore on _FilterBodyStoreBase, Store {
  final _$currentFilterbodyAtom =
      Atom(name: '_FilterBodyStoreBase.currentFilterbody');

  @override
  Widget get currentFilterbody {
    _$currentFilterbodyAtom.reportRead();
    return super.currentFilterbody;
  }

  @override
  set currentFilterbody(Widget value) {
    _$currentFilterbodyAtom.reportWrite(value, super.currentFilterbody, () {
      super.currentFilterbody = value;
    });
  }

  final _$_FilterBodyStoreBaseActionController =
      ActionController(name: '_FilterBodyStoreBase');

  @override
  void setFilterBody(Widget body) {
    final _$actionInfo = _$_FilterBodyStoreBaseActionController.startAction(
        name: '_FilterBodyStoreBase.setFilterBody');
    try {
      return super.setFilterBody(body);
    } finally {
      _$_FilterBodyStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentFilterbody: ${currentFilterbody}
    ''';
  }
}
