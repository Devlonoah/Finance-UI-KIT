import 'package:finance/components/my_appbar_2.dart';
import 'package:finance/components/transactions.dart';
import 'package:flutter/material.dart';
import 'package:finance/screens/wallet_screen/components/filter_by_buttons.dart';
import 'components/available_balance.dart';

class WallletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        MyAppBar2(
          title: 'Wallet',
        ),
        AvailableBalance(),
        FilterByButtons(),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: size.height * 0.002),
            child: Transaction(),
          ),
        )
      ],
    );
  }
}
