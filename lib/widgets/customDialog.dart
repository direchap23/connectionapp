import 'package:flutter/material.dart';
import './toggleSwitch.dart';

Future<bool> showCustomizeDialog(context, review) {
  return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            width: 630.0,
            height: 548.0,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2.0,
                color: Color(0xFF526069),
              ),
            ),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 70.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF526069), //707070
                      ),
                    ),
                    Positioned(
                      top: 25,
                      left: 30,
                      width: 400,
                      child: Text(
                        "Data Sharing Settings",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      width: 40,
                      child: FlatButton(
                        padding: EdgeInsets.all(1.0),
                        hoverColor: Colors.transparent,
                        child: Center(
                          child: Text(
                            "x",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ],
                ),
                // SizedBox(height: 20.0),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Expanded(
                    child: Column(
                      children: <Widget>[
                        Text("The quick brown fox jumps over the lazy dog."),
                        Divider(
                          color: Color(0xFFE4EAEC),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("Current Copy of Resume"),
                          SizedBox(width: 70.0),
                          MySwitchShowHide(),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        children: <Widget>[
                          Text("Future Resume/Profile Updates"),
                          SizedBox(width: 30.0),
                          MySwitchShowHide(),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        children: <Widget>[
                          Text("Specific Contact Info"),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 50.0),
                          Text("Address"),
                          SizedBox(width: 120.0),
                          MySwitchShowHide(),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 66.0),
                          Text("Email"),
                          SizedBox(width: 119.0),
                          MySwitchShowHide(),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 64.0),
                          Text("Phone"),
                          SizedBox(width: 116.0),
                          MySwitchShowHide(),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        children: <Widget>[
                          Text("References"),
                          SizedBox(width: 150.0),
                          MySwitchShowHide(),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        children: <Widget>[
                          Text("Background Check"),
                          SizedBox(width: 105.0),
                          MySwitchShowHide(),
                        ],
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    child: Expanded(
                      child: Column(
                        children: <Widget>[
                          Divider(
                            color: Color(0xFFE4EAEC),
                          ),
                          Row(
                            children: <Widget>[
                              FlatButton(
                                color: Colors.transparent,
                                textColor: Colors.black,
                                disabledColor: Colors.grey,
                                disabledTextColor: Colors.black,
                                padding: EdgeInsets.all(8.0),
                                splashColor: Colors.blueAccent,
                                onPressed: () {
                                  /*...*/
                                },
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ),
                              FlatButton(
                                color: Colors.blue,
                                textColor: Colors.white,
                                disabledColor: Colors.grey,
                                disabledTextColor: Colors.black,
                                padding: EdgeInsets.all(8.0),
                                splashColor: Colors.blueAccent,
                                onPressed: () {
                                  /*...*/
                                },
                                child: Text(
                                  "Update",
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
