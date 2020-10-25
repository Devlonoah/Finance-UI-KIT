import 'package:finance/constants.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: size.height * 0.06,
        horizontal: size.width * 0.03,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person_outline,
              color: Colors.white,
            ),
            color: kAppBarIconColor,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: size.width * 0.05),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
            color: kAppBarIconColor,
          ),
        ],
      ),
    );
  }
}
