import 'package:flutter/material.dart';
import 'dart:math';
import 'package:finance/models/notification_model.dart';
import '../models/transaction_model.dart';

//Note all List of models here are dummy data;

List<TransactionModel> transactions = [
  TransactionModel(
      cardNumber: '3263-2332- 2423-234',
      cardTypeImageUrl: 'assets/icons/mastercard_colored.png',
      amountSent: 100,
      firstName: 'Helen ',
      secondName: 'Maya',
      profileImage: '',
      isCredit: true,
      date: '18-May-2020'),
  TransactionModel(
      cardTypeImageUrl: 'assets/icons/visa_colored.png',
      amountSent: 210.22,
      firstName: 'David ',
      secondName: 'Mane',
      profileImage: '',
      isCredit: true,
      date: '25-June-2020'),
  TransactionModel(
      cardTypeImageUrl: 'assets/icons/visa_colored.png',
      amountSent: 2000.35,
      firstName: 'John ',
      secondName: 'Snow',
      profileImage: '',
      isCredit: true,
      date: '18-May-2020'),
  TransactionModel(
      cardTypeImageUrl: 'assets/icons/mastercard_colored.png',
      amountSent: 101.25,
      firstName: 'Lady ',
      secondName: 'Stark',
      isCredit: true,
      date: '18-May-2020'),
  TransactionModel(
      cardTypeImageUrl: 'assets/icons/visa_colored.png',
      amountSent: 200.99,
      firstName: 'Angela ',
      secondName: 'Goneo',
      isCredit: true,
      date: '18-August-2020'),
  TransactionModel(
      cardTypeImageUrl: 'assets/icons/mastercard_colored.png',
      amountSent: 200.99,
      firstName: 'Maurta ',
      secondName: 'Muller',
      isCredit: true,
      date: '18-May-2020'),
  TransactionModel(
      cardTypeImageUrl: 'assets/icons/visa_colored.png',
      amountSent: 4000.99,
      firstName: 'Ran ',
      secondName: 'Dome',
      isCredit: true,
      date: '18-May-2020'),
  TransactionModel(
      cardTypeImageUrl: 'assets/icons/mastercard_colored.png',
      amountSent: 200.99,
      firstName: 'Fullei ',
      secondName: 'Bampe',
      isCredit: true,
      date: '18-May-2020'),
  TransactionModel(
      cardTypeImageUrl: 'assets/icons/mastercard_colored.png',
      amountSent: 200.99,
      firstName: 'James ',
      secondName: 'Noah',
      isCredit: true,
      date: '18-May-2020'),
  TransactionModel(
      cardTypeImageUrl: 'assets/icons/visa_colored.png',
      amountSent: 20000.99,
      firstName: 'Yeri ',
      secondName: 'Samaba',
      isCredit: true,
      date: '18-May-2020'),
  TransactionModel(
      cardTypeImageUrl: 'assets/icons/visa_colored.png',
      amountSent: 1000.99,
      firstName: 'Baker ',
      secondName: 'Bama',
      isCredit: true,
      date: '18-September-2020'),
];

Random random;
List<Notifications> notificationsList = [
  Notifications(
    title: 'Transferred Money',
    timeOfDay: TimeOfDay(hour: 20, minute: 10),
    icon: Icon(
      Icons.arrow_upward,
      color: Colors.red,
    ),
  ),
  Notifications(
    title: 'Recieved Money',
    timeOfDay: TimeOfDay(hour: 20, minute: 10),
    icon: Icon(
      Icons.arrow_downward,
      color: Colors.green,
    ),
  ),
  Notifications(
    title: 'Transferred Money',
    timeOfDay: TimeOfDay(hour: 20, minute: 10),
    icon: Icon(
      Icons.arrow_upward,
      color: Colors.red,
    ),
  ),
  Notifications(
    title: 'Transferred Money',
    timeOfDay: TimeOfDay(hour: 20, minute: 10),
    icon: Icon(
      Icons.arrow_upward,
      color: Colors.red,
    ),
  ),
  Notifications(
    title: 'Transferred Money',
    timeOfDay: TimeOfDay(hour: 20, minute: 10),
    icon: Icon(
      Icons.arrow_upward,
      color: Colors.red,
    ),
  ),
  Notifications(
    title: 'Recieved Money',
    timeOfDay: TimeOfDay(hour: 20, minute: 10),
    icon: Icon(
      Icons.arrow_downward,
      color: Colors.green,
    ),
  ),
  Notifications(
    title: 'Transferred Money',
    timeOfDay: TimeOfDay(hour: 20, minute: 10),
    icon: Icon(
      Icons.arrow_upward,
      color: Colors.red,
    ),
  ),
  Notifications(
    title: 'Recieved Money',
    timeOfDay: TimeOfDay(hour: 20, minute: 10),
    icon: Icon(
      Icons.arrow_downward,
      color: Colors.green,
    ),
  ),
  Notifications(
    title: 'Transferred Money',
    timeOfDay: TimeOfDay(hour: 20, minute: 10),
    icon: Icon(
      Icons.arrow_upward,
      color: Colors.red,
    ),
  ),
  Notifications(
    title: 'Recieved Money',
    timeOfDay: TimeOfDay(hour: 20, minute: 10),
    icon: Icon(
      Icons.arrow_downward,
      color: Colors.green,
    ),
  ),
  Notifications(
    title: 'Transferred Money',
    timeOfDay: TimeOfDay(hour: 20, minute: 10),
    icon: Icon(
      Icons.arrow_upward,
      color: Colors.red,
    ),
  ),
];
