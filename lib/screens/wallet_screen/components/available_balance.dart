import 'package:finance/constants.dart';
import 'package:flutter/material.dart';

class AvailableBalance extends StatelessWidget {
  const AvailableBalance({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: size.height * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            'Available',
            style:
                TextStyle(color: kFadeTextColor, fontSize: size.width * 0.05),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Text(
            '\$233.34',
            style: TextStyle(
              fontSize: size.width * 0.13,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: size.height * 0.007,
          ),
          Denomination(),
        ],
      ),
    );
  }
}

class Denomination extends StatelessWidget {
  const Denomination({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.center,
      height: size.height * 0.03,
      width: size.width * 0.12,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        'USD',
        style: TextStyle(
          fontSize: size.width * 0.04,
          fontWeight: FontWeight.bold,
          color: Colors.white.withOpacity(0.7),
        ),
      ),
    );
  }
}
