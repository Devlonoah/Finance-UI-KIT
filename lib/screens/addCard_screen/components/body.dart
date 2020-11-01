import 'package:finance/components/my_appbar_2.dart';
import 'package:finance/components/my_floating_button.dart';
import 'package:finance/components/my_textfield.dart';
import 'package:finance/constants.dart';
import 'package:finance/dummy_data_list.dart/transaction_history_list.dart';
import 'package:flutter/material.dart';

import 'credit_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        SizedBox(
          height: 40,
        ),
        TopAppBar(),
        cardSlider(size),
        Container(
          height: size.height * 0.4,
          width: size.width * 0.85,
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.04,
                        vertical: size.height * 0.02,
                      ),
                      child: Text(
                        'Details',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: size.longestSide * 0.025,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'Card Holder',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      trailing: Text(
                        transactions[0].firstName +
                            transactions[0].secondName.toString(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'Card Number',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      trailing: Text(
                        transactions[0].cardNumber.toString(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'Exp Date',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      trailing: Text(
                        '03/22',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'CVV',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      trailing: Text(
                        '345',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: FractionalTranslation(
                  translation: Offset(0, 0),
                  child: MyFloatingButton(
                    ontap: () {
                      print('hello');
                    },
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Container cardSlider(Size size) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.symmetric(
          vertical: size.height * 0.04, horizontal: size.width * 0.02),
      height: size.height * 0.4,
      width: double.infinity,
      child: PageView.builder(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        pageSnapping: true,
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          _pageController = PageController(
            initialPage: 0,
            viewportFraction: index == 0 ? 0.9 : 1.0,
          );
          return CreditCard(
            i: index,
            cardHolderName:
                transactions[index].firstName + transactions[index].secondName,
            expiryDate: '03/22',
            cardLogoUrl: transactions[index].cardTypeImageUrl,
            cardTypeImage: 'assets/icons/chip.png',
          );
        },
      ),
    );
  }
}

// class Slider extends StatelessWidget {
//   const Slider({
//     Key key,
//     @required this.size,
//     @required PageController pageController,
//   })  : _pageController = pageController,
//         super(key: key);

//   final Size size;
//   final PageController _pageController;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.centerLeft,
//       margin: EdgeInsets.zero,
//       padding: EdgeInsets.symmetric(
//           vertical: size.height * 0.04, horizontal: size.width * 0.02),
//       height: size.height * 0.4,
//       width: double.infinity,
//       child: PageView.builder(
//         controller: _pageController,
//         scrollDirection: Axis.horizontal,
//         pageSnapping: true,
//         itemCount: transactions.length,
//         itemBuilder: (context, index) {
//           _pageController = PageController(
//             initialPage: 0,
//             viewportFraction: index == 0 ? 0.9 : 1.0,
//           );
//           return CreditCard(
//             i: index,
//             cardHolderName:
//                 transactions[index].firstName + transactions[index].secondName,
//             expiryDate: '03/22',
//             cardLogoUrl: transactions[index].cardTypeImageUrl,
//             cardTypeImage: 'assets/icons/chip.png',
//           );
//         },
//       ),
//     );
//   }
// }

class TopAppBar extends StatelessWidget {
  const TopAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        Text(
          'AddCard',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
