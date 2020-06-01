import 'package:flutter/material.dart';

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
            onTap: null, // TODO: lead to results
            ),
            color: primaryColor,
            margin: EdgeInsets.fromLTRB(15, 70, 15, 15),
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
              onTap: null, // TODO: lead to days list
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