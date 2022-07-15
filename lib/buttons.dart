import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String textBtn;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callback;

  const Buttons({
    required this.textBtn,
    required this.fillColor,
    required this.textColor,
    required this.textSize,
     required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: Text(
            textBtn,
            style: TextStyle(
              fontSize: textSize,
            ),
          ),
          onPressed: () => callback(textBtn),
          color: Color(fillColor),
          textColor: Color(textColor),
        ),
      ),
    );
  }
}
