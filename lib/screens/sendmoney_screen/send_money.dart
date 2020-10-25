import 'package:finance/components/transactions.dart';
import 'package:flutter/material.dart';

import 'package:finance/components/my_appbar_2.dart';
import 'package:finance/components/my_floating_button.dart';
import 'package:finance/constants.dart';
import 'package:finance/screens/wallet_screen/components/available_balance.dart';

import 'components/contacts_scrollable.dart';

class SendMoney extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size.height);
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          MyAppBar2(
            title: 'Notification',
          ),
          AvailableBalance(),
          subHeader(
            size: size,
            title: 'Send money to',
          ),
          ContactsScrollable(),
          SizedBox(height: size.height * 0.01),
          subHeader(size: size, title: 'Recent Transactions'),
          Container(height: size.height * 0.75, child: Transaction())
        ],
      ),
    );
  }

  Container subHeader({Size size, String title}) {
    return Container(
      margin: EdgeInsets.only(bottom: size.width * 0.02),
      padding: EdgeInsets.only(left: size.width * 0.02),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(
          fontSize: size.width * 0.04,
          color: Colors.grey,
        ),
      ),
    );
  }
}
