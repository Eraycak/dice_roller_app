import 'dart:math';
import 'package:dice_roller_app/dice_roller.dart';
import 'package:flutter/material.dart';

final random = Random();

class ChangeColorOfContainer extends StatefulWidget {
  //final VoidCallback onChangeColor;
  const ChangeColorOfContainer({
    Key? key,
    //required this.onChangeColor,
  }) : super(key: key);

  @override
  State<ChangeColorOfContainer> createState() {
    return _ChangeColorOfContainerState();
  }
}

class _ChangeColorOfContainerState extends State<ChangeColorOfContainer> {
  Color currentBeginColor = Colors.blue;
  Color currentEndColor = Colors.red;

  void onChangeColor() {
    setState(() {
      currentBeginColor = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      currentEndColor = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            currentBeginColor,
            currentEndColor,
          ],
        ),
      ),
      child: Center(
        child: DiceRoller(onRollDice: () {
          onChangeColor();
        }),
      ),
    );
  }
}
