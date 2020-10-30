import 'package:finance/screens/onboard_screen/onboard_screen.dart';
import 'package:flutter/material.dart';

import 'package:finance/constants.dart';

import 'otp_input.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String _otp = '';
  // List<String> _otpSymbols = ["\u{25CB}", "\u{25CB}", "\u{25CB}", "\u{25CB}"];
  List<Color> entered = [
    Colors.black12,
    Colors.black12,
    Colors.black12,
    Colors.black12,
  ];

  void handleKeypadInput(String input) {
    setState(() {
      if (_otp.length < 4) {
        _otp = _otp + input;
        for (var i = 0; i < _otp.length; i++) {
          entered[i] = Colors.white;
        }
      }
    });
  }

  void showInput(BuildContext context) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        elevation: 10,
        behavior: SnackBarBehavior.fixed,
        duration: Duration(milliseconds: 300),
        backgroundColor: kPrimaryColor,
        content: Text(
          'Token is ${_otp.isEmpty ? "empty" : _otp}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  void handleDelete() {
    if (_otp.length > 0) {
      setState(() {
        _otp = _otp.substring(0, _otp.length - 1);
        for (var i = _otp.length; i < 4; i++) {
          entered[i] = Colors.black12;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: size.height * 0.1,
          ),
          buildHeader(context),
          SizedBox(
            height: size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              PinSlot(
                color: entered[0],
              ),
              PinSlot(
                color: entered[1],
              ),
              PinSlot(
                color: entered[2],
              ),
              PinSlot(
                color: entered[3],
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.2,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    KeyPad(
                      onPress: () {
                        handleKeypadInput('1');
                      },
                      number: '1',
                    ),
                    KeyPad(
                      onPress: () {
                        handleKeypadInput('2');
                      },
                      number: '2',
                    ),
                    KeyPad(
                      onPress: () {
                        handleKeypadInput('3');
                      },
                      number: '3',
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.06,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    KeyPad(
                      onPress: () {
                        handleKeypadInput('4');
                      },
                      number: '4',
                    ),
                    KeyPad(
                      onPress: () {
                        handleKeypadInput('5');
                      },
                      number: '5',
                    ),
                    KeyPad(
                      onPress: () {
                        handleKeypadInput('6');
                      },
                      number: '6',
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.06,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    KeyPad(
                      onPress: () {
                        handleKeypadInput('7');
                      },
                      number: '7',
                    ),
                    KeyPad(
                      onPress: () {
                        handleKeypadInput('8');
                      },
                      number: '8',
                    ),
                    KeyPad(
                      onPress: () {
                        handleKeypadInput('9');
                      },
                      number: '9',
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.06,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    KeyPad(
                      onPress: () {
                        handleDelete();
                      },
                      number: '\u{232b}',
                    ),
                    KeyPad(
                      onPress: () {
                        handleKeypadInput('0');
                      },
                      number: '0',
                    ),
                    KeyPad(
                      onPress: () {
                        Navigator.pushNamed(context, OnboardScreen.id);
                      },
                      number: '\u{2713}',
                    ),
                  ],
                ),
              ],
            ),
          )
          // SizedBox(
          //   height: 70,
          // )
        ],
      ),
    );
  }

  Align buildHeader(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.center,
      child: Text(
        'Enter your OTP ',
        style: Theme.of(context).textTheme.headline5.copyWith(
              color: Colors.white,
              fontSize: size.longestSide * 0.03,
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }
}

class KeyPad extends StatelessWidget {
  const KeyPad({
    Key key,
    this.number,
    this.onPress,
  }) : super(key: key);
  final String number;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.transparent,
      onPressed: onPress,
      child: Text(
        number,
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
