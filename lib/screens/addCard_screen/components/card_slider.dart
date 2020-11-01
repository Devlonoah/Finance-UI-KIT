// import 'package:finance/dummy_data_list.dart/transaction_history_list.dart';
// import 'package:flutter/material.dart';

// import 'credit_card.dart';

// class CardSlider extends StatefulWidget {
//   const CardSlider({
//     Key key,
//   });

//   @override
//   _SliderState createState() => _SliderState();
// }

// class _SliderState extends State<Slider> {
//   PageController _pageController;

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
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


