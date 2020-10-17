import 'package:flutter/material.dart';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:uas7/components/app_bar.dart';
import 'package:uas7/components/day_overview_tile.dart';
import 'package:uas7/components/end_drawer.dart';
import 'package:uas7/screens/form_screen.dart';
import 'package:uas7/utils/colors.dart';

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
      body: ValueListenableBuilder(
        valueListenable: Hive.box("days").listenable(),
        builder: (context, Box daysBox, _) {
          return ListView.builder(
            itemCount: daysBox.values.length,
            itemBuilder: (context, index) {
              var day = daysBox.getAt(index);
              return DayOverviewTile(
                date: day['date'],
                itchScore: day['itchCount'],
                whealsScore: day['whealCount'],
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FormScreen()));
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
