import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(Dice());

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int dice_image = 1;
  int dice2_image = 2;
  void diceMove() {
    setState(() {
      dice_image = Random().nextInt(6) +
          1; // to generate random number to display the image
      dice2_image = Random().nextInt(6) + 1;
    });
  }

  var x;
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color(0xff5e4625),
            body: Center(
                child: Row(
              children: [
                Expanded(
                    child: TextButton(
                        onPressed: () {
                          diceMove();
                        },
                        child: Image(
                            image: AssetImage('images/dice$dice_image.png')))),
                Expanded(
                    child: TextButton(
                        onPressed: () {
                          diceMove();
                        },
                        child: Image(
                            image: AssetImage('images/dice$dice2_image.png')))),
              ],
            ))));
  }
}
