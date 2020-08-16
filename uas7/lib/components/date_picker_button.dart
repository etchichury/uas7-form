import 'package:flutter/material.dart';
import 'package:uas7/utils/colors.dart';

class DatePickerButton extends StatefulWidget {
  DatePickerButton({Key key}) : super(key: key);

  @override
  _DatePickerButtonState createState() => _DatePickerButtonState();
}

class _DatePickerButtonState extends State<DatePickerButton> {
  DateTime _date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
          title: Row(
            children: [
              Icon(Icons.calendar_today),
              SizedBox(width: 10),
              Text("${_date.day}/${_date.month}/${_date.year}",
                  style: TextStyle(
                      color: primaryWhiteColor,
                      fontWeight: FontWeight.w300,
                      fontSize: 20))
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          onTap: () async {
            final datePick = await showDatePicker(
                context: context,
                initialDate: new DateTime.now(),
                firstDate: new DateTime(2020),
                lastDate: new DateTime(2100));

            if (datePick != null && datePick != _date) {
              setState(() {
                _date = datePick;
              });
            }
          },
        ),
        color: primaryColor,
        margin: EdgeInsets.only(left: 15, right: 15, top: 5),
        elevation: 20);
  }
}
