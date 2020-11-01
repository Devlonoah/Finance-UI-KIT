import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:finance/components/my_appbar_2.dart';
import 'package:finance/constants.dart';
import 'package:finance/screens/budget_goal_screen/components/goal_description_input.dart';
import 'package:finance/screens/budget_goal_screen/components/my_slider.dart';

class BudgetBody extends StatefulWidget {
  @override
  _BudgetBodyState createState() => _BudgetBodyState();
}

class _BudgetBodyState extends State<BudgetBody> {
  double amountValue = 10;
  double monthlyAmountValue = 20;
  ScrollController controller;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          MyAppBar2(title: 'Budget Goal'),
          GoalDescriptionInput(),
          AmountWithHeader(amountValue: amountValue, title: 'Amount'),
          MySlider(
            value: amountValue,
            onChanged: (newValue) {
              setState(() {
                amountValue = newValue;
              });
            },
          ),
          AmountWithHeader(
              amountValue: monthlyAmountValue, title: 'Monthly payment'),
          MySlider(
            value: monthlyAmountValue,
            onChanged: (newValue) {
              setState(() {
                monthlyAmountValue = newValue;
              });
            },
          ),
          AmountWithHeader(
            title: 'Period',
            amountValue: 0.truncateToDouble(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Years', style: TextStyle(color: Colors.white)),
                Text(
                  'Month',
                  style: TextStyle(color: Colors.white),
                ),
                Text('Days', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          SizedBox(height: height * 0.02),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: width * 0.1),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                PeriodSelection(
                  title: '2',
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                PeriodSelection(
                  title: '2',
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                PeriodSelection(
                  title: '20',
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          )
        ],
      ),
    );
  }
}

class PeriodSelection extends StatelessWidget {
  const PeriodSelection({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Container(
      height: height * 0.05,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white, width: 0.5),
      ),
      child: Row(
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_drop_up),
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_drop_down),
          ),
        ],
      ),
    );
  }
}

class AmountWithSlider extends StatelessWidget {
  const AmountWithSlider({
    Key key,
    this.amountValue,
  }) : super(key: key);

  final double amountValue;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          AmountWithHeader(
            amountValue: amountValue,
            title: 'Amount',
          ),
          SizedBox(
            height: height * 0.02,
          ),
        ],
      ),
    );
  }
}

class AmountWithHeader extends StatelessWidget {
  const AmountWithHeader({
    Key key,
    this.amountValue,
    this.title,
  }) : super(key: key);

  final double amountValue;
  final String title;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Padding(
      padding: EdgeInsets.only(
          right: width * 0.03,
          left: width * 0.03,
          top: height * 0.03,
          bottom: height * 0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: Colors.grey,
              fontSize: size.longestSide * 0.02,
            ),
          ),
          Text(
            '\$${amountValue.toInt().toString()}',
            style: TextStyle(
              color: Colors.grey,
              fontSize: size.longestSide * 0.02,
            ),
          )
        ],
      ),
    );
  }
}
