import 'package:finance/constants.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          menuList(
            context: context,
            icon: Icons.room,
            title: 'Find Atm',
            onTap: () {},
          ),
          menuList(
            context: context,
            icon: Icons.show_chart,
            title: 'Statistics',
            onTap: () {},
          ),
          menuList(
            context: context,
            icon: Icons.local_car_wash,
            title: 'Interest Calculator',
            onTap: () {},
          ),
          menuList(
            context: context,
            icon: Icons.adjust,
            title: 'Budget Goal',
            onTap: () {},
          ),
          menuList(
            context: context,
            icon: Icons.person_add,
            title: 'Invites',
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget menuList({
    Function onTap,
    IconData icon,
    String title,
    BuildContext context,
  }) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      splashColor: kBackgroundColor,
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: size.height * 0.04,
          horizontal: size.width * 0.03,
        ),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
            ),
            SizedBox(
              width: size.width * 0.05,
            ),
            Text(
              title,
              style:
                  TextStyle(color: Colors.white, fontSize: size.width * 0.05),
            ),
          ],
        ),
      ),
    );
  }
}
