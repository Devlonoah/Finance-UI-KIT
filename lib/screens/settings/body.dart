import 'package:finance/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:finance/components/my_appbar_2.dart';

import 'components/card_list.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isActive = false;
  bool isActiveSound = true;
  bool isActiveVibrate = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        MyAppBar2(
          title: 'Settings',
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.035),
              child: Column(
                children: <Widget>[
                  SubHeadingTitle(
                    title: 'Account',
                    isActiveBottom: false,
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  CardList(
                    leading: 'Card',
                    trailingFirst: '943849-34',
                    trailingSecond: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey.withOpacity(0.7),
                    ),
                  ),
                  CardList(
                    leading: 'Bank',
                    trailingFirst: 'Bank',
                    trailingSecond: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey.withOpacity(0.7),
                    ),
                  ),
                  SubHeadingTitle(
                    title: 'Account',
                    isActiveBottom: true,
                  ),
                  CardList(
                    leading: 'Profile',
                    trailingFirst: '',
                    trailingSecond: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey.withOpacity(0.7),
                    ),
                  ),
                  CardList(
                    leading: 'Security',
                    trailingFirst: '',
                    trailingSecond: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey.withOpacity(0.7),
                    ),
                  ),
                  CardList(
                    leading: 'Change Number',
                    trailingFirst: '',
                    trailingSecond: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey.withOpacity(0.7),
                    ),
                  ),
                  CardList(
                    leading: 'Backup',
                    trailingFirst: '',
                    trailingSecond: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey.withOpacity(0.7),
                    ),
                  ),
                  SubHeadingTitle(title: 'Notification', isActiveBottom: true),
                  CardList(
                    leading: 'In-App Vibrate',
                    trailingFirst: '',
                    trailingSecond: CupertinoSwitch(
                        activeColor: kGradientColorRight,
                        value: isActiveVibrate,
                        onChanged: (value) {
                          setState(() {
                            isActiveVibrate = value;
                          });
                        }),
                  ),
                  CardList(
                    leading: 'In-App Sounds',
                    trailingFirst: '',
                    trailingSecond: CupertinoSwitch(
                      activeColor: kGradientColorLeft,
                      value: isActiveSound,
                      onChanged: (value) {
                        setState(
                          () {
                            isActiveSound = value;
                          },
                        );
                      },
                    ),
                  ),
                  CardList(
                    leading: 'Show In-App Banner',
                    trailingFirst: '',
                    trailingSecond: CupertinoSwitch(
                      activeColor: kGradientColorRight,
                      value: isActive,
                      onChanged: (value) {
                        setState(
                          () {
                            isActive = value;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class SubHeadingTitle extends StatelessWidget {
  const SubHeadingTitle({
    Key key,
    this.title,
    this.isActiveBottom,
  }) : super(key: key);
  final String title;
  final bool isActiveBottom;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(
          top: size.height * 0.009,
          bottom: isActiveBottom ? size.height * 0.009 : 0),
      child: Text(
        title,
        style: TextStyle(color: Colors.grey, fontSize: size.longestSide * 0.02),
      ),
    );
  }
}
