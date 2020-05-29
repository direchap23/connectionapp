import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({this.textHint});
  final String textHint;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      padding: const EdgeInsets.all(2),
      child: SizedBox(
        height: 40.0,
        child: TextFormField(
          decoration: InputDecoration(
            isDense: true,
            hintText: textHint,
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.all(10),
          ),
        ),
      ),
    );
  }
}
