import 'package:flutter/cupertino.dart';
import 'package:pokedex/pages/details/details.dart';
import 'package:pokedex/stores/details_store.dart';
import 'package:pokedex/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

abstract class DetailsViewModel extends State<Details> {
  DetailsStore detailsStore = DetailsStore();
  MyUtilClass myUtilClass;
  @override
  void didChangeDependencies() {
    detailsStore = Provider.of<DetailsStore>(context);
    super.didChangeDependencies();
  }

  @override
  void initState() {
    // TODO: implement initState
    myUtilClass = MyUtilClass();
    super.initState();
  }
}
