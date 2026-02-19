import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Dice());
}

class Dice extends StatefulWidget {
  @override
  DiceState createState() => DiceState();
}

class DiceState extends State<Dice> {
  int diceNumber = 4;
  Random randomDice = Random();
  @override
  Widget build(Object context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Dice Throw'), centerTitle: true),
        body: Center(
          child: TextButton(
            onPressed: () {
              setState(() {
                diceNumber = randomDice.nextInt(6) + 1;
              });
              print('dice clicked');
            },
            child: Image.asset(
              'images/dice$diceNumber.png',
              height: 100,
              width: 100,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
