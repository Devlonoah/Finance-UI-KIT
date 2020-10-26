import 'package:finance/components/my_appbar_2.dart';
import 'package:finance/constants.dart';
import 'package:finance/models/transaction_history_list.dart';
import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        MyAppBar2(title: 'Notification'),
        Container(
          margin: EdgeInsets.symmetric(vertical: size.height * 0.005),
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: size.width * 0.035),
          child: Text(
            '12 Nov 2020',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: size.height * 0.02),
            child: ListView.separated(
              padding: EdgeInsets.only(top: 50),
              separatorBuilder: (context, index) => Divider(
                color: Colors.grey.withOpacity(0.7),
              ),
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: kPrimaryColor,
                    radius: 30,
                    child: Icon(
                      Icons.compare_arrows,
                      size: 40,
                      color: Colors.grey,
                    ),
                  ),
                  title: Container(
                    // margin: EdgeInsets.all(20),
                    child: Text(
                      'Transferred Money',
                      style: kWhiteTextStyle,
                    ),
                  ),
                  subtitle: Text(
                    transactions[index].date,
                    style: kWhiteTextStyle.copyWith(color: Colors.grey),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
