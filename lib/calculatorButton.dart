import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillcolor;
  final int textcolor;
  final double textsize;
  final Function callback;
  final fontW;

  const CalculatorButton({
    required this.text,
    required this.fillcolor,
    required this.textcolor,
    required this.textsize,
    required this.callback,
    required this.fontW,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 70,
        height: 70,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text(
            text,
            style: TextStyle(fontSize: textsize, fontWeight: fontW),
          ),
          onPressed: () => callback(text),
          color: Color(fillcolor),
          textColor: Color(textcolor),
        ),
      ),
    );
  }
}
