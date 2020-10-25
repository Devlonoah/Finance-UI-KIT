import 'dart:math';

import 'package:finance/components/my_appbar.dart';
import 'package:finance/components/my_dropdown_button.dart';
import 'package:finance/screens/alert_Screen/alert.dart';
import 'package:finance/screens/menu_screen/menu.dart';
import 'package:finance/screens/sendmoney_screen/send_money.dart';

import 'package:finance/screens/wallet_screen/wallet.dart';
import 'package:flutter/material.dart';

import 'package:finance/constants.dart';

import 'balance_details_reusable_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Widget> _pages = [];
  Widget _currentPage;
  int _currentIndex;
  List<BottomNavBarModel> bottomNavBarModel = [
    BottomNavBarModel(
        label: 'Home',
        icon: Icon(
          Icons.home,
          size: 30,
        )),
    BottomNavBarModel(
        label: 'Wallet',
        icon: Icon(
          Icons.account_balance_wallet,
          size: 30,
        )),
    BottomNavBarModel(
        label: 'Send Money',
        icon: Icon(
          Icons.near_me,
          size: 30,
        )),
    BottomNavBarModel(
        label: 'Alert',
        icon: Icon(
          Icons.add_alert,
          size: 30,
        )),
    BottomNavBarModel(
        label: 'Menu',
        icon: Icon(
          Icons.tune,
          size: 30,
        )),
  ];

  List<BottomNavigationBarItem> item() {
    List<BottomNavigationBarItem> widgetNew = [];

    for (var page in bottomNavBarModel) {
      var newWidget = BottomNavigationBarItem(
        backgroundColor: kBackgroundColor,
        icon: page.icon,
        title: Text(''),
      );
      widgetNew.add(newWidget);
    }
    return widgetNew;
  }

  @override
  void initState() {
    _pages
      ..add(Home())
      ..add(WallletScreen())
      ..add(SendMoney())
      ..add(Alert())
      ..add(Menu());

    _currentPage = Home();
    _currentIndex = 0;
    super.initState();
  }

  void changePage(int selectedPage) {
    setState(() {
      _currentIndex = selectedPage;
      _currentPage = _pages[selectedPage];
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xFF8F73F1),
        onTap: (value) => changePage(value),
        items: item(),
        currentIndex: _currentIndex,
      ),
      body: _currentPage,
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        MyAppBar(
          title: 'Home',
        ),
        MyDropDownButton(),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: size.height * 0.02),
            child: BalanceDetailsPage(),
          ),
        ),
      ],
    );
  }
}

class BottomNavBarModel {
  String label;
  Icon icon;
  BottomNavBarModel({
    this.label,
    this.icon,
  });
}
