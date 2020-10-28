import 'package:finance/components/my_appbar_2.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        MyAppBar2(
          title: 'Settings',
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.035),
          alignment: Alignment.centerLeft,
          child: Text(
            'Account',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        List(size: size)
      ],
    );
  }
}

class List extends StatelessWidget {
  const List({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.03),
      child: Row(
        children: <Widget>[
          Text(
            'Card',
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.05,
            ),
          ),
          Spacer(),
          Row(
            children: <Widget>[
              Text(
                '9323-32390-2323',
                style:
                    TextStyle(color: Colors.grey, fontSize: size.width * 0.045),
              ),
              SizedBox(
                width: size.width * 0.02,
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          )
        ],
      ),
    );
  }
}
