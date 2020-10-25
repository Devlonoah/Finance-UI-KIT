import 'package:flutter/material.dart';

class SplashModel {
  String headerTitle, lowerSubtitle, upperSubtitle;
  bool isVisible;
  IconData iconData;
  SplashModel(
      {this.lowerSubtitle,
      this.isVisible,
      this.iconData,
      this.headerTitle,
      this.upperSubtitle});
}
