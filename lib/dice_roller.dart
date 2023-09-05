import 'dart:math';
import 'package:flutter/material.dart';
import 'package:dice_roller_app/styled_text.dart';

const String textGradientContainer = 'dice roller test';
const TextStyle textStyleGradientContainer =
    TextStyle(fontSize: 28, color: Colors.white);

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({
    Key? key,
  }) : super(key: key);

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int currentDiceRoll = 1;
  String activeDiceImage = 'assets/images/dice-1.png';

  void onRollDice() {
    setState(() {
      currentDiceRoll = random.nextInt(6) + 1;
      activeDiceImage = 'assets/images/dice-$currentDiceRoll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const StyledText(
          text: textGradientContainer,
          style: textStyleGradientContainer,
        ),
        const SizedBox(height: 20),
        Image.asset(activeDiceImage, width: 200, height: 200),
        const SizedBox(height: 20),
        StyledText(
            text: activeDiceImage.substring(14, 20),
            style: textStyleGradientContainer),
        TextButton(
            onPressed: onRollDice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('Roll Dice')),
      ],
    );
  }
}
