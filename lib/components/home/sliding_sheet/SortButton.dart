import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SortButton extends StatefulWidget {
  final String buttonTxt;
  SortButton(this.buttonTxt);

  @override
  _SortButtonState createState() => _SortButtonState();
}

class _SortButtonState extends State<SortButton> {
  bool status = false;

  @override
  void initState() {
    super.initState();
  }

  void selectButton() {
    setState(() {
      status ? status = false : status = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => selectButton(),
      color: status ? Color(0xffEA5D60) : Colors.grey,
      disabledColor: Colors.grey,
      disabledTextColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width - 32,
        child: Center(
          child: Text(
            widget.buttonTxt,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
