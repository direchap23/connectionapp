import 'package:flutter/material.dart';
import '../../widgets/textString.dart';
// import '../../widgets/alertDialogBox.dart';
import '../../widgets/toggleSwitch.dart';
import '../../widgets/customDialog.dart';
import '../../widgets/conDataTable.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class Company extends StatelessWidget {
  TextEditingController customController = TextEditingController();
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextString(
              text: "My Connections (###)",
              textSize: 18.0,
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 16),
            TextString(
              text: "Search my network",
              textSize: 15.0,
              fontweight: FontWeight.bold,
            ),
            Container(
              width: 500,
              padding: const EdgeInsets.all(4),
              // child: SizedBox(
              //   height: 50.0,
              child: TextFormField(
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Enter name, company, email, phone',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            // ),
          ],
        ),
        SizedBox(height: 20),
        Container(
          // color: Color(0xFFE4EAEC),
          child: Row(
            children: <Widget>[
              Text(
                'All Connections   ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Active   ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Inactive',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        ConDataTable(),
        // ExpansionTile(
        //   title: Text("Individual Connections: #"),
        // backgroundColor: Color(0xFFE4EAEC),
        // children: <Widget>[
        Container(
          color: Color(0xFFE4EAEC),
          padding: const EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Icon(
                // Icons.add_circle,
                Icons.remove_circle,
                color: Colors.blueAccent,
                size: 20.0,
              ),
              SizedBox(width: 5),
              Text(
                'Individual Connections: #',
                style: TextStyle(
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.white,
            ),
          ),
          child: DataTable(
            headingRowHeight: 46.0,
            dataRowHeight: 80.0,
            sortColumnIndex: 0,
            sortAscending: true,
            columns: <DataColumn>[
              DataColumn(label: Text('Connection')),
              DataColumn(label: Text('Contact')),
              DataColumn(label: Text('Data Sharing')),
              DataColumn(label: Text('Communication')),
              DataColumn(label: Text('Messages')),
              DataColumn(label: Text('Status')),
            ],
            rows: <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(5.0, 2.0, 20.0, 2.0),
                          child: Text('Photo'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
                              child: Text('First Last Name'),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
                              child: Text('User Title'),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
                              child: Text(''),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  DataCell(
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.chat_bubble_outline,
                                    color: Colors.grey,
                                    size: 15.0,
                                  ),
                                  SizedBox(width: 5),
                                  Text('Chat/Message'),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.mail_outline,
                                    color: Colors.grey,
                                    size: 15.0,
                                  ),
                                  SizedBox(width: 5),
                                  Text('example@example.com'),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.phone,
                                    color: Colors.grey,
                                    size: 15.0,
                                  ),
                                  SizedBox(width: 5),
                                  Text('289 472 2378'),
                                ],
                              ),
                            ),
                            // Text('Connection established date:'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  DataCell(
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
                              child: Row(
                                children: <Widget>[
                                  Text('Profile Access: '),
                                  Icon(
                                    Icons.brightness_1,
                                    color: Colors.green,
                                    size: 10.0,
                                  ),
                                  Text(' On'),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
                              child: Row(
                                children: <Widget>[
                                  Text('Contact Info: '),
                                  Icon(
                                    Icons.brightness_1,
                                    color: Colors.green,
                                    size: 10.0,
                                  ),
                                  Text(' On'),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
                              child: GestureDetector(
                                child: Text(
                                  'View/Manage Settings',
                                  style: TextStyle(
                                    // decoration: TextDecoration.underline,
                                    color: Color(0xFF2F86DD),
                                  ),
                                ),
                                onTap: () {
                                  showCustomizeDialog(context, "Jap Jap");
                                },
                              ),
                            ),
                            // Text('Connection established date:'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  DataCell(
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
                              child: Row(
                                children: <Widget>[
                                  Text('Chat/Message: '),
                                  Icon(
                                    Icons.brightness_1,
                                    color: Colors.green,
                                    size: 10.0,
                                  ),
                                  Text(' On'),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
                              child: Row(
                                children: <Widget>[
                                  Text('Text: '),
                                  Icon(
                                    Icons.brightness_1,
                                    color: Colors.green,
                                    size: 10.0,
                                  ),
                                  Text(' On'),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
                              child: GestureDetector(
                                child: Text(
                                  'View/Manage Settings',
                                  style: TextStyle(
                                    // decoration: TextDecoration.underline,
                                    color: Color(0xFF2F86DD),
                                  ),
                                ),
                                onTap: () {
                                  showCustomizeDialog(context, "Jap Jap");
                                },
                              ),
                            ),
                            // Text('Connection established date:'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  DataCell(
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
                              child: Text('Total Message: ##'),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
                              child: Text('Unread: #'),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
                              child: Text(''),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  DataCell(MySwitch()),
                ],
              ),
            ],
          ),
        ),
        // ],
        // ),
      ],
    );
  }
}

class TestPage extends StatefulWidget {
  TestPageState createState() => TestPageState();
}

class TestPageState extends State<TestPage> {
  Future<String> getData() async {
    http.Response response = await http.get(
      Uri.encodeFull("http://jsonplaceholder.typicode.com/posts"),
      headers: {
        "Accept": "application/json",
      },
    );

    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text("Get Data"),
          onPressed: getData,
        ),
      ),
    );
  }
}
