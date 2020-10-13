import 'package:flutter/cupertino.dart';

class AboutTiles extends StatelessWidget {
  final String title;
  final String description;

  AboutTiles(this.title, this.description);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(description),
        ],
      ),
    );
  }
}
