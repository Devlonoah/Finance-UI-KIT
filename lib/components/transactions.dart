import 'package:finance/constants.dart';
import 'package:finance/models/transaction_history_list.dart';
import 'package:flutter/material.dart';

class Transaction extends StatefulWidget {
  const Transaction({
    Key key,
  }) : super(key: key);

  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.symmetric(
              vertical: size.height * 0.01,
              horizontal: size.width * 0.03,
            ),
            color: kPrimaryColor,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('assets/icons/profileimg.jpeg'),
              ),
              title: Text(
                transactions[index].firstName + transactions[index].secondName,
                style: kWhiteTextStyle,
              ),
              subtitle: Text(
                transactions[index].date,
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Text(
                '\$${transactions[index].amountSent}',
                style: TextStyle(
                  color: index % 2 == 0 ? Colors.red : Colors.green,
                ),
              ),
            ),
          );
        });
  }
}
