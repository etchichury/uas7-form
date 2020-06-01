import 'package:flutter/material.dart';

import 'package:uas7/utils/colors.dart';
import 'package:uas7/components/day_overview.dart';
import 'package:uas7/components/end_drawer.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainScreenSatate createState() => _MainScreenSatate();
}

class _MainScreenSatate extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          'Dias',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 35,
            color: secondaryColor
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.menu,
              color: secondaryColor,
              size: 30,
            ),
            onPressed: () => {_scaffoldKey.currentState.openEndDrawer()}
          )
        ],
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false
      ),
      body: Center(
        child: ListView(
          children: [
            new DayOverview(),
            new DayOverview(),
            new DayOverview(),
            new DayOverview(),
            new DayOverview(),
            new DayOverview(),
            new DayOverview(),
            new DayOverview(),
            new DayOverview(),
            new DayOverview(),
            new DayOverview(),
            new DayOverview(),
            new DayOverview(),
            new DayOverview(),
            new DayOverview(),
            new DayOverview(),
            new DayOverview(),
            new DayOverview(),
            new DayOverview(),
            new DayOverview(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Registrar dia',
        child: Icon(Icons.add),
        backgroundColor: secondaryColor,
      ),
      endDrawer: new EndDrawer(),
      drawerEdgeDragWidth: 40,
      backgroundColor: backgroundColor,
    );
  }
}