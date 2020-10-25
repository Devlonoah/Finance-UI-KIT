import 'package:finance/constants.dart';
import 'package:flutter/material.dart';

RichText headerGreeting(Size size, String headerTitle, String userName) {
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
      children: [
        TextSpan(
          // ignore: unnecessary_brace_in_string_interps
          text: '$headerTitle\n',
          style: TextStyle(
            fontSize: size.width * 0.1,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}

class FingerPrintSplashContent extends StatelessWidget {
  const FingerPrintSplashContent({
    Key key,
    this.headerTitle,
    this.iconData,
    this.upperSubtitle,
    // this.lowerSubtitle,
  }) : super(key: key);

  final IconData iconData;
  final String headerTitle;
  final String upperSubtitle;
  // final String lowerSubtitle;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        // SizedBox(
        //   height: size.height * 0.1,
        // ),
        Spacer(),
        headerGreeting(size, headerTitle, upperSubtitle),
        SizedBox(
          height: size.height * 0.03,
        ),

        Text(
          upperSubtitle,
          style: TextStyle(
            color: Colors.grey,
            fontSize: size.width * 0.04,
          ),
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        // SizedBox(
        //   height: size.height * 0.03,
        // ),
        FingerPrintSymbol(
          icon: iconData,
        ),
        Spacer(),
        // Text(
        //   lowerSubtitle,
        //   style: TextStyle(
        //       color: Colors.grey.withOpacity(0.8), fontWeight: FontWeight.bold),
        // ),
      ],
    );
  }
}

class FingerPrintSymbol extends StatelessWidget {
  const FingerPrintSymbol({
    Key key,
    this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.40,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0x3F040425),
        shape: BoxShape.circle,
        border: Border.all(
          color: Color(0x13A0A0AC),
          width: size.aspectRatio * 80,
        ),
      ),
      child: Icon(
        icon,
        size: size.aspectRatio / 0.003,
        color: Colors.grey.shade500,
      ),
    );
  }
}
