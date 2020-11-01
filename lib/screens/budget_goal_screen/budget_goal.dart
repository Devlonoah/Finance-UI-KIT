import 'package:flutter/material.dart';

import 'components/body.dart';

class BudgetGoal extends StatelessWidget {
  static String id = 'BudgetGoal';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BudgetBody(),
    );
  }
}
