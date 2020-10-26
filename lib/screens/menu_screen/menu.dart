import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Icon(Icons.room),
        Text('Find ATMs'),
      ],
    ));
  }
}
