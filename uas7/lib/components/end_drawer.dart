import 'package:flutter/material.dart';

import 'package:uas7/screens/results_screen.dart';
import 'package:uas7/screens/main_screen.dart';
import 'package:uas7/utils/colors.dart';


class EndDrawer extends StatelessWidget {
  const EndDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.85,
      color: backgroundColor,
      child: Column(
        children: [
          SizedBox(height: 30),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'Menu',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w300,
                color: secondaryColor
              ),
            ),
          ),
          Divider(
            color: secondaryWhiteColor,
            indent: 20,
            endIndent: 20,
            thickness: 1.5,
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.assessment, color: secondaryWhiteColor,),
              title: Text(
                'Resultados UAS7', 
                style: TextStyle(
                  color: primaryWhiteColor, 
                  fontWeight: FontWeight.w300,
                  fontSize: 20
                )
              ),
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => ResultsScreen())
                );
              },
            ),
            color: primaryColor,
            margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
            elevation: 20.0,
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.format_list_bulleted, color: secondaryWhiteColor),
              title: Text(
                'Lista de dias',
                style: TextStyle(
                  color: primaryWhiteColor, 
                  fontWeight: FontWeight.w300,
                  fontSize: 22
                )
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainScreen())  
                );
              },
            ),
            color: primaryColor,
            margin: EdgeInsets.all(15),
            elevation: 20.0,
          ),
          Spacer(),
          Container(
            child: Text(
              'Made by\nEtchichury',
              style: TextStyle(
                color: primaryWhiteColor,
                fontWeight: FontWeight.w300
              ),
              textAlign: TextAlign.left,
            ),
            margin: EdgeInsets.only(bottom: 10),
          )
        ],
      ),
    );
  }
}