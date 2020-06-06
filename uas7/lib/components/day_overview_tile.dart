import 'package:flutter/material.dart';
import 'package:uas7/screens/form_screen.dart';
import 'package:uas7/utils/colors.dart';

class DayOverviewTile extends StatefulWidget {
  DayOverviewTile({Key key}) : super(key: key);

  @override
  _DayOverviewTileState createState() => _DayOverviewTileState();
}

class _DayOverviewTileState extends State<DayOverviewTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Material(
        shadowColor: Colors.black54,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 20.0,
        child: Container(
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Material(
            type: MaterialType.transparency,
            elevation: 20.0,
            color: Colors.transparent,
            shadowColor: Colors.black54,
            child: InkWell(
              splashColor: Colors.grey[600],
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => FormScreen())
                );
              },
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      '29/03',
                      style: TextStyle(
                          fontWeight: FontWeight.w300, fontSize: 30, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    Divider(color: Colors.white),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'Urticas',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 25,
                              color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                        Spacer(),
                        Text(
                          '0',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 25,
                              color: Colors.white),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                    Spacer(flex: 1),
                    Row(children: [
                      Text('Coceira',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 25,
                              color: Colors.white)),
                      Spacer(),
                      Text('0',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 25,
                              color: Colors.white)),
                    ])
                  ],
                ),
                height: 170,
              ),
            ),
          ),
        ),
      ),
    );
  }
}