import 'dart:math';

import 'package:flutter/material.dart';

class rolediceScreen extends StatefulWidget {
  const rolediceScreen({super.key});

  @override
  State<rolediceScreen> createState() => _rolediceScreenState();
}

List<String> dice = [
  'https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Red_square.svg/2048px-Red_square.svg.png',
  'https://illustoon.com/photo/7255.png',
  'https://illustoon.com/photo/7254.png',
  'https://illustoon.com/photo/7253.png',
  'https://illustoon.com/photo/7259.png',
  'https://illustoon.com/photo/7257.png'
];
String dice1 =
    'https://www.funwithmama.com/wp-content/uploads/2010/10/colormatchingtiles3.jpg';
String dice2 = '';
String dice3 = '';

class _rolediceScreenState extends State<rolediceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue.shade600, Colors.purple.shade800],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Center(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Color game",
                  style: TextStyle(
                    fontSize: 38,
                    color: Colors.white,
                  ),
                ),
                Image.network(
                  dice1,
                  height: 50,
                ),
                Image.network(
                  dice2,
                  height: 50,
                ),
                Image.network(
                  dice3,
                  height: 50,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      var r = new Random().nextInt(5);
                      dice1 = dice[r];
                      dice2 = dice[r];
                      dice3 = dice[r];
                      print("Button pressed");
                    });
                  },
                  child: Text(
                    "Roll",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
