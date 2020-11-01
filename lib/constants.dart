import 'package:flutter/material.dart';

const kBackgroundColor = Color(0xFF30303D);
const kGradientColorRight = Color(0xFF7E62E6);
const kGradientColorLeft = Color(0xFFB55FC7);
const kPrimaryColor = Color(0xFF393948);
const kIconColor = Color(0xFF97519C);
const kShadowColor = Color(0xFF0A0023);
const kFadeTextColor = Color(0xFFC7C7D1);
const kAppBarIconColor = Colors.white;
const kWhiteTextStyle = TextStyle(
  color: Colors.white,
);

const kDividingContainerColor = Color(0xE52C2735);
const kDebitColor = Colors.red;
const kCreditColor = Colors.green;
const kCardBoxDecoration = const BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.1, 0.4, 0.6, 0.9],
    colors: [
      kGradientColorLeft,
      kGradientColorLeft,
      kGradientColorRight,
      kGradientColorRight,
    ],
  ),
);
