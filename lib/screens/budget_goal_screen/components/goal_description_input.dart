import 'package:finance/components/new_textField.dart';
import 'package:flutter/material.dart';

import 'package:finance/components/my_textfield.dart';
import 'package:finance/constants.dart';

class GoalDescriptionInput extends StatelessWidget {
  const GoalDescriptionInput({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width * 0.035),
      height: height * 0.35,
      width: double.infinity,
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 20,
              spreadRadius: 5,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          NewTextField(
            hint: 'Goal',
            maxLines: 1,
            onChanged: (value) {},
          ),
          NewTextField(
            hint: 'Description',
            maxLines: 5,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
