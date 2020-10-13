// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DetailsStore on _DetailsStoreBase, Store {
  Computed<SheetController> _$getNewControllerComputed;

  @override
  SheetController get getNewController => (_$getNewControllerComputed ??=
          Computed<SheetController>(() => super.getNewController,
              name: '_DetailsStoreBase.getNewController'))
      .value;
  Computed<double> _$getExpandedSlidingComputed;

  @override
  double get getExpandedSliding => (_$getExpandedSlidingComputed ??=
          Computed<double>(() => super.getExpandedSliding,
              name: '_DetailsStoreBase.getExpandedSliding'))
      .value;
  Computed<String> _$getSelectedComputed;

  @override
  String get getSelected =>
      (_$getSelectedComputed ??= Computed<String>(() => super.getSelected,
              name: '_DetailsStoreBase.getSelected'))
          .value;

  final _$selectedAtom = Atom(name: '_DetailsStoreBase.selected');

  @override
  String get selected {
    _$selectedAtom.reportRead();
    return super.selected;
  }

  @override
  set selected(String value) {
    _$selectedAtom.reportWrite(value, super.selected, () {
      super.selected = value;
    });
  }

  final _$expandedSlidingAtom = Atom(name: '_DetailsStoreBase.expandedSliding');

  @override
  double get expandedSliding {
    _$expandedSlidingAtom.reportRead();
    return super.expandedSliding;
  }

  @override
  set expandedSliding(double value) {
    _$expandedSlidingAtom.reportWrite(value, super.expandedSliding, () {
      super.expandedSliding = value;
    });
  }

  final _$newControllerAtom = Atom(name: '_DetailsStoreBase.newController');

  @override
  SheetController get newController {
    _$newControllerAtom.reportRead();
    return super.newController;
  }

  @override
  set newController(SheetController value) {
    _$newControllerAtom.reportWrite(value, super.newController, () {
      super.newController = value;
    });
  }

  final _$_DetailsStoreBaseActionController =
      ActionController(name: '_DetailsStoreBase');

  @override
  void changeSelected(String _selected) {
    final _$actionInfo = _$_DetailsStoreBaseActionController.startAction(
        name: '_DetailsStoreBase.changeSelected');
    try {
      return super.changeSelected(_selected);
    } finally {
      _$_DetailsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeExpanded(SheetState _boolean) {
    final _$actionInfo = _$_DetailsStoreBaseActionController.startAction(
        name: '_DetailsStoreBase.changeExpanded');
    try {
      return super.changeExpanded(_boolean);
    } finally {
      _$_DetailsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selected: ${selected},
expandedSliding: ${expandedSliding},
newController: ${newController},
getNewController: ${getNewController},
getExpandedSliding: ${getExpandedSliding},
getSelected: ${getSelected}
    ''';
  }
}
