import 'package:finance/constants.dart';
import 'package:finance/models/splash_model.dart';
import 'package:finance/screens/dashboard_screen/dashboard_screen.dart';
import 'package:flutter/material.dart';

import 'finger_print_splash.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentIndex = 0;
  List<SplashModel> splashData = [
    SplashModel(
        headerTitle: 'Secured',
        upperSubtitle: 'Advance Security implemented',
        lowerSubtitle: 'BANK OF THE YEAR 2020',
        isVisible: true,
        iconData: Icons.fingerprint),
    SplashModel(
        headerTitle: 'Earn & Save',
        upperSubtitle: 'Earn while Saving',
        lowerSubtitle: 'BANK OF THE YEAR 2020',
        isVisible: false,
        iconData: Icons.account_balance),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Expanded(
          flex: 9,
          child: Container(
            child: PageView.builder(
                physics: ClampingScrollPhysics(),
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) {
                  return FingerPrintSplashContent(
                    headerTitle: splashData[index].headerTitle,
                    upperSubtitle: splashData[index].upperSubtitle,
                    iconData: splashData[index].iconData,
                    // lowerSubtitle: splashData[index].lowerSubtitle,
                  );
                }),
          ),
        ),
        Expanded(
          child: Stack(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      buildSplashDot(
                          color: currentIndex == 0
                              ? kGradientColorRight
                              : Colors.grey,
                          width: currentIndex == 0
                              ? size.width * 0.04
                              : size.width * 0.02),
                      buildSplashDot(
                          color: currentIndex == 1
                              ? kGradientColorRight
                              : Colors.grey,
                          width: currentIndex == 1
                              ? size.width * 0.04
                              : size.width * 0.02),
                    ],
                  ),
                ],
              ),
              Positioned(
                bottom: size.height * 0.068,
                right: size.width * 0.02,
                left: size.width * 0.8,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, DashBoardScreen.id);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: size.height * 0.03,
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      color: kBackgroundColor,
                    ),
                    child: Visibility(
                      visible: currentIndex == 1 ? true : false,
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          fontSize: size.width * 0.05,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Container buildSplashDot({Color color, double width}) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.008),
      height: size.height * 0.03,
      width: width,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
