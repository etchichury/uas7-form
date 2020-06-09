import 'package:flutter/material.dart';
import 'package:uas7/utils/colors.dart';

class ResultsTile extends StatefulWidget {
  ResultsTile({Key key}) : super(key: key);

  @override
  _ResultsTileState createState() => _ResultsTileState();
}

class _ResultsTileState extends State<ResultsTile> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            '29/05 a 4/06',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 26,
              color: primaryWhiteColor
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 15),
              Text(
                'Urticas',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 25
                ),
              ),
              Spacer(),
              Text(
                '5',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 25
                ),
              ),
              SizedBox(width: 15),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 15),
              Text(
                'Coceira',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 25
                ),
              ),
              Spacer(),
              Text(
                '2',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 25
                ),
              ),
              SizedBox(width: 15)
            ],
          ),
          SizedBox(height: 5),
          Divider(color: secondaryColor, thickness: 0.5),
          Row(
            children: [
              SizedBox(width: 15),
              Text(
                'Total',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 25
                ),
              ),
              Spacer(),
              Text(
                '7',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 25
                ),
              ),
              SizedBox(width: 15),
            ],
          )
        ]
      ),
      height: 180,
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: primaryColor,
      ),
    );
  }
}