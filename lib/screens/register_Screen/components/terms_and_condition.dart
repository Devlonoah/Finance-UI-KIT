import 'package:finance/constants.dart';
import 'package:flutter/material.dart';

RichText termsAndCondition() {
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
      children: [
        TextSpan(
          text: 'By Signing Up,you Agree to the',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        TextSpan(
          text: ' Terms',
          style: TextStyle(color: kGradientColorLeft),
        ),
        TextSpan(
          text: ' &',
          style: TextStyle(color: Colors.grey),
        ),
        TextSpan(
          text: ' Conditions',
          style: TextStyle(color: kGradientColorLeft),
        ),
        TextSpan(
          text: ' of\n',
          style: TextStyle(color: Colors.grey),
        ),
        TextSpan(
          text: ' the app',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    ),
  );
}
