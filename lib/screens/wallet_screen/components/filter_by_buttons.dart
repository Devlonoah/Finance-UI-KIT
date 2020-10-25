import 'package:finance/components/my_dropdown_button.dart';
import 'package:finance/constants.dart';
import 'package:flutter/material.dart';

enum Button { first, second }

class FilterByButtons extends StatefulWidget {
  const FilterByButtons({
    Key key,
  }) : super(key: key);

  @override
  _FilterByButtonsState createState() => _FilterByButtonsState();
}

class _FilterByButtonsState extends State<FilterByButtons> {
  bool firstButton = true;
  bool secondButton = false;

  onTapButton(Button button) {
    setState(() {
      if (button == Button.first) {
        firstButton = true;
        secondButton = false;
      } else if (button == Button.second) {
        secondButton = true;
        firstButton = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: kDividingContainerColor,
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.03),
            child: Row(
              children: <Widget>[
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onPressed: () => onTapButton(Button.first),
                  child: Text(
                    'Income',
                    style: firstButton
                        ? kWhiteTextStyle
                        : kWhiteTextStyle.copyWith(color: Colors.grey),
                  ),
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onPressed: () => onTapButton(Button.second),
                  child: Text(
                    'Expenditure',
                    style: secondButton
                        ? kWhiteTextStyle
                        : kWhiteTextStyle.copyWith(color: Colors.grey),
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          MyDropDownButton(),
        ],
      ),
    );
  }
}
