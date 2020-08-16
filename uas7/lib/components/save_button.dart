import 'package:flutter/material.dart';
import 'package:uas7/utils/colors.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
          title: Row(
            children: [
              Icon(Icons.save),
              SizedBox(width: 10),
              Text('Salvar',
                  style: TextStyle(
                      color: primaryWhiteColor,
                      fontWeight: FontWeight.w300,
                      fontSize: 20))
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          onTap: () {
            // save to Hive
          },
        ),
        color: primaryColor,
        margin: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 10),
        elevation: 20);
  }
}
