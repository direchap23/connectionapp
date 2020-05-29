import 'package:flutter/material.dart';

class TextString extends StatelessWidget {
  TextString({this.text, this.textSize, this.fontweight});
  final String text;
  final double textSize;
  final FontWeight fontweight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textDirection: TextDirection.ltr,
      style: TextStyle(
        fontSize: textSize,
        fontWeight: fontweight,
        color: Color(0xFF526069),
      ),
    );
  }
}
