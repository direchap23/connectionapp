import 'package:flutter/material.dart';
import '../view/jobseeker/allcon.dart' as allcon;
import '../view/jobseeker/activecon.dart' as activecon;
import '../view/jobseeker/inactivecon.dart' as inactivecon;

class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  TabController controller;

  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 3);
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(100.0, 100.0),
          child: TabBar(
            controller: controller,
            labelColor: Color(0xFF526069),
            tabs: <Tab>[
              Tab(text: "All Connections"),
              Tab(text: "Active"),
              Tab(text: "Inactive"),
              // Tab(icon: Icon(Icons.arrow_downward)),
              // Tab(icon: Icon(Icons.arrow_back)),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: <Widget>[
            allcon.AllCon(),
            activecon.ActiveCon(),
            inactivecon.InActiveCon(),
          ],
        ));
  }
}
