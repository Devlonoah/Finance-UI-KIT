import 'package:flutter/material.dart';

import 'components/body.dart';

class OnboardScreen extends StatelessWidget {
  static String id = 'OnboardScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Body(),
      ),
    );
  }
}
