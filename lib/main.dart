import 'package:flutter/material.dart';
import './view/jobseeker/company.dart';
// import './widgets/connectionappbar.dart';
// import 'package:flutter_view_widgets/flutter_view_widgets.dart';

void main() => runApp(new ConnectionApp());

class ConnectionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Connection App",
      home: Scaffold(
        // appBar: ConnectionAppBar(),
        body: Container(
          alignment: Alignment(-1.0, -1.0),
          color: Colors.white,
          padding: EdgeInsets.only(top: 20.0, left: 50.0, right: 50.0),
          child: Company(),
        ),
      ),
    );
  }
}
