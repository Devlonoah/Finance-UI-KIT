import 'package:finance/constants.dart';
import 'package:flutter/material.dart';

class SocialButtonSignIn extends StatelessWidget {
  const SocialButtonSignIn({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SocialButton(
            icon: 'assets/icons/facebook_old.png',
          ),
          SocialButton(
            icon: 'assets/icons/google_plus.png',
          ),
        ],
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  const SocialButton({
    Key key,
    this.icon,
    this.onPress,
  }) : super(key: key);

  final String icon;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        width: size.width * 0.3,
        height: size.height * 0.05,
      ),
      fillColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(60),
      ),
      onPressed: () {},
      child: Image(
        height: size.height * 0.06,
        image: AssetImage(
          icon,
        ),
      ),
    );
  }
}
