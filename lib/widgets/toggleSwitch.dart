import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class MySwitch extends StatefulWidget {
  createState() => MyAppSwitch();
}

class MyAppSwitch extends State<MySwitch> {
  // bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFA3AFB7)),
            borderRadius: BorderRadius.circular(20),
          ),
          height: 20,
          child: ToggleSwitch(
            minWidth: 90.0,
            cornerRadius: 20,
            initialLabelIndex: 1,
            activeBgColor: Color(0xFF3F9C35),
            activeTextColor: Colors.white,
            inactiveBgColor: Color(0xFFF3F7F9),
            inactiveTextColor: Color(0xFFA3AFB7),
            labels: ['Active', 'Inactive'],
            onToggle: (index) {
              print('switched to: $index');
            },
          ),
        ),
      ],
    );
  }
}

class MySwitchShowHide extends StatefulWidget {
  createState() => MyAppSwitchShowHide();
}

class MyAppSwitchShowHide extends State<MySwitchShowHide> {
  // bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFA3AFB7)),
            borderRadius: BorderRadius.circular(20),
          ),
          height: 20,
          child: ToggleSwitch(
            minWidth: 90.0,
            cornerRadius: 20,
            initialLabelIndex: 0,
            activeBgColor: Color(0xFF3F9C35),
            activeTextColor: Colors.white,
            inactiveBgColor: Color(0xFFF3F7F9),
            inactiveTextColor: Color(0xFFA3AFB7),
            labels: ['Show', 'Hide'],
            onToggle: (index) {
              print('switched to: $index');
            },
          ),
        ),
      ],
    );
  }
}
