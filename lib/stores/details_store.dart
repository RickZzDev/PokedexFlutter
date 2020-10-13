import 'package:mobx/mobx.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
part 'details_store.g.dart';

class DetailsStore = _DetailsStoreBase with _$DetailsStore;

abstract class _DetailsStoreBase with Store {
  @observable
  String selected = "About";

  @observable
  double expandedSliding = 0.0;

  @observable
  SheetController newController;

  @computed
  SheetController get getNewController => newController;

  @computed
  double get getExpandedSliding => expandedSliding;

  @computed
  String get getSelected => selected;

  @action
  void changeSelected(String _selected) {
    selected = _selected;
  }

  @action
  void changeExpanded(SheetState _boolean) {
    expandedSliding = _boolean.extent;
  }
}
