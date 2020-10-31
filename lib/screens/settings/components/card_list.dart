import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  const CardList({
    Key key,
    @required this.leading,
    this.trailingFirst,
    this.trailingSecond,
  }) : super(key: key);

  final String leading;
  final String trailingFirst;
  final Widget trailingSecond;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height * 0.025,
          ),
          Row(
            children: <Widget>[
              Text(
                leading,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: size.longestSide * 0.025,
                ),
              ),
              Spacer(),
              Row(
                children: <Widget>[
                  Text(
                    trailingFirst,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: size.longestSide * 0.025,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  trailingSecond
                ],
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
