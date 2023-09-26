import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/rolldice.dart';

void main() {
  runApp(RollDice());
}

class RollDice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: rolediceScreen(),
    );
  }
}

