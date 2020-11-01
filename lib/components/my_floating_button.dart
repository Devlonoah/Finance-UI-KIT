import 'package:finance/constants.dart';
import 'package:flutter/material.dart';

class MyFloatingButton extends StatelessWidget {
  const MyFloatingButton({
    Key key,
    @required this.ontap,
  }) : super(key: key);

  final Function ontap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: size.height * 0.08,
        width: size.width * 0.2,
        decoration: BoxDecoration(
          color: Colors.red,
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey.shade900.withOpacity(0.8),
              blurRadius: size.longestSide * 0.02,
              spreadRadius: size.longestSide * 0.003,
            )
          ],
          shape: BoxShape.circle,
          gradient: LinearGradient(
            end: Alignment.centerLeft,
            begin: Alignment.centerRight,
            colors: [
              kGradientColorRight,
              kGradientColorRight,
              kGradientColorRight,
              kGradientColorLeft,
              kGradientColorLeft,
              kGradientColorLeft,
            ],
          ),
        ),
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}
