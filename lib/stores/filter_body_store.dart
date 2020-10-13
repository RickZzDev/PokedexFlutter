import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'filter_body_store.g.dart';

class FilterBodyStore = _FilterBodyStoreBase with _$FilterBodyStore;

abstract class _FilterBodyStoreBase with Store {
  @observable
  Widget currentFilterbody = SizedBox();

  @action
  void setFilterBody(Widget body) {
    currentFilterbody = body;
  }
}
