import 'package:finance/components/action_button_login_signup.dart';
import 'package:finance/screens/home/component/login_inputs.dart';
import 'package:finance/screens/register_Screen/register_screen.dart';

import 'package:flutter/material.dart';
import 'socia_lButton_signin.dart';

enum UserAction { login, signup }

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  UserAction userAction = UserAction.login;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height * 0.05,
          ),
          ActionButtonLoginSignUp(
            signupButtonColor:
                userAction == UserAction.signup ? Colors.white : Colors.grey,
            loginButtonColor:
                userAction == UserAction.login ? Colors.white : Colors.grey,
            login: () {
              setState(() {
                userAction = UserAction.login;
              });
            },
            signup: () {
              setState(() {
                userAction = UserAction.signup;
              });
            },
          ),
          userAction == UserAction.login ? Login() : RegisterScreen(),
        ],
      ),
      // child: Login(size: size),
    );
  }
}

class Login extends StatelessWidget {
  const Login({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: size.height * 0.05,
        ),
        SizedBox(height: size.height * 0.05),
        LoginInputs(
          usernameOnChanged: (value) {},
          passWordOnChanged: (value) {},
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: size.height * 0.015),
            child: Text(
              'Or Sign in with',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        SocialButtonSignIn(size: size)
      ],
    );
  }
}
