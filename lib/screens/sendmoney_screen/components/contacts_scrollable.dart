import 'package:finance/constants.dart';
import 'package:finance/models/transaction_history_list.dart';
import 'package:flutter/material.dart';

class ContactsScrollable extends StatelessWidget {
  const ContactsScrollable({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? size.width * 0.001 : 0),
            child: ContactsCard(
              firstName: index == 0 ? 'Add new' : transactions[index].firstName,
              secondName:
                  index == 0 ? 'contacts' : transactions[index].secondName,
              image: index > 0
                  ? AssetImage('assets/icons/profileimg.jpeg')
                  : AssetImage('assets/icons/plus.png'),
              onTap: () {
                // Navigator.pushNamed(context, routeName)
                print('wassup');
              },
              // widget: Image.asset('assets/icons/profileimg.jpeg'),
            ),
          );
        },
      ),
    );
  }
}

class ContactsCard extends StatelessWidget {
  const ContactsCard({
    Key key,
    this.firstName,
    this.secondName,
    this.widget,
    this.image,
    this.onTap,
  }) : super(key: key);
  final String firstName;
  final String secondName;
  final Widget widget;
  final ImageProvider<dynamic> image;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(bottom: 0, right: 10, left: 10),
        padding: EdgeInsets.only(top: 2, bottom: 10),
        height: size.height * 0.1,
        width: size.width * 0.25,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: size.height * 0.06,
              width: size.width * 0.1,
              decoration: BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  end: Alignment.centerLeft,
                  begin: Alignment.centerRight,
                  colors: [
                    kGradientColorRight,
                    kGradientColorRight,
                    kGradientColorRight,
                    kGradientColorLeft,
                    kGradientColorLeft,
                    kGradientColorLeft,
                  ],
                ),
                image: DecorationImage(image: image, fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              '$firstName\n$secondName',
              style: kWhiteTextStyle.copyWith(
                  fontSize: size.width * 0.04, letterSpacing: 1),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
