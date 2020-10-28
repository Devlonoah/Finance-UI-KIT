import 'package:finance/constants.dart';
import 'package:finance/screens/dashboard_screen/dashboard_screen.dart';
import 'package:finance/screens/home/home_Screen.dart';
import 'package:finance/screens/onboard_screen/onboard_screen.dart';
import 'package:finance/screens/otp_screen/otp_screen.dart';
import 'package:finance/screens/register_Screen/register_screen.dart';
import 'package:finance/screens/settings/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finance',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        iconTheme: IconThemeData(color: kIconColor),
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
        OtpScreen.id: (context) => OtpScreen(),
        OnboardScreen.id: (context) => OnboardScreen(),
        DashBoardScreen.id: (context) => DashBoardScreen(),
        SettingScreen.id: (context) => SettingScreen(),
      },
    );
  }
}
