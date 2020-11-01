import 'package:flutter/material.dart';

import 'package:finance/constants.dart';

class MySlider extends StatelessWidget {
  final double value;
  final Function(double) onChanged;
  const MySlider({
    Key key,
    this.value,
    this.onChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        showValueIndicator: ShowValueIndicator.always,
        thumbColor: Colors.white,
        activeTrackColor: kGradientColorLeft,
        inactiveTrackColor: kPrimaryColor,
        trackHeight: height * 0.01,
        disabledThumbColor: Colors.red,
        thumbShape: RoundSliderThumbShape(
          enabledThumbRadius: size.longestSide * 0.02,
        ),
      ),
      child: Slider(
        min: 10,
        max: 50000,
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
