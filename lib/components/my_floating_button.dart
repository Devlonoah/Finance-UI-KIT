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
    return InkWell(
      splashColor: Colors.transparent,
      onTap: ontap,
      child: Container(
        height: size.height * 0.085,
        decoration: BoxDecoration(
          color: Colors.red,
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
