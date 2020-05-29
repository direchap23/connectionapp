import 'package:flutter/material.dart';

class ActiveCon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Icon(
        Icons.battery_charging_full,
        size: 150.0,
        color: Colors.green,
      )),
    );
  }
}
