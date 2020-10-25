import 'package:flutter/material.dart';

class ActionButtonLoginSignUp extends StatelessWidget {
  const ActionButtonLoginSignUp({
    Key key,
    this.login,
    this.signup,
    this.signupButtonColor,
    this.loginButtonColor,
  }) : super(key: key);
  final Function login;
  final Function signup;
  final Color signupButtonColor;
  final Color loginButtonColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AccessActionButton(
          title: 'Log in',
          onPress: login,
          color: loginButtonColor,
        ),
        AccessActionButton(
          title: 'Signup',
          onPress: signup,
          color: signupButtonColor,
        )
      ],
    );
  }
}

class AccessActionButton extends StatelessWidget {
  const AccessActionButton({
    Key key,
    this.title,
    this.onPress,
    this.color,
  }) : super(key: key);
  final String title;
  final Function onPress;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPress,
      child: Text(
        title,
        style: TextStyle(
          color: color,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
