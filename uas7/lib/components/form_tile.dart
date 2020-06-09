import 'package:flutter/material.dart';
import 'package:uas7/utils/colors.dart';

typedef void IntCallback(int val);

class FormTile extends StatefulWidget {
  FormTile({Key key, this.formTexts, this.title, this.callback});

  final List<String> formTexts;
  final String title;
  final IntCallback callback;

  @override
  _FormTileState createState() => _FormTileState();
}

class _FormTileState extends State<FormTile> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: [
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 25,
              color: primaryWhiteColor,
              fontWeight: FontWeight.w300
            ),
          ),
          radioListTile(widget.formTexts[0], 0),
          radioListTile(widget.formTexts[1], 1),
          radioListTile(widget.formTexts[2], 2),
          radioListTile(widget.formTexts[3], 3)
        ],
       ),
       height: 250,
       margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
       padding: EdgeInsets.only(top: 10),
       decoration: BoxDecoration(
         color: primaryColor,
         borderRadius: BorderRadius.circular(10)
       ),
    );
  }

  Widget radioListTile(String text, int value) {
    return RadioListTile(
      title: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          color: secondaryColor,
          fontWeight: FontWeight.w300
        )
      ),
      activeColor: secondaryWhiteColor,
      value: value,
      groupValue: _count,
      onChanged: (int value) {
        setState(() {
          widget.callback(value);
          _count = value;
        });
      },
      dense: true,
    );
  }
}