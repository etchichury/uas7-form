import 'package:flutter/material.dart';

import 'package:uas7/utils/colors.dart';

Widget appBar(GlobalKey<ScaffoldState> _scaffoldKey, String title) {
  return AppBar(
    title: Text(
      title,
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
  );
}
