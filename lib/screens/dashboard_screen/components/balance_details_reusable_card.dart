import 'dart:math';

import 'package:finance/constants.dart';
import 'package:flutter/material.dart';

class BalanceDetailsCard extends StatelessWidget {
  const BalanceDetailsCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.19,
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: size.width * 0.03,
        vertical: size.height * 0.009,
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset: Offset(0, 5),
              blurRadius: size.aspectRatio * 35,
              spreadRadius: -5)
        ],
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      child: Stack(
        children: <Widget>[
          BalanceDetails(),
          Positioned(
              // bottom: size.height * 0.09,
              left: size.width * 0.3,
              right: 0,
              top: size.height * 0.034,
              child: Padding(
                padding: EdgeInsets.only(right: size.width * 0.03),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Chip(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.1,
                      ),
                      deleteIcon: Icon(
                        Icons.ac_unit,
                        color: Colors.blue,
                      ),
                      backgroundColor: Colors.red.shade900,
                      label: Text(
                        '80%',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Chip(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.04,
                      ),
                      deleteIcon: Icon(
                        Icons.ac_unit,
                        color: Colors.blue,
                      ),
                      backgroundColor: kGradientColorRight,
                      label: Text(
                        '50%',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class BalanceDetails extends StatelessWidget {
  const BalanceDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.03, vertical: size.height * 0.018),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            'Goal',
            style: TextStyle(color: kFadeTextColor),
          ),
          Text(
            '\$1,000',
            style: TextStyle(
              fontSize: size.width * 0.09,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: size.height * 0.03,
            width: size.width * 0.12,
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'USD',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.7),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BalanceDetailsPage extends StatelessWidget {
  const BalanceDetailsPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return BalanceDetailsCard();
        });
  }
}
