import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokedex/components/details/AboutBody.dart';
import 'package:pokedex/components/details/EvolutionsBody.dart';
import 'package:pokedex/components/details/SkillsBody.dart';
import 'package:pokedex/components/details/TabSliding.dart';
import 'package:pokedex/components/home/type_card.dart';
import 'package:pokedex/pages/details/details_view_model.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class DetailsView extends DetailsViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("Bulbasaur"),
        centerTitle: true,
      ),
      body: SlidingSheet(
        // elevation: 8,
        controller: detailsStore.newController,
        headerBuilder: (context, state) {
          return Container(
            color: Colors.green,
            height: 30,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TabSliding("About"),
                TabSliding("Skills"),
                TabSliding("Evolutions"),
              ],
            ),
          );
        },
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [0.6, 0.8, 1.0],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        listener: (state) {
          detailsStore.changeExpanded(state);
        },
        // extendBody: true,
        color: Colors.green,
        body: Observer(
          builder: (context) {
            return AnimatedOpacity(
              duration: Duration(milliseconds: 300),
              opacity: detailsStore.expandedSliding >= 0.8 ? 0 : 1,
              child: Container(
                padding: EdgeInsets.all(32),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Image.network(widget.pokemom.img),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.pokemom.name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TypesCards(widget.pokemom)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),

        builder: (context, state) {
          return Observer(
            builder: (context) {
              return Container(
                  height: 600,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: detailsStore.getSelected == "About"
                      ? AboutBody()
                      : detailsStore.getSelected == "Skills"
                          ? SkillsBody()
                          : EvolutionsBody());
            },
          );
        },
      ),
    );
  }
}
