import 'package:finance/constants.dart';
import 'package:flutter/material.dart';

class MyDropDownButton extends StatefulWidget {
  const MyDropDownButton({
    Key key,
  }) : super(key: key);

  @override
  _MyDropDownButtonState createState() => _MyDropDownButtonState();
}

class _MyDropDownButtonState extends State<MyDropDownButton> {
  List<String> sortBy = [
    'Sort by',
    'Date',
    'Alphabetical',
    'Frequency',
    'Transfer',
  ];
  List<DropdownMenuItem> dropDownMenuItem = [];

  List<DropdownMenuItem<dynamic>> getDropDownMenuItem() {
    List<DropdownMenuItem> dropDownWidget = [];
    for (var drops in sortBy) {
      var newWidget = DropdownMenuItem(
        value: drops,
        child: Text(
          drops,
          style: TextStyle(color: Colors.white60.withOpacity(0.8)),
        ),
      );
      dropDownWidget.add(newWidget);
    }
    return dropDownWidget;
  }

  String currentValue = 'Sort by';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.03,
      ),
      child: Row(
        children: <Widget>[
          DropdownButton(
            isDense: true,
            underline: Divider(
              color: Colors.transparent,
            ),
            value: currentValue,
            dropdownColor: kPrimaryColor,
            items: getDropDownMenuItem(),
            onChanged: (value) {
              setState(() {
                currentValue = value;
                print(currentValue);
              });
            },
          ),
        ],
      ),
    );
  }
}
