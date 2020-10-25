import 'package:flutter/material.dart';

import 'package:finance/components/my_textfield.dart';
import 'package:finance/constants.dart';

class LoginInputs extends StatelessWidget {
  const LoginInputs({
    Key key,
    this.usernameOnChanged,
    this.passWordOnChanged,
    this.forgotPasswordOnPress,
    this.loginOnPress,
  }) : super(key: key);
  final Function(String) usernameOnChanged;
  final Function(String) passWordOnChanged;
  final Function forgotPasswordOnPress;
  final Function loginOnPress;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(
        horizontal: size.height * 0.025,
        vertical: size.width * 0.025,
      ),
      height: size.height * 0.3,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 10),
            blurRadius: 200,
            spreadRadius: 20,
            color: kShadowColor.withOpacity(0.3),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MyTextField(
                  hintText: 'Username',
                  onChanged: usernameOnChanged,
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                MyTextField(
                  hintText: 'Password',
                  onChanged: passWordOnChanged,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: FlatButton(
                    onPressed: forgotPasswordOnPress,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: FractionalTranslation(
                translation: Offset(0, size.height * 0.0006),
                child: GestureDetector(
                  onTap: loginOnPress,
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
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
