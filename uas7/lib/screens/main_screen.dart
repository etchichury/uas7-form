import 'package:flutter/material.dart';

import 'package:uas7/utils/colors.dart';
import 'package:uas7/components/app_bar.dart';
import 'package:uas7/components/day_overview.dart';
import 'package:uas7/components/end_drawer.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: appBar(_scaffoldKey, 'Dias'),
      body: ListView(
        children: [
          new DayOverviewTile(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FormScreen())
          );
        },
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