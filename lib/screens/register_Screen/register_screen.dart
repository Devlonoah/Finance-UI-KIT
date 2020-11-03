import 'package:finance/screens/otp_screen/otp_screen.dart';
import 'package:flutter/material.dart';
import 'components/register_input.dart';
import 'components/terms_and_condition.dart';

class RegisterScreen extends StatelessWidget {
  static String id = 'Register';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: size.height * 0.05),
          RegisterInput(
            signup: () {
              Navigator.pushNamed(context, OtpScreen.id);
            },
          ),
          SizedBox(height: size.height * 0.005),
          termsAndCondition()
        ],
      ),
    );
  }
}
