import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activedicevalue = 'assets/images/dice-1.png';
  var currentdiceroll = 4;

  void diceRoll() {
    setState(() {
      currentdiceroll = randomizer.nextInt(6) + 1;
      activedicevalue = 'assets/images/dice-$currentdiceroll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activedicevalue, width: 200),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: diceRoll,
            style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 20,
                // ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
