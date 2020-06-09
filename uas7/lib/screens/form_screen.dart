import 'package:flutter/material.dart';

import 'package:uas7/components/app_bar.dart';
import 'package:uas7/components/end_drawer.dart';
import 'package:uas7/components/form_tile.dart';
import 'package:uas7/utils/colors.dart';

class FormScreen extends StatefulWidget {
  FormScreen({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final List<String> _whealFormTexts = [
    'Normal (zero)',
    'Leve (Até 20/dias)',
    'Moderada (Entre 20-50/dia)',
    'Grave (+50/dia)'
  ];
  final List<String> _itchFormTexts = [
    'Normal (zero)',
    'Leve (Não incomoda)',
    'Moderada (Não interfere)',
    'Grave (Interfere)'
  ];

  int _whealCount = 0;
  int _itchCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: appBar(_scaffoldKey, 'Formulário'),
      body: Column(
        children: [
          new FormTile(
            formTexts: _whealFormTexts, 
            title: 'Urticas',
            callback: (val) => setState(() => _whealCount = val),
          ),
          finalScoreTile('Urticas', _whealCount),
          new FormTile(
            formTexts: _itchFormTexts,
            title: 'Coceira',
            callback: (val) => setState(() => _itchCount = val),
          ),
          finalScoreTile('Coceira', _itchCount)
        ],
      ),
      endDrawer: new EndDrawer(),
      backgroundColor: backgroundColor,
    );
  }

  Widget finalScoreTile(String title, int value) {
    return Container(
      child: Row(
        children: [
          Text(
            'Pontuação $title',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300
            ),
          ),
          Spacer(),
          Text(
            '$value',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400
            ),
          )
        ]
      ),
      margin: EdgeInsets.only(top: 5, left: 15, right: 15, bottom: 14),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}