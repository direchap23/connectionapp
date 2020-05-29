import 'package:flutter/material.dart';

class InActiveCon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Icon(
        Icons.battery_alert,
        size: 150.0,
        color: Colors.grey,
      )),
    );
  }
}
