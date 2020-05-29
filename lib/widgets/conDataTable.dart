import 'package:flutter/material.dart';
import './customDialog.dart';
import './toggleSwitch.dart';

class ConDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.white,
        ),
      ),
      child: DataTable(
        headingRowHeight: 46.0,
        dataRowHeight: 90.0,
        sortColumnIndex: 0,
        sortAscending: true,
        columns: <DataColumn>[
          DataColumn(label: Text('Company')),
          DataColumn(label: Text('Data Sharing')),
          DataColumn(label: Text('Communication')),
          DataColumn(label: Text('Connection Status')),
        ],
        rows: <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(5.0, 2.0, 20.0, 2.0),
                      child: Text('Logo'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
                          child: Text('Company Name'),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
                          child: Text('Location'),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
                          child: Text('www.company.com'),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
                          child: Text('Connection established date:'),
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
                                color: Color(0xFF2F86DD),
                              ),
                            ),
                            onTap: () {
                              showCustomizeDialog(context, "Jap Jap");
                            },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
                          child: Row(
                            children: <Widget>[
                              Text(''),
                            ],
                          ),
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
                                color: Color(0xFF2F86DD),
                              ),
                            ),
                            onTap: () {
                              showCustomizeDialog(context, "Jap Jap");
                            },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
                          child: Row(
                            children: <Widget>[
                              Text(''),
                            ],
                          ),
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
    );
  }
}
