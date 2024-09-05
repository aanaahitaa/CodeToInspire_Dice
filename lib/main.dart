import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan.shade800,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.cyan.shade900,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int topLeftDiceNumber = 1;
  int topRightDiceNumber = 1;
  int bottomLeftDiceNumber = 1;
  int bottomRightDiceNumber = 1;

  void rollDice() {
    setState(() {
      topLeftDiceNumber = Random().nextInt(6) + 1; // 1-6
      topRightDiceNumber = Random().nextInt(6) + 1; // 1-6
      bottomLeftDiceNumber = Random().nextInt(6) + 1; // 1-6
      bottomRightDiceNumber = Random().nextInt(6) + 1; // 1-6
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: rollDice,
                  child: Image.asset('images/dice$topLeftDiceNumber.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: rollDice,
                  child: Image.asset('images/dice$topRightDiceNumber.png'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: rollDice,
                  child: Image.asset('images/dice$bottomLeftDiceNumber.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: rollDice,
                  child: Image.asset('images/dice$bottomRightDiceNumber.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
