import 'package:flutter/material.dart';

import 'package:uas7/components/app_bar.dart';
import 'package:uas7/components/end_drawer.dart';
import 'package:uas7/components/results_tile.dart';
import 'package:uas7/utils/colors.dart';

class ResultsScreen extends StatelessWidget {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: appBar(_scaffoldKey, 'Resultados UAS7'),
      body: ListView(
        children: [
          ResultsTile(),
          ResultsTile(),
          ResultsTile(),
          ResultsTile(),
          ResultsTile(),
          ResultsTile(),
        ],
      ), 
      endDrawer: new EndDrawer(),
      backgroundColor: backgroundColor,
    );
  }
}