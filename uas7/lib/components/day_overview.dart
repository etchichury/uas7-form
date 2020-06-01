import 'package:flutter/material.dart';

class DayOverview extends StatelessWidget {
  const DayOverview({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            '29/03',
            style: TextStyle(
                fontWeight: FontWeight.w300, fontSize: 30, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          Divider(color: Colors.white),
          Spacer(flex: 2),
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
      padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
      margin: const EdgeInsets.fromLTRB(25, 12, 25, 12),
      height: 170,
      decoration: BoxDecoration(
        color: const Color(0xff2f2f2f),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(spreadRadius: 0, blurRadius: 10, offset: Offset(2, 10))
        ],
      ),
    );
  }
}