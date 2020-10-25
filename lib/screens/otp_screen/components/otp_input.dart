import 'package:finance/constants.dart';
import 'package:flutter/material.dart';

// class OtpDisplay extends StatelessWidget {
//   const OtpDisplay({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // return Row(
//     //   mainAxisAlignment: MainAxisAlignment.center,
//     //   children: <Widget>[
//     //     PinSlot(widget: ,),
//     //     PinSlot(widget: ,),
//     //     PinSlot(widget: ,),
//     //     PinSlot(widget: ,),
//     //   ],
//     // );
//   }
// }

class PinSlot extends StatelessWidget {
  const PinSlot({
    Key key,
    this.widget,
    this.onPress,
    this.color,
  }) : super(key: key);

  final Widget widget;
  final Function onPress;
  final Color color;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkResponse(
      onTap: onPress,
      child: Container(
        height: size.height * 0.07,
        width: size.width * 0.2,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(
            // color: Colors.white,
            width: size.aspectRatio * 47,
          ),
        ),
        child: Center(child: widget),
      ),
    );
  }
}
