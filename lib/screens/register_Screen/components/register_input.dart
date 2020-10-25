import 'package:finance/components/my_floating_button.dart';
import 'package:finance/components/my_textfield.dart';
import 'package:finance/constants.dart';
import 'package:flutter/material.dart';

class RegisterInput extends StatelessWidget {
  const RegisterInput({
    Key key,
    this.usernameOnChanged,
    this.passWordOnChanged,
    this.forgotPasswordOnPress,
    this.signup,
  }) : super(key: key);
  final Function(String) usernameOnChanged;
  final Function(String) passWordOnChanged;
  final Function forgotPasswordOnPress;
  final Function signup;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        left: size.height * 0.025,
        right: size.height * 0.025,
        top: size.width * 0.05,
        bottom: size.width * 0.05,
      ),
      // padding: EdgeInsets.only(
      //   bottom: size.width * 0.001,
      // ),
      height: size.height * 0.6,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.03,
            ),
            margin: EdgeInsets.only(
              bottom: size.width * 0.1,
            ),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MyTextField(
                  hintText: 'Name',
                  onChanged: usernameOnChanged,
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                MyTextField(
                  hintText: 'User ID',
                  onChanged: passWordOnChanged,
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                MyTextField(
                  hintText: 'Profession',
                  onChanged: passWordOnChanged,
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                MyTextField(
                  hintText: 'Email address',
                  onChanged: passWordOnChanged,
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                MyTextField(
                  hintText: 'Password',
                  onChanged: passWordOnChanged,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: size.height * 0.0043,
            left: 0,
            right: 0,
            child: MyFloatingButton(ontap: signup),
          ),
        ],
      ),
    );
  }
}
