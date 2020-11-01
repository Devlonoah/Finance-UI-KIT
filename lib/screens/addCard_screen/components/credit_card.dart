import 'package:finance/dummy_data_list.dart/transaction_history_list.dart';
import 'package:flutter/material.dart';

import 'package:finance/constants.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({
    Key key,
    this.i,
    this.cardHolderName,
    this.expiryDate,
    this.cardTypeImage,
    this.cardLogoUrl,
  }) : super(key: key);
  final int i; //index

  final String cardHolderName;
  final String expiryDate;
  final String cardTypeImage;
  final String cardLogoUrl;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: height * 0.015,
        horizontal: width * 0.005,
      ),
      margin: EdgeInsets.only(
        left: i < 1 ? 0 : width * 0.02,
      ),
      height: height * 0.3,
      width: double.infinity,
      decoration: kCardBoxDecoration.copyWith(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.025),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            cardLogo(cardLogo: cardLogoUrl, context: context),
            cardNumber(size),
            CardUserDetails(
              cardHolderName: cardHolderName,
              expiryDate: expiryDate,
              cardTypeImage: cardTypeImage,
            ),
          ],
        ),
      ),
    );
  }
}

// class CardContent extends StatelessWidget {
//   final String cardHolderName;
//   final String expiryDate;
//   final String cardTypeImage;
//   const CardContent({
//     Key key,
//     this.cardHolderName,
//     this.expiryDate,
//     this.cardTypeImage,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: size.width * 0.025),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           cardLogo(size),
//           cardNumber(size),
//           CardUserDetails(
//             cardHolderName: cardHolderName,
//             expiryDate: expiryDate,
//             cardTypeImage: cardTypeImage,
//           ),
//         ],
//       ),
//     );
//   }
// }

class CardUserDetails extends StatelessWidget {
  const CardUserDetails({
    Key key,
    this.cardHolderName,
    this.expiryDate,
    this.cardTypeImage,
  }) : super(key: key);
  final String cardHolderName;
  final String expiryDate;
  final String cardTypeImage;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Card Holder',
              style: TextStyle(color: Colors.white60),
            ),
            Text(
              cardHolderName,
              style: Theme.of(context).textTheme.headline6.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
          ],
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Exp Date',
              style: TextStyle(color: Colors.white60),
            ),
            Text(
              expiryDate,
              style: Theme.of(context).textTheme.headline6.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
          ],
        ),
        Spacer(),
        FittedBox(
          fit: BoxFit.contain,
          alignment: Alignment.centerRight,
          child: Image(
            height: size.height * 0.06,
            width: size.width * 0.3,
            image: AssetImage(cardTypeImage),
          ),
        )
      ],
    );
  }
}

Text cardNumber(Size size) {
  return Text(
    '5655 56565 5655 55123',
    style: TextStyle(
        color: Colors.white,
        fontSize: size.longestSide * 0.03,
        fontWeight: FontWeight.w400),
  );
}

Align cardLogo({BuildContext context, String cardLogo}) {
  Size size = MediaQuery.of(context).size;
  return Align(
    alignment: Alignment.centerLeft,
    child: Image(
      height: size.height * 0.09,
      width: size.width * 0.2,
      // width: size.longestSide * 0.01,
      image: AssetImage(cardLogo),
    ),
  );
}
